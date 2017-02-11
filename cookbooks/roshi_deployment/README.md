# roshi_deployment

Create a minimal Roshi server deployment which sits behind an nginx reverse proxy. The Roshi server uses a Redis server running on the same machine and connects to it through (localhost:6379).

A firewall rule prevents direct access to the roshi-server through any host other than 127.0.0.1 (localhost). Access to Roshi can is possible through nginx (port 80).

Requirements
------------
The following cookbooks are required for running the default recipe:
- runit
- redisio
- nginx

Recipes
-------
- default: uploads roshi-server binary, sets up other required services, and adds firewall rules
- install_nginx: builds, installs, and configures nginx
- install_runit: install runit, supervise and start nginx, redis, and roshi-server processes
- install_redisio: build and install redis
