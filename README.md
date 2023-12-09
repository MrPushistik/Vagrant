## Помещаем профком в виртуальную машину средствами Vagrant

### Этап подготовки 
(Имеются проблемы с доступом к Vagrant, автору работы пришлось проделать следующие шаги)
1. Создал VM (fedora workstation live 38) с возможностью вложенной виртуализации
![Разрешаем вложенную виртуализацию](/images/p1.jpg)

2. Поставил и настроил VirtuablBox (версия 6.1, при написании инструкции на другой VM vagrant отказался работать с 7.0) 
- файл VB-install содержит инструкции устанвоки. 
- После установки - перезапуск (Иначе sudo /sbin/vboxconfig будет вечно билдить kernel module)
- Вызвал sudo /sbin/vboxconfig для билда kernel module (VB очень этого хочет)
![Ожидание](/images/p2.jpg)

3. Поставил и включил VPN (например тот, что в файле VPN-install)

4. Установил Vagrant (файл Vagrant-install)

5. Установил box c fedora-38: vagrant add box bento/fedora-38
![Загрузилось](/images/p3.jpg)

## Теперь все готово к запуску!

1. Разместить проект в удобном месте
- git clone https://github.com/MrPushistik/Vagrant

2. Запустить
- vagrant up

3. Дождаться создания VM, установки node и postgre, запуска проекта
![Проект загрузился!](/images/p4.jpg)

4. Обратиться к приложению:
- localhost:3001 - страница гостя
- localhost:3001/auth.html - страница входа (login: admin, password: admin)

#### Выполнил: Овчинников А.А. б2-ИФСТ-32 09.12.2023