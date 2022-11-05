create table TaxApi_issuer(
issuer_address_branchID nvarchar(1000),
issuer_address_country nvarchar(1000),
issuer_address_governate nvarchar(1000),
issuer_address_regionCity nvarchar(1000),
issuer_address_street nvarchar(1000),
issuer_address_buildingNumber nvarchar(1000),
issuer_address_postalCode nvarchar(1000),
issuer_address_floor nvarchar(1000),
issuer_address_room nvarchar(1000),
issuer_address_landmark nvarchar(1000),
issuer_address_additionalInformation nvarchar(1000),
issuer_type nvarchar(1000),
issuer_id nvarchar(1000),
issuer_name nvarchar(1000)
)
go
delete TaxApi_issuer
insert TaxApi_issuer
select 
'0',
'EG',
'Cairo',
'Heliopolis',
'1 Ç Ô ãÍÑã ÔæŞí ãÕÑ ÇáÌÏíÏå ÇáŞÇåÑå',
'',
'',
'',
'',
'',
'',
'B',
267222203,
'ÓæäÇß ÇáÇåáíÉ ááÊÌÇÑÉ'
go


alter  table TaxApi_issuer add
taxpayerActivityCode nvarchar(1000) default '4690'

go

alter  table Customers add
receiver_address_branchID nvarchar(1000) default '',
receiver_address_country nvarchar(1000) default '',
receiver_address_governate nvarchar(1000) default '',
receiver_address_regionCity nvarchar(1000) default '',
receiver_address_street nvarchar(1000) default '',
receiver_address_buildingNumber nvarchar(1000) default '',
receiver_address_postalCode nvarchar(1000) default '',
receiver_address_floor nvarchar(1000) default '',
receiver_address_room nvarchar(1000) default '',
receiver_address_landmark nvarchar(1000) default '',
receiver_address_additionalInformation nvarchar(1000) default '',
receiver_type nvarchar(1000) default '',
receiver_id nvarchar(1000) default '',
receiver_name nvarchar(1000) default ''

go