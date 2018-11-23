### infra

This contains my network infrastructure. Each directory is a separate machine. Each machine may run multiple services using `docker-compose`. Inside every machine's `docker-compose`, `nginx` is used for multiplexing HTTP requests to different services.

Right now, I'm not running much on my personal infrastructure. But I use something very similar to this for [Commento](https://commento.io)'s infrastructure, and I've found that this system works great. Adding a new service, moving services across machines, deploying a new machine, and more: everything is just a few lines of change.
