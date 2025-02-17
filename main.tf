provider "local" {}

resource "null_resource" "install_nanomdm" {
  provisioner "local-exec" {
    command = <<EOT
      echo "Installing NanoMDM..."
      
      # Will need to update when new NANO come out
      curl -L https://github.com/micromdm/nanomdm/releases/download/v0.7.0/nanomdm-darwin-arm64-v0.7.0.zip -o nanomdm.zip
      unzip -o nanomdm.zip
      
      # Move the binary to /usr/local/bin/
      sudo mv nanomdm-darwin-arm64-v0.7.0/nanomdm-darwin-arm64 /usr/local/bin/nanomdm
      sudo chmod +x /usr/local/bin/nanomdm

      # Clean up
      rm -rf nanomdm.zip nanomdm-darwin-arm64-v0.7.0

      echo "NanoMDM installed successfully!"
    EOT
  }
}
