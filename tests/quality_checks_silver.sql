/*
===============================
QUALITY CHECKS 
================================
================================
Checks for  silver.crm_prd_info
===============================
*/

SELECT 
prd_id,
COUNT(*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id is NULL

/*
  =============================================
  Checks for silver.crm_sales_details
  ============================================
*/
SELECT 
 NULLIF (sls_order_dt,0) sla_order_dt
FROM silver.crm_sales_details
WHERE sls_order_dt > 20500101 OR sls_order_dt < 19000101



SELECT 
* 
FROM silver.crm_sales_details
WHERE  sls_order_dt > sls_ship_dt OR sls_order_dt > sls_due_dt


/*
================================================
Checks for silver.erp_cust_az12
================================================  
*/
SELECT DISTINCT
bdate 
FROM silver.erp_cust_az12
WHERE bdate <'1924-01-01' OR bdate > GETDATE()



SELECT DISTINCT 
gen 
FROM silver.erp_cust_az12
SELECT * FROM silver.erp_cust_az12



