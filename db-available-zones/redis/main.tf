provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## Redis
data "alicloud_kvstore_zones" "single_zones_ids" {
  multi       = false
  output_file = "Redis-Available-Single-AZ.txt"
}

data "alicloud_kvstore_zones" "multi_zones_ids" {
  multi       = true
  output_file = "Redis-Available-Multi-AZ.txt"
}
