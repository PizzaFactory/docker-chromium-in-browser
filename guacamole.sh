#!/bin/bash


export USERNAME=${USERNAME:-USERNAME}
export PASSWORD=${PASSWORD:-PASSWORD}

cat <<EOL__ >/etc/guacamole/user-mapping.xml
<user-mapping>
    <authorize username="${USERNAME}" password="${PASSWORD}">
        <protocol>vnc</protocol>
        <param name="hostname">localhost</param>
        <param name="port">5900</param>
<!--        <param name="password">VNCPASS</param>-->
    </authorize>
</user-mapping>
EOL__

export CATALINA_BASE=/var/lib/tomcat8/

exec /usr/share/tomcat8/bin/catalina.sh run
