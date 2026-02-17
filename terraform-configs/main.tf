terraform{
    required_providers {
         minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.42"
        }
    }
}

provider "minikube" {
    kubernetes_version = "1.30"
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "complete-devops-project"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
}