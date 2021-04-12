provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## TSDB/InfluxDB
data "alicloud_tsdb_zones" "zones_ids" {
  output_file = "TSDB-InfluxDB-Available-AZ.txt"
}
