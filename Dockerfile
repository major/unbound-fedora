FROM --platform=${BUILDPLATFORM:-linux/amd64} registry.fedoraproject.org/fedora-minimal:latest
RUN microdnf -y install unbound && microdnf clean all
COPY unbound.conf /etc/unbound/unbound.conf
CMD ["/usr/sbin/unbound"]
