## UI

injector-draw-text = Забор
injector-inject-text = Введение
injector-invalid-injector-toggle-mode = Неверный режим
injector-volume-label =
    Объём: [color=white]{ $currentVolume }/{ $totalVolume }[/color]
    Режим: [color=white]{ $modeString }[/color] ([color=white]{ $transferVolume } ед.[/color])

## Entity

injector-component-drawing-text = Содержимое набирается
injector-component-injecting-text = Содержимое вводится
injector-component-cannot-transfer-message = Вы не можете ничего переместить в { $target }!
injector-component-cannot-draw-message = Вы не можете ничего набрать из { $target }!
injector-component-cannot-inject-message = Вы не можете ничего ввести в { $target }!
injector-component-inject-success-message = Вы вводите { $amount } ед. в { $target }!
injector-component-transfer-success-message = Вы перемещаете { $amount } ед. в { $target }.
injector-component-draw-success-message = Вы набираете { $amount } ед. из { $target }.
injector-component-target-already-full-message = { CAPITALIZE($target) } полон!
injector-component-target-is-empty-message = { CAPITALIZE($target) } пуст!
injector-component-cannot-toggle-draw-message = Больше не набрать!
injector-component-cannot-toggle-inject-message = Нечего вводить!

## mob-inject doafter messages

injector-component-drawing-user = Вы начинаете набирать шприц.
injector-component-injecting-user = Вы начинаете вводить содержимое шприца.
injector-component-drawing-target = { CAPITALIZE($user) } начинает набирать шприц из вас!
injector-component-injecting-target = { CAPITALIZE($user) } начинает вводить содержимое шприца в вас!
injector-component-deny-user = Экзоскелет слишком тонкий!

## Added keys

injector-volume-transfer-label = Объём: [color=white]{$currentVolume}/{$totalVolume} ед.[/color]
    Режим: [color=white]{$modeString}[/color] ([color=white]{$transferVolume} ед.[/color])
injector-toggle-verb-text = Переключить режим инъектора

injector-component-inject-mode-name = введение
injector-component-draw-mode-name = забор
injector-component-dynamic-mode-name = динамический
injector-component-mode-changed-text = Теперь { $mode }
injector-component-transfer-success-message-self = Вы перемещаете { $amount } ед. в себя.
injector-component-inject-success-message-self = Вы вводите { $amount } ед. в себя!
injector-component-draw-success-message-self = Вы набираете { $amount } ед. из себя.

injector-component-target-already-full-message-self = Вы уже полны!
injector-component-target-is-empty-message-self = Вы пусты!
injector-component-cannot-toggle-dynamic-message = Нельзя переключить на динамический режим!
injector-component-empty-message = { CAPITALIZE(THE($injector)) } пуст!
injector-component-blocked-user = Защитное снаряжение заблокировало вашу инъекцию!
injector-component-blocked-other = Броня { CAPITALIZE(THE(POSS-ADJ($target))) } заблокировала инъекцию { THE($user) }!
injector-component-cannot-transfer-message-self = Вы не можете ничего переместить в себя!
injector-component-cannot-inject-message-self = Вы не можете ничего ввести в себя!
injector-component-cannot-draw-message-self = Вы не можете ничего набрать из себя!
injector-component-ignore-mobs = Этот инъектор может взаимодействовать только с ёмкостями!

injector-component-needle-injecting-user = Вы начинаете вводить иглу.
injector-component-needle-injecting-target = { CAPITALIZE(THE($user)) } пытается ввести в вас иглу!
injector-component-needle-drawing-user = Вы начинаете набирать иглой.
injector-component-needle-drawing-target = { CAPITALIZE(THE($user)) } пытается набрать иглой из вас!
injector-component-spray-injecting-user = Вы начинаете готовить распылитель.
injector-component-spray-injecting-target = { CAPITALIZE(THE($user)) } пытается приложить к вам распылитель!

injector-component-feel-prick-message = Вы чувствуете лёгкий укол!
