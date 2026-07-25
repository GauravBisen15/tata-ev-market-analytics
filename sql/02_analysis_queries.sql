-- ============================================
-- TATA EV MARKET ANALYSIS - SQL QUERIES
-- ============================================

-- 1. Tata EV Year-wise Sales Trend (2015-2024)

SELECT YEAR, SUM(units_sold) AS tata_total_sales FROM ev_sales WHERE maker_name LIKE '%TATA%' GROUP BY year ORDER BY year;

-- 2. Tata EV Sales by Vehicle Type (2W, 3W, LMV, MMV)

SELECT category, year, SUM(units_sold) AS units FROM ev_sales WHERE maker_name LIKE '%TATA%' GROUP BY category, year ORDER BY category, year;

-- 3. Tata vs Competitors in Car Segment (LMV only)

SELECT year, maker_name, SUM(units_sold) AS units_sold FROM ev_sales WHERE category = 'LMV'
    AND (maker_name LIKE '%TATA%'
    OR maker_name LIKE '%MG MOTOR%'
    OR maker_name LIKE '%HYUNDAI%'
    OR maker_name LIKE '%MAHINDRA%')
GROUP BY year, maker_name ORDER BY year, units_sold DESC;

-- 4. Top 10 EV Makers in India (All Categories Combined)

SELECT maker_name, SUM(units_sold) AS total_sales FROM ev_sales GROUP BY maker_name ORDER BY total_sales DESC LIMIT 10;

-- 5. Tata's Manufacturing Locations

SELECT * FROM ev_makers WHERE maker_name LIKE '%TATA%';
 
-- 6. Top 10 States by Charging Stations

SELECT state, operational_charging_stations FROM charging_stations ORDER BY operational_charging_stations DESC LIMIT 10;

-- 7. Total Registered Vehicles by Class (Market Context)

SELECT vehicle_class, total_registration FROM vehicle_class_totals ORDER BY total_registration DESC;

-- 8. Tata's All-Time Summary (for Power BI KPI Cards)

SELECT SUM(units_sold) AS tata_total_units_alltime,
    MIN(year) AS first_year,
    MAX(year) AS latest_year
FROM ev_sales WHERE maker_name LIKE '%TATA%';
 
  