ui-options-hear-self = Услышь себя (голосовой чат)
ui-options-voice-chat-volume = Громкость голосового чата
ui-options-function-voice-push-to-talk = Говорить по нажатию (локально)
ui-options-function-voice-push-to-talk-radio = Говорить по нажатию (рация)

ui-escape-voice-chat = Голосовой чат

cmd-voicechat-desc = Показывает руководство по голосовому чату с вашей ссылкой и кодом
cmd-voicechat-help = Использование: voicechat
cmd-voicechat-unavailable = Голосовой чат не включён на этом сервере.

voice-link-connected = Ваш микрофон подключён.
voice-link-disconnected = Ваш микрофон ещё не подключён.
voice-link-computer-title = На этом компьютере
voice-link-computer-text = Открывает страницу голоса в вашем браузере.
voice-link-phone-title = На вашем телефоне
voice-link-phone-text = Перейдите по этому адресу, затем введите код:
voice-link-expiry = Оставьте страницу открытой, пока играете. Код работает только до тех пор, пока вы не покинете сервер.
voice-link-loading = Получение вашей ссылки...
voice-link-open = Открыть в браузере
voice-link-copy = Копировать ссылку

cmd-voicemute-desc = Переключает, заглушён ли голосовой чат игрока.
cmd-voicemute-help = Использование: voicemute <username>
cmd-voicemute-hint = <username>
cmd-voicemute-muted = Голосовой чат заглушён для {$player}.
cmd-voicemute-unmuted = Голосовой чат включён для {$player}.

comms-console-menu-voice-broadcast-button = Голосовое вещание
comms-console-menu-voice-broadcast-button-tooltip = Говорите на всю станцию через голосовой чат в течение короткого времени.
comms-console-menu-voice-broadcast-stop = Завершить голосовое вещание ({$seconds}с)
comms-console-menu-voice-broadcast-busy = Голосовое вещание в процессе
comms-console-menu-voice-broadcast-cooldown = Голосовое вещание ({$seconds}с)

voice-broadcast-denied = Доступ запрещён.
voice-broadcast-not-connected = Сначала откройте голосовой чат: Esc, Голосовой чат.
voice-broadcast-started = Вы вещаете на всю станцию в течение {$seconds} секунд.
voice-broadcast-ended = Ваше голосовое вещание завершено.

voice-radio-button-off = Локально
voice-radio-button-tooltip = Рация голосового чата: выберите канал, на котором говорите, какие каналы слышите, и громкость рации.

voice-verb-category = Голосовой чат
voice-verb-mute = Заглушить
voice-verb-unmute = Снять заглушение
voice-verb-volume = Громкость {$percent}%

voice-speaker-unknown = Неизвестно
voice-route-radio = Рация
voice-route-telephone = Телефон
voice-route-holopad = Голопад
voice-route-camera = Камера
voice-route-broadcast = Вещание
voice-speaker-self = Вы
voice-self-blocked = Не могу говорить

voice-radio-popup-talk = Говорить
voice-radio-popup-hear = Слышать
voice-radio-popup-volume = Громкость
voice-radio-popup-volume-value = {$percent}%

voice-loudness-shout = Крик
voice-loudness-whisper = Шёпот
voice-loudness-megaphone = Мегафон

admin-player-actions-window-voice-logs = Голосовые логи
cmd-voicelogs-desc = Открывает просмотрщик логов голосового чата.
cmd-voicelogs-help = Использование: voicelogs [username]
cmd-voicelogs-hint = [username]
voice-logs-verb = Голосовые логи
voice-logs-title = Голосовые логи
voice-logs-round = Раунд
voice-logs-round-entry = Раунд {$id} · {$length}
voice-logs-round-current = Раунд {$id} (текущий) · {$length}
voice-logs-player = Игрок
voice-logs-add = Добавить
voice-logs-refresh = Обновить
voice-logs-play = Воспроизвести
voice-logs-pause = Пауза
voice-logs-fit = Вписать
voice-logs-loading = Загрузка…
voice-logs-empty = Выберите игрока и нажмите «Добавить», чтобы добавить его голосовую дорожку сюда.
voice-logs-mute = Заглушить эту дорожку
voice-logs-solo = Соло для этой дорожки
voice-logs-remove = Удалить эту дорожку
voice-logs-lobby = Лобби
voice-logs-blocked = {$name} (заблокирован)

voice-god-verb = Глас Божий
voice-god-verb-stop = Остановить Глас Божий
voice-god-started = Теперь вы говорите с {$target} как Глас Божий. Больше никто не может вас слышать.
voice-god-started-offline = Теперь вы говорите с {$target} как Глас Божий, но ваша страница голоса не открыта. Откройте её через Esc > Голосовой чат.
voice-god-hear-self = Вы также будете слышать себя как этот голос, с тем же свечением и светом на экране.
voice-god-stopped = Вы больше не говорите как Глас Божий.
voice-god-name = Голос
voice-god-log-name = Глас Божий для {$target}
voice-route-god = Божественный
voice-self-god = Глас Божий
cmd-voiceofgod-desc = Говорите как Глас Божий одному игроку, всем поблизости, отделу или всей станции. Запустите без аргументов, чтобы остановить.
cmd-voiceofgod-help = Использование: voiceofgod <username> [hearSelf] | voiceofgod radius <tiles> [hearSelf] | voiceofgod department <id> [hearSelf] | voiceofgod station [hearSelf]
cmd-voiceofgod-hint = <username> | radius | department | station
cmd-voiceofgod-radius-hint = <tiles>
cmd-voiceofgod-department-hint = <department>
cmd-voiceofgod-hear-self-hint = [hearSelf]
cmd-voiceofgod-bad-hear-self = hearSelf должно быть true или false.
cmd-voiceofgod-bad-radius = Укажите радиус в тайлах от 1 до {$max}.
cmd-voiceofgod-bad-department = Такого отдела не существует.
voice-god-target-radius = все в радиусе {$radius} тайлов от вас
voice-god-target-department = отдел {$department}
voice-god-target-station = вся станция
voice-god-cue = В вашей голове раздаётся эхо голоса...

voice-mic-offline = Голосовой чат не открыт. Нажмите, чтобы открыть.
voice-mic-ready = Микрофон включён. Нажмите, чтобы заглушить.
voice-mic-live = Вы в эфире. Нажмите, чтобы заглушить.
voice-mic-blocked = Ваш персонаж сейчас не может говорить.
voice-mic-muted = Микрофон заглушён. Нажмите, чтобы включить звук.
voice-mic-deafened = Оглушён. Нажмите, чтобы снять оглушение и включить звук.
voice-deafen-off = Оглушить: заглушить весь голосовой чат и ваш микрофон.
voice-deafen-on = Оглушён. Нажмите, чтобы снять оглушение.
voice-radio-popup-mute-all = Заглушить всё
voice-radio-popup-unmute-all = Включить звук для всех
