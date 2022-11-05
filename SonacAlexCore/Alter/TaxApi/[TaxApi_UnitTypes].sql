
/****** Object:  Table [dbo].[TaxApi_UnitTypes]    Script Date: 2021-05-22 2:38:28 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxApi_UnitTypes]') AND type in (N'U'))
DROP TABLE [dbo].[TaxApi_UnitTypes]
GO
CREATE TABLE [dbo].[TaxApi_UnitTypes](
	[CODE] [nvarchar](100) NULL,
	[ENGLISH_DESCRIPTION] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'2Z', N'Millivolt ( mV )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'4K', N'Milliampere ( mA )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'4O', N'Microfarad ( microF )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'A87', N'Gigaohm ( GOhm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'A93', N'Gram/Cubic meter ( g/m3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'A94', N'Gram/cubic centimeter ( g/cm3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'AMP', N'Ampere ( A )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'ANN', N'Years ( yr )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'B22', N'Kiloampere ( kA )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'B49', N'Kiloohm ( kOhm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'B75', N'Megohm ( MOhm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'B78', N'Megavolt ( MV )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'B84', N'Microampere ( microA )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'BAR', N'bar ( bar )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'BG', N'Bag ( Bag )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'BO', N'Bottle ( Bt. )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'C10', N'Millifarad ( mF )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'C39', N'Nanoampere ( nA )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'C41', N'Nanofarad ( nF )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'C45', N'Nanometer ( nm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'C62', N'Activity unit ( AU )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'CA', N'Canister ( Can )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'CMK', N'Square centimeter ( cm2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'CMQ', N'Cubic centimeter ( cm3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'CMT', N'Centimeter ( cm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'CS', N'Case ( Case )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'CT', N'Carton ( Car )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'CTL', N'Centiliter ( Cl )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'D10', N'Siemens per meter ( S/m )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'D33', N'Tesla ( D )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'D41', N'Ton/Cubic meter ( t/m3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'DAY', N'Days ( d )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'DMT', N'Decimeter ( dm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'EA', N'each (ST) ( ST )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'FAR', N'Farad ( F )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'FOT', N'Foot ( Foot )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'FTK', N'Square foot ( ft2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'FTQ', N'Cubic foot ( ft3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'G42', N'Microsiemens per centimeter ( microS/cm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'GL', N'Gram/liter ( g/l )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'GLL', N'gallon ( gal )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'GM', N'Gram/square meter ( g/m2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'GRM', N'Gram ( g )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'H63', N'Milligram/Square centimeter ( mg/cm2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'HLT', N'Hectoliter ( hl )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'HTZ', N'Hertz (1/second) ( Hz )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'HUR', N'Hours ( hrs )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'IE', N'Number of Persons ( PRS )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'INH', N'Inch ( “” )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'INK', N'Square inch ( Inch2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KGM', N'Kilogram ( KG )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KHZ', N'Kilohertz ( kHz )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KMH', N'Kilometer/hour ( km/h )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KMK', N'Square kilometer ( km2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KMQ', N'Kilogram/cubic meter ( kg/m3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KMT', N'Kilometer ( km )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KSM', N'Kilogram/Square meter ( kg/m2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KVT', N'Kilovolt ( kV )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'KWT', N'Kilowatt ( KW )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'LTR', N'Liter ( l )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'M', N'Meter ( m )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MAW', N'Megawatt ( VA )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MGM', N'Milligram ( mg )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MHZ', N'Megahertz ( MHz )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MIN', N'Minute ( min )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MMK', N'Square millimeter ( mm2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MMQ', N'Cubic millimeter ( mm3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MMT', N'Millimeter ( mm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MON', N'Months ( Months )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MTK', N'Square meter ( m2 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'MTQ', N'Cubic meter ( m3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'OHM', N'Ohm ( Ohm )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'ONZ', N'Ounce ( oz )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'PAL', N'Pascal ( Pa )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'PF', N'Pallet ( PAL )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'PK', N'Pack ( PAK )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'SH', N'Shrink ( Shrink )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'SMI', N'Mile ( mile )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'TNE', N'Tonne ( t )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'VLT', N'Volt ( V )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'WEE', N'Weeks ( Weeks )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'WTT', N'Watt ( W )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'X03', N'Meter/Hour ( m/h )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'YDQ', N'Cubic yard ( yd3 )')
GO
INSERT [dbo].[TaxApi_UnitTypes] ([CODE], [ENGLISH_DESCRIPTION]) VALUES (N'YRD', N'Yards ( yd )')
GO
