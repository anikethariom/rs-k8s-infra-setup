# Instead of using NAT Gateway (which costs more),so I set up a NAT instance in a public subnet.

resource "aws_instance" "nat" {
	ami           = "ami-0e86e20dae9224db8"
	instance_type = "t2.micro"
	subnet_id     = "aws_subnet.public[0].id"
	associate_public_ip_address = true 

	tags = {
	  Name = "k8s-nat-instance" 
	
	  }
	}
