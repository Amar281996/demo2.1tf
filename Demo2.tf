terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = "ap-south-1"
    profile = "default"
}
resource "aws_vpc" "zomatovpc" {
    cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "zomatopub1" {
    vpc_id = aws_vpc.zomatovpc.id
    cidr_block = "10.0.1.0/24"
}
resource "aws_subnet" "zomatopub2" {
    vpc_id = aws_vpc.zomatovpc.id
    cidr_block = "10.0.2.0/24"
}