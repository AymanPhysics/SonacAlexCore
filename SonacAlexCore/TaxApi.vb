Imports System.Collections.Specialized
Imports System.Data
Imports System.IO
Imports System.Net
Imports System.Net.Http
Imports System.Net.Http.Headers
Imports System.Runtime.Remoting
Imports System.Security.Cryptography
Imports System.Security.Cryptography.Pkcs
Imports System.Security.Cryptography.X509Certificates
Imports System.Text
Imports System.Web
Imports JsonHashing.Handlers
Imports Net.Pkcs11Interop.Common
Imports Net.Pkcs11Interop.HighLevelAPI
Imports Net.Pkcs11Interop.HighLevelAPI.Factories
Imports Net.Pkcs11Interop.HighLevelAPI.MechanismParams
Imports Newtonsoft.Json
Imports Newtonsoft.Json.Linq
Imports Org.BouncyCastle.Asn1
Imports Org.BouncyCastle.Asn1.Ess


Public Class TaxApi

    'Variable
    Public apiBaseUrl As String = "https://api.preprod.invoicing.eta.gov.eg"
    Public idSrvBaseUrl As String = "https://id.preprod.eta.gov.eg"
    Public clientId As String = "daea7510-39b7-4179-b5a3-80e7fb1a42c0"
    Public ClientSecret As String = "0377d372-91d2-467a-94b2-39adc1edc91d"
    Public ClientSecret2 As String = "f092a3d9-8045-42a4-8bc7-d61672ef55fc"

    Private DllLibPath As String = "eps2003csp11.dll"
    'Private DllLibPath As String = "D:\OneDrive\Projects\Projects\SonacAlex\packages\Pkcs11Interop.5.1.2\lib\net45\Pkcs11Interop.dll"
    Private TokenPin As String = "79179029"

    Public access_token As String = ""

    Dim bm As New BasicMethods
    Private Function PostRequest(uri As Uri, jsonDataBytes As Byte(), contentType As String, method As String) As String
        Try
            Dim response As String
            Dim request As WebRequest
            request = WebRequest.Create(uri)
            request.ContentLength = jsonDataBytes.Length
            request.ContentType = contentType
            request.Method = method
            request.Headers.Add(HttpRequestHeader.Authorization, "Bearer " & access_token)
            Using requestStream = request.GetRequestStream
                requestStream.Write(jsonDataBytes, 0, jsonDataBytes.Length)
                requestStream.Close()

                Dim responseStream = request.GetResponse.GetResponseStream
                Using reader As New StreamReader(responseStream)
                    response = reader.ReadToEnd()
                End Using

            End Using
            Return response
        Catch ex As Exception
            bm.ShowMSG(ex.Message)
            Return ""
        End Try
    End Function

    Private Function PostRequest(uri As Uri, jsonData As String, contentType As String, method As String) As String
        Try
            Dim response As String
            Dim request As WebRequest
            request = WebRequest.Create(uri)
            request.ContentLength = jsonData.Length
            request.ContentType = contentType
            request.Method = method
            request.Headers.Add(HttpRequestHeader.Authorization, "Bearer " & access_token)

            Using requestStream As New StreamWriter(request.GetRequestStream())
                requestStream.Write(jsonData)
                'requestStream.Close()

                'Dim responseStream = request.GetResponse.GetResponseStream
                'Using reader As New StreamReader(responseStream)
                '    response = reader.ReadToEnd()
                'End Using
            End Using


            Dim httpResponse As HttpWebResponse = request.GetResponse()
            Using streamReader As New StreamReader(httpResponse.GetResponseStream())
                Dim result = streamReader.ReadToEnd()
            End Using

            Return response
        Catch ex As Exception
            bm.ShowMSG(ex.Message)
            Return ""
        End Try
    End Function

    Private Function PutRequest(uri As String, postData As String) As String
        Dim client = New HttpClient()
        Dim response As HttpResponseMessage
        Try
            client.BaseAddress = New Uri(apiBaseUrl)
            Dim byteArray As Byte() = Encoding.UTF8.GetBytes(postData)
            Using httpContent As HttpContent = New StringContent(postData)
                httpContent.Headers.ContentType = New MediaTypeHeaderValue("application/json")
                client.DefaultRequestHeaders.Authorization = New AuthenticationHeaderValue("Bearer", access_token)
                response = client.PutAsync(uri, httpContent).Result
                Return response.Content.ReadAsStringAsync().Result
            End Using
        Catch ex As Exception
            bm.ShowMSG(ex.Message)
            Return ""
        End Try
    End Function

    Private Function GetRequest(requestUrl As String) As String
        Try
            Dim request = TryCast(WebRequest.Create(requestUrl), HttpWebRequest)
            request.Method = "GET"
            request.Headers.Add(HttpRequestHeader.Authorization, "Bearer " & access_token)
            request.ContentLength = 0
            Dim responseContent As String = ""
            Using response = TryCast(request.GetResponse(), HttpWebResponse)
                Using reader = New System.IO.StreamReader(response.GetResponseStream())
                    responseContent = reader.ReadToEnd()
                End Using
            End Using
            Return responseContent
        Catch ex As Exception
            bm.ShowMSG(ex.Message)
            Return ""
        End Try
    End Function


    '1. Login as Taxpayer System
    Public Sub Login()
        Try
            Dim outgoingQueryString As NameValueCollection = HttpUtility.ParseQueryString(String.Empty)
            outgoingQueryString.Add("grant_type", "client_credentials")
            outgoingQueryString.Add("client_id", clientId)
            outgoingQueryString.Add("client_secret", ClientSecret)
            outgoingQueryString.Add("scope", "InvoicingAPI")
            Dim jsonDataBytes = New ASCIIEncoding().GetBytes(outgoingQueryString.ToString())
            Dim result = PostRequest(New Uri(idSrvBaseUrl & "/connect/token"), jsonDataBytes, "application/x-www-form-urlencoded", "POST")
            access_token = JsonConvert.DeserializeObject(result)("access_token")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub


    '2. Get Document Types
    Public DocumentTypes
    Public Sub GetDocumentTypes()
        Try
            Dim result = GetRequest(apiBaseUrl & "/api/v1.0/documenttypes")
            DocumentTypes = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '3. Get Document Type
    Public DocumentType
    Public Sub GetDocumentTypes(documentTypeID As Integer)
        Try
            Dim result = GetRequest(apiBaseUrl & "/api/v1.0/documenttypes/" & documentTypeID)
            DocumentType = JsonConvert.DeserializeObject(result)
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '4. Get Document Type Version
    Public DocumentTypeVersion
    Public Sub GetDocumentTypeVersion(documentTypeID As Integer, documentTypeVersionID As Integer)
        Try
            Dim result = GetRequest(apiBaseUrl & "/api/v1/documenttypes/" & documentTypeID & "/versions/" & documentTypeVersionID)
            DocumentTypeVersion = JsonConvert.DeserializeObject(result)
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub
    '5.1 Submit Documents (JSON)
    Public Sub SubmitDocuments(Flag As Integer, StoreId As Integer, InvoiceNo As Integer)
        Try
            Dim invoiceLines As String = ""
            Dim taxTotalsLines As String = ""


            Dim TaxApi_issuerDT As DataTable = bm.ExecuteAdapter("select * from TaxApi_issuer")
            Dim SalesMasterDT As DataTable = bm.ExecuteAdapter("select * from SalesMaster where Flag=" & Flag & " and StoreId=" & StoreId & " and InvoiceNo=" & InvoiceNo)
            Dim SalesDetailsDT As DataTable = bm.ExecuteAdapter("select D.*,It.itemCode,It.TaxApi_UnitTypeId,It.TaxApi_UnitTypeQty,It.Name It_Name from SalesDetails D left join Items It on (D.ItemId=It.Id) where D.Flag=" & Flag & " and D.StoreId=" & StoreId & " and D.InvoiceNo=" & InvoiceNo)
            Dim receiverDT As DataTable = bm.ExecuteAdapter("select * from Customers where Id=" & SalesMasterDT.Rows(0)("ToId"))

            Dim CurrencySign As String = bm.ExecuteScalar("select Sign from Currencies where Id=(" & SalesMasterDT.Rows(0)("CurrencyId") & ")")
            Dim SalesDetailsTaxDT As DataTable = bm.ExecuteAdapter("select It.taxType,sum(It.amount)amount from SalesDetails D left join taxableItems It on (D.ItemId=It.ItemId) where D.Flag=" & Flag & " and D.StoreId=" & StoreId & " and D.InvoiceNo=" & InvoiceNo & " group by It.taxType")

            For Each it In SalesDetailsTaxDT.Rows
                taxTotalsLines &= "{
                    ""taxType"": """ & it("taxType") & """,
                    ""amount"": " & Dec5(it("amount")) & "
                },"
            Next
            taxTotalsLines = taxTotalsLines.Substring(0, taxTotalsLines.Length - 1)


            Dim Weight As Decimal = 0

            For Each it In SalesDetailsDT.Rows

                Dim taxableItemsDT As DataTable = bm.ExecuteAdapter("select * from taxableItems where ItemId=" & it("ItemId"))

                Weight += it("Qty") * it("TaxApi_UnitTypeQty")

                invoiceLines &= "{
                    ""description"": """ & it("It_Name") & """,
                    ""itemType"": ""EGS"",
                    ""itemCode"": """ & it("itemCode") & """,
                    ""unitType"": """ & it("TaxApi_UnitTypeId") & """,
                    ""quantity"": " & Dec5(IIf(it("SalesPriceTypeId") = 2 AndAlso it("Flag") = 33, it("PreQty"), it("Qty") / IIf(it("Flag") = 33, 1000, 1))) & ",
                    ""internalCode"": """ & it("ItemId") & """,
                    ""salesTotal"": " & Dec5(it("Value") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & ",
                    ""total"": " & Dec5(it("Value") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & ",
                    ""valueDifference"": 0.00000,
                    ""totalTaxableFees"": 0.00000,
                    ""netTotal"": " & Dec5(it("Value") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & ",
                    ""itemsDiscount"": 0.00000,
                    ""unitValue"": {
                        ""currencySold"": """ & CurrencySign & """,
                        ""amountEGP"": " & Dec5(it("Price") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, "", ",
                        ""amountsold"": " & Dec5(it("Price")) & ",
                        ""currencyexchangerate"": " & Dec5(SalesMasterDT.Rows(0)("Exchange"))) & "
                    },
                    ""discount"": {
                        ""rate"": 0.00,
                        ""amount"": 0.00000
                    },
                    ""taxableItems"": [
                        
                  "
                For Each itD In taxableItemsDT.Rows
                    invoiceLines &= "{
                            ""taxType"": """ & itD("taxType") & """,
                            ""amount"": " & Dec5(itD("amount")) & ",
                            ""subType"": """ & itD("subType") & """,
                            ""rate"": " & Dec2(itD("rate")) & "
                        },"
                Next
                invoiceLines = invoiceLines.Substring(0, invoiceLines.Length - 1)

                invoiceLines &= "  ]
                },"

            Next
            invoiceLines = invoiceLines.Substring(0, invoiceLines.Length - 1)

            '{""documents"": [
            Dim json As String = "{
            ""issuer"": {
                ""address"": {
                    ""branchID"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_branchID") & """,
                    ""country"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_country") & """,
                    ""governate"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_governate") & """,
                    ""regionCity"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_regionCity") & """,
                    ""street"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_street") & """,
                    ""buildingNumber"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_buildingNumber") & """,
                    ""postalCode"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_postalCode") & """,
                    ""floor"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_floor") & """,
                    ""room"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_room") & """,
                    ""landmark"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_landmark") & """,
                    ""additionalInformation"": """ & TaxApi_issuerDT.Rows(0)("issuer_address_additionalInformation") & """
                },
                ""type"": """ & TaxApi_issuerDT.Rows(0)("issuer_type") & """,
                ""id"": """ & TaxApi_issuerDT.Rows(0)("issuer_id") & """,
                ""name"": """ & TaxApi_issuerDT.Rows(0)("issuer_name") & """
            },
            ""receiver"": {
                ""address"": {
                    ""branchID"": """ & receiverDT.Rows(0)("receiver_address_branchID") & """,
                    ""country"": """ & receiverDT.Rows(0)("receiver_address_country") & """,
                    ""governate"": """ & receiverDT.Rows(0)("receiver_address_governate") & """,
                    ""regionCity"": """ & receiverDT.Rows(0)("receiver_address_regionCity") & """,
                    ""street"": """ & receiverDT.Rows(0)("receiver_address_street") & """,
                    ""buildingNumber"": """ & receiverDT.Rows(0)("receiver_address_buildingNumber") & """,
                    ""postalCode"": """ & receiverDT.Rows(0)("receiver_address_postalCode") & """,
                    ""floor"": """ & receiverDT.Rows(0)("receiver_address_floor") & """,
                    ""room"": """ & receiverDT.Rows(0)("receiver_address_room") & """,
                    ""landmark"": """ & receiverDT.Rows(0)("receiver_address_landmark") & """,
                    ""additionalInformation"": """ & receiverDT.Rows(0)("receiver_address_additionalInformation") & """
                },
                ""type"": """ & receiverDT.Rows(0)("receiver_type") & """,
                ""id"": """ & receiverDT.Rows(0)("receiver_id") & """,
                ""name"": """ & receiverDT.Rows(0)("receiver_name") & """
            },
            ""documentType"": ""I"",
            ""documentTypeVersion"": ""1.0"",
            ""dateTimeIssued"": """ & bm.ToStrDateTimeFormated(bm.MyGetDate).Replace(" ", "T") & "Z"",
            ""taxpayerActivityCode"": """ & TaxApi_issuerDT.Rows(0)("taxpayerActivityCode") & """,
            ""internalID"": """ & Flag & "_" & StoreId & "_" & InvoiceNo & """,
            ""purchaseOrderReference"": """",
            ""purchaseOrderDescription"": """",
            ""salesOrderReference"": """",
            ""salesOrderDescription"": """",
            ""proformaInvoiceNumber"": """",
            ""payment"": {
                ""bankName"": """",
                ""bankAddress"": """",
                ""bankAccountNo"": """",
                ""bankAccountIBAN"": """",
                ""swiftCode"": """",
                ""terms"": """"
            },
            ""delivery"": {
                ""approach"": """",
                ""packaging"": """",
                ""dateValidity"": """ & bm.ToStrDateTimeFormated(bm.MyGetDate).Replace(" ", "T") & "Z"",
                ""exportPort"": """",
                ""grossWeight"": " & Dec5(Weight) & ",
                ""netWeight"": " & Dec5(Weight) & ",
                ""terms"": """"
            },
            ""invoiceLines"": [
            " & invoiceLines & "                 
            ],
            ""totalDiscountAmount"": " & Dec5(SalesMasterDT.Rows(0)("DiscountValue") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & ",
            ""totalSalesAmount"": " & Dec5(SalesMasterDT.Rows(0)("Total") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & ",
            ""netAmount"": " & Dec5(SalesMasterDT.Rows(0)("TotalAfterDiscount") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & ",
            ""taxTotals"": [
                " & taxTotalsLines & "
            ],
            ""totalAmount"": " & Dec5(SalesMasterDT.Rows(0)("TotalAfterDiscount") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & ",
            ""extraDiscountAmount"": 0.00000,
            ""totalItemsDiscountAmount"": " & Dec5(SalesMasterDT.Rows(0)("DiscountValue") * IIf(SalesMasterDT.Rows(0)("CurrencyId") = 1, 1, SalesMasterDT.Rows(0)("Exchange"))) & "           
        }"

            Dim ih As New InvoiceHasher()
            Dim s As New Serializer()
            Dim h As New Hasher()

            Dim serialize0 As String = s.Serialize(JsonConvert.DeserializeObject(json))
            Dim hash0 As Byte() = h.Hash(serialize0)
            Dim hashBytes0 As Byte() = h.HashBytes(hash0)
            Dim SignWithCMS0 As String = ih.SignWithCMS(hashBytes0)

            Dim jsonDataBytes = Encoding.UTF8.GetBytes("{""documents"": [" & json.Substring(0, json.Length - 1) & ",""signatures"": [{""signatureType"": ""I"",""value"": """ & SignWithCMS0 & """}]}]}")

            Dim result = PostRequest(New Uri(apiBaseUrl & "/api/v1/documentsubmissions"), jsonDataBytes, "application/json", "POST")


            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("acceptedDocuments").Count > 0 Then
                'bm.ShowMSG(result0("acceptedDocuments")(0)("internalId").ToString)
            End If
            If result0("rejectedDocuments").Count > 0 Then
                'bm.ShowMSG(result0("rejectedDocuments")(0)("internalId").ToString)
                Dim msg As String = ""
                For i As Integer = 0 To result0("rejectedDocuments")(0)("error")("details").Count - 1
                    msg &= result0("rejectedDocuments")(0)("error")("details")(i)("propertyPath") & " - " & result0("rejectedDocuments")(0)("error")("details")(i)("message") & vbCrLf
                Next
                bm.ShowMSG(msg)
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    Function Dec2(Value As Decimal)
        Return String.Format("{0:0.00}", Value)
    End Function

    Function Dec5(Value As Decimal)
        Return String.Format("{0:0.00000}", Value)
    End Function


    '6. Cancel Document
    Public Sub CancelDocument(documentUUID As String, reason As String)
        Try
            Dim result = PutRequest("api/v1.0/documents/state/" & documentUUID & "/state", "{
	            status:""cancelled"",
	            reason:""" & reason & """
            }")
            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("error")("details") Is Nothing Then

            Else
                For Each msg In result0("error")("details")
                    bm.ShowMSG(msg("message"))
                Next
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '7. Reject Document
    Public Sub RejectDocument(documentUUID As String, reason As String)
        Try
            Dim result = PutRequest("api/v1.0/documents/state/" & documentUUID & "/state", "{
	            status:""rejected"",
	            reason:""" & reason & """
            }")
            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("error")("details") Is Nothing Then

            Else
                For Each msg In result0("error")("details")
                    bm.ShowMSG(msg("message"))
                Next
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '8. Get Recent Documents
    Public Documents
    Public Sub GetRecentDocuments()
        Try

            Dim result = GetRequest(apiBaseUrl & "/api/v1.0/documenttypes")
            Documents = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '10. Get Package Requests
    Public Requests
    Public Sub GetPackageRequests()
        Try

            Dim result = GetRequest(apiBaseUrl & "/api/v1/documentPackages/requests?pageSize=10&pageNo=1")
            Requests = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '11. Get Document Package
    Public DocumentPackage
    Public Sub GetDocumentPackage(DocumentPackageUniqueID As String)
        Try

            Dim result = GetRequest(apiBaseUrl & "/api/v1/documentPackages/" & DocumentPackageUniqueID)
            DocumentPackage = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '12. Get Document
    Public Document
    Public Sub GetDocument(DocumentUniqueID As String)
        Try

            Dim result = GetRequest(apiBaseUrl & "/api/v1/documents/" & DocumentUniqueID & "/raw")
            Document = JsonConvert.DeserializeObject(result) '("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '13. Get Submission
    Public Submission
    Public Sub GetSubmission(SubmissionUniqueID As String)
        Try

            Dim result = GetRequest(apiBaseUrl & "/api/v1.0/documentSubmissions/" & SubmissionUniqueID & "?PageSize=1")
            Submission = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '15. Get Document Printout (PDF)
    Public DocumentPDF
    Public Sub GetDocumentPrintout(DocumentUniqueID As String)
        Try
            Dim result = GetRequest(apiBaseUrl & "/api/v1/documents/" & DocumentUniqueID & "/pdf")
            Dim MyBath As String = bm.GetNewTempName(DocumentUniqueID & ".pdf")
            Dim st As New StreamWriter(MyBath)
            st.WriteLine(result)
            st.Flush()
            st.Close()
            st.Dispose()
            Process.Start(MyBath)
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '18. Get Notifications
    Public Notifications
    Public Sub GetNotifications()
        Try

            Dim result = GetRequest(apiBaseUrl & "/api/v1/notifications/taxpayer?pageSize=10&pageNo=1&dateFrom=&dateTo=&type=&language=en&status=&channel=")
            Notifications = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '20. Get Document Details
    Public DocumentDetails
    Public Sub GetNotifications(DocumentUniqueID As String)
        Try

            Dim result = GetRequest(apiBaseUrl & "/api/v1/documents/" & DocumentUniqueID & "/details")
            DocumentDetails = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '21. Decline Cancel Document
    Public Sub DeclineCancelDocument(DocumentUniqueID As String)
        Try
            Dim result = PutRequest("api/v1.0/documents/state/" & DocumentUniqueID & "/decline/cancelation", "")
            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("error")("details") Is Nothing Then

            Else
                For Each msg In result0("error")("details")
                    bm.ShowMSG(msg("message"))
                Next
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '22. Decline Rejection Document
    Public Sub DeclineRejectionDocument(DocumentUniqueID As String)
        Try
            Dim result = PutRequest("api/v1.0/documents/state/" & DocumentUniqueID & "/decline/rejection", "")
            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("error")("details") Is Nothing Then

            Else
                For Each msg In result0("error")("details")
                    bm.ShowMSG(msg("message"))
                Next
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub



    '23. Create EGS Code Usage
    Public Sub CreateEGSCodeUsage(codeType As String, parentCode As String, itemCode As String, codeName As String, codeNameAr As String, activeFrom As String, activeTo As String, description As String, descriptionAr As String, requestReason As String)
        Try
            Dim outgoingQueryString As NameValueCollection = HttpUtility.ParseQueryString(String.Empty)

            outgoingQueryString.Add("""items""", " [{""codeType"": """ & codeType & """,""parentCode"": """ & parentCode & """,""itemCode"": """ & itemCode & """,""codeName"": """ & codeName & """,""codeNameAr"": """ & codeNameAr & """,""activeFrom"": """ & activeFrom & """,""activeTo"": """ & activeTo & """,""description"": """ & description & """,""descriptionAr"": """ & descriptionAr & """,""requestReason"": """ & requestReason & """}]")

            Dim jsonDataBytes = New ASCIIEncoding().GetBytes(outgoingQueryString.ToString())
            Dim result = PostRequest(New Uri(apiBaseUrl & "/api/v1.0/codetypes/requests/codes"), jsonDataBytes, "application/json", "POST")

            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("ERROR") Is Nothing Then

            Else
                'bm.ShowMSG(result0("ERROR")("details")("message"))
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub



    '24. Search my EGS code usage requests
    Public CodeTypes
    Public Sub SearchEGSCodeUsageRequests()
        Try
            Dim result = GetRequest(apiBaseUrl & "/api/v1.0/codetypes/requests/my?Active=true&Status=Approved&PageSize=10&PageNumber=1&OrderDirections=Descending")
            CodeTypes = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub




    '25. Request Code Reuse
    Public Sub RequestCodeReuse(codeType As String, itemCode As String, comment As String)
        Try
            Dim result = PutRequest("api/v1.0/codetypes/requests/codeusages", "{items: [                                     {
                        codeType:""" & codeType & """,
                        itemCode:""" & itemCode & """,
                        comment:""" & comment & """
                         }
                    ]
                }")
            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("failedItems") Is Nothing Then

            Else
                For Each msg In result0("failedItems")
                    bm.ShowMSG(msg("errors").ToString)
                Next
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '26. Search Published Codes
    Public Sub SearchPublishedCodes(CodeType As String, ParentLevelName As String)
        Try
            Dim result = GetRequest(apiBaseUrl & "/api/v1.0/codetypes/" & CodeType & "/codes?ParentLevelName=" & ParentLevelName & "&OnlyActive=true&ActiveFrom=2019-01-01T00:00:00Z&Ps=10&Pn=1&OrdDir=Descending&CodeTypeLevelNumber=5)")
            CodeDetails = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '27. Get Code Details By Item Code
    Public CodeDetails
    Public Sub GetCodeDetailsByItemCode(CodeType As String, ItemCode As String)
        Try
            Dim result = GetRequest(apiBaseUrl & "/api/v1.0/codetypes/" & CodeType & "/codes/" & ItemCode)
            CodeDetails = JsonConvert.DeserializeObject(result)("result")
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '28. Update EGS Code Usage
    Public Sub GetCodeDetailsByItemCode(CodeUsageRequestId As String)
        Try
            Dim result = PutRequest("api/v1.0/codetypes/requests/codes/" & CodeUsageRequestId, "")
            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("ERROR") Is Nothing Then

            Else
                bm.ShowMSG(result0("ERROR")("details")("message"))
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub

    '29. Update Code
    Public Sub UpdateCode(CodeType As String, ItemCode As String)
        Try
            Dim result = PutRequest("api/v1.0/codetypes/" & CodeType & "/codes/" & ItemCode, "")
            Dim result0 = JsonConvert.DeserializeObject(result)
            If result0("ERROR") Is Nothing Then

            Else
                bm.ShowMSG(result0("ERROR")("details")("message"))
            End If
        Catch ex As Exception
            'bm.ShowMSG(ex.Message)
        End Try
    End Sub



End Class
