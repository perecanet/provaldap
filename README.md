# provaldap
## @edt isx41747980 curs 2019-2020

Servidor ldap, organtzacio 'dc=pere,dc=cat' amb socis soci1, soci2, soci3.

Per desenvolupar aquest servidor he creat una serie de fitxers, alguns des de 0, altres editats, per tal de obrir un container i tenir un servidor ldap modificat de la manera que se'm demanava a l'examen.

en primer lloc, al directori de treball hi tinc aquests fitxers:
- DB_config
- Dockerfile
- install.sh: aquest l'he editat de manera que em carregui la meva base de dades i em crei el directori /var/lib/ldap.pere.cat
- ldap.conf: he editat la URI i BASE
- marchenaAccount: dos fitxers es diuen així, l'schema on hi defineixo l'objectClass, i el ldif, on hi tinc les dades a modificar (socis als quals afegeixo a aquest objecte auxiliar)
- pere.cat: dos fitxers, schema, on defineixo l'estructura, i ldif, on hi poso les dades a inserir
- slapd.conf: aquí basicament he inserit dos nous includes per tenir els schemas creats per mi, i he substituit la base de dades edt,org per la meva, pere,cat.

NOM REPOSITORI: perecanet/provaldap:2019/latest
