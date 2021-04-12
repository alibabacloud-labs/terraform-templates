provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
}

data "alicloud_regions" "current_region_ds" {
  current     = false
  output_file = "AlibabaCloud-Available-Regions.txt"
}
