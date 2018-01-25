Configuration
=============

### Nginx authetication
```
$ sudo apt-get udpate
$ sudo apt-get install apache2-utils
$ sudo htpasswd -c ./config/.htpasswd $user
```

### Alertmanager config
```
$ export EMAIL_ADDR=$email_addr
$ export EMAIL_PASSWD=$email_passwd
$ ./config/build-alert-conf.sh
```


Run
=============

### Run monitor service
```
$ ./docker-compose.sh up
```
### Run monitor service with exporters
```
$ ./docker-compose.sh -f docker-compose-exporter.yml up
```

### List available commands
```
$ ./docker-compose.sh help
```

Reference
=========

- [prometheus DOC](https://prometheus.io/docs/prometheus/latest/configuration/configuration/)
- [grafana DOC](http://docs.grafana.org/)
