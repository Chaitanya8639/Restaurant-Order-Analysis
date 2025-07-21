# 🍽️ Restaurant Order Analysis

This project is a SQL-based data analysis of a restaurant's menu and order history. Using two main datasets—`menu_items` and `order_details`—we analyze key business insights, including item popularity, pricing trends, spending behavior, and category breakdowns.

🔗 **Project Source**: [Maven Analytics - Restaurant Order Analysis](https://mavenanalytics.io/project/19772)

---

## 📊 Project Objectives

The goal of this analysis is to help restaurant managers and decision-makers answer the following key questions:

### 1. Total Number of Menu Items
- **Objective**: Determine the number of active dishes on the menu.

### 2. Least & Most Expensive Menu Items
- **Objective**: Identify pricing extremes to inform pricing strategies.

### 3. Italian Cuisine Insights
- **Objective**: Track the number and price range of Italian dishes as a category of strategic importance.

### 4. Menu Category Breakdown
- **Objective**: View dish distribution by category and analyze category-level pricing trends.

### 5. Order Date Range
- **Objective**: Identify the time span covered by the order data to understand data freshness.

### 6. Orders & Items Count
- **Objective**: Count total orders and items sold within the available date range.

### 7. Orders with the Most Items
- **Objective**: Highlight high-volume orders and their behavior patterns.

### 8. Orders with More Than 12 Items
- **Objective**: Track large or bulk orders for business insights.

### 9. Merge Menu with Order Details
- **Objective**: Join both tables to allow more robust analysis of order behaviors by item details.

### 10. Least & Most Ordered Items
- **Objective**: Identify best- and worst-selling dishes, including their categories.

### 11. Top 5 Highest-Spending Orders
- **Objective**: Discover the highest revenue-generating orders.

### 12. Highest-Spend Order Details
- **Objective**: View detailed breakdown of the single most expensive order.

---

## 🧾 Dataset Information

### 🧩 Tables Used

#### 1. `menu_items`
| Column Name | Description              |
|-------------|--------------------------|
| menu_item_id| Unique ID for each dish  |
| item_name   | Name of the dish         |
| category    | Type of dish (e.g., Entree, Appetizer) |
| price       | Price of the dish        |

#### 2. `order_details`
| Column Name | Description              |
|-------------|--------------------------|
| order_id    | Unique ID for each order |
| menu_item_id| Foreign key to menu_items|

---

## 🛠️ Tech Stack

- **Language**: SQL
- **Platform**: Maven Analytics SQL Playground
- **Tools**: PostgreSQL (syntax), Data visualization tools optional (Excel, Tableau, etc.)

---

## 🧮 Sample Analysis (SQL Queries)

```sql
-- Example: Total number of menu items
SELECT COUNT(*) AS total_menu_items FROM menu_items;

-- Example: Highest and lowest priced items
SELECT * FROM menu_items ORDER BY price DESC LIMIT 1;
SELECT * FROM menu_items ORDER BY price ASC LIMIT 1;


🧑‍💼 Author
Chaitanya Chaitu
Project developed as part of the Maven Analytics SQL portfolio challenge.
