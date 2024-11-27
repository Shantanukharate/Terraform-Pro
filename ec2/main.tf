resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type
    count = var.instance_count

    subnet_id = element(aws_subnet.public[*].id, count.index)
    assosiate_public_ip_address = true 

    tags ={
        Name = "web-instance-${count.index + 1}"
    }
}
