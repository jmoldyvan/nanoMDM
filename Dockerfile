# Use the official NanoMDM image as the base
FROM ghcr.io/micromdm/nanomdm:latest

# Copy CA certificate into the container
COPY ca.pem /etc/nanomdm/ca.pem

# Set entrypoint to NanoMDM with the CA flag
ENTRYPOINT ["/nanomdm", "-listen", ":9000", "-ca", "/etc/nanomdm/ca.pem"]
