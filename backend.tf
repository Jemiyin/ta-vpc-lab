terraform{
    backend "s3" {
        bucket = "ta-terraform-tfstates-779394131831"
        key = "week1/vpc-lab/terraform.tfstate"
        dynamodb_table = "terraform-lock"
    }
}