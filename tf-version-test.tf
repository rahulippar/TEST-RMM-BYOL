terraform {
  required_providers {
    ibm = {
      source = "IBM-Cloud/ibm"
      version = "~> 1.40.0"
    }
  }
  required_version = ">= 0.12.0"
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.ibm_region
}

variable "ibmcloud_api_key" {
  description = "Enter your IBM Cloud API Key, you can get your IBM Cloud API key using: https://cloud.ibm.com/iam#/apikeys"
  type        = string
}

variable "ibm_region" {
  description = "IBM Cloud region where all resources will be deployed."
  type        = string
}

output "output_version_test" {
	value = "This is terraform version test."
}