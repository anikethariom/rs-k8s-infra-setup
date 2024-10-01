# To securly access private subnets, I set up a bastion.tf file 

resource "aws_instance" "bastion" {
	ami             = "ami-0e86e20dae9224db8" 
	instance_type   = "t2.micro"
	subnet_id       = aws_subnet.public[0].id
	key_name        = "your-ssh-key"

	tags = {
           Name = "k8s-bastion"	
	 }
	}
