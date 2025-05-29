CREATE TABLE amazon_sales (
  order_id TEXT,
  date DATE,
  status TEXT,
  fulfilment TEXT,
  sales_channel_ TEXT,
  ship_service_level TEXT,
  style TEXT,
  sku TEXT,
  category TEXT,
  size TEXT,
  asin TEXT,
  courier_status TEXT,
  qty INT,
  currency TEXT,
  amount FLOAT,
  ship_city TEXT,
  ship_state TEXT,
  ship_postal_code TEXT,
  ship_country TEXT,
  promotion_ids TEXT,
  b2b BOOLEAN,
  fulfilled_by TEXT
);


-- Total Orders and Revenue
SELECT COUNT(*) AS total_orders, SUM(amount) AS total_revenue FROM amazon_sales;

-- Orders by Category
SELECT category, COUNT(*) AS order_count, SUM(amount) AS total_sales
FROM amazon_sales
GROUP BY category
ORDER BY total_sales DESC;

-- Orders by State
SELECT ship_state, COUNT(*) AS order_count, SUM(amount) AS total_sales
FROM amazon_sales
GROUP BY ship_state
ORDER BY total_sales DESC;

-- Create a view for top 5 categories by revenue
CREATE VIEW top_categories AS
SELECT category, SUM(amount) AS total_sales
FROM amazon_sales
GROUP BY category
ORDER BY total_sales DESC
LIMIT 5;
