# rs-k8s-infra-setup
Task 2: Basic Infrastructure Configuration
Objective
In this task, you will write Terraform code to configure the basic networking infrastructure required for a Kubernetes (K8s) cluster.

Steps
Write Terraform Code

Create Terraform code to configure the following:
VPC
2 public subnets in different AZs
2 private subnets in different AZs
Internet Gateway
Routing configuration:
Instances in all subnets can reach each other
Instances in public subnets can reach addresses outside VPC and vice-versa
Organize Code

Define variables in a separate variables file.
Separate resources into different files for better organization.
Verify Configuration

Execute terraform plan to ensure the configuration is correct.
Provide a resource map screenshot (VPC -> Your VPCs -> your_VPC_name -> Resource map).
Submit Code

Create a PR with the Terraform code in a new repository.
(Optional) Set up a GitHub Actions (GHA) pipeline for the Terraform code.
Additional Tasks

Implement security groups.
Create a bastion host for secure access to the private subnets.
Organize NAT for private subnets, so instances in private subnet can connect with outside world:
Simpler way: create a NAT Gateway
Cheaper way: configure a NAT instance in public subnet
Document the infrastructure setup and usage in a README file.
