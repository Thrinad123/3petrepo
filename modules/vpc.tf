#creating vpc
resource "google_compute_network" "vpc_net_petproj"{
    name = var.petprojvpc
    project = var.project
    auto_create_subnetworks = false     
    }

#creating subnet
resource "google_compute_subnetwork" "vpc_subnet_pet"{
    name = var.subnetpet
    project = var.project
    region = var.region
    ip_cidr_range = "192.168.0.0/20"
    network = google_compute_network.vpc_net_petproj.self_link  #this is self linking and getting the name from 
    
     secondary_ip_range = [
        {
        range_name = var.cluster_secondary_name # we are calling clusters secondary name
        ip_cidr_range = var.cluster_secondary_range_vpc
        },
        {
        range_name = var.cluster_service_name
        ip_cidr_range = var.cluster_service_range
        }
    ]

    /*secondary_ip_range {
                range_name = "subnetpetpod"      #var.cluster_secondary_name # we are calling clusters secondary name
                ip_cidr_range = var.cluster_secondary_range_vpc       #"10.4.0.0/14"    #var.cluster_secondary_range_vpc
            }
      secondary_ip_range{
        range_name = var.cluster_service_name
        ip_cidr_range = var.cluster_service_range
    }
    
*/
   }