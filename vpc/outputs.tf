output "tls_security_group_id" {
    value = aws_security_group.allow_tls.id
}

output "public_subnet_id" {
    value = aws_subnet.ml_subnet_public.id
}