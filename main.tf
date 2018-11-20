resource "openstack_networking_secgroup_v2" "secgroup_slurm1" {
  name        = "secgroup_slurm1"
  description = "My neutron slurm-access security group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_slurm_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 6817
  port_range_max    = 6818
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_slurm1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_slurm_rule_2" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 7321
  port_range_max    = 7321
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_slurm1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_slurm_rule_3" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 8080
  port_range_max    = 8080
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_slurm1.id}"
}

resource "openstack_networking_secgroup_v2" "secgroup_slurm_submit1" {
  name        = "secgroup_slurm_submit1"
  description = "My neutron slurm-submit-access security group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_slurm_submit_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 60001
  port_range_max    = 63000
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_slurm_submit1.id}"
}
resource "openstack_networking_secgroup_v2" "secgroup_ntp1" {
  name        = "secgroup_ntp1"
  description = "My neutron ntp-access security group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_ntp_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 123
  port_range_max    = 123
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_ntp1.id}"
}

resource "openstack_networking_secgroup_v2" "secgroup_ssh1" {
  name        = "secgroup_ssh1"
  description = "My neutron ssh-access security group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_ssh_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_ssh1.id}"
}

resource "openstack_networking_secgroup_v2" "secgroup_http1" {
  name        = "secgroup_http1"
  description = "My neutron http and https-access security group"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_http_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_http1.id}"
}
resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_https_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_http1.id}"
}

resource "openstack_networking_secgroup_v2" "secgroup_freeipa1" {
  name        = "secgroup_freeipa1"
  description = "My neutron freeipa-access security group (LDAP and Kerberos)"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_ldap_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 389
  port_range_max    = 389
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_ldaps_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 636
  port_range_max    = 636
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_kerberos_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 88
  port_range_max    = 88
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_kerberos_rule_2" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 464
  port_range_max    = 464
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_kerberos_rule_3" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 88
  port_range_max    = 88
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_kerberos_rule_4" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 464
  port_range_max    = 464
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}

resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_dns_rule_1" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 53
  port_range_max    = 53
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}
resource "openstack_networking_secgroup_rule_v2" "secgroup_galaxy_dns_rule_2" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "udp"
  port_range_min    = 53
  port_range_max    = 53
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = "${openstack_networking_secgroup_v2.secgroup_freeipa1.id}"
}

resource "openstack_networking_network_v2" "network_1" {
    name = "sanbi-net"
    admin_state_up = "true"
}

# resource "openstack_networking_network_v2" "network_2" {
#     name = "combattb_ceph_net"
#     admin_state_up = "true"
# }

resource "openstack_networking_subnet_v2" "subnet_1" {
    name = "combattb_subnet_1"
    network_id = "${openstack_networking_network_v2.network_1.id}"
    cidr = "192.168.10.0/24"
    ip_version = 4
    enable_dhcp = "true"
    allocation_pools = {
        start = "192.168.10.100", 
        end = "192.168.10.120"
    }
    dns_nameservers = ["8.8.8.8"]
}

# resource "openstack_networking_subnet_v2" "subnet_2" {
#     name = "combattb_ceph_subnet"
#     network_id = "${openstack_networking_network_v2.network_2.id}"
#     cidr = "192.168.60.0/24"
#     ip_version = 4
#     enable_dhcp = "true"
#     no_gateway = "true"
#     allocation_pools = {
#         start = "192.168.60.50", 
#         end = "192.168.60.80"
#     }
# }

data "openstack_networking_network_v2" "public_network" {
  name = "Ext_Floating_IP"
}

data "openstack_networking_network_v2" "ceph_network" {
  name = "Ceph-net"
}

resource "openstack_networking_router_v2" "router_1" {
  name                = "galaxy_router"
  admin_state_up      = true
  external_network_id = "${data.openstack_networking_network_v2.public_network.id}"
}

# resource "openstack_networking_router_v2" "router_2" {
#   name                = "galaxy_ceph_router"
#   admin_state_up      = true
#   external_network_id = "${data.openstack_networking_network_v2.ceph_network.id}"
# }

resource "openstack_networking_router_interface_v2" "router_interface_1" {
  router_id = "${openstack_networking_router_v2.router_1.id}"
  subnet_id = "${openstack_networking_subnet_v2.subnet_1.id}"
}

# resource "openstack_networking_router_interface_v2" "router_interface_2" {
#   router_id = "${openstack_networking_router_v2.router_2.id}"
#   subnet_id = "${openstack_networking_subnet_v2.subnet_2.id}"
# }

resource "openstack_compute_instance_v2" "slurmctl" {
  name            = "il_slurmctl"
  image_name      = "Ubuntu-xenial-16.04-amd64"
  flavor_name      = "ilifu-B"
  key_pair        = "pvh"
  security_groups = ["default", 
                     "secgroup_ssh1", "secgroup_ntp1", "secgroup_slurm1", "secgroup_slurm_submit1"]
  user_data       = "#cloud-config\nhostname: il_slurmctl.sanbi.ac.za\nfqdn: il_slurmctl.sanbi.ac.za"

  network {
    name = "${openstack_networking_network_v2.network_1.name}"
  }

}
resource "openstack_compute_instance_v2" "freeipa" {
  name            = "il_freeipa"
  image_name      = "Ubuntu-xenial-16.04-amd64"
  flavor_name      = "ilifu-B"
  key_pair        = "pvh"
  security_groups = ["default", "secgroup_ssh1", "secgroup_http1", "secgroup_freeipa1", "secgroup_ntp1"]
  user_data       = "#cloud-config\nhostname: il_freeipa.sanbi.ac.za\nfqdn: il_freeipa.sanbi.ac.za"
  network {
    name = "${openstack_networking_network_v2.network_1.name}"
  }
}

resource "openstack_compute_instance_v2" "galaxy" {
  name            = "il_galaxy"
  image_name      = "Ubuntu-xenial-16.04-amd64"
  flavor_name      = "ilifu-C"
  key_pair        = "pvh"
  security_groups = ["default", "secgroup_ssh1", "secgroup_http1", "secgroup_ntp1", "secgroup_slurm_submit1"]
  user_data       = "#cloud-config\nhostname: il_galaxy.sanbi.ac.za\nfqdn: il_galaxy.sanbi.ac.za"

  network {
    name = "${openstack_networking_network_v2.network_1.name}"
  }

}

resource "openstack_compute_instance_v2" "slurmwn1" {
  name            = "il-slurmwn1"
  image_name      = "Ubuntu-xenial-16.04-amd64"
  flavor_name      = "ilifu-C"
  key_pair        = "pvh"
  security_groups = ["default", "secgroup_ssh1", "secgroup_ntp1", "secgroup_slurm_submit1"]
  user_data       = "#cloud-config\nhostname: il-slurmwn1.sanbi.ac.za\nfqdn: il-slurmwn1.sanbi.ac.za"

  network {
    name = "${openstack_networking_network_v2.network_1.name}"
  }
}

resource "openstack_blockstorage_volume_v2" "clusterstore_1" {
  name = "clusterstore_1"
  size = 100
}

resource "openstack_compute_volume_attach_v2" "va_1" {
  instance_id = "${openstack_compute_instance_v2.galaxy.id}"
  volume_id   = "${openstack_blockstorage_volume_v2.clusterstore_1.id}"
}
resource "openstack_compute_floatingip_v2" "floatip_1" {
  pool = "${data.openstack_networking_network_v2.public_network.name}"
}

resource "openstack_compute_floatingip_v2" "floatip_2" {
  pool = "${data.openstack_networking_network_v2.public_network.name}"
}

resource "openstack_compute_floatingip_associate_v2" "slurmctl_fip1" {
  floating_ip = "${openstack_compute_floatingip_v2.floatip_1.address}"
  instance_id = "${openstack_compute_instance_v2.slurmctl.id}"
}

resource "openstack_compute_floatingip_associate_v2" "galaxy_fip1" {
  floating_ip = "${openstack_compute_floatingip_v2.floatip_2.address}"
  instance_id = "${openstack_compute_instance_v2.galaxy.id}"
}

output "slurmctl_ext_ip" {
  value = "${openstack_compute_floatingip_associate_v2.slurmctl_fip1.floating_ip}"
}

output "freeipa_ip" {
  value = "${openstack_compute_instance_v2.freeipa.network.0.fixed_ip_v4}"
}

output "galaxy_ip" {
  value = "${openstack_compute_instance_v2.galaxy.network.0.fixed_ip_v4}"
}

output "galaxy_ext_ip" {
  value = "${openstack_compute_floatingip_associate_v2.galaxy_fip1.floating_ip}"
}

output "slurmwn1_ip" {
  value = "${openstack_compute_instance_v2.slurmwn1.network.0.fixed_ip_v4}"
}

# output "slurmwn1_ip" {
#   value = "${openstack_compute_floatingip_associate_v2.fip_2.floating_ip}"
# }

