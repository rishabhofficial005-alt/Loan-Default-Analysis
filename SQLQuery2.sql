USE [Loan]
GO

/****** Object:  Table [dbo].[Loan_default]    Script Date: 02-07-2026 14:35:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Loan_default](
	[LoanID] [nvarchar](50) NOT NULL,
	[Age] [tinyint] NOT NULL,
	[Income] [int] NOT NULL,
	[LoanAmount] [int] NOT NULL,
	[CreditScore] [smallint] NOT NULL,
	[MonthsEmployed] [tinyint] NOT NULL,
	[NumCreditLines] [tinyint] NOT NULL,
	[InterestRate] [float] NOT NULL,
	[LoanTerm] [tinyint] NOT NULL,
	[DTIRatio] [float] NOT NULL,
	[Education] [nvarchar](50) NOT NULL,
	[EmploymentType] [nvarchar](50) NOT NULL,
	[MaritalStatus] [nvarchar](50) NOT NULL,
	[HasMortgage] [bit] NOT NULL,
	[HasDependents] [bit] NOT NULL,
	[LoanPurpose] [nvarchar](50) NOT NULL,
	[HasCoSigner] [bit] NOT NULL,
	[Default] [bit] NOT NULL,
	[Loan_Date_DD_MM_YYYY] [date] NOT NULL
) ON [PRIMARY]
GO


