# roshi_deployment

Create a minimal Roshi server deployment which sits behind an nginx reverse proxy. The Roshi server uses a Redis server running on the same machine and connects to it through localhost and the default Redis port (localhost:6379).

Requirements
------------
The following cookbooks are required for running the default recipe:
- runit
- redisio
- nginx