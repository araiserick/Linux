# Тестовое задание для Наставника

Тестовое задание состоит из трех частей:
Тест с полем ввода ответа.


Развернутый ответ на вопрос студента, написанный текстом.

 В этой части вам нужно будет помочь студенту решить проблемы с его кодом.

Часть на подумать и поговорить


Вы можете скопировать себе эту страницу и заполнять ответы в вашей копии. В качестве ответа присылайте нам ссылку на вашу копию.

# Часть 1

Расположите в правильном порядке команды для сборки и деплоя Java проекта: mvn package docker build, docker push, helm install

 ### Ответ:

 ```bash
 mvn package 
 docker build 
 docker push 
 helm install
 ```

Разработчик после пуша кода в гит перекидывает issue в трекере на админа для деплоя на прод. Что здесь не так?

 ### Ответ:
 
  Отсутствует автоматизация, вместо этого создается merge request, который после автоматического тестирования и апрува ревьювера будет автоматически смержин и развернут в продакшене


Как через командную строку слить открытый пул реквест в мастер ветку?

 ### Ответ:

1. Переходим в локальную директорию
2. убеждаемся, что находимся в ветке master
```bash
git checkout master
```
3. Обновляем локальную ветку master
```bash
git pull origin master
```
4. Находим номер пул реквест, который хотим слить.
5. Сливаем пул реквест
```bash
git merge --no-ff origin/pull/НОМЕР_ПУЛ_РЕКВЕСТА
```

Чем принципиально отличается nginx от apache?

 ### Ответ:

| Nginx  | Apache |
| :---: | :---: |
| Единый файл конфигурации  | Дополнительное конфигурирование
через .htaccess  |
| Обработка статики + проксирование  | Обработка динамического контента  |
| Модули подключаются в момент компиляции | Динамические модули |
| Асинхронная обработка запросов | Синхронная обработка запросов |


Расскажите про основные отличия SQL и NOSQL баз данных. Приведите примеры использования для обоих случаев и аргументируйте свой выбор.
 
 ### Ответ:

| Характеристика | SQL| NoSQL|
|----|----|--|
| Структура данных| Строго определённые схемы (таблицы)      | Гибкие схемы (документы, ключ-значение, графы) |
| Масштабируемость| Вертикальная (увеличение мощности сервера) | Горизонтальная (добавление серверов)        |
| Согласованность данных| ACID транзакции (строгая согласованность)  | BASE (возможна задержка обновления данных)    |
| Запросы| Мощный SQL язык                        | Ограниченные возможности запросов, зависят от типа базы |
| Примеры| MySQL, PostgreSQL, Oracle              | MongoDB, Cassandra, Redis, Neo4j         |

### Примеры:

| SQL (MySQL): Интернет-магазин | NoSQL (MongoDB): Система аналитики социальных медиа |
| ---- | ----- |
|Структурированные данные: товары, категории, заказы, пользователи легко представляются в виде таблиц. | Неструктурированные данные: посты, комментарии, лайки имеют разную структуру, их удобно хранить в формате документов. |
| ACID транзакции: важна целостность данных, например, при оформлении заказа или обновлении остатков на складе. | Скорость записи: важна быстрая запись большого потока данных в реальном времени. |
Сложные запросы: необходимость выборки товаров по разным параметрам, анализ продаж. |   Горизонтальная масштабируемость: большой объем данных, необходима возможность лёгкого масштабирования. |


Предложите несколько вариантов для масштабирования вашего сервиса.

 ### Ответ:

1. Вертикальное масштабирование: увеличение ресурсов сервиса: памяти, процессора, дисковое пространство.
2. Горизонтальное масштабирование: Балансировка трафика между серверами
3. Микросервисная архитектура: Разделите сервис на независимые модули
4. Кеширование: Храните часто используемые данные в кэше.
5. Оптимизация кода и базы данных со стороны разработчиков
 


Какие способы изменения прав доступа к файлу в Linux вы знаете?

 ### Ответ:

1. Через GUI
2. через команду 

```bash
chmod
```
3. через команду 
```bash
chown
```

Какие DNS-записи вы знаете?

 ### Ответ:

| DNS-запись | Значение |
| :--: | :---: |
| A  | Сопоставляет доменное имя с IPv4-адресом |
| AAAA  | Сопоставляет доменное имя с IPv6-адресом |
| CNAME | Создает алиас (псевдоним) для доменного имени | 
| MX | Почтовые серверы, ответственные за прием почты для домена | 
| NS  | авторитетные DNS-серверы для домена |
| PTR   | Используется для обратного поиска DNS, т.е. для нахождения доменного имени по IP-адресу |
| SOA | Содержит информацию об администрировании зоны DNS |

# Часть 2

### Сообщение от студента:

 Создал maven в проект по инструкции. Почему-то проект не запускается.

```bash
 $ mvn package
[INFO] Scanning for projects...
[INFO] 
[INFO] ----------------------< com.mycompany.app:my-app >----------------------
[INFO] Building my-app 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-resources-plugin:2.6:resources (default-resources) @ my-app ---
[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory /home/user/Projects/personal/nastya/praktikum-maven-1.5/src/main/resources
[INFO] 
[INFO] --- maven-compiler-plugin:3.1:compile (default-compile) @ my-app ---
[INFO] Changes detected - recompiling the module!
[WARNING] File encoding has not been set, using platform encoding UTF-8, i.e. build is platform dependent!
[INFO] Compiling 1 source file to /home/user/Projects/personal/nastya/praktikum-maven-1.5/target/classes
[INFO] -------------------------------------------------------------
[ERROR] COMPILATION ERROR : 
[INFO] -------------------------------------------------------------
[ERROR] Source option 5 is no longer supported. Use 6 or later.
[ERROR] Target option 1.5 is no longer supported. Use 1.6 or later.
[INFO] 2 errors 
[INFO] -------------------------------------------------------------
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.720 s
[INFO] Finished at: 2021-05-19T22:27:12+03:00
[INFO] ------------------------------------------------------------------------
```

 ### Ваш ответ:

Добрый день, {Имя студента}

Вам нужно указать Maven использовать более новые версии Java, как минимум  1.6, а лучше 1.8 или выше. Убедитесь, что у вас установлена нужная версия Java, и она используется по умолчанию в вашей системе.
Перезапустите вашу IDE или терминал, чтобы изменения вступили в силу.
После внесения изменений попробуйте выполнить mvn clean package для полной очистки и сборки проекта. Если будут еще вопросы, обязательно задавайте! Удачи в обучении!


### Сообщение от студента:

 Я закомитил то, что не хотел. Как мне теперь раскоммитить это обратно?

### Ваш ответ:
Добрый день, {Имя студента}

Можно откатиться к старому коммиту, но уже с имеющимися изменениями
```bash
git reset --soft HEAD~1
```
или с удалением последних изменений
```bash
git reset --hard HEAD~1
```
Я бы вам посоветовал обратить внимание на наш бесплатный курс по git, ссылку прилагаю https://practicum.yandex.ru/catalog/programming/free/?from=main_header-all-courses_button&searchText=+git
Удачи в дальнейшем обучении!

### Сообщение от студента:

 Закоммитила в ветку branch_A, а нужно было в brarnch_B. Помогите, пожалуйста, перенести последний коммит из одной ветки в другую.

### Ваш ответ:

Добрый день, {Имя студента}

Удалите коммит с ветки A
  ```bash
   git checkout branch_A
   git reset --soft HEAD~1 
   ```
Перейти на ветку B и выполнить коммит

```bash
git checkout branch_B
git commit -m "комментарий"
```
Я бы вам посоветовал обратить внимание на наш бесплатный курс по git, ссылку прилагаю https://practicum.yandex.ru/catalog/programming/free/?from=main_header-all-courses_button&searchText=+git
Удачи в дальнейшем обучении!

### Сообщение от студента:

 Я прочитал про команду rebase и не понял, что именно она делает. Нашёл статью, где сравнивали с merge и говорили, что лучше использовать только его и никогда не применять rebase, а в курсе написано наоборот. Как делать правильно?

### Ваш ответ:

Добрый день, {Имя студента}

`merge` - объединяет две ветки, создавая новый коммит слияния, который содержит изменения из обеих веток. 

`rebase` - переводит вашу ветку на другую, изменяя базовый коммит.  Он создает новые коммиты для ваших изменений на основе последнего коммита целевой ветки.  История коммитов становится линейной и чистой, но теряет хронологию

Я бы вам посоветовал обратить внимание на наш бесплатный курс по git, ссылку прилагаю https://practicum.yandex.ru/catalog/programming/free/?from=main_header-all-courses_button&searchText=+git
Удачи в дальнейшем обучении!

### Сообщение от студента:

В задании просят установить maven, но при поиске такого плагина именно «Maven» не находит. Есть: «Maven Integration»,«Pipeline Maven Integration»,«Maven Release Plug-in»,«Maven Info»,«Maven Invoker» и еще 9 вариантов. Не знаю, какой выбрать..

### Ваш ответ:

Добрый день, {Имя студента}
Скорее всего, вам нужен плагин "Maven Integration".  Он обеспечивает базовую интеграцию Maven с вашей IDE и обычно является основным плагином для работы с Maven проектами. Прилагаю полезную статью для изучения maven
https://habr.com/ru/articles/77382/ .
Если возникнут еще вопросы, вы можете задавать их в общем чате или мне лично.
Удачи в дальнейшем обучении!
 
# Часть 3
Напишите, на какую тему вы бы провели вебинар с нашими студентами? Это может быть какой-нибудь интересный кейс, где вы в режиме лайв-кодинга покажите, как справились с каким-то пожаром. Или устный разбор интересной статьи на Хабре. Или вебинар по одной из тем нашего курса. Вообще что угодно.

На какие темы провожу занятия:

- Сетевые модели TCP/IP и OSI
- Типы и характеристики физических сетей Ethernet
- Terraform
- Практическое занятие по использованию Terraform
- Методы логического объединения устройств
- DHCP, PXE
- Построение отказоустойчивых сетей
- Устройство Gitlab CI/CD. Построение процесса непрерывной интеграции
- Маршрутизация. шлюз по умолчанию. выбор лучшего маршрута.
- Основы сбора и хранения логов
- Salt. Оркестрация конфигурациями
- Архитектура сетей Linux
- Виртуализация: Proxmox
- Управление конфигурацией. Знакомство с Ansible

Занятия, который бы я мог проводить на вашем курсе DevOps:

- Жизненный цикл ПО
- Системы контроля версий
- Бережливое производство
- Continuous Integration
- Серверы Сontinuous Integration
- Основы работы с Linux
- Дисковая система Linux
- Права пользователя Linux
- Виртуализация
- Continuous Delivery
- Бэкапирование
- Infrastructure as Code
- Системы управления конфигурацией
- Контейнеризация
- Логирование и мониторинг ошибок
- Мониторинг