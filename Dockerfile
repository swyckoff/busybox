FROM progrium/busybox
RUN opkg-install curl bash git lsof strace

RUN mkdir /busybox && cp -r /bin /busybox

VOLUME ["/busybox"]

CMD ["/bin/bash"]
