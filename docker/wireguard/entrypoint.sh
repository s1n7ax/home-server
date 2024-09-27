#!/bin/bash

# Enable IP forwarding
sysctl -p

# Start WireGuard
wg-quick up wg0

# Start Nginx
nginx

# Keep the container running in the foreground
tail -f /var/log/nginx/access.log
