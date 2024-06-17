locals {
  env         = "staging"
  region      = "ap-southeast-1"  # Singapore region
  zone1       = "ap-southeast-1a" # First availability zone in Singapore
  zone2       = "ap-southeast-1b" # Second availability zone in Singapore
  eks_name    = "demo"
  eks_version = "1.29"
}
