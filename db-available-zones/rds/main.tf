provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## RDS
data "alicloud_db_zones" "single_zones_ids" {
  multi       = false
  output_file = "RDS-Available-Single-AZ.txt"
}

data "alicloud_db_zones" "multi_zones_ids" {
  multi       = true
  output_file = "RDS-Available-Multi-AZ.txt"
}
