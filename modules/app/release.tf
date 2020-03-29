resource "helm_release" "nginx" {
  name = "nginx"
  repository = data.helm_repository.bitnami.metadata[0].name
  chart = "nginx"
  version = "5.1.12"
  wait = true
}
