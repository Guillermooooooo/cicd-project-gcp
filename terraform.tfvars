project_id = "guillermo-hermoso-sandbox"
region = "europe_southwest1"
credentials_file = "account-key.json"

vpc_name = "vpc-01"

subnet_names = [
  "subnet-public",
  "subnet-private" 
]

subnet_cidrs = [ 
  "10.0.1.0/24",
  "10.0.2.0/24" 
]