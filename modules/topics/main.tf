###########################
#	    PROVIDERS         #
###########################

terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "1.23.0"
    }
  }
}

###########################
#	    RESOURCES         #
###########################

resource "confluent_kafka_topic" "tripEvent" {
  kafka_cluster {
    id = var.cluster_id
  }
  topic_name         = "tripEvent"
  partitions_count   = 6
}
resource "confluent_kafka_topic" "tripCurrentSnapshot" {
  kafka_cluster {
    id = var.cluster_id
  }
  topic_name         = "tripCurrentSnapshot"
  partitions_count   = 6
}
resource "confluent_kafka_topic" "tripRouteHistory" {
  kafka_cluster {
    id = var.cluster_id
  }
  topic_name         = "tripRouteHistory"
  partitions_count   = 6
}
