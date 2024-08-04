# ==========================================
# Construct KinD cluster
# ==========================================

# resource <resource-type> <resource-name>
resource "kind_cluster" "this" {
  name = "flux-e2e"
}

# ==========================================
# Initialise a Github project
# ==========================================

resource "github_repo" "this" {
  name        = var.github_repo
  description = var.github_repo
  visibility  = "private"
  auto_init   = true # This is extremely important as flux_bootstrap_git will not work without a repository that has been initialised
}

# ==========================================
# Bootstrap KinD cluster
# ==========================================

resource "flux_bootstrap_git" "this" {
  depends_on = [github_repo.this]

  embedded_manifests = true
  path               = "clusters/my-cluster"
}
