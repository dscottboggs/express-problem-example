
 - Running `node index.js`, then `curl localhost:12345/`, a response is recieved
   right away.
 - Run this...
   ```
   docker build -t test-express .
   container_id="$(docker run -d test-express)"
   docker exec $container_id curl localhost:12345/
   ```
   ...and there will be an immediate response
 - With the container still running, run
   ```
   ip_addr=$(docker inspect $container_id  --format "{{ .NetworkSettings.Networks.bridge.IPAddress }}"
   curl $ip_addr:12345
   ```
   ... and it will hang forever.


Please note the presence of the specified (but default) value of the host
binding.
 
