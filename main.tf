resource "kubernetes_secret" "do-token" {
  metadata {
    name = "do-token"
    namespace = "kube-system"
  }

  data = {
    token = var.do_token
  }

  type = "Opaque"
}
