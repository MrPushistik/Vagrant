#устанавливаем Node.js
sudo dnf module install -y nodejs:16/common

#устанавливаем Postgresql
sudo dnf -y install postgresql-server postgresql-contrib

#настраиваем Postgresql
sudo systemctl enable postgresql
sudo postgresql-setup --initdb --unit postgresql

#Меняем файл конфигурации. Доступ к бд по паролю
sudo systemctl stop postgresql
sudo echo "# TYPE  DATABASE        USER            ADDRESS                 METHOD
local   all             all                                     peer
# IPv4 local connections:
host    all             all             127.0.0.1/32            md5
# IPv6 local connections:
host    all             all             ::1/128                 ident
# Allow replication connections from localhost, by a user with the
# replication privilege.
local   replication     all                                     peer
host    replication     all             127.0.0.1/32            ident
host    replication     all             ::1/128                 ident" > /var/lib/pgsql/data/pg_hba.conf

#Запускаем
sudo systemctl start postgresql

#Создаем пользователя с бд
sudo -u postgres psql -c "create user alex with password 'a1ex' superuser;"
sudo -u postgres psql -c "create database profcom owner alex;"

#Устанавливаем node_modules
cd /home/vagrant/app/node
npm install

cd /home/vagrant/app/node
npm run dev
