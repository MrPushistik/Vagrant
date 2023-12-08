## Помещаем профком в виртуальную машину средствами Vagrant

0. При необходимости установить Vagrant 
(Есть проблемы с доступностью, нужно как-то "оказаться в другой стране", тогда проблем нет)
- bash vagrant.sh

1. Разместить проект в удобном месте

2. Запустить make install

3. Дождаться завершения установки:
- bento/fedora-38 (тут тоже надо "быть в другой стране")
- nodejs:16/common
- postgresql

4. Обратиться к приложению:
- localhost:3001 - страница гостя
- localhost:3001/auth.html - страница входа (login: admin, password: admin)

#### Выполнил: Овчинников А.А. б2-ИФСТ-32