#!/bin/sh
sudo apt update && sudo apt install dante-server -y
cat > /etc/danted.conf <<END
logoutput: syslog
user.privileged: root
user.unprivileged: nobody
# The listening network interface or address.
internal: 0.0.0.0 port=80
# The proxying network interface or address.
external: ens3
# socks-rules determine what is proxied through the external interface.
# The default of "none" permits anonymous access.
socksmethod: none
# client-rules determine who can connect to the internal interface.
# The default of "none" permits anonymous access.
clientmethod: none
client pass {
        from: 0.0.0.0/0 to: 0.0.0.0/0
        log: connect disconnect error
}
socks pass {
        from: 0.0.0.0/0 to: 0.0.0.0/0
        log: connect disconnect error
}
END
service danted restart
service danted status
