provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## PolarDB
## Multi AZ is usually used to launch PolarDB instances.
data "alicloud_polardb_zones" "zones_ids" {
  multi       = false
  output_file = "PolarDB-Available-AZ.txt"
}
