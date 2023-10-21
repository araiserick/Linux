# Производительность системы. Часть 1


### Задача 1

Выполните проверку системы при помощи команды `top`.

**Выведите сортировку процессов по:**

- памяти,
- времени работы,
- номеру,
- уровню потребления ресурсов.

*Приведите ответ в виде снимков экрана.*



### Задача 2

Выполните проверку системы при помощи команды `atop` и `atopsar`.

**Выведите сортировку процессов по:**

- общей нагрузке — минимум по трём параметрам;
- загруженности HDD or SSD за указанный временной отрезок — 10 минут;
- загруженности RAM за указанный временной отрезок — 10 минут.

**Сконфигурировать файл настроек atop — делать снимок памяти каждые полчаса.**

*Приведите ответ в виде снимков экрана.*

------

### Задача 3

При помощи команды `mpstat` и ключа `P` выведите информацию по:

- определённому процессору,
- всем процессорам.

*Приведите ответ в виде снимков экрана.*

------

### Задача 4
Выполните проверку системы при помощи команды `pidstat`.

1. Выведите статистику по эффективности на основе имени процесса.
2. Выведите полный путь процесса.

*Приведите ответ в виде снимков экрана.*

---

### Задача 5

Просмотрите каталог `/proc`, выполните любую команду для просмотра процессов.
Сделайте сравнение вывода команды и содержания папки по:
- взаимосвязи объектов,
- времени создания.

**Этапы выполнения**:

1. Создайте два окна терминала (вкладку или терминала CLI через комбинацию cntrl+alt+f'x'); 
 
2. На одном запустите любое приложение (команду) в активное использование или в фон при помощь связки & (например, ping 127.0.0.1 &); 

3. Определите pid процесса;

4. Просмотрите каталог /proc и найдите папку с номером pid процесса;  

5. Просмотрите директории при помощи `ls -la`;  
  
6. Просмотрите внутреннее устройство директории; 

7. Ответьте на вопрос, какую информацию содержит: 
  
cmdline  
cwd  
environ  
exe  
fd  
maps  
root  
status  