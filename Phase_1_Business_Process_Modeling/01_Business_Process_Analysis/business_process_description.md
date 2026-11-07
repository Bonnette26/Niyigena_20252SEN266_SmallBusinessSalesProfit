# BUSINESS PROCESS DESCRIPTION

## 1. Project Title

Small Business Sales and Profit Tracking System

## 2. Introduction

Small businesses need an effective way to manage daily sales, monitor product stock, record expenses, and calculate profits. When these activities are managed manually, business owners may experience errors, difficulties tracking transactions, and delays in preparing reports.

The proposed Small Business Sales and Profit Tracking System will provide a centralized database solution using Oracle Database and PL/SQL to improve business operations and financial monitoring.

## 3. Problem Statement

Many small businesses use notebooks or spreadsheets to record sales and expenses. These methods can lead to inaccurate calculations, missing records, poor stock management, and difficulties determining actual business profits.

The proposed system aims to address these challenges through organized data management and automated calculations.

## 4. Main Business Actors

1. **Business Owner / Manager:** Oversees business activities and reviews reports.
2. **Sales Clerk:** Records customer sales transactions.
3. **Inventory Manager:** Monitors products and available stock.
4. **System Administrator:** Manages system users and access.

## 5. Main Business Processes

### 5.1 Product Management
The authorized user registers products, including product names, costs, selling prices, and available quantities.

### 5.2 Sales Management
The sales clerk records sales transactions and the products sold.

### 5.3 Inventory Management
The system checks product availability and updates stock quantities after confirmed sales.

### 5.4 Expense Management
Authorized users record business expenses for financial monitoring.

### 5.5 Profit Calculation
The system calculates gross profit using sales revenue and the corresponding cost of goods sold. Net profit is calculated after deducting recorded business expenses.

### 5.6 Supplier Management
The business records and maintains supplier information.

### 5.7 Reporting and Auditing
The manager reviews sales, expenses, stock, and profit reports. Important system activities are recorded for accountability.

## 6. Business Rules

1. Each product must have a unique product identifier.
2. A sale must contain at least one product.
3. A sale must not exceed available stock.
4. Product selling prices must be greater than zero.
5. Recorded expenses must have valid amounts.
6. Sales and expenses must be recorded with transaction dates.
7. Profit calculations must use the recorded selling costs and purchase costs.
8. Only authorized users may perform restricted operations.

## 7. Expected Outcomes

- Improved sales record management.
- Better monitoring of product stock.
- Accurate sales and profit calculations.
- Organized expense records.
- Improved business decision-making.
- Easier preparation of business reports.

## 8. Conclusion

The proposed system will help small businesses manage their sales, inventory, expenses, and profitability through a structured Oracle database solution. BPMN and UML diagrams will be used to represent the business processes and interactions between system actors.