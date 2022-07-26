# hello-from-arm64

`hello-from-arm64` is a simple HTTP service that responds with its hostname and the non-loopback IPv4 addresses of its environment.  Its main use is for demoing load-balancing applications, like Kubernetes Services.

Example:

    $ docker run -ti -p 80:80 -d --name=hello-from yoppworksandrew/hello-from-arm64
    1561d4c1835cd78672944519384597e92a6da728a393bccac8dfe464efe612c2

    $ docker container inspect 1561d4c1835cd78672944519384597e92a6da728a393bccac8dfe464efe612c2 | grep IPAddress
            "SecondaryIPAddresses": null,
            "IPAddress": "172.17.0.2",
                    "IPAddress": "172.17.0.2",

    $ curl 172.17.0.2
    Hello from 1561d4c1835c (172.17.0.2)
