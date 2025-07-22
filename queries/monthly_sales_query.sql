-- Final output for visualization:
SELECT
  order_month,
  SUM(sales) AS total_sales,
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(quantity) AS total_quantity_sold
FROM `plenary-ability-463920-b3.ecommerce_dataset_2025.transactions_prepared`
GROUP BY order_month
ORDER BY order_month;

-- Written Summary:
-- From January to June 2025 sales showed clear monthly flunctuations. The hightest total sales were recorded in January, indicating strong product demand during that period. April also performed well, showing a notable recovery from the decline seen in March, which saw the worst performance. Sales fell signficantly again in June, making it as the weakest month overall. The pattern suggest a potential opportunity to boost engagement during the early months of the year, followed by flunctuations that may be connected through seasonal promotions or offers. The consistent increase or decrease in order volume and quantity sold over the months provides valuable insight into customer purchasing behavior.
