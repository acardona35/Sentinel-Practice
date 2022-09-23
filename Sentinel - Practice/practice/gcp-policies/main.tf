terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.36.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "terraform-gcp-362520"
  region  =  "us-central1"
  zone    =  "us-central1-a"
  credentials = ("removedKeys.json")

} 

resource "google_compute_instance" "test"{
    name = "test"
    machine_type ="n1-standard-1"
    zone = "us-central1-a"

    boot_disk {
      initialize_params{
        image = "debian-cloud/debian-11"
      }
    }
    

    network_interface {
      network = "auto-vpc-from-cc"
      
    }
}


   
