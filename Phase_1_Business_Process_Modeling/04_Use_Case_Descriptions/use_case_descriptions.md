# Use Case Descriptions

## Project: Small Business Sales and Profit Tracking System

### 1. User Login
- **Actor:** Business Owner, Sales Clerk, Inventory Manager, System Administrator
- **Description:** Allows authorized users to access the system.
- **Precondition:** The user has a registered account.
- **Main Flow:**
  1. The user opens the system.
  2. The user enters a username and password.
  3. The system verifies the login details.
  4. The system grants access.
- **Alternative Flow:** If the details are incorrect, the system displays an error message.
- **Postcondition:** The user accesses the system successfully.

### 2. Manage Products
- **Actor:** Business Owner, Inventory Manager
- **Description:** Allows users to add, update, view, and manage product information.
- **Precondition:** The user is logged in and authorized.
- **Main Flow:**
  1. The user opens product management.
  2. The user enters product information.
  3. The system validates the information.
  4. The system saves the product.
- **Alternative Flow:** Invalid information is rejected.
- **Postcondition:** Product information is stored or updated.

### 3. Record Sales
- **Actor:** Sales Clerk
- **Description:** Records products sold to customers.
- **Precondition:** The products exist in the system.
- **Main Flow:**
  1. The sales clerk selects products.
  2. The clerk enters quantities.
  3. The system checks available stock.
  4. The system calculates the sale total.
  5. The system saves the sale and sale details.
  6. The system updates inventory.
- **Alternative Flow:** If stock is insufficient, the system informs the clerk and the sale cannot be completed with the requested quantity.
- **Postcondition:** The sale is recorded and inventory is updated.

### 4. Manage Inventory
- **Actor:** Inventory Manager
- **Description:** Monitors and updates product stock quantities.
- **Precondition:** Products are registered.
- **Main Flow:**
  1. The inventory manager views current stock.
  2. The manager records stock received or adjusted.
  3. The system validates the quantity.
  4. The system updates stock records.
- **Alternative Flow:** Invalid quantities are rejected.
- **Postcondition:** Inventory records reflect the updated quantities.

### 5. Record Expenses
- **Actor:** Business Owner, Manager
- **Description:** Records business operating expenses.
- **Precondition:** The user is authorized.
- **Main Flow:**
  1. The user opens expense management.
  2. The user enters the expense description and amount.
  3. The system validates the information.
  4. The system saves the expense.
- **Alternative Flow:** Invalid expense information is rejected.
- **Postcondition:** The expense is recorded.

### 6. Manage Suppliers
- **Actor:** Inventory Manager, Business Owner
- **Description:** Maintains supplier information.
- **Precondition:** The user is authorized.
- **Main Flow:**
  1. The user opens supplier management.
  2. The user enters or updates supplier details.
  3. The system validates the information.
  4. The system saves the supplier record.
- **Postcondition:** Supplier information is stored or updated.

### 7. View Sales Reports
- **Actor:** Business Owner, Manager
- **Description:** Displays sales information for a selected period.
- **Precondition:** Sales records exist.
- **Main Flow:**
  1. The user selects a reporting period.
  2. The system retrieves sales records.
  3. The system calculates sales totals.
  4. The system displays the report.
- **Postcondition:** The user views the sales report.

### 8. View Profit Reports
- **Actor:** Business Owner, Manager
- **Description:** Displays business profit information.
- **Precondition:** Sales, product costs, and expense records are available.
- **Main Flow:**
  1. The user selects a reporting period.
  2. The system calculates sales revenue.
  3. The system calculates the cost of goods sold.
  4. The system calculates gross profit and subtracts expenses to obtain net profit.
  5. The system displays the profit report.
- **Postcondition:** The user views the profit report.

### 9. Manage Users
- **Actor:** System Administrator
- **Description:** Creates, updates, and manages user accounts and permissions.
- **Precondition:** The administrator is authenticated.
- **Main Flow:**
  1. The administrator opens user management.
  2. The administrator enters user details.
  3. The system validates the information.
  4. The system saves the account and permissions.
- **Postcondition:** User account information is stored or updated.

### 10. View Audit Log
- **Actor:** Business Owner, System Administrator
- **Description:** Allows authorized users to review recorded system activities.
- **Precondition:** Audit records exist and the user has permission.
- **Main Flow:**
  1. The user opens the audit log.
  2. The system retrieves recorded activities.
  3. The system displays the activities.
- **Postcondition:** The user can review system activity records.