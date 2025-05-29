# Amazon Sales Data Analysis

## 📁 Files Included:
1. **cleaned_amazon_sales.csv** – Cleaned and preprocessed dataset.
2. **amazon_data_analysis.sql** – SQL script with:
   - Table creation query
   - Key data analysis queries
   - A view for top categories by revenue

## 🛠️ Tools Used:
- SQL Engine: MySQL 
- Data Preprocessing: Python (Pandas)

---

## 🧹 Cleaning Performed:
- Removed unnecessary columns like `Unnamed: 22` and `index`
- Converted `Date` to standard `YYYY-MM-DD` format
- Handled missing values:
  - `Courier Status`: set to `'Unknown'`
  - `currency`: set to `'INR'`
  - `Amount`: set to `0`
  - `fulfilled-by`: set to `'Unknown'`
  - `promotion-ids`: set to `'None'`
- Changed `ship-postal-code` to string format to preserve leading zeroes

---

