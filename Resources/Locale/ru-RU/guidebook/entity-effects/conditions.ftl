# SPDX-FileCopyrightText: 2023 Nemanja <98561806+EmoGarbage404@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Kira Bridgeton <161087999+Verbalase@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 KrasnoshchekovPavel <119816022+KrasnoshchekovPavel@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 Steve <marlumpy@gmail.com>
# SPDX-FileCopyrightText: 2024 icekot8 <93311212+icekot8@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 marc-pelletier <113944176+marc-pelletier@users.noreply.github.com>
# SPDX-FileCopyrightText: 2024 potato1234_x <79580518+potato1234x@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

entity-condition-guidebook-total-damage =
    { $max ->
        [2147483648] он получил не менее {NATURALFIXED($min, 2)} суммарного урона
        *[other] { $min ->
                    [0] он получил не более {NATURALFIXED($max, 2)} суммарного урона
                    *[other] он получил от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} суммарного урона
                 }
    }

entity-condition-guidebook-type-damage =
    { $max ->
        [2147483648] он получил не менее {NATURALFIXED($min, 2)} урона типа {$type}
        *[other] { $min ->
                    [0] он получил не более {NATURALFIXED($max, 2)} урона типа {$type}
                    *[other] он получил от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} урона типа {$type}
                 }
    }

entity-condition-guidebook-group-damage =
    { $max ->
        [2147483648] он получил не менее {NATURALFIXED($min, 2)} урона типа {$type}.
        *[other] { $min ->
                    [0] он получил не более {NATURALFIXED($max, 2)} урона типа {$type}.
                    *[other] он получил от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} урона типа {$type}
                 }
    }

entity-condition-guidebook-total-hunger =
    { $max ->
        [2147483648] у цели не менее {NATURALFIXED($min, 2)} суммарного голода
        *[other] { $min ->
                    [0] у цели не более {NATURALFIXED($max, 2)} суммарного голода
                    *[other] у цели от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} суммарного голода
                 }
    }

entity-condition-guidebook-reagent-threshold =
    { $max ->
        [2147483648] есть не менее {NATURALFIXED($min, 2)}ед. {$reagent}
        *[other] { $min ->
                    [0] есть не более {NATURALFIXED($max, 2)}ед. {$reagent}
                    *[other] есть от {NATURALFIXED($min, 2)}ед. до {NATURALFIXED($max, 2)}ед. {$reagent}
                 }
    }

entity-condition-guidebook-mob-state-condition =
    существо находится в состоянии { $state }

entity-condition-guidebook-job-condition =
    должность цели — { $job }

entity-condition-guidebook-solution-temperature =
    температура раствора { $max ->
            [2147483648] не менее {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] не более {NATURALFIXED($max, 2)}K
                        *[other] от {NATURALFIXED($min, 2)}K до {NATURALFIXED($max, 2)}K
                     }
    }

entity-condition-guidebook-body-temperature =
    температура тела { $max ->
            [2147483648] не менее {NATURALFIXED($min, 2)}K
            *[other] { $min ->
                        [0] не более {NATURALFIXED($max, 2)}K
                        *[other] от {NATURALFIXED($min, 2)}K до {NATURALFIXED($max, 2)}K
                     }
    }

entity-condition-guidebook-organ-type =
    метаболизирующий орган { $shouldhave ->
                                [true] является
                                *[false] не является
                           } органом типа {$name}

entity-condition-guidebook-has-tag =
    у цели { $invert ->
                 [true] отсутствует
                 *[false] присутствует
                } тег {$tag}

entity-condition-guidebook-this-reagent = этот реагент

# Goobstation?
entity-condition-guidebook-blood-reagent-threshold =
    { $max ->
        [2147483648] есть не менее {NATURALFIXED($min, 2)}ед. {$reagent}
        *[other] { $min ->
                    [0] есть не более {NATURALFIXED($max, 2)}ед. {$reagent}
                    *[other] есть от {NATURALFIXED($min, 2)}ед. до {NATURALFIXED($max, 2)}ед. {$reagent}
                 }
    }
# Goobstation?

entity-condition-guidebook-breathing =
    метаболизирующий { $isBreathing ->
                [true] дышит нормально
                *[false] задыхается
               }

entity-condition-guidebook-internals =
    метаболизирующий { $usingInternals ->
                [true] использует внутренние баллоны
                *[false] дышит атмосферным воздухом
               }
