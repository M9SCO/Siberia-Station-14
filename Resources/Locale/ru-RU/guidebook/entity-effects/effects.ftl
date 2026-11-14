# SPDX-FileCopyrightText: 2023 LankLTE <135308300+LankLTE@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Sailor <109166122+Equivocateur@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 mhamster <81412348+mhamsterr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Aidenkrz <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2024 Eris <eris@erisws.com>
# SPDX-FileCopyrightText: 2024 Flesh <62557990+PolterTzi@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Gotimanga <127038462+Gotimanga@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Steve <marlumpy@gmail.com>
# SPDX-FileCopyrightText: 2024 Zonespace <41448081+Zonespace27@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 alex-georgeff <54858069+taurie@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 marc-pelletier <113944176+marc-pelletier@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 metalgearsloth <31366439+metalgearsloth@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 slarticodefast <161409025+slarticodefast@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 SX-7 <92227810+SX-7@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

-create-3rd-person =
    { $chance ->
        [1] Создаёт
        *[other] создаёт
    }

-cause-3rd-person =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    }

-satiate-3rd-person =
    { $chance ->
        [1] Утоляет
        *[other] утоляет
    }

entity-effect-guidebook-spawn-entity =
    { $chance ->
        [1] Создаёт
        *[other] создаёт
    } { $amount ->
        [1] {INDEFINITE($entname)}
        *[other] {$amount} {MAKEPLURAL($entname)}
    }

entity-effect-guidebook-destroy =
    { $chance ->
        [1] Уничтожает
        *[other] уничтожает
    } объект

entity-effect-guidebook-break =
    { $chance ->
        [1] Ломает
        *[other] ломает
    } объект

entity-effect-guidebook-explosion =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } взрыв

entity-effect-guidebook-emp =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } электромагнитный импульс

entity-effect-guidebook-flash =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } ослепляющую вспышку

entity-effect-guidebook-foam-area =
    { $chance ->
        [1] Создаёт
        *[other] создаёт
    } большое количество пены

entity-effect-guidebook-smoke-area =
    { $chance ->
        [1] Создаёт
        *[other] создаёт
    } большое количество дыма

entity-effect-guidebook-satiate-thirst =
    { $chance ->
        [1] Утоляет
        *[other] утоляет
    } { $relative ->
        [1] жажду со средней скоростью
        *[other] жажду со скоростью в {NATURALFIXED($relative, 3)}x от средней
    }

entity-effect-guidebook-satiate-hunger =
    { $chance ->
        [1] Утоляет
        *[other] утоляет
    } { $relative ->
        [1] голод со средней скоростью
        *[other] голод со скоростью в {NATURALFIXED($relative, 3)}x от средней
    }

entity-effect-guidebook-health-change =
    { $chance ->
        [1] { $healsordeals ->
                [heals] Восстанавливает
                [deals] Наносит
                *[both] Изменяет здоровье на
             }
        *[other] { $healsordeals ->
                    [heals] восстанавливает
                    [deals] наносит
                    *[both] изменяет здоровье на
                 }
    } { $changes }

entity-effect-guidebook-even-health-change =
    { $chance ->
        [1] { $healsordeals ->
            [heals] Равномерно восстанавливает
            [deals] Равномерно наносит
            *[both] Равномерно изменяет здоровье на
        }
        *[other] { $healsordeals ->
            [heals] равномерно восстанавливает
            [deals] равномерно наносит
            *[both] равномерно изменяет здоровье на
        }
    } { $changes }

entity-effect-guidebook-status-effect-old =
    { $type ->
        [update]{ $chance ->
                    [1] Вызывает
                     *[other] вызывает
                 } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызывает
                } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} с накоплением
        [set]  { $chance ->
                    [1] Вызывает
                    *[other] вызывает
                } {LOC($key)} на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
        *[remove]{ $chance ->
                    [1] Убирает
                    *[other] убирает
                } {NATURALFIXED($time, 3)} {MANY("second", $time)} эффекта {LOC($key)}
    }

entity-effect-guidebook-status-effect =
    { $type ->
    [update]{ $chance ->
    [1] Вызывает
    *[other] вызывает
                     } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    [add]   { $chance ->
    [1] Вызывает
    *[other] вызывает
                    } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} с накоплением
    [set]  { $chance ->
    [1] Вызывает
    *[other] вызывает
                    } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
    *[remove]{ $chance ->
    [1] Убирает
    *[other] убирает
                    } {NATURALFIXED($time, 3)} {MANY("second", $time)} эффекта {LOC($key)}
        } { $delay ->
    [0] немедленно
    *[other] после задержки в {NATURALFIXED($delay, 3)} секунд
        }

reagent-effect-guidebook-status-effect-delay =
    { $type ->
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызывает
                } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} с накоплением
        *[set]  { $chance ->
                    [1] Вызывает
                    *[other] вызывает
                } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
        [remove]{ $chance ->
                    [1] Убирает
                    *[other] убирает
                } {NATURALFIXED($time, 3)} {MANY("second", $time)} эффекта {LOC($key)}
    } после задержки в {NATURALFIXED($delay, 3)} секунд

entity-effect-guidebook-status-effect-indef =
    { $type ->
    [update]{ $chance ->
    [1] Вызывает
    *[other] вызывает
                     } постоянный {LOC($key)}
    [add]   { $chance ->
    [1] Вызывает
    *[other] вызывает
                    } постоянный {LOC($key)}
    [set]  { $chance ->
    [1] Вызывает
    *[other] вызывает
                    } постоянный {LOC($key)}
    *[remove]{ $chance ->
    [1] Убирает
    *[other] убирает
                    } {LOC($key)}
        } { $delay ->
    [0] немедленно
    *[other] после задержки в {NATURALFIXED($delay, 3)} секунд
        }

reagent-effect-guidebook-knockdown =
    { $type ->
        [add]   { $chance ->
                    [1] Вызывает
                    *[other] вызывает
                } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} с накоплением
        *[set]  { $chance ->
                    [1] Вызывает
                    *[other] вызывает
                } {LOC($key)} как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)} без накопления
        [remove]{ $chance ->
                    [1] Убирает
                    *[other] убирает
                } {NATURALFIXED($time, 3)} {MANY("second", $time)} эффекта {LOC($key)}
    } после задержки в {NATURALFIXED($delay, 3)} секунд

entity-effect-guidebook-set-solution-temperature-effect =
    { $chance ->
        [1] Устанавливает
        *[other] устанавливает
    } температуру раствора ровно на {NATURALFIXED($temperature, 2)}k

entity-effect-guidebook-adjust-solution-temperature-effect =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавляет
                *[-1] убирает
            }
    } тепло { $deltasign ->
                [1] в раствор
                *[-1] из раствора
           }, пока он не достигнет { $deltasign ->
                [1] не более {NATURALFIXED($maxtemp, 2)}k
                *[-1] не менее {NATURALFIXED($mintemp, 2)}k
            }

entity-effect-guidebook-adjust-reagent-reagent =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавляет
                *[-1] убирает
            }
    } {NATURALFIXED($amount, 2)}ед. {$reagent} { $deltasign ->
        [1] в раствор
        *[-1] из раствора
    }

entity-effect-guidebook-adjust-reagent-group =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавляет
                *[-1] убирает
            }
    } {NATURALFIXED($amount, 2)}ед. реагентов из группы {$group} { $deltasign ->
            [1] в раствор
            *[-1] из раствора
        }

entity-effect-guidebook-adjust-temperature =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавляет
                *[-1] убирает
            }
    } {POWERJOULES($amount)} тепла { $deltasign ->
            [1] в тело, в котором находится
            *[-1] из тела, в котором находится
        }

entity-effect-guidebook-chem-cause-disease =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } заболевание { $disease }

entity-effect-guidebook-chem-cause-random-disease =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } заболевания { $diseases }

entity-effect-guidebook-jittering =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } дрожь

entity-effect-guidebook-clean-bloodstream =
    { $chance ->
        [1] Очищает
        *[other] очищает
    } кровоток от других химикатов

entity-effect-guidebook-cure-disease =
    { $chance ->
        [1] Лечит
        *[other] лечит
    } заболевания

entity-effect-guidebook-eye-damage =
    { $chance ->
        [1] { $deltasign ->
                [1] Наносит
                *[-1] Восстанавливает
            }
        *[other]
            { $deltasign ->
                [1] наносит
                *[-1] восстанавливает
            }
    } повреждение глаз

entity-effect-guidebook-vomit =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } рвоту

entity-effect-guidebook-create-gas =
    { $chance ->
        [1] Создаёт
        *[other] создаёт
    } { $moles } { $moles ->
        [1] моль
        *[other] моль
    } газа { $gas }

entity-effect-guidebook-drunk =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } опьянение

entity-effect-guidebook-electrocute =
    { $chance ->
        [1] Бьёт
        *[other] бьёт
    } током метаболизирующего в течение {NATURALFIXED($time, 3)} {MANY("second", $time)}

entity-effect-guidebook-emote =
    { $chance ->
        [1] Заставит
        *[other] заставит
    } метаболизирующего [bold][color=white]{$emote}[/color][/bold]

entity-effect-guidebook-extinguish-reaction =
    { $chance ->
        [1] Тушит
        *[other] тушит
    } огонь

entity-effect-guidebook-flammable-reaction =
    { $chance ->
        [1] Повышает
        *[other] повышает
    } воспламеняемость

entity-effect-guidebook-ignite =
    { $chance ->
        [1] Поджигает
        *[other] поджигает
    } метаболизирующего

entity-effect-guidebook-make-sentient =
    { $chance ->
        [1] Делает
        *[other] делает
    } метаболизирующего разумным

entity-effect-guidebook-make-polymorph =
    { $chance ->
        [1] Превращает
        *[other] превращает
    } метаболизирующего в { $entityname }

entity-effect-guidebook-modify-bleed-amount =
    { $chance ->
        [1] { $deltasign ->
                [1] Вызывает
                *[-1] Уменьшает
            }
        *[other] { $deltasign ->
                    [1] вызывает
                    *[-1] уменьшает
                 }
    } кровотечение

entity-effect-guidebook-modify-blood-level =
    { $chance ->
        [1] { $deltasign ->
                [1] Повышает
                *[-1] Понижает
            }
        *[other] { $deltasign ->
                    [1] повышает
                    *[-1] понижает
                 }
    } уровень крови

entity-effect-guidebook-paralyze =
    { $chance ->
        [1] Парализует
        *[other] парализует
    } метаболизирующего как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)}

entity-effect-guidebook-movespeed-modifier =
    { $chance ->
        [1] Изменяет
        *[other] изменяет
    } скорость передвижения в {NATURALFIXED($sprintspeed, 3)}x как минимум на {NATURALFIXED($time, 3)} {MANY("second", $time)}

entity-effect-guidebook-reset-narcolepsy =
    { $chance ->
        [1] Временно предотвращает
        *[other] временно предотвращает
    } приступ нарколепсии

entity-effect-guidebook-wash-cream-pie-reaction =
    { $chance ->
        [1] Смывает
        *[other] смывает
    } кремовый пирог с лица

entity-effect-guidebook-cure-zombie-infection =
    { $chance ->
        [1] Лечит
        *[other] лечит
    } текущее заражение зомби

entity-effect-guidebook-cause-zombie-infection =
    { $chance ->
        [1] Заражает
        *[other] заражает
    } существо инфекцией зомби

entity-effect-guidebook-innoculate-zombie-infection =
    { $chance ->
        [1] Лечит
        *[other] лечит
    } текущее заражение зомби и даёт иммунитет к будущим заражениям

entity-effect-guidebook-reduce-rotting =
    { $chance ->
        [1] Восстанавливает
        *[other] восстанавливает
    } {NATURALFIXED($time, 3)} {MANY("second", $time)} гниения

entity-effect-guidebook-area-reaction =
    { $chance ->
        [1] Вызывает
        *[other] вызывает
    } реакцию образования дыма или пены в течение {NATURALFIXED($duration, 3)} {MANY("second", $duration)}

entity-effect-guidebook-add-to-solution-reaction =
    { $chance ->
        [1] Приводит
        *[other] приводит
    } к добавлению {$reagent} в его внутренний контейнер с раствором

entity-effect-guidebook-artifact-unlock =
    { $chance ->
        [1] Помогает
        *[other] помогает
        } разблокировать инопланетный артефакт.

entity-effect-guidebook-artifact-durability-restore =
    Восстанавливает {$restored} прочности в активных узлах инопланетного артефакта.

entity-effect-guidebook-plant-attribute =
    { $chance ->
        [1] Изменяет
        *[other] изменяет
    } {$attribute} на {$positive ->
    [true] [color=red]{$amount}[/color]
    *[false] [color=green]{$amount}[/color]
    }

entity-effect-guidebook-plant-cryoxadone =
    { $chance ->
        [1] Омолаживает
        *[other] омолаживает
    } растение в зависимости от его возраста и времени роста

entity-effect-guidebook-plant-phalanximine =
    { $chance ->
        [1] Восстанавливает
        *[other] восстанавливает
    } жизнеспособность растения, ставшего нежизнеспособным из-за мутации

entity-effect-guidebook-plant-diethylamine =
    { $chance ->
        [1] Увеличивает
        *[other] увеличивает
    } продолжительность жизни и/или базовое здоровье растения с вероятностью 10% для каждого

entity-effect-guidebook-plant-robust-harvest =
    { $chance ->
        [1] Увеличивает
        *[other] увеличивает
    } потенцию растения на {$increase} вплоть до максимума в {$limit}. Заставляет растение терять семена, как только потенция достигает {$seedlesstreshold}. Попытка повысить потенцию выше {$limit} может с вероятностью 10% снизить урожайность

entity-effect-guidebook-plant-seeds-add =
    { $chance ->
        [1] Восстанавливает
        *[other] восстанавливает
    } семена растения

entity-effect-guidebook-plant-seeds-remove =
    { $chance ->
        [1] Удаляет
        *[other] удаляет
    } семена растения

entity-effect-guidebook-plant-mutate-chemicals =
    { $chance ->
        [1] Мутирует
        *[other] мутирует
    } растение, заставляя его производить {$name}

# Goobstation?
reagent-effect-guidebook-add-to-chemicals =
    { $chance ->
        [1] { $deltasign ->
                [1] Добавляет
                *[-1] Убирает
            }
        *[other]
            { $deltasign ->
                [1] добавляет
                *[-1] убирает
            }
    } {NATURALFIXED($amount, 2)}ед. {$reagent} { $deltasign ->
        [1] в раствор
        *[-1] из раствора
    }
