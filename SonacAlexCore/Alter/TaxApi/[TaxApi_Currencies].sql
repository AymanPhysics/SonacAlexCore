
/****** Object:  Table [dbo].[TaxApi_Currencies]    Script Date: 2021-05-22 8:10:15 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxApi_Currencies]') AND type in (N'U'))
DROP TABLE [dbo].[TaxApi_Currencies]
GO
/****** Object:  Table [dbo].[TaxApi_Currencies]    Script Date: 2021-05-22 8:10:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxApi_Currencies](
	[CODE] [nvarchar](100) NULL,
	[Name] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'AED', N'UAE Dirham')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'AFN', N'Afghani')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ALL', N'Lek')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'AMD', N'Armenian Dram')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ANG', N'Netherlands Antillean Guilder')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'AOA', N'Kwanza')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ARS', N'Argentine Peso')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'AUD', N'Australian Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'AWG', N'Aruban Florin')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'AZN', N'Azerbaijan Manat')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BAM', N'Convertible Mark')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BBD', N'Barbados Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BDT', N'Taka')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BGN', N'Bulgarian Lev')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BHD', N'Bahraini Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BIF', N'Burundi Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BMD', N'Bermudian Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BND', N'Brunei Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BOB', N'Boliviano')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BOV', N'Mvdol')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BRL', N'Brazilian Real')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BSD', N'Bahamian Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BTN', N'Ngultrum')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BWP', N'Pula')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BYN', N'Belarusian Ruble')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'BZD', N'Belize Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CAD', N'Canadian Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CDF', N'Congolese Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CHE', N'WIR Euro')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CHF', N'Swiss Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CHW', N'WIR Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CLF', N'Unidad de Fomento')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CLP', N'Chilean Peso')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CNY', N'Yuan Renminbi')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'COP', N'Colombian Peso')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'COU', N'Unidad de Valor Real')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CRC', N'Costa Rican Colon')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CUC', N'Peso Convertible')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CUP', N'Cuban Peso')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CVE', N'Cabo Verde Escudo')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'CZK', N'Czech Koruna')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'DJF', N'Djibouti Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'DKK', N'Danish Krone')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'DOP', N'Dominican Peso')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'DZD', N'Algerian Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'EGP', N'Egyptian Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ERN', N'Nakfa')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ETB', N'Ethiopian Birr')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'EUR', N'Euro')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'FJD', N'Fiji Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'FKP', N'Falkland Islands Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GBP', N'Pound Sterling')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GEL', N'Lari')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GHS', N'Ghana Cedi')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GIP', N'Gibraltar Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GMD', N'Dalasi')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GNF', N'Guinean Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GTQ', N'Quetzal')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'GYD', N'Guyana Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'HKD', N'Hong Kong Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'HNL', N'Lempira')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'HRK', N'Kuna')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'HTG', N'Gourde')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'HUF', N'Forint')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'IDR', N'Rupiah')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ILS', N'New Israeli Sheqel')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'INR', N'Indian Rupee')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'IQD', N'Iraqi Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'IRR', N'Iranian Rial')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ISK', N'Iceland Krona')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'JMD', N'Jamaican Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'JOD', N'Jordanian Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'JPY', N'Yen')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KES', N'Kenyan Shilling')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KGS', N'Som')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KHR', N'Riel')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KMF', N'Comorian Franc ')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KPW', N'North Korean Won')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KRW', N'Won')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KWD', N'Kuwaiti Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KYD', N'Cayman Islands Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'KZT', N'Tenge')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'LAK', N'Lao Kip')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'LBP', N'Lebanese Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'LKR', N'Sri Lanka Rupee')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'LRD', N'Liberian Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'LSL', N'Loti')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'LYD', N'Libyan Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MAD', N'Moroccan Dirham')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MDL', N'Moldovan Leu')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MGA', N'Malagasy Ariary')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MKD', N'Denar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MMK', N'Kyat')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MNT', N'Tugrik')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MOP', N'Pataca')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MRU', N'Ouguiya')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MUR', N'Mauritius Rupee')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MVR', N'Rufiyaa')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MWK', N'Malawi Kwacha')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MXN', N'Mexican Peso')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MXV', N'Mexican Unidad de Inversion (UDI)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MYR', N'Malaysian Ringgit')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'MZN', N'Mozambique Metical')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'NAD', N'Namibia Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'NGN', N'Naira')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'NIO', N'Cordoba Oro')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'NOK', N'Norwegian Krone')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'NPR', N'Nepalese Rupee')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'NZD', N'New Zealand Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'OMR', N'Rial Omani')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'PAB', N'Balboa')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'PEN', N'Sol')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'PGK', N'Kina')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'PHP', N'Philippine Peso')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'PKR', N'Pakistan Rupee')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'PLN', N'Zloty')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'PYG', N'Guarani')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'QAR', N'Qatari Rial')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'RON', N'Romanian Leu')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'RSD', N'Serbian Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'RUB', N'Russian Ruble')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'RWF', N'Rwanda Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SAR', N'Saudi Riyal')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SBD', N'Solomon Islands Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SCR', N'Seychelles Rupee')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SDG', N'Sudanese Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SEK', N'Swedish Krona')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SGD', N'Singapore Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SHP', N'Saint Helena Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SLL', N'Leone')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SOS', N'Somali Shilling')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SRD', N'Surinam Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SSP', N'South Sudanese Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'STN', N'Dobra')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SVC', N'El Salvador Colon')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SYP', N'Syrian Pound')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'SZL', N'Lilangeni')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'THB', N'Baht')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TJS', N'Somoni')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TMT', N'Turkmenistan New Manat')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TND', N'Tunisian Dinar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TOP', N'Pa’anga')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TRY', N'Turkish Lira')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TTD', N'Trinidad and Tobago Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TWD', N'New Taiwan Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'TZS', N'Tanzanian Shilling')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'UAH', N'Hryvnia')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'UGX', N'Uganda Shilling')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'USD', N'US Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'USN', N'US Dollar (Next day)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'UYI', N'Uruguay Peso en Unidades Indexadas (UI)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'UYU', N'Peso Uruguayo')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'UYW', N'Unidad Previsional')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'UZS', N'Uzbekistan Sum')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'VES', N'Bolívar Soberano')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'VND', N'Dong')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'VUV', N'Vatu')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'WST', N'Tala')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XAF', N'CFA Franc BEAC')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XAG', N'Silver')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XAU', N'Gold')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XBA', N'Bond Markets Unit European Composite Unit (EURCO)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XBB', N'Bond Markets Unit European Monetary Unit (E.M.U.-6)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XBC', N'Bond Markets Unit European Unit of Account 9 (E.U.A.-9)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XBD', N'Bond Markets Unit European Unit of Account 17 (E.U.A.-17)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XCD', N'East Caribbean Dollar')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XDR', N'SDR (Special Drawing Right)')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XOF', N'CFA Franc BCEAO')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XPD', N'Palladium')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XPF', N'CFP Franc')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XPT', N'Platinum')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XSU', N'Sucre')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XTS', N'Codes specifically reserved for testing purposes')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XUA', N'ADB Unit of Account')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'XXX', N'The codes assigned for transactions where no currency is involved')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'YER', N'Yemeni Rial')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ZAR', N'Rand')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ZMW', N'Zambian Kwacha')
GO
INSERT [dbo].[TaxApi_Currencies] ([CODE], [Name]) VALUES (N'ZWL', N'Zimbabwe Dollar')
GO
