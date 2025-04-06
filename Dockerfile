FROM yyyar/gobetween:latest

VOLUME ["/etc/gobetween/conf"]

CMD ["/gobetween", "-c", "/etc/gobetween/conf/gobetween.toml"]
