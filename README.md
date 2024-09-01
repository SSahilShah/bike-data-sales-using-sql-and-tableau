# 🚴 **SQL Bike Store Sales Analysis**

## 📊 **Overview**

This project conducts a comprehensive analysis of sales data from a bike store. The focus is on extracting insights related to customer purchasing behavior, product popularity, sales trends, brand performance, and category success. The analysis utilizes data spanning several related tables, with SQL for data extraction and processing.

## 🗂️ **Data Description**

The data is segmented into multiple tables, each providing unique insights into the bike store's operations. They are contained within the BikeData dataset.

### 📋 **Brands**
- **brand_id**: Unique identifier for the brand.
- **brand_name**: Name of the brand.

### 🏷️ **Categories**
- **category_id**: Unique identifier for the category.
- **category_name**: Name of the category.

### 👤 **Customers**
- **customer_id**: Unique identifier for the customer.
- **first_name**: Customer's first name.
- **last_name**: Customer's last name.
- **phone**: Customer's phone number.
- **email**: Customer's email address.
- **street**: Customer's street address.
- **city**: Customer's city.
- **state**: Customer's state.
- **zip_code**: Customer's zip code.

### 🛒 **Order Items**
- **order_id**: Identifier for the order.
- **item_id**: Unique identifier for the item.
- **product_id**: Identifier for the product.
- **quantity**: Quantity ordered.
- **list_price**: Listed price of the item.
- **discount**: Discount applied to the item.

### 📦 **Orders**
- **order_id**: Unique identifier for the order.
- **customer_id**: Identifier for the customer who placed the order.
- **order_status**: Status of the order.
- **order_date**: Date when the order was placed.
- **required_date**: Date when the order is required.
- **shipped_date**: Date when the order was shipped.
- **store_id**: Identifier for the store from which the order was shipped.
- **staff_id**: Identifier for the staff member who handled the order.

### 🚲 **Products**
- **product_id**: Unique identifier for the product.
- **product_name**: Name of the product.
- **brand_id**: Identifier for the brand.
- **category_id**: Identifier for the category.
- **model_year**: Model year of the product.
- **list_price**: Listed price of the product.

## 🛠️ **Data Wrangling Process**

The data wrangling phase involved several crucial steps to prepare the data for analysis:

- **🔍 Handling Missing Data**: Missing phone numbers in the customers table were replaced with 'Unknown' to maintain consistency.
- **✅ Data Validation**: Verified and ensured consistency in data types and formats across all tables.
- **🔗 Data Integration**: Employed SQL joins, Common Table Expressions (CTEs), and aggregation functions to merge and analyze data from the various tables.

## 💡 **Insights Derived**

### 💰 **Total Revenue by Order**
A wide variation in revenue was observed per order, ranging from a high of $29,147 to a low of $104, underscoring the diversity in customer purchases.

### 🏆 **Top Selling Products**
The 'Surly Ice Cream Truck' frameset, 2016 edition, emerged as the best-selling product with 167 units sold. Close behind was the 'Electra Cruiser 1' with 157 units. The competition was close, with the least popular among the top sellers, 'Electra Girl’s Hawaii 1', trailing only slightly at 145 units sold.

### 📅 **Monthly and Yearly Trends**
Sales in 2017 peaked at approximately $3.8 million but fell to around $2 million in 2018. While monthly sales in 2016 and 2017 were consistent, 2018 saw a surge to $900k followed by a drastic dip to $200k by June, indicating volatile sales performance.

### 🎯 **Customer Segmentation**
The segmentation of customers by spending revealed a wide spread across high and medium spenders, with an unfortunately large segment of low spenders, suggesting an area ripe for targeted customer engagement and growth strategies.

### 🚀 **Brand Popularity**
'Electra' and 'Trek' bikes significantly outsold other brands, with competitors selling less than half the units of these market leaders. 'Strider' bikes had a minimal market share, suggesting a need for strategic positioning.

### 🏔️ **Sales by Category**
'Mountain Bikes' dominated sales, with $3 million in revenue, outperforming the second-most popular category, 'Road Bikes', by an impressive margin of approximately $1 million, indicating a strong consumer preference for this category.

---

🔗 **Check out more of my projects and visualizations on [NovyPro]([https://project.novypro.com/8RIUpR]).**

