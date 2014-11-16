busybox
=======

For attaching to containers and debugging. Needed an easy way to debug new docker containers. 

## Usage
```
docker run -d --name box swyckoff/busybox
docker run -ti --name test --volumes-from box $IMAGE
```

Inside the container...

```
export PATH=$PATH:/busybox/bin
```

## TODO

* http://www.busybox.net/FAQ.html - maybe need to cross compile to work on certain containers. 
* figure out why volume trasnfering strace, git, etc. didn't work. ^.  Dive into ELF binary / linking / low level stuff!

## Credit

https://github.com/progrium/busybox

## License

MIT
