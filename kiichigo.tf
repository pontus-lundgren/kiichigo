provider "cobbler"
  username = "${var.cobbler_username}"
  password = "${var.cobbler_password}"
  url = "${var.cobbler_url}"
}

resource "cobbler_distro" "arch" {

}

