resource "google_compute_instance" "default" {
  project      = "k8s-481406"    # ใส่ Project ID ของคุณ เช่น qwiklabs-gcp-xxxx
  zone         = "asia-southeast1-a"          # ใส่ Zone เช่น us-west1-c
  name         = "terraform"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"
    # access_config {} # uncomment บรรทัดนี้ถ้าต้องการ External IP
  }
}
