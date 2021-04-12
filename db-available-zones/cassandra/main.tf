provider "alicloud" {
  #   access_key = "${var.access_key}"
  #   secret_key = "${var.secret_key}"
  region = "ap-southeast-1"
}

######## Cassandra
## Multi AZ is usually used to launch Cassandra clusters.
data "alicloud_cassandra_zones" "zones_ids" {
  multi       = false
  output_file = "Cassandra-Available-AZ.txt"
}
