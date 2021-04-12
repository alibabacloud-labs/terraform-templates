provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## MongoDB
## Multi AZ is usually used to launch MongoDB instances.
data "alicloud_mongodb_zones" "single_zones_ids" {
  multi       = false
  output_file = "MongoDB-Available-Single-AZ.txt"
}

data "alicloud_mongodb_zones" "multi_zones_ids" {
  multi       = true
  output_file = "MongoDB-Available-Multi-AZ.txt"
}
