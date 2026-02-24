resource "docker_image" "nginx" {
  name = "nginx:stable"
}

resource "docker_container" "nginx" {
  name  = "tf-nginx"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8081
  }
}

output "nginx_url" {
  value = "http://localhost:8081"
}
