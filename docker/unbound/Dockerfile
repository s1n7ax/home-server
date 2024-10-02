FROM alpinelinux/unbound

RUN mkdir -p /var/lib/unbound && \
  mkdir -p /var/log/unbound && \
  touch /var/log/unbound/unbound.log && \
  chown -R unbound:unbound /var/lib/unbound /var/log/unbound;


RUN wget https://www.internic.net/domain/named.root -qO- | tee /var/lib/unbound/root.hints

RUN echo '0 0 * */1 * wget https://www.internic.net/domain/named.root -qO- | tee /var/lib/unbound/root.hints' | crontab -
