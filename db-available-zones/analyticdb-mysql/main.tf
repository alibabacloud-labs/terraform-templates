provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## AnalyticDB MySQL
data "alicloud_adb_zones" "zones_ids" {
  multi       = false
  output_file = "ADB-MySQL-Available-AZ.txt"
}
