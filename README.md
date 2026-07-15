# 📊 E-Commerce Supply Chain Intelligence Dashboard

An end-to-end Business Intelligence dashboard built using **MySQL, SQL, Python, Streamlit, Plotly, Pandas, SQLAlchemy, and PyMySQL**. The project analyzes over **100,000+ e-commerce transactions** from the Brazilian Olist dataset to generate actionable insights across sales, customers, products, reviews, and supply chain operations.

---

## 🚀 Features

- Executive Dashboard with business KPIs
- Customer Analytics Dashboard
- Sales Analytics Dashboard
- Supply Chain Analytics Dashboard
- Review Analytics Dashboard
- Product Analytics Dashboard
- 30+ interactive KPIs and visualizations
- SQL-based data cleaning and analytical workflows
- Responsive multi-page Streamlit application

---

## 🛠️ Tech Stack

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

This project uses the **Brazilian E-Commerce Public Dataset (Olist)**.

The dataset includes:

- Customers
- Orders
- Order Items
- Payments
- Products
- Sellers
- Reviews
- Geolocation
- Product Category Translation

Total records analyzed: **100,000+ e-commerce transactions**

---

## 📁 Project Structure

```
E-Commerce-Supply-Chain-Intelligence/
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
- Business KPIs
- Revenue Analysis
- Monthly Revenue Trend
- Payment Method Distribution
- Top Product Categories
- Orders by State

### 👥 Customer Analytics
- Customer Growth
- Repeat Customer Analysis
- Customer Segmentation
- Top Customers
- Customer Distribution by State

### 💰 Sales Analytics
- Monthly Revenue Trend
- Category-wise Revenue
- Top Sellers
- Payment Analysis
- Top Products

### 🚚 Supply Chain Analytics
- Delivery Performance
- Freight Cost Analysis
- Delivery Status
- Seller Performance
- Shipping Cost Analysis

### ⭐ Review Analytics
- Review Score Distribution
- Monthly Review Trend
- Category Ratings
- Review Score Share
- Recent Customer Reviews

### 📦 Product Analytics
- Product Category Distribution
- Product Weight Analysis
- Product Dimension Analysis
- Product Photo Analysis
- Top Revenue Products

---

## 📈 Key Highlights

- Designed a normalized **MySQL relational database**
- Imported and processed **100,000+ e-commerce transactions**
- Developed **10 SQL scripts** for setup, cleaning, EDA, and analytics
- Built **6 interactive Streamlit dashboards**
- Created **30+ KPIs and visualizations**
- Implemented reusable SQL queries using SQLAlchemy and Pandas

---

## ⚙️ Installation

### Clone the repository

```bash
git clone https://github.com/jsankhla67/E-Commerce-Supply-Chain-Intelligence.git
```

### Navigate to the project directory

```bash
cd E-Commerce-Supply-Chain-Intelligence
```

### Create a virtual environment

```bash
python3 -m venv .venv
```

### Activate the virtual environment

**macOS/Linux**

```bash
source .venv/bin/activate
```

**Windows**

```bash
.venv\Scripts\activate
```

### Install dependencies

```bash
pip install -r requirements.txt
```

---

## 🗄️ Database Setup

1. Create a MySQL database.
2. Import the Olist dataset into the `data/raw` folder.
3. Execute the SQL scripts in the following order:

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

4. Update the database connection details inside:

```
utils/database.py
```

---

## ▶️ Run the Application

Start the Streamlit application:

```bash
streamlit run app.py
```

Open your browser and visit:

```
http://localhost:8501
```
---

## 👨‍💻 Author

**Jatin Sankhla**

- GitHub: https://github.com/jsankhla67

---

## 📄 License

This project is developed for educational and portfolio purposes.
