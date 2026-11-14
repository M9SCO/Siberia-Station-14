delivery-recipient-examine = Адресовано: { $recipient }, { $job }.
delivery-already-opened-examine = Уже вскрыто.
delivery-recipient-no-name = Безымянный
delivery-recipient-no-job = Неизвестно
delivery-unlocked-self = Вы разблокировали { $delivery } отпечатком пальца.
delivery-opened-self = Вы вскрываете { $delivery }.
delivery-unlocked-others =
    { CAPITALIZE($recipient) } { GENDER($recipient) ->
        [male] разблокировал
        [female] разблокировала
        [epicene] разблокировали
       *[neuter] разблокировало
    } { $delivery } используя свой отпечаток пальца.
delivery-opened-others =
    { CAPITALIZE($recipient) } { GENDER($recipient) ->
        [male] вскрыл
        [female] вскрыл
        [epicene] вскрыл
       *[neuter] вскрыл
    } { $delivery }.
delivery-unlock-verb = Разблокировать
delivery-open-verb = Вскрыть
delivery-slice-verb = Разрезать

delivery-earnings-examine = Доставка принесёт станции [color=yellow]{ $spesos }[/color] спесосов.

delivery-unlocked = Вы разблокируете { $delivery } отпечатком пальца.
delivery-opened = Вы вскрываете { $delivery }.

delivery-teleporter-amount-examine =
    { $amount ->
        [one] Содержит [color=yellow]{ $amount }[/color] посылку.
        [few] Содержит [color=yellow]{ $amount }[/color] посылки.
        [many] Содержит [color=yellow]{ $amount }[/color] посылок.
       *[other] Содержит [color=yellow]{ $amount }[/color] посылок.
    }
delivery-teleporter-empty = { $entity } пуст.
delivery-teleporter-empty-verb = Забрать почту

# modifiers
delivery-priority-examine = Это [color=orange]приоритетная { $type }[/color]. У вас есть [color=orange]{ $time }[/color], чтобы доставить её и получить бонус.
delivery-priority-expired-examine = Это [color=orange]приоритетная { $type }[/color]. Похоже, время вышло.

delivery-fragile-examine = Это [color=red]хрупкая { $type }[/color]. Доставьте её в целости, чтобы получить бонус.
delivery-fragile-broken-examine = Это [color=red]хрупкая { $type }[/color]. Выглядит сильно повреждённой.

delivery-bomb-examine = Это [color=purple]{ $type }-бомба[/color]. О нет.
delivery-bomb-primed-examine = Это [color=purple]{ $type }-бомба[/color]. Читать это — пустая трата времени.
