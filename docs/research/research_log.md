# Research Log
## Project: Small Business Sales and Profit Tracking System Using Oracle PL/SQL

| # | Source (APA) | Type | Link | Key finding | Gap it shows |
|---|---|---|---|---|---|
| 1 | Mintah, C., Gabir, M., Aloo, F., & Ofori, E. K. (2022). Do business records management affect business growth? *PLOS ONE, 17*(3), e0264135. | Research paper | https://doi.org/10.1371/journal.pone.0264135 | Proper business record management supports better decisions and has a positive relationship with SME business growth. | The research examines records management, but does not provide the Oracle-based sales and profit tracking system proposed in this project. |
| 2 | Bar-Gill, S., Brynjolfsson, E., & Hak, N. (2024). Helping small businesses become more data-driven: A field experiment on eBay. *Management Science*. | Research paper | https://doi.org/10.1287/mnsc.2021.02026 | The study found that access to an analytics dashboard increased data-driven decision-making and average e-retailer revenue by 3.6%. | The study focuses on an eBay analytics tool, rather than a custom Oracle PL/SQL database for sales, expenses, and profit. |
| 3 | National Institute of Statistics of Rwanda. (2025). *Integrated Business Enterprise Survey (2023).* | Report/statistics | https://statistics.gov.rw/statistical-publications/business-establishment-finance-trade/business-establishment-finance-trade/integrated-business-enterprise-survey-2023 | Rwanda had an estimated 260,780 business enterprises in 2023. Micro businesses represented 83.9% of business activities. | The report provides business statistics, but does not provide an operational database for recording individual sales and expenses. |
| 4 | UCI Machine Learning Repository. (n.d.). *Online Retail* [Dataset]. | Dataset | https://archive.ics.uci.edu/dataset/352/online+retail | The dataset contains 541,909 transaction records from a UK-based online retailer, with fields such as invoice number, product code, quantity, date, and unit price. | It does not directly provide all business expenses and product costs required for complete net-profit calculations. These fields need a separately documented source. |
| 5 | Intuit. (n.d.). *Set up and track your inventory in QuickBooks Online.* | Existing system | https://quickbooks.intuit.com/learn-support/en-us/help-article/inventory-management/set-track-inventory-quickbooks-online/L22FZLBGN_US_en_US | QuickBooks supports inventory quantity tracking, sales recording, low-stock alerts, and inventory reports. | The proposed project will focus on a custom Oracle PL/SQL implementation with its own procedures, functions, triggers, audit log, and dashboard. |
| 6 | Oracle. (n.d.). *Server-side programming: PL/SQL, Java, and JavaScript.* Oracle Database 26ai Documentation. | Technical source | https://docs.oracle.com/en/database/oracle/oracle-database/26/cncpt/server-side-programming.html | Oracle explains how database triggers execute automatically in response to database events such as data changes. | The documentation explains the technology, but does not implement the specific business rules required by this project. |

## Research Summary

The reviewed sources show that accurate business records and data-driven decision-making are important for business performance. Rwanda's business statistics also demonstrate the importance of micro and small enterprises.

Existing accounting software provides inventory and sales management features. However, this project will develop a database solution using Oracle PL/SQL, with procedures, functions, cursors, packages, triggers, exception handling, and an audit log.

The UCI Online Retail dataset is a possible source of real sales transaction data. Since it does not directly provide all product costs and business expenses, additional documented cost and expense data will be required before claiming that the system calculates real net profit.

## Research Limitations and Next Steps

1. Verify the dataset licence and download the original dataset.
2. Inspect the dataset columns and clean invalid or cancelled transactions.
3. Identify a reliable source for product costs and business expenses.
4. Read the complete research papers and report before final submission.
5. Use the findings to refine the problem statement and database design.
