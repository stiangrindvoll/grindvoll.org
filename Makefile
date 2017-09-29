include $(HOME)/.grindvoll.secrets

fetch:
	curl https://getcaddy.com | bash -s personal http.cache,http.git,http.hugo,http.login,http.ratelimit,http.upload

tcpbind:
	setcap cap_net_bind_service=+ep /usr/local/bin/caddy

all: fetch

run:
	caddy
