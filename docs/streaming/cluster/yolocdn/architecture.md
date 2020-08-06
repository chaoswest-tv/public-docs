
# Architecture

!!! danger
    Everything in here is so raw and unfinished that Gordon Ramsey
    would be fuckin' disgusted.


!!! question
    "Why not use a commercial CDN provider?"

    Because that would be boring, wouldn't it? Also, we'd have to
    rely on the features of that provider. And pay their prices.
    And wouldn't build cool shit in the meantime.

!!! question
    "Why not just use round-robin DNS?"

    Because it's broken.[^1] And it's superslow.

!!! question
    "Why not access everything through the load balancer?"

    Because this workload is heavily network-bottlenecked. Scaling
    the CDN would then be equal to scaling the load balancers. And
    then we would need to load balance the load balancers, dawg.

![Architecture](architecture.drawio)

[^1]: [https://daniel.haxx.se/blog/2012/01/03/getaddrinfo-with-round-robin-dns-and-happy-eyeballs/](https://daniel.haxx.se/blog/2012/01/03/getaddrinfo-with-round-robin-dns-and-happy-eyeballs/)
