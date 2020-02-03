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



resource "kubernetes_config_map" "traefik_conf" {
  metadata {
    name      = "traefik-conf"
    namespace = "kube-system"
  }

  data = {
    "traefik.toml" = var.traefik_config
  }
}