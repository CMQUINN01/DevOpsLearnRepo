terraform {
    required_providers {
        kubernetes = {
            source = "hashicorp/kubernetes"
        }
    }
}

resource "null_resource" "minikube_start" {
    provisioner "local-exec" {
        command = "minikube start --driver=docker --cpus=4 --memory=4096mb --profile=complete-devops-project"
    }

    provisioner "local-exec" {
        when    = destroy
        command = "minikube delete --profile=complete-devops-project"
    }
}