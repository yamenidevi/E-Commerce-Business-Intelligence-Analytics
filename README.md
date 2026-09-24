# QuickKart Analytics

## E-Commerce Business Intelligence & Analytics

QuickKart Analytics is an end-to-end business analytics project focused on understanding sales performance, profitability, customer behaviour, product performance, order trends, and operational metrics using Python, SQL, and Power BI.

The project follows a practical analytics workflow:

**Data → Python Analysis → SQL Business Analysis → Power BI Dashboard → Business Insights**

---

## What This Project Demonstrates

- Data cleaning and validation using Python
- Exploratory Data Analysis (EDA)
- Statistical and correlation analysis
- Customer value distribution analysis
- Sales and discount relationship analysis
- Business-focused SQL analysis
- KPI calculation and reporting
- Power BI dashboard development
- Power Query data transformation
- DAX-based measures and calculations
- Interactive business reporting
- Business insight generation from analytical findings

### Key Business Areas

- Sales & Revenue Performance
- Profitability
- Customer Behaviour
- Product & Category Performance
- City-wise Performance
- Order Status
- Payment Methods
- Customer Segments
- Discount & Sales Relationship

---

## Headline Numbers

| Metric | Value |
|---|---:|
| Total Orders | 100K |
| Total Sales | ₹2,527.93M |
| Total Profit | ₹758.27M |
| Total Customers | 8K |
| Total Products | 2K |
| Total Cities | 800 |
| Average Order Value | ₹25.28K |
| Cancelled Orders | 8,083 |
| Cancellation Rate | 8.08% |

---

## Visual Highlights

### Power BI Dashboard

The Power BI dashboard provides an interactive overview of QuickKart's sales, profitability, customers, categories, cities, order status, payment methods, and customer segments.

<p align="center">
  <img width="1098" height="616" alt="Quick Kart Analytics" src="https://github.com/user-attachments/assets/377372be-ab09-4cb3-91be-ec32f151ab82" />

</p>

### Python Analysis

#### Business Metrics Correlation

The correlation analysis examines relationships between Quantity, Unit Price, Discount, Sales, Cost, and Profit.

<p align="center">
  <img width="2466" height="2064" alt="QuickKart_Business Metrics Correlation" src="https://github.com/user-attachments/assets/9ee53125-102f-4a01-a444-7688f962dc7b" />

</p>

#### Customer Value Distribution

The distribution analysis evaluates customer-level sales and compares average and median customer sales values.

<p align="center">
 <img width="3267" height="1762" alt="QuickKart_Customer_Value_Distribution" src="https://github.com/user-attachments/assets/5a907610-1526-4992-b553-b900ab886fc7" />

</p>

#### Sales vs Discount Relationship

The analysis explores the relationship between discount levels, sales performance, and profit using a regression trend.

<p align="center">
<img width="3131" height="2062" alt="QuickKart_Sales vs Discount Relationship" src="https://github.com/user-attachments/assets/547d2acd-97d4-4f39-ac72-4fea54f1c207" />

</p>

---

## Architecture

```text
                    QuickKart Data
                         │
                         ▼
                ┌─────────────────┐
                │     Python      │
                │                 │
                │ Data Cleaning   │
                │ Validation      │
                │ EDA             │
                │ Analysis        │
                │ Visualization   │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │       SQL       │
                │                 │
                │ Business Queries│
                │ Aggregations    │
                │ KPI Analysis    │
                │ Customer/Product│
                │ & Sales Analysis│
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │    Power BI     │
                │                 │
                │ Power Query     │
                │ Data Modeling   │
                │ DAX Measures    │
                │ KPI Dashboard   │
                │ Interactive     │
                │ Reporting       │
                └────────┬────────┘
                         │
                         ▼
                ┌─────────────────┐
                │ Business        │
                │ Insights        │
                │                 │
                │ Findings        │
                │ Impact          │
                │ Recommendations │
                └─────────────────┘
```

---

###  Project Structure

```text
QuickKart-Analytics/
│
├── Python/
│   ├── data_cleaning.ipynb
│   ├── data_validation.ipynb
│   ├── exploratory_analysis.ipynb
│   └── visualizations/
│
├── SQL/
│   ├── sales_analysis.sql
│   ├── product_analysis.sql
│   ├── customer_analysis.sql
│   └── business_queries.sql
│
├── PowerBI/
│   └── QuickKart_Dashboard.pbix
│
├── images/
│   ├── Quick Kart Analytics.jpeg
│   ├── QuickKart_Business Metrics Correlation.png
│   ├── QuickKart_Customer_Value_Distribution.png
│   └── QuickKart_Sales vs Discount Relationship.png
│
├── Business_Key_Insights.md
│
└── README.md

```

---

### Tools & Technologies 

| Category | Technologies |
|---|---:|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Data Visualization | Matplotlib |
| Database | PostgreSQL |
| Query Language | SQL |
| Business Intelligence | Power BI |
| Data Transformation | Power Query |
| Calculations | DAX |
| Spreadsheet Analysis | Excel |
| Version Control | Git, GitHub |

---

## Business Key Insights

Detailed business findings are documented separately in:

**[Business Key Insights](Business_Key_Insights.md)**

The insights follow a structured analytical approach:

```text
Business Problem
       │
       ▼
   Analysis
       │
       ▼
    Finding
       │
       ▼
Business Insight
       │
       ▼
Business Impact

```

---


---

### 11. Key Analytical Findings

```markdown
### Sales, Cost & Profit

Sales show a strong positive relationship with Cost and Profit within the analysed dataset.

### Customer Value

Customer sales are concentrated around the central range, while a smaller group of customers contributes higher sales values.

### Discount & Sales

The Sales vs Discount analysis shows a positive relationship between discount values and sales in the analysed dataset.

### Business Metrics

The correlation analysis provides visibility into the relationships between Quantity, Unit Price, Discount, Sales, Cost, and Profit.

### Business Performance

Sales, profitability, customer contribution, category performance, and city-level performance provide multiple perspectives for monitoring business performance.

```

---

## Business Impact

The project demonstrates how raw transactional data can be transformed into structured business intelligence.

The analysis can support:

- Revenue performance monitoring
- Profitability tracking
- Customer value analysis
- Product and category performance monitoring
- City-level performance analysis
- Order status monitoring
- Customer segment analysis
- KPI reporting
- Data-driven business decision-making

---


---

### Roadmap

```markdown
- Automated data refresh workflows
- Advanced customer segmentation
- Deeper product performance analysis
- Additional operational KPIs
- Advanced Power BI interactivity
- Predictive sales analysis
- AI-assisted business insight generation
- Automated business reporting

```

---

## About the Author

### Yameni Devi

**BCA Graduate | Aspiring Data Analyst**

I am an aspiring Data Analyst with hands-on experience in SQL, Python, Power BI, Excel, data cleaning, exploratory analysis, KPI reporting, data visualization, and business intelligence.

I enjoy transforming raw data into meaningful business insights and building analytics solutions that connect technical analysis with real-world business questions.

### Connect With Me

- **Location:** India
- **Open to Work:** Data Analyst | BI Analyst | Business Intelligence Roles
- **LinkedIn:** (www.linkedin.com/in/yamenidevi-s182006)
- **Email:** yamenidevi1804@gmail.com
- **GitHub:** [yamenidevi](https://github.com/yamenidevi)

---

