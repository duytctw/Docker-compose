#!/bin/bash
set -e

sh /etc/postgresql/config-postgres/create-replica-user.sh  # Create Respication User
sh /etc/postgresql/config-postgres/backup-master.sh        # Create forder Backup File in master
sh /etc/postgresql/config-postgres/init-slave.sh           # init Salve Coppy file config to config Svale
