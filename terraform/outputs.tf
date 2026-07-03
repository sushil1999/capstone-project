output "master_public_ip" {
  value = aws_instance.k8_master.public_ip
}

output "worker_public_ip" {
  value = aws_instance.k8_worker.public_ip
}

