# Fixes I had to do when deploying

## Prometheus & Grafana

- The permissions for the local files had to be set after running once
- Check the logs in respective services to find the error
- `chown orangepi:orangepi -R ./data/grafana && chmod 770 -R ./data/grafana`
- `chown orangepi:orangepi -R ./data/prometheus && chmod 770 -R ./data/prometheus`
