terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "douglasnaphas"

    workspaces {
      name = "tf13-site-01"
    }
  }
}
