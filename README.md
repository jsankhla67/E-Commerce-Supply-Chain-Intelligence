# E-Commerce-Supply-Chain-Intelligence
# 📊 E-Commerce Supply Chain Intelligence Dashboard

An end-to-end Business Intelligence dashboard built using **MySQL, SQL, Python, Streamlit, Plotly, and Pandas**. This project analyzes over **100,000+ e-commerce transactions** from the Brazilian Olist dataset to generate actionable business insights across sales, customers, products, reviews, and supply chain operations.

---

## 🚀 Features

- 📈 Executive Dashboard with business KPIs
- 👥 Customer Analytics
- 💰 Sales Analytics
- 🚚 Supply Chain Analytics
- ⭐ Review Analytics
- 📦 Product Analytics
- 📊 30+ Interactive Charts and KPIs
- 🗄️ SQL-based Data Cleaning & Analysis
- 📱 Interactive Streamlit Web Application

---

## 🛠 Tech Stack

- Python
- MySQL
- SQL
- Streamlit
- Plotly
- Pandas
- SQLAlchemy
- PyMySQL

---

## 📂 Dataset

This project uses the **Brazilian E-Commerce Public Dataset by Olist**.

Dataset includes:

- Customers
- Orders
- Order Items
- Payments
- Reviews
- Products
- Sellers
- Geolocation
- Product Category Translation

More than **100,000+ orders** were analyzed.

---

## 📁 Project Structure

```
E-Commerce-Supply-Chain-Intelligence
│
├── app.py
├── requirements.txt
├── README.md
│
├── pages/
│   ├── 1_Executive_Dashboard.py
│   ├── 2_Customer_Analytics.py
│   ├── 3_Sales_Analytics.py
│   ├── 4_Supply_Chain.py
│   ├── 5_Review_Analytics.py
│   └── 6_Product_Analytics.py
│
├── sql/
│   ├── 01_setup.sql
│   ├── 02_tables.sql
│   ├── 03_import.sql
│   ├── 04_clean.sql
│   ├── 05_eda.sql
│   ├── 06_customer.sql
│   ├── 07_sales.sql
│   ├── 08_supply.sql
│   ├── 09_advanced.sql
│   └── 10_views.sql
│
├── utils/
│   ├── __init__.py
│   └── database.py
│
└── data/
    ├── raw/
    └── cleaned/
```

---

## 📊 Dashboards

### 🏠 Executive Dashboard

- Revenue
- Orders
- Customers
- Sellers
- Monthly Revenue Trend
- Payment Methods
- Top Categories
- Orders by State

---

### 👥 Customer Analytics

- Customer Growth
- Repeat Customers
- Customer Segmentation
- Top Customers
- State-wise Customers

---

### 💰 Sales Analytics

- Monthly Sales
- Revenue KPIs
- Payment Analysis
- Top Sellers
- Product Category Revenue

---

### 🚚 Supply Chain Analytics

- Delivery Performance
- Freight Analysis
- Delivery Status
- Seller Performance
- Shipping Cost Analysis

---

### ⭐ Review Analytics

- Review Distribution
- Monthly Reviews
- Product Ratings
- Review Score Analysis

---

### 📦 Product Analytics

- Product Categories
- Product Dimensions
- Product Weight Distribution
- Product Photos Analysis
- Top Revenue Products

---

## 📈 Key Insights

- Processed **100K+** e-commerce transactions
- Built **30+ business KPIs**
- Designed **6 interactive dashboards**
- Implemented SQL-based data cleaning and analytical workflows
- Built a normalized relational database using MySQL
- Created reusable SQL queries and dashboard visualizations

---

## ⚙️ Installation

Clone the repository

```bash
git clone https://github.com/jsankhla67/E-Commerce-Supply-Chain-Intelligence.git
```

Go inside the project

```bash
cd E-Commerce-Supply-Chain-Intelligence
```

Create a virtual environment

```bash
python3 -m venv .venv
```

Activate it

Mac/Linux

```bash
source .venv/bin/activate
```

Windows

```bash
.venv\Scripts\activate
```

Install dependencies

```bash
pip install -r requirements.txt
```

---

## 🗄️ Database Setup

1. Create a MySQL database.
2. Execute SQL scripts in the following order:

```
01_setup.sql
02_tables.sql
03_import.sql
04_clean.sql
05_eda.sql
06_customer.sql
07_sales.sql
08_supply.sql
09_advanced.sql
10_views.sql
```

3. Update database credentials inside:

```
utils/database.py
```

---

## ▶️ Run the Application

```bash
streamlit run app.py
```

Open:

```
http://localhost:8501
```

---

## 📷 Dashboard Preview

Add screenshots inside the **images/** folder and display them here.

Example:

```markdown
![Executive Dashboard](images/executive_dashboard.png)

![Customer Dashboard](images/customer_dashboard.png)

![Sales Dashboard](images/sales_dashboard.png)
```

---

## 🎯 Future Improvements

- Deploy on Streamlit Community Cloud
- Add Machine Learning Sales Forecasting
- Customer Churn Prediction
- Inventory Optimization
- Real-time Dashboard using APIs

---

## 👨‍💻 Author

**Jatin Sankhla**

GitHub: https://github.com/jsankhla67

LinkedIn: *(Add your LinkedIn profile here)*

---

## ⭐ If you found this project useful, consider giving it a star!
