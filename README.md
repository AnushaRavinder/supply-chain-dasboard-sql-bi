
# 📦 Supply Chain Dashboard using SQL & Power BI

A complete end-to-end project that simulates a retail supply chain operation and showcases a business intelligence dashboard built using SQL and Power BI.

## 🔍 Project Overview

This project demonstrates how SQL can be used to clean and transform supply chain data, followed by building an interactive dashboard that provides visibility into key performance metrics like:

- ✅ On-Time Delivery Rate
- 📦 Inventory Shortage Trends
- 💰 Top Performing Products
- ⏱️ Supplier Lead Times
- 📈 Revenue Insights by Region & Product

---

## 📁 Project Structure

```
supply-chain-dashboard-sql-bi/
├── data/
│   └── supply_chain_data.csv
├── sql/
│   └── data_cleaning.sql
│   └── kpi_queries.sql
├── bi-dashboard/
│   └── PowerBI_Report.pbix (optional)
│   └── screenshots/
│       └── dashboard_preview.png (optional)
├── README.md
└── LICENSE
```

---

## 🧾 Dataset

The dataset used is a simulated retail supply chain dataset that includes:

- Orders with products, quantities, delivery timelines
- Suppliers, warehouses, and regional information
- Delivery performance and revenue

[📥 Download sample dataset](./data/supply_chain_data.csv)

---

## 🧠 KPIs & Metrics

SQL queries were written to extract insights like:

- **Total Orders**
- **On-Time Delivery Rate**
- **Stockout Rate**
- **Average Lead Time**
- **Top 5 Products by Revenue**
- **Supplier Delivery Performance**

See SQL scripts in the [`/sql`](./sql) folder.

---

## 📊 Power BI Dashboard

The Power BI dashboard visualizes:

- Product and supplier performance
- Trends in revenue and delivery
- Geographic distribution of orders
- Key operational KPIs

You can open the dashboard in Power BI Desktop or publish it to Power BI Service.

---

## 🚀 Getting Started

1. Clone this repo  
2. Load the dataset into your SQL engine or Power BI  
3. Run the SQL scripts in `/sql`  
4. Use the `.pbix` file (if available) to explore or build your own dashboard

---

## ✨ Tools Used

- SQL (Data Cleaning, KPI Calculations)
- Power BI (Data Modeling, Visualization)
- Python (Synthetic Dataset Generation)
- Excel/CSV (Data Source)

---

## 👩‍💻 Author

**Anusha Komati**  
📍 Dallas, TX  
---

## 📜 License

This project is licensed under the MIT License.
