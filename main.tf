terraform {
  required_version = ">= v1.1.5"
  required_providers {
   google ={
       source = "hashicorp/google"
       version = "3.51.0"           
   }
  }
 
} 

terraform {
  
  
}

provider "google" {
    project = "thri-petproject"
    region = "europe-west1"
} 


