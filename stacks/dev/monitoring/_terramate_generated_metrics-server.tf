// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT

resource "helm_release" "metrics-server" {
  chart            = "metrics-server"
  create_namespace = false
  depends_on = [
    kubernetes_namespace.monitoring,
  ]
  name       = "metrics-server"
  namespace  = local.namespace_name
  repository = "https://kubernetes-sigs.github.io/metrics-server/"
  version    = "3.8.2"
  wait       = true
}
