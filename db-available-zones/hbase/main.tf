provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## HBase
## Multi AZ is usually used to launch HBase instances.
data "alicloud_hbase_zones" "zones_ids" {
  output_file = "HBase-Available-AZ.txt"
}
