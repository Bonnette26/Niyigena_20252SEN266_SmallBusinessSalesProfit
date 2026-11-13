# PHASE 1: BUSINESS PROCESS MODELING DOCUMENTATION

## Project Title
**Small Business Sales and Profit Tracking System Using Oracle PL/SQL**

**Course:** INSY 8311 – Database Development with PL/SQL  
**Student Name:** NIYIGENA Bonnette  
**Student ID:** 20252SEN266


## 1. Introduction

This phase focuses on modeling the business processes of the Small Business Sales and Profit Tracking System. The purpose is to understand how sales transactions are handled, how product stock is managed, and how managers monitor sales and profit information.

Two models are used in this phase: the BPMN Diagram and the UML Use Case Diagram. Each model provides a different view of the proposed system.

## 2. Objectives of Business Process Modeling

The main objectives are:

- To identify the main users of the system.
- To describe the steps involved in recording sales.
- To show how product stock is checked and updated.
- To identify the responsibilities of system users.
- To explain how sales and profit reports are generated.
- To identify possible errors during sales transactions.
- To provide a clear understanding of the business process before database implementation.

## 3. Identified Actors and System Components

### 3.1 Actors

The UML Use Case Diagram identifies two main actors who interact with the system.

**Sales Attendant (Cashier)**

The cashier interacts with the system to:
- Record sales transactions.
- Check product stock availability.
- Enter product quantities and sales information.
- Receive error messages when a transaction cannot be completed.

**Manager**

The manager interacts with the system to:
- Calculate or review business profit.
- Generate sales reports.
- Monitor sales performance.

### 3.2 Internal System Components

The system also contains internal components that support business operations. These are not external actors in the UML Use Case Diagram.

**System**

The system performs automated operations such as:
- Validating sales information.
- Checking product stock availability.
- Calculating sales totals and profit.
- Updating product inventory.
- Generating sales reports.
- Displaying error messages when necessary.

**Database**

The database stores and manages:
- Product information.
- Customer information.
- Sales transactions.
- Sale details.
- Business expenses.
- Audit records.

## 4. BPMN Sales Process Description

The BPMN diagram represents the sequence of activities involved in completing a sales transaction.

The process starts when a customer requests a product. The sales attendant checks the requested product, and the system checks whether sufficient stock is available.

If the stock is insufficient, the customer is informed that the product is unavailable, and the process ends without completing the sale.

If sufficient stock is available, the sales attendant enters the sale details. The system validates the entered information and calculates the sale total.

After successful validation, the system saves the sales transaction and its details, updates the product inventory, and records the transaction in the audit log.

Finally, the system confirms that the transaction has been completed, and the process ends.

### Main BPMN Activities

1. Customer requests a product.
2. Sales attendant checks the product.
3. System checks stock availability.
4. System determines whether sufficient stock exists.
5. If stock is insufficient, the customer is informed.
6. If stock is sufficient, sale details are entered.
7. System validates the quantity.
8. System calculates the sale total.
9. Sales record and sale details are saved.
10. Product stock is updated.
11. Transaction is recorded in the audit log.
12. Transaction is confirmed.

## 5. UML Use Case Diagram Description

The UML Use Case Diagram illustrates the interactions between users and the Small Business Sales and Profit Tracking System.

The diagram contains two actors: Sales Attendant (Cashier) and Manager.

The main use cases represented in the diagram are:

### 5.1 Record Sale and Update Inventory

This use case represents recording a sales transaction and updating the available product stock after a successful sale.

### 5.2 Check Stock Availability

This use case allows the cashier to check whether the requested product is available before completing a sale.

### 5.3 Calculate Profit

This use case represents calculating business profit using sales and product cost information.

### 5.4 Generate Sales Report

This use case allows the manager to generate reports that provide information about business sales.

### 5.5 Show Error Message

This use case represents displaying an error message when an operation cannot be completed successfully, such as when the requested stock is unavailable.

The Use Case Diagram provides an overview of the main functions available to each actor and their interactions with the system.

## 6. Main Business Rules

The system follows these business rules:

1. A sales transaction must contain valid information.
2. The product quantity must be greater than zero.
3. A sale can only be completed when sufficient stock is available.
4. Product stock must be updated after a successful sale.
5. Each sales transaction must have corresponding sale details.
6. Sales totals must be calculated using the recorded quantities and selling prices.
7. Profit calculations must consider the cost of products sold.
8. Business expenses must be recorded separately from sales transactions.
9. Important database operations should be recorded in the audit log.

## 7. Importance of the Models

The two models provide different views of the proposed system:

- **BPMN Diagram:** Shows the sequence of activities in the business sales process.
- **UML Use Case Diagram:** Shows how the cashier and manager interact with the system and its main functions.

Together, these models provide a clear understanding of the business operations and system requirements.

## 8. Conclusion

Phase 1 established the business process models for the Small Business Sales and Profit Tracking System.

The BPMN diagram explains the sales process, while the UML Use Case Diagram identifies the main actors and system functions.

These models provide a foundation for the next development phases, particularly database design and Oracle PL/SQL implementation.