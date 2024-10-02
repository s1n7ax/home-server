# Fixes I had to do when deploying

## Prometheus & Grafana

- The permissions for the local files had to be set after running once
- Check the logs in respective services to find the error
- `chown orangepi:orangepi -R ./data/grafana && chmod 770 -R ./data/grafana`
- `chown orangepi:orangepi -R ./data/prometheus && chmod 770 -R ./data/prometheus`

## AdGuard Home

By default DNS loopback server is running on port 53. So that has to be stopped
to run AdGuard Home.

```sh
# /etc/systemd/resolved.conf

# uncomment DNSStubListener=yes and set it to no
DNSStubListener=no
```
