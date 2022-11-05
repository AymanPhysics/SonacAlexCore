
GO
/****** Object:  Table [dbo].[TaxApi_TaxTypes]    Script Date: 2021-05-25 1:10:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxApi_TaxTypes]') AND type in (N'U'))
DROP TABLE [dbo].[TaxApi_TaxTypes]
GO
/****** Object:  Table [dbo].[TaxApi_TaxSubTypes]    Script Date: 2021-05-25 1:10:17 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaxApi_TaxSubTypes]') AND type in (N'U'))
DROP TABLE [dbo].[TaxApi_TaxSubTypes]
GO
/****** Object:  Table [dbo].[TaxApi_TaxSubTypes]    Script Date: 2021-05-25 1:10:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxApi_TaxSubTypes](
	[TypeCODE] [nvarchar](10) NULL,
	[CODE] [nvarchar](10) NULL,
	[DESCRIPTION] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaxApi_TaxTypes]    Script Date: 2021-05-25 1:10:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxApi_TaxTypes](
	[CODE] [nvarchar](10) NULL,
	[DESCRIPTION] [nvarchar](100) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V001', N'تصدير للخارج')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V002', N'تصدير مناطق حرة وأخرى')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V003', N'سلعة أو خدمة معفاة')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V004', N'سلعة أو خدمة غير خاضعة للضريبة')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V005', N'إعفاءات دبلوماسين والقنصليات والسفارات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V006', N'إعفاءات الدفاع والأمن القومى')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V007', N'إعفاءات اتفاقيات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V008', N'إعفاءات خاصة و أخرى')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V009', N'سلع عامة')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T1', N'V010', N'نسب ضريبة أخرى')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T2', N'Tbl01', N'ضريبه الجدول (نسبيه)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T3', N'Tbl02', N'ضريبه الجدول (النوعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W001', N'المقاولات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W002', N'التوريدات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W003', N'المشتريات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W004', N'الخدمات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W005', N'المبالغ التي تدفعها الجميعات التعاونية للنقل بالسيارات لاعضائها')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W006', N'الوكالة بالعمولة والسمسرة')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W007', N'الخصومات والمنح والحوافز الاستثنائية ةالاضافية التي تمنحها شركات الدخان والاسمنت')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W008', N'جميع الخصومات والمنح والعمولات التي تمنحها شركات البترول والاتصالات … وغيرها من الشركات المخاطبة بنظام الخصم')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W009', N'مساندة دعم الصادرات التي يمنحها صندوق تنمية الصادرات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W010', N'اتعاب مهنية')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W011', N'العمولة والسمسرة _م_57')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W012', N'تحصيل المستشفيات من الاطباء')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W013', N'الاتاوات')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W014', N'تخليص جمركي')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W015', N'أعفاء')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T4', N'W016', N'دفعات مقدمه')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T5', N'ST01', N'ضريبه الدمغه (نسبيه)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T6', N'ST02', N'ضريبه الدمغه (قطعيه بمقدار ثابت)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T7', N'Ent01', N'ضريبة الملاهى (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T7', N'Ent02', N'ضريبة الملاهى (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T8', N'RD01', N'رسم تنميه الموارد (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T8', N'RD02', N'رسم تنميه الموارد (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T9', N'SC01', N'رسم خدمة (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T9', N'SC02', N'رسم خدمة (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T10', N'Mn01', N'رسم المحليات (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T10', N'Mn02', N'رسم المحليات (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T11', N'MI01', N'رسم التامين الصحى (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T11', N'MI02', N'رسم التامين الصحى (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T12', N'OF01', N'رسوم أخرى (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T12', N'OF02', N'رسوم أخرى (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T13', N'ST03', N'ضريبه الدمغه (نسبيه)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T14', N'ST04', N'ضريبه الدمغه (قطعيه بمقدار ثابت)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T15', N'Ent03', N'ضريبة الملاهى (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T15', N'Ent04', N'ضريبة الملاهى (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T16', N'RD03', N'رسم تنميه الموارد (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T16', N'RD04', N'رسم تنميه الموارد (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T17', N'SC03', N'رسم خدمة (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T17', N'SC04', N'رسم خدمة (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T18', N'Mn03', N'رسم المحليات (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T18', N'Mn04', N'رسم المحليات (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T19', N'MI03', N'رسم التامين الصحى (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T19', N'MI04', N'رسم التامين الصحى (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T20', N'OF03', N'رسوم أخرى (نسبة)')
GO
INSERT [dbo].[TaxApi_TaxSubTypes] ([TypeCODE], [CODE], [DESCRIPTION]) VALUES (N'T20', N'OF04', N'رسوم أخرى (قطعية)')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T1', N'Taxable - Value added tax - ضريبه القيمه المضافه')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T2', N'Taxable - Table tax (percentage) - ضريبه الجدول (نسبيه)')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T3', N'Taxable - Table tax (Fixed Amount) - ضريبه الجدول (النوعية)')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T4', N'Taxable - Withholding tax (WHT) - الخصم تحت حساب الضريبه')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T5', N'Taxable - Stamping tax (percentage) - ضريبه الدمغه (نسبيه)')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T6', N'Taxable - Stamping Tax (amount) - ضريبه الدمغه (قطعيه بمقدار ثابت)')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T7', N'Taxable - Entertainment tax - ضريبة الملاهى')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T8', N'Taxable - Resource development fee - رسم تنميه الموارد')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T9', N'Taxable - Service charges - رسم خدمة')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T10', N'Taxable - Municipality Fees - رسم المحليات')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T11', N'Taxable - Medical insurance fee - رسم التامين الصحى')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T12', N'Taxable - Other fees - رسوم أخرى')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T13', N'Non-Taxable - Stamping tax (percentage) - ضريبه الدمغه (نسبيه)')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T14', N'Non-Taxable - Stamping Tax (amount) - ضريبه الدمغه (قطعيه بمقدار ثابت)')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T15', N'Non-Taxable - Entertainment tax - ضريبة الملاهى')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T16', N'Non-Taxable - Resource development fee - رسم تنميه الموارد')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T17', N'Non-Taxable - Service charges - رسم خدمة')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T18', N'Non-Taxable - Municipality Fees - رسم المحليات')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T19', N'Non-Taxable - Medical insurance fee - رسم التامين الصحى')
GO
INSERT [dbo].[TaxApi_TaxTypes] ([CODE], [DESCRIPTION]) VALUES (N'T20', N'Non-Taxable - Other fees - رسوم أخرى')
GO
