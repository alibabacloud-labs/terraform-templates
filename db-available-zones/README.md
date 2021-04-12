# Using the terraform scripts under this folder can get the list of available zones for Alibaba Cloud Database products on regions globally

## Basic steps

- Set up terraform CLI environment on your desktop. For the tutorial about how to setup Terraform CLI, you can refer to [**https://partners-intl.aliyun.com/help/doc-detail/91289.htm**](https://partners-intl.aliyun.com/help/doc-detail/91289.htm)
- Run alibabacloud-regions/main.tf ("terraform init", then "terraform apply") to get all regions on Alibaba Cloud globally
- For each product, specify the region in provider section of the terraform scirpt, then run (("terraform init", then "terraform apply")) to get current available zones on a specific region, such as rds/main.tf, the list of available zones will be output to the *.txt file under the same folder. Some products support user-specified multiple AZ deployment, then there will be *-Available-Multi-AZ.txt file for user-specified multiple AZ deployment options. Otherwise, if the product supports single-AZ deployment or automatically multi-AZ deployment, there will be only 1 *.txt file for zones available for user-specified single AZ deployment options.



## Products AZ description
| Product | Terraform scripts | Availability Zone Description |
| --- | --- | --- |
| RDS (MySQL, PostgreSQL, SQL Server) | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/rds/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/rds/main.tf) | Single-AZ or Multi-AZ deployment |
| Redis | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/redis/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/redis/main.tf) | Single-AZ or Multi-AZ deployment |
| MongoDB | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/mongodb/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/mongodb/main.tf) | Single-AZ or Multi-AZ deployment |
| PolarDB | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/polardb/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/polardb/main.tf) | PolarDB manages the multi-AZ deployment automatically, which could not be specified by user. |
| AnalyticDB MySQL | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/analyticdb-mysql/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/analyticdb-mysql/main.tf) | AnalyticDB MySQL manages the multi-AZ deployment automatically, which could not be specified by user. |
| AnalyticDB PostgreSQL | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/analyticdb-postgresql/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/analyticdb-postgresql/main.tf) | AnalyticDB PostgreSQL manages the multi-AZ deployment automatically, which could not be specified by user. |
| HBase | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/hbase/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/hbase/main.tf) | HBase manages the multi-AZ deployment automatically, which could not be specified by user. |
| Cassandra | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/cassandra/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/cassandra/main.tf) | Cassandra manages the multi-AZ deployment automatically, which could not be specified by user. |
| TSDB/InfluxDB | [https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/tsdb/main.tf](https://github.com/alibabacloud-labs/terraform-templates/blob/main/db-available-zones/tsdb/main.tf) | TSDB/InfluxDB manages the multi-AZ deployment automatically, which could not be specified by user. |

