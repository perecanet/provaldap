#! /bin/bash
# Install ldapserver

rm -rf /var/lib/ldap.pere.cat
rm -rf /etc/openldap/slapd.d/*
rm -rf /var/lib/ldap/*
mkdir /var/lib/ldap.pere.cat
cp /opt/docker/DB_CONFIG /var/lib/ldap.pere.cat/
cp /opt/docker/DB_CONFIG /var/lib/ldap/.
slaptest -f /opt/docker/slapd.conf -F /etc/openldap/slapd.d
slapadd -F /etc/openldap/slapd.d -l /opt/docker/pere.cat.ldif 
chown -R ldap.ldap /etc/openldap/slapd.d
chown -R ldap.ldap /var/lib/ldap
chown -R ldap.ldap /var/lib/ldap.pere.cat
cp /opt/docker/ldap.conf /etc/openldap/.

