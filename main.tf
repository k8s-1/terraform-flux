# creating a cluster with kind of the name "test-cluster" with kubernetes version v1.27.1 and two nodes

resource "kind_cluster" "default" {
    name = "staging"
    node_image = "kindest/node:v1.30.0"
    kind_config  {
        kind = "Cluster"
        api_version = "kind.x-k8s.io/v1alpha4"
        node {
            role = "control-plane"
        }
        node {
            role =  "worker"
        }
    }
}

resource "kind_cluster" "prod" {
    name = "production"
    node_image = "kindest/node:v1.30.0"
    kind_config  {
        kind = "Cluster"
        api_version = "kind.x-k8s.io/v1alpha4"
        node {
            role = "control-plane"
        }
        node {
            role =  "worker"
        }
    }
}
