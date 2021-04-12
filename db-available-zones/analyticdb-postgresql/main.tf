provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## AnalyticDB PostgreSQL
data "alicloud_gpdb_zones" "zones_ids" {
  multi       = false
  output_file = "ADB-PostgreSQL-Available-AZ.txt"
}
