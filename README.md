# SQL - Sales Analysis

## Overview


This project uses SQL to analyze customer spending, behavior, and retention trends.

It answers three main business questions:

**1. Who are our most valuable customers?**

**2. How do different customer groups (cohorts) generate revenue?**

**3. Which customers have stopped buying recently?**

# 📈 Analysis Breakdown


## 1. Customer Segmentation — Identifying High-Value Customers

This section compares customer groups based on:

Total revenue contribution (total_itv)

Average spending per customer (avg_itv)


[View Query](./Scripts/Customer_segmentation.sql)

![Customer Segmentation](./Customer_Segmentation.JPG)


###  High-Value Customers (Tier 3)

**Insight:**

- Contribute the largest share of total revenue (around 65%).

- These customers drive most of the business growth.

**Action:**

- Build a VIP retention program.

- Offer personalized services, early access, or exclusive perks.

- Prioritize preventing churn in this group.

###  Mid-Value Customers (Tier 2)

**Insight:**

- Largest category by customer count.

- Strong potential to convert into High-Value customers.

**Action:**

- Run targeted campaigns like loyalty rewards or bundle offers.

- Encourage higher order size and purchase frequency.

###  Low-Value Customers (Tier 1)

**Insight:**

- Low average spending; many might be one-time buyers.

**Action:**

- Use low-cost communication channels.

- Identify which customers have potential to grow.

- Reduce unnecessary marketing efforts on non-returning customers.

## 2. Cohort Analysis — Revenue by Acquisition Year

- This uses a line chart to track:

- Average revenue per customer (customer_revenue)

- Based on acquisition year (cohort_year)


[View Query](./Scripts/Cohort_analysis.sql)

![Cohort Analysis](./Cohort_Analysis.JPG)

### Key Finding — Declining Customer Quality

Customers acquired in recent years spend less compared to older cohorts.

### What This Means

- Although customer count may be increasing, their spending power is lower.

- Current marketing strategies may be attracting lower-value users.

###  Actionable Insights

**Action A**

- Review Previous Success Years

- Analyze strategies used during high-value years (2017–2019).

- Redirect budget to channels that previously attracted strong customers.

**Action B**

- Improve New Customer Onboarding

- Strengthen first-purchase experience.

- Introduce welcome offers or better product guidance.

- Aim to increase first-year revenue for new cohorts.

## 3. Retention Analysis — Active vs Churned Customers

This section highlights:

- Active customers (still buying)

- Churned customers (stopped buying)

- Grouped by cohort_year



[View Query](./Scripts/Retention_analysis.sql)

![Customer Retention Analysis](./Customer_Retention_Analysis.JPG)

###  Key Finding — Very High Churn

A majority of customers stop purchasing over time.
Only a small group stays active.

###  Actionable Insights

**Action A**

- Win-Back Campaigns

- Use discounts, reminders, or personalized offers.

- The large churned base is a major reactivation opportunity.

**Action B**

- Reduce Early Churn in New Cohorts

- Focus on customers from 2022 and 2023.

- Improve the overall experience to prevent early drop-offs.

- Fixing these early gaps improves long-term retention.

## Technical Details

**Database:** PostgreSQL

**Analysis Tools:** PostgreSQL, 
DBeaver, PGadmin

**Visualization:** ChatGPT