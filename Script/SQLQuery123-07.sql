Create Table tb_Domain
( 
ID int identity(1,1) constraint pk_DID primary key(ID) not null,
Domain_Name nvarchar(MAX) not null,
S_Status nvarchar(MAX)not null,
C_Date DateTime not null,
)
drop table tb_Domain
select  * from tb_Domain

=================================================================================================

truncate table tb_Domain
ALTER TABLE tb_Domain
ADD Cmp_ID_Proof nvarchar(MAX) null
ALTER TABLE tb_Domain
ADD PAN_Card nvarchar(MAX) null,Adhar_Card nvarchar(MAX) null,Passport nvarchar(MAX) null,Address_Proof nvarchar(MAX) null,Seven_Twevel nvarchar(MAX) null,Form_16 nvarchar(MAX) null,Dealer_Lisence nvarchar(MAX) null,Other_ID_Proof nvarchar(MAX) null,No_Documents nvarchar(MAX) null

===================================================================================================
Create Table tlb_Products
( 
ID int identity(1,1) constraint pk_Domain_ID primary key(ID)  not null,
Domain_ID int CONSTRAINT fk_PID FOREIGN KEY REFERENCES tb_Domain NOT NULL,
Product_Name nvarchar(MAX)not null,
S_Status nvarchar(MAX)not null,
C_Date DateTime not null,
)
drop table tlb_Products
select  * from tlb_Products
truncate table tlb_Products
====================================================================================================
Create Table tlb_Brand
(
ID int IDENTITY(1,1) CONSTRAINT pk_Product_ID PRIMARY KEY(ID)not null,
Product_ID int CONSTRAINT fk_BID FOREIGN KEY REFERENCES tlb_Products NOT NULL,
Brand_Name nvarchar(MAX) not null,
S_Status nvarchar(MAX)not null,
C_Date DateTime not null,
)
drop table tlb_Brand
select * from tlb_Brand
truncate table tlb_Brand
=======================================================================================================
Create Table tlb_P_Category
(
ID int IDENTITY(1,1) CONSTRAINT pk_Brand_ID PRIMARY KEY(ID)not null,
Brand_ID int CONSTRAINT fk_PCID FOREIGN KEY REFERENCES tlb_Brand NOT NULL,
Product_Category nvarchar(MAX) not null,
S_Status nvarchar(MAX)not null,
C_Date DateTime not null,
)
drop table tlb_P_Category
select * from tlb_P_Category

truncate table tlb_P_Category
=========================================================================================================

Create Table tlb_Model
(
ID int IDENTITY(1,1) CONSTRAINT pk_P_Category_ID PRIMARY KEY(ID)not null,
P_Category int CONSTRAINT fk_MID FOREIGN KEY REFERENCES tlb_P_Category NOT NULL,
Model_No nvarchar(MAX) not null,
S_Status nvarchar(MAX)not null,
C_Date DateTime not null,
)
drop table tlb_Model
select * from tlb_Model
truncate table tlb_Model
========================================================================================================


Create Table tlb_Color
(
ID int IDENTITY(1,1) CONSTRAINT pk_ModelNo PRIMARY KEY(ID)not null,
Model_No_ID int CONSTRAINT fk_CID FOREIGN KEY REFERENCES tlb_Model NOT NULL,
Color nvarchar(MAX) not null,
S_Status nvarchar(MAX)not null,
C_Date DateTime not null,
)
drop table tlb_Color
select * from tlb_Color
truncate table tlb_Color
=========================================================================================================
Create Table Pre_Products
( ID int IDENTITY(1,1) CONSTRAINT pk_ID PRIMARY KEY(ID)not null,
 Domain_ID int CONSTRAINT fk_DomainID FOREIGN KEY REFERENCES tb_Domain NOT NULL,
 Product_ID int CONSTRAINT fk_ProductID FOREIGN KEY REFERENCES tlb_Products NOT NULL,
 Brand_ID int CONSTRAINT fk_BrandID FOREIGN KEY REFERENCES tlb_Brand NOT NULL,
 P_Category int CONSTRAINT fk_PCategoryID FOREIGN KEY REFERENCES tlb_P_Category NOT NULL,
 Model_No_ID int CONSTRAINT fk_modelID FOREIGN KEY REFERENCES tlb_Model NOT NULL,
 Color_ID int CONSTRAINT fk_ColorID FOREIGN KEY REFERENCES tlb_Color NOT NULL,
 Narration nvarchar(MAX) not null,
 Price money not null,
 S_Status nvarchar(MAX),
	C_Date DateTime
 )
 Drop table Pre_Products
 select* from Pre_Products
 =======================================================================================================
 Create Table Pre_Procurement
 (
 ID int IDENTITY(1,1) CONSTRAINT pk_Pro_ID PRIMARY KEY(ID)not null,
 DealerID int CONSTRAINT fk_DealerEntryID FOREIGN KEY REFERENCES tbl_DealerEntry NOT NULL,
 Domain_ID int CONSTRAINT fk_ProDomainID FOREIGN KEY REFERENCES tb_Domain NOT NULL,
 Product_ID int CONSTRAINT fk_ProProductID FOREIGN KEY REFERENCES tlb_Products NOT NULL,
 Brand_ID int CONSTRAINT fk_ProBrandID FOREIGN KEY REFERENCES tlb_Brand NOT NULL,
 P_Category int CONSTRAINT fk_ProPCategoryID FOREIGN KEY REFERENCES tlb_P_Category NOT NULL,
 Model_No_ID int CONSTRAINT fk_PromodelID FOREIGN KEY REFERENCES tlb_Model NOT NULL,
 Color_ID int CONSTRAINT fk_ProColorID FOREIGN KEY REFERENCES tlb_Color NOT NULL,
 Procurment_Price money not null,
 Quantity money not null,
 Total_Amount money not null,
 Net_Amount money not null,
 Round_Off money not null,
 Reg_Document  nvarchar(MAX) not null,
 Have_Insurance nvarchar(MAX) not null,
 Warranty nvarchar(MAX) not null,
 re_ferb_cost nvarchar(MAX) null,
 Follow_up nvarchar(MAX) not null,
 Narration nvarchar(MAX) not null,
 PendingPreProc nvarchar(MAX) not null,
 S_Status nvarchar(MAX) not null,
 C_Date nvarchar(MAX) not null
 
 )
 
 Drop  table Pre_Procurement
 Select * from Pre_Procurement
 
=======================================================================================
 
 Create Table tbl_Employee
(
	ID int identity(1,1) constraint pk_EmployeeID primary key(ID) not null,
	EmployeeID nvarchar(MAX) not null,
	EmployeeFirstName nvarchar(MAX) not null,
	EmployeeLastName nvarchar(MAX),
	DateOfBirth nvarchar(MAX) not null,
	MobileNo nvarchar(MAX) not null,
	PhoneNo nvarchar(MAX) not null,
	EmpAddress nvarchar(MAX) not null,
	EmpCity nvarchar(MAX) not null,
	EmpZipNo nvarchar(MAX) not null,
	EmpState nvarchar(MAX) not null,
	EmpCountry nvarchar(MAX) not null,
	Designation nvarchar(MAX) not null,
	DateOfJoining datetime not null,
	NoOfYears nvarchar(MAX) not null,
	Years nvarchar(MAX) not null,
	NoOfMonths nvarchar(MAX) not null,
	Months nvarchar(MAX) not null,
	Salary money not null,
	S_Status nvarchar(MAX)not null,
	C_Date DateTime not null,
)
drop table tbl_Employee
select  * from tbl_Employee
==========================================================================================
create table tbl_EmployeePhoto
(
	ID int identity(1,1) constraint pk_tbl_EmployeePhoto primary key(ID) not null,
	EmployeeID int CONSTRAINT fk_D_tbl_Employee FOREIGN KEY REFERENCES tbl_Employee NOT NULL,
	PhotoPath nvarchar(MAX) not null,
	EmpImage image,
	S_Status nvarchar(MAX)not null,
	C_Date DateTime not null,
)
drop table tbl_EmployeePhoto
select * from tbl_EmployeePhoto
==========================================================================================

create table tlb_FollowUp
(
ID int identity(1,1) constraint pk_Follow_ID primary key(ID) not null,
Followup_ID nvarchar(MAX) not null,
FiratName nvarchar(MAX) not null,
LastName nvarchar(MAX) not null,
Date_Of_Birth nvarchar(MAX) not null,
Occupation nvarchar(MAX) not null,
Mobile_No nvarchar(MAX) not null,
Phone_No nvarchar(MAX) not null,
Email_ID nvarchar(MAX) not null,
Address nvarchar(MAX) not null,
City nvarchar(MAX) not null,
ZipNo nvarchar(MAX) not null,
State nvarchar(MAX) not null,
Country nvarchar(MAX) not null,
Product_Details nvarchar(MAX) not null,
EmployeeID int CONSTRAINT fk_Follow_EmployeeID FOREIGN KEY REFERENCES tbl_Employee NOT NULL,
Followup_Type nvarchar(MAX) not null,
F_Date nvarchar(MAX) null,
SourceOfEnquiry nvarchar(MAX) null,
SourceEnquiryID int not null,
S_Status nvarchar(MAX) not null,
C_Date nvarchar(MAX) not null,
)
select * from tlb_FollowUp
drop table tlb_FollowUp

==========================================================================================

Create Table tbl_DealerEntry
(
	ID int identity(1,1) constraint pk_DealerEntryID primary key(ID) not null,
	DealerEntryID nvarchar(MAX) not null,
	CompanyName nvarchar(MAX) not null,
	DealerFirstName nvarchar(MAX) not null,
	DealerLastName nvarchar(MAX) not null,
	DateOfBirth nvarchar(MAX) not null,
	MobileNo nvarchar(MAX) not null,
	PhoneNo nvarchar(MAX) not null,
	DealerAddress nvarchar(MAX) not null,
	City nvarchar(MAX) not null,
	Zip nvarchar(MAX) not null,
	DState nvarchar(MAX) not null,
	Country nvarchar(MAX) not null,
	S_Status nvarchar(MAX)not null,
	C_Date nvarchar(MAX) not null,
)
drop table tbl_DealerEntry
select  * from tbl_DealerEntry

============================================================================================

Create Table StockDetails
(
 ID int IDENTITY(1,1) CONSTRAINT pk_StockDetailsID PRIMARY KEY(ID)not null,
 Domain_ID int CONSTRAINT fk_D_StockDetailsID FOREIGN KEY REFERENCES tb_Domain NOT NULL,
 Product_ID int CONSTRAINT fk_P_StockDetailsID FOREIGN KEY REFERENCES tlb_Products NOT NULL,
 Brand_ID int CONSTRAINT fk_B_StockDetailsID FOREIGN KEY REFERENCES tlb_Brand NOT NULL,
 P_Category int CONSTRAINT fk_PC_StockDetailsID FOREIGN KEY REFERENCES tlb_P_Category NOT NULL,
 Model_No_ID int CONSTRAINT fk_M_StockDetailsID FOREIGN KEY REFERENCES tlb_Model NOT NULL,
 Color_ID int CONSTRAINT fk_C_StockDetailsID FOREIGN KEY REFERENCES tlb_Color NOT NULL,
 Products123 nvarchar(MAX) not null,
 AvilableQty nvarchar(MAX) not null,
 SaleQty nvarchar(MAX) not null,
 NewQty nvarchar(MAX) not null,
 FinalPrice money,
 HaveInsurance varchar(MAX) not null,
 S_Status nvarchar(MAX)not null,
 C_Date nvarchar(MAX) not null,
)
drop table StockDetails
select  * from StockDetails

================================================================================================

Create Table Final_DealerDetails
(
 ID int IDENTITY(1,1) CONSTRAINT pk_Final_DealerID PRIMARY KEY(ID)not null,
 Dealer_ID int CONSTRAINT fk_D_Final_DealerEntryID FOREIGN KEY REFERENCES tbl_DealerEntry NOT NULL,
 SalesID nvarchar(MAX) not null,
 Domain_ID int CONSTRAINT fk_D_Final_DealerDetailsID FOREIGN KEY REFERENCES tb_Domain NOT NULL,
 Product_ID int CONSTRAINT fk_P_Final_DealerDetailsID FOREIGN KEY REFERENCES tlb_Products NOT NULL,
 Brand_ID int CONSTRAINT fk_B_Final_DealerDetailsID FOREIGN KEY REFERENCES tlb_Brand NOT NULL,
 P_Category int CONSTRAINT fk_PC_Final_DealerDetailsID FOREIGN KEY REFERENCES tlb_P_Category NOT NULL,
 Model_No_ID int CONSTRAINT fk_M_Final_DealerDetailsID FOREIGN KEY REFERENCES tlb_Model NOT NULL,
 Color_ID int CONSTRAINT fk_C_Final_DealerDetailsID FOREIGN KEY REFERENCES tlb_Color NOT NULL,
 ProcNetAmt money not null,
 ProcPrice money not null,
 ProcQty nvarchar(MAX) not null,
 FinalPrice money not null,
 FinalQty nvarchar(MAX) not null,
 SubTotal money not null,
 RoundUp money not null,
 NetAmt money not null,
 SDefault nvarchar(MAX) not null,
 ServiceIntervalMonth nvarchar(MAX) not null,
 S_Status nvarchar(MAX)not null,
 C_Date nvarchar(MAX) not null,
)
drop table Final_DealerDetails
select  * from Final_DealerDetails

=======================================================================================================

create table tlb_AddTax
(
ID int identity(1,1) constraint pk_addtaxID primary key(ID) not null,
Tax_Type nvarchar(MAX) not null,
Tax_Percentage money not null,
S_Status nvarchar(MAX)not null,
C_Date nvarchar(MAX)not null,
)

drop table tlb_AddTax
select * from tlb_AddTax

=======================================================================================================
Create Table tlb_Customer
(
ID int Identity(1,1) constraint CId primary key(ID) not null,
Cust_ID nvarchar(MAX) not null,
FirstName nvarchar(MAX) not null,
LastName nvarchar(MAX) not null,
Date_Of_Birth nvarchar(MAX) not null,
Occupation nvarchar(MAX) not null,
Mobile_No nvarchar(MAX) not null,
PhoneNo nvarchar(MAX) not null,
Email_ID nvarchar(MAX) not null,
Address nvarchar(MAX) not null,
City nvarchar(MAX) not null,
ZipNo nvarchar(MAX) not null,
State nvarchar(MAX) not null,
Country nvarchar(MAX) not null,
SourceOfEnquiry nvarchar(MAX) not null,
SourceEnquiryID int not null,
S_Status nvarchar(MAX) not null,
C_Date nvarchar(MAX) not null,
)

Drop Table tlb_Customer
Select * from tlb_Customer
Truncate Table tlb_Customer

=======================================================================================================

Create Table tlb_Bill_No
(
ID int identity(1,1) constraint  pk_Billid primary key (ID) not null,
Customer_ID int CONSTRAINT fkbID FOREIGN KEY REFERENCES tlb_Customer NOT NULL,
Employee_ID int CONSTRAINT fk_Employee_ID FOREIGN KEY REFERENCES tbl_Employee NOT NULL,
Bill_No nvarchar(MAX) not null,
Payment_Mode nvarchar(MAX) null,
Total_Price Money not null,
Paid_Amount Money not null,
Balance_Amount Money not null,
S_Status nvarchar(MAX)not null,
C_Date nvarchar(MAX) not null,
)

Drop Table tlb_Bill_No
Select * From tlb_Bill_No
=======================================================================================================

Create Table tlb_Cash
(
ID int IDENTITY(1,1) CONSTRAINT PKCasdid PRIMARY KEY(ID) NOT NULL,
Customer_ID int CONSTRAINT fk_cashID FOREIGN KEY REFERENCES tlb_Customer NOT NULL,
Bill_No nvarchar(MAX) not null,
Total_Price money not null,
Paid_Amount money not null,
Balance_Amount money not null,
S_Status nvarchar(MAX)not null,
C_Date nvarchar(MAX) not null,
)

Drop table tlb_Cash
Select * From tlb_Cash

=========================================================================================================

create table tlb_Cheque
(
ID int IDENTITY(1,1) CONSTRAINT PKChkid PRIMARY KEY(ID) NOT NULL,
Customer_ID int CONSTRAINT fkchkID FOREIGN KEY REFERENCES tlb_Customer NOT NULL,
Bill_No nvarchar(MAX) not null,
Total_Price money not null,
Cheque_Amount money not null,
Cheque_No nvarchar(MAX) not null,
Cheque_Date nvarchar(MAX) not null,
Cheque_Bank_Name nvarchar(MAX) not null,
IsClear nvarchar(MAX)not null,
S_Status nvarchar(MAX)not null,
C_Date nvarchar(MAX) not null,
)

drop Table tlb_Cheque
Select * From tlb_Cheque

=========================================================================================================

Create Table tlb_InvoiceDetails
(
ID int IDENTITY(1,1) CONSTRAINT pk_InvcID PRIMARY KEY(ID)not null,
Customer_ID int NOT NULL,
Bill_No nvarchar(MAX) not null,
Domain_ID int CONSTRAINT fk_D_IID FOREIGN KEY REFERENCES tb_Domain NOT NULL,
Product_ID int CONSTRAINT fk_P_IID FOREIGN KEY REFERENCES tlb_Products NOT NULL,
Brand_ID int CONSTRAINT fk_B_IID FOREIGN KEY REFERENCES tlb_Brand NOT NULL,
P_Category int CONSTRAINT fk_PC_IID FOREIGN KEY REFERENCES tlb_P_Category NOT NULL,
Model_No_ID int CONSTRAINT fk_M_IID FOREIGN KEY REFERENCES tlb_Model NOT NULL,
Color_ID int CONSTRAINT fk_C_IID FOREIGN KEY REFERENCES tlb_Color NOT NULL,
Products123 nvarchar(MAX) not null,
Per_Product_Price  money not null,
Qty  money not null,
C_Price  money not null,
Tax_Name  nvarchar(MAX) not null,
Tax  money not null,
Total_Price  money not null,
Payment_Mode nvarchar(MAX) null,
 S_Status nvarchar(MAX)not null,
 C_Date nvarchar(MAX) not null,
)

Drop Table tlb_InvoiceDetails
Select * from tlb_InvoiceDetails

select distinct count(Brand_ID) as BrandID From  tlb_InvoiceDetails Group By Brand_ID
Select MAX(Brand_ID) from tlb_InvoiceDetails
============================================================================================

create table tlb_Customer_Installment
(
ID int IDENTITY(1,1) CONSTRAINT PKciid PRIMARY KEY(ID) NOT NULL,
Customer_ID int CONSTRAINT fkcinsID FOREIGN KEY REFERENCES tlb_Customer NOT NULL,
Bill_No nvarchar(MAX) not null,
Total_Price money not null,
Paid_Amount money not null,
Balance_Amount money not null,
Monthly_Amount money not null,
Total_Installment_Month nvarchar(MAX) null,
Current_Installment_No nvarchar(MAX) null,
Remaining_Installments nvarchar(MAX) null,
Current_Installment_Amount money not null,
CInstallment_Date nvarchar(MAX)not null,
Paid_Unpaid nvarchar(MAX)not null,
S_Status nvarchar(MAX)not null,
C_Date nvarchar(MAX) not null,
)

Drop Table tlb_Customer_Installment
Select * from tlb_Customer_Installment
Truncate table tlb_Customer_Installment

=======================================================================================

create Table tlb_MainInstallment
(
ID int IDENTITY(1,1) CONSTRAINT PKinsid PRIMARY KEY(ID) NOT NULL,
Customer_ID int CONSTRAINT fkinsID FOREIGN KEY REFERENCES tlb_Customer NOT NULL,
Bill_No nvarchar(MAX) not null,
Total_Price money not null,
Paid_Amount money not null,
Balance_Amount money not null,
Monthly_Amount money not null,
Installment_Year nvarchar(MAX) null,
Installment_Month nvarchar(MAX) null,
Installment_Date nvarchar(MAX)not null,
S_Status nvarchar(MAX)not null,
C_Date nvarchar(MAX) not null,
)

Drop table tlb_MainInstallment
Select * from tlb_MainInstallment
Truncate Table tlb_MainInstallment

===============================================================================================

create Table tlb_InsuranceEntry
(
ID int IDENTITY(1,1) CONSTRAINT PK_tlb_InsuranceEntry PRIMARY KEY(ID) NOT NULL,
Customer_ID int CONSTRAINT fk_tlb_InsuranceEntry FOREIGN KEY REFERENCES tlb_Customer NOT NULL,
InsuranceNo nvarchar(MAX) not null,
ProductName nvarchar(MAX) not null,
InsuranceAmt Money not null,
BankName nvarchar(MAX) not null,
InsuranceDate nvarchar(MAX) not null,
NoOfYearMonths int not null,
NoOfMonth int not null,
YearsMonths nvarchar(MAX) not null,
IntervalMonths int not null,
IntervalMonthY nvarchar(MAX),
IntervalAmt money not null,
NewInsuranceDate nvarchar(MAX) not null,
FirstPartyInsurance varchar(MAX) not null,
IsClear nvarchar(MAX) not null,
S_Status nvarchar(MAX) not null,
C_Date nvarchar(MAX) not null
)

Drop table tlb_InsuranceEntry
Select * From tlb_InsuranceEntry

===========================================================================================

Create Table tlb_DefaultCustomerBirthdaySMS
(
	ID int IDENTITY(1,1) CONSTRAINT PK_DefaultCustomerBirthdaySMS PRIMARY KEY(ID) NOT NULL,
	SelectCategory nvarchar(MAX) not null,
	SMSDate nvarchar(MAX) not null,
	SMSMessage nvarchar(MAX) not null,
	S_Status nvarchar(MAX) not null,
	C_Date nvarchar(MAX) not null
)

Drop table tlb_DefaultCustomerBirthdaySMS
Select * From tlb_DefaultCustomerBirthdaySMS

===========================================================================================

Create Table tlb_CustomerBalance
(
	ID int IDENTITY(1,1) CONSTRAINT PK_tlb_CustomerBalance PRIMARY KEY(ID) NOT NULL,
	SelectCategory nvarchar(MAX) not null,
	SMSDate nvarchar(MAX) not null,
	SMSMessage nvarchar(MAX) not null,
	S_Status nvarchar(MAX) not null,
	C_Date nvarchar(MAX) not null
)

Drop table tlb_CustomerBalance
Select * From tlb_CustomerBalance

============================================================================================

Create Table tlb_Waranty
(
	ID int IDENTITY(1,1) CONSTRAINT PK_tlb_Waranty PRIMARY KEY(ID) NOT NULL,
	SelectCategory nvarchar(MAX) not null,
	SMSDate nvarchar(MAX) not null,
	SMSMessage nvarchar(MAX) not null,
	S_Status nvarchar(MAX) not null,
	C_Date nvarchar(MAX) not null
)

Drop table tlb_Waranty
Select * From tlb_Waranty

============================================================================================

Create Table tlb_InsuranceDefaultSMS
(
	ID int IDENTITY(1,1) CONSTRAINT PK_tlb_Insurance PRIMARY KEY(ID) NOT NULL,
	SelectCategory nvarchar(MAX) not null,
	SMSDate nvarchar(MAX) not null,
	SMSMessage nvarchar(MAX) not null,
	S_Status nvarchar(MAX) not null,
	C_Date nvarchar(MAX) not null
)

Drop table tlb_InsuranceDefaultSMS
Select * From tlb_InsuranceDefaultSMS

============================================================================================

Create Table tlb_DealerFollowupDefaultSMS
(
	ID int IDENTITY(1,1) CONSTRAINT PK_tlb_DealerFollowupDefaultSMS PRIMARY KEY(ID) NOT NULL,
	SelectCategory nvarchar(MAX) not null,
	SMSDate nvarchar(MAX) not null,
	SMSMessage nvarchar(MAX) not null,
	S_Status nvarchar(MAX) not null,
	C_Date nvarchar(MAX) not null
)

Drop table tlb_DealerFollowupDefaultSMS
Select * From tlb_DealerFollowupDefaultSMS

============================================================================================

Create Table tlb_CustomerFollowupDefaultSMS
(
	ID int IDENTITY(1,1) CONSTRAINT PK_tlb_CustomerFollowupDefaultSMS PRIMARY KEY(ID) NOT NULL,
	SelectCategory nvarchar(MAX) not null,
	SMSDate nvarchar(MAX) not null,
	SMSMessage nvarchar(MAX) not null,
	S_Status nvarchar(MAX) not null,
	C_Date nvarchar(MAX) not null
)

Drop table tlb_CustomerFollowupDefaultSMS
Select * From tlb_CustomerFollowupDefaultSMS