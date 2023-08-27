#### RDS Advantages

___

* Up and Running in Minutes.
* Multi-AZ
* Failover capability
* Automated backups
* NOTE: a manual installation in your own datacenter could take 8 days or longer.

#### OLTP and OLTP

___
Understand the difference between `Online Transaction Processing (OLTP)` and `Online Analytics Processing (OLAP)`.

* `OLTP`:
    * Process data from transactions in real-time, e.g., customer orders, banking transactions, payments and booking
      systems.
    * OLTP is all about data processing, and completing large numbers of small transactions in real-time.
* `OLAP`:
    * Processes complex queries to analyze historical data, e.g., analyzing net profit figures from the past 3 years and
      sales forecasting.
    * OLAP is all about data analysis using large amounts of data and complex queries that take a long time to complete.
    * `OLAP Example`:
        * **Net Profit Analysis**: You have been asked to produce a report comparing net profits for car sales in 3
          different regions.
        * **Large Amounts of Data**:
            * Sum of cars sold in each region.
            * Unit cost for each region.
            * Sales price of each car.
            * Sales price compared to the unit cost.
        * **Analysis is not Transactions**
            * RDS is not suitable for analyzing large amount of data. Use a data warehouse like RedShift which is
              optimized for OLAP.