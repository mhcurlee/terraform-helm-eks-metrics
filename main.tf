# main.tf
// Install metrics-server 



resource "helm_release" "metrics-server" {
  name       = "metrics-server"
  repository = "https://kubernetes-sigs.github.io/metrics-server"
  chart      = "metrics-server"
  namespace = "kube-system"
  
  set {
    name  = "alertmanager.persistentVolume.storageClass"
    value = "gp2"
  }
  set {
    name  = "server.persistentVolume.storageClass"
    value = "gp2"
  }
}
