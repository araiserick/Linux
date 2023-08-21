# Домашнее задание к занятию «Инициализация системы, Init, systemd»

### Задача №1

Выполните systemd-analyze blame.

Ответ:

- 2min 45.135s fstrim.service
- 2min 166ms systemd-networkd-wait-online.service
- 1min 588ms apt-daily.service

### Задача №2

Какой командой вы посмотрите ошибки ядра, произошедшие начиная со вчерашнего дня?

Ответ:

```bash
journalctl --since "yesterday" --until "today" | grep -i error
```

### Задача №3

Запустите команду loginctl user-status.

Ответ:
- Команда loginctl user-status используется в Linux для просмотра текущего статуса пользователей в системе. 


### Задача №4

Есть ли у вас на машине службы, которые не смогли запуститься? Как вы это определили?

Ответ:


- systemctl list-units --state=failed: Эта команда позволяет просмотреть список служб, которые находятся в состоянии "failed" (не удалось запустить). Вы увидите имена служб и их текущее состояние.

- systemctl list-units --state=inactive: Эта команда покажет список неактивных служб, которые не запущены в данный момент. Они могут быть остановлены или могут не быть автоматически запущены при загрузке системы.

- systemctl --failed: Эта команда отобразит только службы, которые находятся в состоянии "failed". Вы увидите имена служб и сведения о неудаче в их работе.

### Задача №5

Можно ли с помощью systemd отмонтировать раздел или устройство?

Ответ:
- systemctl stop <mount_point>.mount: Замените <mount_point> точкой монтирования, которую вы хотите отмонтировать. Эта команда остановит соответствующую службу монтирования для данного раздела или устройства и сделает его недоступным.

- umount <mount_point>: Замените <mount_point> точкой монтирования, которую вы хотите отмонтировать. Эта команда просто отмонтирует указанную точку монтирования.

Оба вышеприведенных варианта могут использоваться для отмонтирования разделов или устройств. Однако, при использовании systemctl stop <mount_point>.mount будет активно управление systemd, что может быть полезно для управления службами монтирования в системе.