# Nigeria Automotive Sales: Strategic Performance & Inventory Forecasting
##  Project Overview
This project presents a comprehensive business analysis of 8,100 sales records from a centralized automotive dealership in Lagos. As the Lead Business Analyst, I executed an end-to-end data pipeline-transforming raw, inconsistent operational data into a strategic tool for regional market expansion and inventory optimization across 16 Nigerian states. The project evaluates how transit distance impacts customer delivery timelines and regional revenue growth.

## The Business Problem
The dealership faced three critical "Blind Spots" that hindered growth:
- Geographic Analysis Gap: The initial dataset lacked a structured regional framework, making it impossible to measure territorial market share or representative efficiency across Nigeria.
- Inconsistent Nomenclature: Generic model tags (e.g., GLE) and brand-model mismatches threatened the accuracy of luxury-segment financial audits
- Logistics Visibility: Management required a way to track delivery performance from the Lagos hub to 16 different states but lacked the categorical grouping to do so.

## Data Engineering & Governance
# Before beginning the technical ETL process in Python, I conducted a Strategic Data Governance phase to ensure the raw dataset aligned with the business’s regional reporting requirements
Territorial Framework Design: I structured a geographic mapping to group 16 Nigerian states into 4 strategic regional territories (North, South-West, South-South/East, and Middle Belt). This converted fragmented state-level data into a high-level framework for analyzing regional market penetration and logistics efficiency
Trim Augmentation & Enrichment: To enable precise high-margin segment analysis, I performed a targeted nomenclature audit. This involved upgrading generic model tags to high-fidelity trims (specifically GLE to GLE 450, GLC to GLC 350 and GLK 350), ensuring that the dealership's true revenue drivers were accurately identified for forecasting.

## Key Performance Indicators (KPIs)
Territorial Revenue Share: Identifying the financial contribution of each regional hub.  
Sales Rep Productivity: Comparing conversion rates for the specialized regional reps (Olawale, Aminu, Chukwudi, and Adeola).
Segment Velocity: Tracking the sales speed of high-trim models (GLE 450 / GLK 350) vs. economy models.

## Strategic Forecasting (Predictive Analysis)
Demand Projection: By standardizing the GLE 450 and GLK 350 trims, I identified a consistent upward trajectory in the high-margin SUV segment.
Seasonality Mapping: Projected a 20% surge in Q4 sales volume by analyzing historical Nigerian purchase patterns during festive periods.
Inventory Strategy: Recommended a targeted "Stock-Up" phase for fuel-efficient Toyota models in the Northern territory to capture rising demand predicted for the next quarter.

## Technical Stack
ETL & Cleaning: Python (Pandas/NumPy) & Strategic Data Augmentation.
Database: PostgreSQL (Data Warehousing & Complex SQL Queries). I migrated the cleaned dataset into a PostgreSQL environment to perform 
deep-dive business analysis. Key queries included in Analysis_Queries.sql: Territory Analysis, Operational Audit, Inventory and Time/Forecasting.
Visualization: Power BI (Interactive Dashboards & Time-Series Forecasting).

## Actionable Recommendations
Inventory Pivot: Prioritize procurement of high-velocity models like the GLE 450 and GLK 350, identified as top revenue contributors.
Territory Focus: Reallocate marketing spend to the Northern Territory to capitalize on higher average transaction values.
Logistics Audit: Investigate delivery delays in the South-South region to improve customer satisfaction and reduce lead times.
A Trend Line: Showing sales from 2021 to Feb 2026.
A KPI Card: Showing Average Delivery Time" or Total Revenue.
