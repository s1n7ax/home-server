# Dockerfile for Alpine with WireGuard and Nginx
FROM alpine:latest

# Install necessary packages
RUN apk update && apk add --no-cache \
    sudo \
    nginx \
    wireguard-tools \
    iproute2 \
    bash \
    curl

# Enable IP forwarding for WireGuard
RUN echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf && \
    echo "net.ipv6.conf.all.forwarding=1" >> /etc/sysctl.conf

# Expose WireGuard port and Nginx port
EXPOSE 80 51820/udp

# Add entrypoint script to start both services
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set entrypoint
ENTRYPOINT ["/entrypoint.sh"]
