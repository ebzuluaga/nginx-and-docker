# NGINX proxy server & load balancer

Demo project for how to dockerize an http server and set up an NGINX proxy and load balancer for the multiple instances of the http server. 

I made this following a tutorial [from this youtube video](https://www.youtube.com/watch?v=q8OleYuqntY)

## Project structure

```text
.
|-- docker-compose.yaml............This file runs multiple container images
|-- dockerfile.....................This file specifies the 3 instances of the HTTP serever
|-- package.json...................This is the npm config file
|-- pnpm-lock.yaml.................This is for node too
|-- README.md......................This is the file you're reading right now
|-- nginx..........................Nginx stuff
|   |-- create-cert.sh.............Create the ssl certificate
|   |-- nginx.conf.................Example nginx config
|   |-- selfsigned.crt.............SSL cert (Public key)
|   `-- selfsigned.key.............SSL cert (Private key)
`-- src............................The code for the HTTP server
    |-- server.js..................The whole server is in this file
    `-- public.....................Static files that will be served. Simple stuff, just for the demo
        |-- boxes.html
        |-- index.html
        |-- styles.css
        `-- images
            `-- nerd.png
```
