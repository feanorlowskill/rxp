-- RXP Undead Mage Custom Route 1-12 for WoW Forever.
-- Based on the project's v10 route source. In-game behavior has not yet been verified.
-- Loaded as a separate add-on after RXPGuides; route steps are parsed by RestedXP.

local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end
local L = GetLocale() if L and RXP.enabledLocale[L] then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 12
#group RestedXP Forever Guide (H)
#subgroup Mage Custom Route 1-12
#defaultfor Undead Mage
#name Mage Custom 1-6 Tirisfal Glades
#displayname 1-6 Tirisfal Glades (Mage Custom)
#next Mage Custom 5-12 Tirisfal Glades
step
    .goto 1420/0,1667.77,1679.04
    +|cRXP_WARN_Сними стартовую броню, чтобы потом продать её вместе с лутом. Не удаляй Hearthstone — он понадобится позже.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tПоговори с |cRXP_FRIENDLY_Mordo|r и возьми первый квест
    .accept 363 >> Accept Rude Awakening
    .target Undertaker Mordo
step
    #loop
    .goto 1420/0,1681.32,1719.71,40,0
    .goto 1420/0,1646.08,1750.44,40,0
    .goto 1420/0,1714.76,1760.68,40,0
    .goto 1420/0,1718.38,1799.24,40,0
    .goto 1420/0,1669.12,1869.73,40,0
    >>|cRXP_WARN_Гринд до 2 уровня и накопи минимум 70 медных. Бюджет: 50c на 10 воды, 10c на Skinning Knife и 10c на Arcane Intellect. Воду и нож вручную купишь позже у Joshua Kien; 10c на Инту сохрани до возвращения после пауков.|r
    .mob Young Scavenger
    .mob Duskbat
    .xp 2+0
    .money >0.0070
step
    .goto 1420/0,1638.85,1847.74
    >>|cRXP_WARN_На 2 уровне забеги к Эльрет через стену и возьми квест на лапы падальщиков и крылья летучих мышей.|r
    .accept 376 >> Accept The Damned
    .target Novice Elreth
    .xp 2+0
step
    .goto 1420/0,1616.71,1842.92,10,0
    .goto 1420/0,1639.75,1843.22
    >>Вернись к Сарвису: сдай первый квест и возьми следующий
    .turnin 363 >> Turn in Rude Awakening
    .accept 364 >> Accept The Mindless Ones
    .target Shadow Priest Sarvis
step
    .goto 1420/0,1574.23,1866.12
    >>|cRXP_WARN_У Joshua Kien продай лишний лут и купи 10 Refreshing Spring Water (50c) и Skinning Knife (10c). Оставь 10c на Arcane Intellect — его изучим после пауков.|r
    .collect 159,10,383,1 -- Refreshing Spring Water (10)
    .collect 7005,1 -- Skinning Knife (1)
    .vendor >> Продай ненужный лут
    .target Joshua Kien
step
    #loop
    .goto 1420/0,1599.99,1910.1,0
    .goto 1420/0,1599.99,1910.1,40,0
    .goto 1420/0,1646.53,1913.11,40,0
    .goto 1420/0,1637.04,1963.72,40,0
    .goto 1420/0,1644.72,1979.99,40,0
    .goto 1420/0,1626.19,1987.52,40,0
    .goto 1420/0,1596.37,1974.87,40,0
    .goto 1420/0,1548.92,1939.02,40,0
    .goto 1420/0,1546.66,1923.36,40,0
    .goto 1420/0,1523.62,1937.82,40,0
    .goto 1420/0,1508.26,1943.84,40,0
    .goto 1420/0,1519.10,1914.92,40,0
    .goto 1420/0,1517.29,1892.33,40,0
    .goto 1420/0,1529.04,1880.58,40,0
    .goto 1420/0,1713.41,1828.76,40,0
    .goto 1420/0,1701.21,1858.29,40,0
    .goto 1420/0,1695.78,1908.29,40,0
    .goto 1420/0,1692.62,1927.88,40,0
    .goto 1420/0,1673.64,1984.51,40,0
    .goto 1420/0,1633.88,2040.24,40,0
    .goto 1420/0,1604.96,2073.08,40,0
    .goto 1420/0,1584.17,2098.08,40,0
    .goto 1420/0,1548.92,2079.71,40,0
    .goto 1420/0,1482.50,2126.70,40,0
    >>|cRXP_WARN_Фарми зомби и падальщиков одновременно: по пути к выходу стартовой зоны беги к дому и сверни налево. Приоритет — закрыть лут с падальщиков и летучих мышей; зомби убивай по пути.|r
    .complete 376,1 -- Scavenger Paw (6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 -- Duskbat Wing (6)
    .mob +Duskbat
    .mob +Mangy Duskbat
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    .goto 1420/0,1638.85,1847.74
    >>|cRXP_WARN_Когда лут с падальщиков готов, вернись через стену, сдай The Damned и возьми Marla's Last Wish.|r
    .turnin 376 >> Turn in The Damned
    .accept 6395 >> Accept Marla's Last Wish
    .target Novice Elreth
step
    .goto 1420/0,1604.96,1860.70
    >>Снаружи возьми квест на ящики, затем у Аррена — на пауков.
    .accept 3902 >> Accept Scavenging Deathknell
    .target Deathguard Saltain
    .goto 1420/0,1580.56,1848.95
    .accept 380 >> Accept Night Web's Hollow
    .target Executor Arren
step
    .goto 1420/0,1574.23,1866.12
    >>Продай серый лут перед следующим кругом
    .vendor >> Продай ненужный лут
    .target Joshua Kien
step
    .goto 1420/0,1574.23,1866.12
    >>|cRXP_WARN_Купи 10 воды. Не трать деньги на лишнее.|r
    .collect 159,10,383,1 -- Refreshing Spring Water (10)
    .target Joshua Kien
step
    #loop
    .goto 1420/0,1599.99,1910.1,0
    .goto 1420/0,1599.99,1910.1,40,0
    .goto 1420/0,1646.53,1913.11,40,0
    .goto 1420/0,1637.04,1963.72,40,0
    .goto 1420/0,1644.72,1979.99,40,0
    .goto 1420/0,1626.19,1987.52,40,0
    .goto 1420/0,1596.37,1974.87,40,0
    .goto 1420/0,1548.92,1939.02,40,0
    .goto 1420/0,1546.66,1923.36,40,0
    .goto 1420/0,1523.62,1937.82,40,0
    .goto 1420/0,1508.26,1943.84,40,0
    .goto 1420/0,1519.10,1914.92,40,0
    .goto 1420/0,1517.29,1892.33,40,0
    .goto 1420/0,1529.04,1880.58,40,0
    .goto 1420/0,1570.61,1898.35,12,0
    .goto 1420/0,1550.73,1897.75,12,0
    .goto 1420/0,1547.12,1891.42,12,0
    .goto 1420/0,1541.69,1867.93,12,0
    .goto 1420/0,1506.45,1892.33,12,0
    .goto 1420/0,1536.27,1937.21,12,0
    .goto 1420/0,1551.64,1936.31,12,0
    .goto 1420/0,1593.66,1985.11,12,0
    .goto 1420/0,1598.63,1970.95,12,0
    .goto 1420/0,1600.89,1953.78,12,0
    .goto 1420/0,1617.16,1956.49,12,0
    >>|cRXP_WARN_Доделай зомби и собери 6 ящиков Scavenged Goods. Если мана закончилась — найди ближайший ящик, лутай его и дай мане восстановиться.|r
    .complete 364,1 -- Mindless Zombie (8)
    .mob +Mindless Zombie
    .complete 364,2 -- Wretched Zombie (8)
    .mob +Wretched Zombie
    .complete 3902,1 -- Scavenged Goods (6)
step
    .goto 1420/0,1375.40,1979.69
    >>Убей Самуэля Фиппса и залутай останки
    .collect 16333,1,6395,1 -- Samuel's Remains
    .mob Samuel Fipps
step
    #softcore
    .deathskip >>Умри и возродись у стартовой зоны, затем сразу используй останки на могиле Марлы
step
    .goto 1420/0,1624.84,1876.96
    >>Нажми на могилу Марлы и закопай останки
    .complete 6395,1 -- Samuel's Remains Buried
step
    #loop
    .goto 1420/0,1680.42,2110.43,0
    .goto 1420/0,1680.42,2110.43,40,0
    .goto 1420/0,1685.84,2149.60,40,0
    .goto 1420/0,1711.60,2157.43,40,0
    .goto 1420/0,1750.01,2135.14,40,0
    .goto 1420/0,1782.54,2117.36,40,0
    .goto 1420/0,1754.98,2080.91,40,0
    .goto 1420/0,1756.79,2047.77,40,0
    .goto 1420/0,1731.93,2044.16,40,0
    .goto 1420/0,1709.79,2048.07,40,0
    .goto 1420/0,1692.62,2074.28,40,0
    >>|cRXP_WARN_Сразу беги на пауков, квесты пока не сдавай. В идеале на полной мане запули двух; ориентир — около 3 Fireball на паука, если урон позволяет.|r
    .complete 380,1 -- Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto 1420/0,1822.31,2048.07,15,0
    .goto 1420/0,1844.45,2042.05,30 >>Зайди в пещеру
step
    #loop
    .goto 1420/0,1918.11,2043.86,0
    .goto 1420/0,1844.45,2042.05,30,0
    .goto 1420/0,1876.08,2043.56,20,0
    .goto 1420/0,1898.68,2020.06,20,0
    .goto 1420/0,1940.70,2006.80,20,0
    .goto 1420/0,1983.63,2032.71,20,0
    .goto 1420/0,1953.80,2079.40,20,0
    .goto 1420/0,1918.11,2043.86,20,0
    >>Убей Night Web Spiders внутри пещеры для Night Web's Hollow.
    .complete 380,2 -- Night Web Spider (8)
    .mob Night Web Spider
step
    #softcore
    .deathskip >>Умри и возродись в Брилле
step
    .goto 1420/0,1574.23,1866.12
    >>Сразу продай лут и купи 10 воды. Запомни/пометь Deathguard Phillip: он важен для будущего хитрана Meven Korgal.
    .vendor >> Продай ненужный лут
    .collect 159,10,383,1 -- Refreshing Spring Water (10)
    .target Joshua Kien
step
    .goto 1420/0,1604.96,1860.70
    >>Сдай ящики
    .turnin 3902 >> Turn in Scavenging Deathknell
    .target Deathguard Saltain
    .goto 1420/0,1639.75,1843.22
    .turnin 364 >> Turn in The Mindless Ones
    .target Shadow Priest Sarvis
    .goto 1420/0,1638.85,1847.74
    .turnin 6395 >> Turn in Marla's Last Wish
    .target Novice Elreth
    .goto 1420/0,1635.23,1847.44
    .train 1459 >> Train Arcane Intellect
    .train 116 >> Train Frostbolt
    .target Isabella
step
    .goto 1420/0,1580.56,1848.95
    >>|cRXP_WARN_Баффни Arcane Intellect и сдай квест на пауков. После сдачи возьми следующий квест на Scarlet Crusade.|r
    .cast 1459 >> Cast Arcane Intellect
    .turnin 380 >> Turn in Night Web's Hollow
    .accept 381 >> Accept The Scarlet Crusade
    .target Executor Arren
step
    #loop
    .goto 1420/0,1400.71,1766.71,0
    .goto 1420/0,1400.71,1766.71,40,0
    .goto 1420/0,1385.80,1744.11,40,0
    .goto 1420/0,1368.17,1728.15,40,0
    .goto 1420/0,1342.42,1741.40,40,0
    .goto 1420/0,1313.95,1735.08,40,0
    .goto 1420/0,1320.28,1752.25,40,0
    .goto 1420/0,1314.85,1765.80,40,0
    .goto 1420/0,1294.07,1780.56,40,0
    .goto 1420/0,1283.67,1817.02,40,0
    .goto 1420/0,1289.55,1841.72,40,0
    .goto 1420/0,1286.84,1877.27,40,0
    .goto 1420/0,1333.38,1868.53,40,0
    .goto 1420/0,1364.56,1867.93,40,0
    .goto 1420/0,1383.54,1866.72,40,0
    .goto 1420/0,1368.17,1831.48,40,0
    .goto 1420/0,1341.06,1790.51,40,0
    .goto 1420/0,1364.56,1784.18,40,0
    >>Убивай Scarlet Initiates и Converts преимущественно Frostbolt. По возможности пулить по 2 моба, начиная примерно с 90% маны.
    .complete 381,1 -- Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto 1420/0,1383.99,1764.30
    >>|cRXP_WARN_После 12 Scarlet Armband запули Meven Korgal у башни и хитрани его к Executor Arren. Не убивай его до сдачи The Scarlet Crusade и взятия The Red Messenger. Пометь Deathguard Phillip: не дай ему добить Meven раньше времени.|r
    .unitscan Deathguard Phillip
    .unitscan Meven Korgal
    .mob Meven Korgal
    .goto 1420/0,1580.56,1848.95
    >>Сдай The Scarlet Crusade, сразу возьми The Red Messenger, убей уже приведённого Meven и залутай документы. Сдай оба квеста и возьми Vital Intelligence и The Adventurer.
    .turnin 381 >> Turn in The Scarlet Crusade
    .accept 382 >> Accept The Red Messenger
    .complete 382,1 -- Scarlet Crusade Documents (1)
    .mob Meven Korgal
    .turnin 382 >> Turn in The Red Messenger
    .accept 383 >> Accept Vital Intelligence
    .accept 96656 >> Accept The Adventurer
    .target Executor Arren
step
    #loop
    .goto 1420/0,1493.34,2044.76,50,0
    .goto 1420/0,1436.41,2133.93,50,0
    .goto 1420/0,1369.08,2124.89,50,0
    .goto 1420/0,1327.05,2048.68,50,0
    .goto 1420/0,1338.35,1939.93,50,0
    .goto 1420/0,1400.71,1766.71,50,0
    .goto 1420/0,1385.80,1744.11,50,0
    .goto 1420/0,1368.17,1728.15,50,0
    .goto 1420/0,1342.42,1741.40,50,0
    .goto 1420/0,1313.95,1735.08,50,0
    .goto 1420/0,1320.28,1752.25,50,0
    .goto 1420/0,1314.85,1765.80,50,0
    .goto 1420/0,1294.07,1780.56,50,0
    .goto 1420/0,1283.67,1817.02,50,0
    .goto 1420/0,1289.55,1841.72,50,0
    .goto 1420/0,1286.84,1877.27,50,0
    .goto 1420/0,1333.38,1868.53,50,0
    .goto 1420/0,1364.56,1867.93,50,0
    .goto 1420/0,1383.54,1866.72,50,0
    .goto 1420/0,1368.17,1831.48,50,0
    .goto 1420/0,1341.06,1790.51,50,0
    .goto 1420/0,1364.56,1784.18,50,0
    .xp 5+970 >>После сдачи The Red Messenger проверь опыт: перед deathskip в Брилл должно быть не меньше 970 XP на 5 уровне. Если порог не достигнут, продолжай гринд до 5 уровня + 970 XP; если достигнут — переходи дальше. Затем возьми A Rogue's Deal по маршруту и делай deathskip. Будущие награды рассчитаны так, чтобы получить 6-й уровень при сдаче Cooking в таверне.
step
    .goto 1420/0,1305.36,2127.30
    >>По пути возьми A Rogue's Deal, затем сделай deathskip в Брилл
    .accept 8 >> Accept A Rogue's Deal
    .target Calvin Montague
step
    #softcore
    .deathskip >>Умри и возродись в Брилле
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#version 12
#group RestedXP Forever Guide (H)
#subgroup Mage Custom Route 1-12
#defaultfor Undead Mage
#name Mage Custom 5-12 Tirisfal Glades
#displayname 5-12 Tirisfal Glades (Mage Custom)
#next 12-14 Silverpine Forest
step
    .goto 1420/0,391.40,2289.20
    >>Возьми квест на ветки у кладбища
    .accept 86784 >> Accept Sticks and Bones
    .target Deathguard Bartholomew
    .goto 1420/0,403.42,2287.57
    >>Возьми квест на когти у Диллингера
    .accept 404 >> Accept A Putrid Task
    .target Deathguard Dillinger
step
    .goto 1420/0,295.87,2277.93
    >>Сдай Vital Intelligence и возьми At War With The Scarlet Crusade, Patience и Discipline; у Диллингера забери отчёт.
    .turnin 383 >> Turn in Vital Intelligence
    .accept 427 >> Accept At War With The Scarlet Crusade
    .accept 99141 >> Accept Patience
    .accept 99134 >> Accept Discipline
    .target Executor Zygand
    .goto 1420/0,403.30,2287.70
    >>Возьми отчёт у Диллингера для Зиганда
    .complete 99141,1 -- Dillinger's Report
    .target Deathguard Dillinger
step
    #loop
    .goto 1420/0,603.60,2268.30,40,0
    .goto 1420/0,539.70,2220.40,40,0
    .goto 1420/0,305.60,2180.10,40,0
    .goto 1420/0,375.60,2246.40,40,0
    .goto 1420/0,442.80,2259.40,40,0
    >>Собери 6 Dry Branches под деревьями у Брилла
    .complete 86784,1 -- Dry Branch (6)
step
    .goto 1420/0,445.50,2165.90
    >>Сдай Sticks and Bones и The Adventurer у Eleanor Shackleton, затем возьми The Great Outdoors.
    .turnin 86784 >> Turn in Sticks and Bones
    .turnin 96656 >> Turn in The Adventurer
    .accept 96607 >> Accept The Great Outdoors
    .target Eleanor Shackleton
    .goto 1411/1,-4715.20,140.10
    >>Сядь у костра командой /sit и подожди минуту до бафа Camp Benefits
    .complete 96607,1 -- Use /sit near the campfire
    .macro Sit,134400 >>/sit
    .timer 59, RP
    .complete 96607,2 -- Gain the Boosted Rest buff
step
    .goto 1420/0,445.40,2166.00
    >>Сдай The Great Outdoors и возьми Cooking
    .turnin 96607 >> Turn in The Great Outdoors
    .accept 96658 >> Accept Camping 101: Cooking
    .target Eleanor Shackleton
step
    .goto 1420/0,244.81,2269.19
    >>Вернувшись в таверну, сначала сдай A Rogue's Deal у Innkeeper Renee. Hearthstone пока не привязывай: впереди сдача Cooking и обучение заклинаниям.
    .turnin 8 >> Turn in A Rogue's Deal
    .target Innkeeper Renee
step
    .goto 1420/0,243.20,2288.10
    >>Изучи профессию Cooking у William Pickman.
    .train 2550 >> Train Cooking
    .target William Pickman
step
    .goto 1420/0,243.20,2288.10
    >>Сдай Camping 101: Cooking. Эта сдача должна дать 6-й уровень.
    .turnin 96658 >> Turn in Camping 101: Cooking
    .target William Pickman
step
    .goto 1420/0,233.06,2256.84
    >>После получения 6-го уровня изучи Fireball Rank 2.
    .train 143 >> Train Fireball Rank 2
    .target Cain Firesong
step
    .goto 1420/0,233.06,2256.84
    >>Изучи Fire Blast.
    .train 2136 >> Train Fire Blast
    .target Cain Firesong
step
    .goto 1420/0,244.81,2269.19
    >>Купи вручную 10 Ice Cold Milk перед выходом.
    .collect 1179,10 -- Ice Cold Milk (10)
    .target Innkeeper Renee
step
    .goto 1420/0,244.81,2269.19
    >>ОТДЕЛЬНЫЙ ШАГ: только теперь, после сдачи A Rogue's Deal и Camping 101: Cooking, получения 6-го уровня, обучения Fireball Rank 2 и Fire Blast и покупки 10 Ice Cold Milk, привяжи Hearthstone к Бриллу. Не объединять этот шаг с обучением, сдачей квестов или следующим маршрутом.
    .home >> Set your Hearthstone to Brill
    .bindlocation 2119
    .target Innkeeper Renee
step
    .goto 1420/0,77.20,2026.70
    >>Беги к лагерю кожевки. По пути подпули собак или мышей, если удобно. Возьми Hides for the Forsaken и изучи Skinning; Skinning Knife уже куплен у Joshua Kien.
    .accept 97558 >> Accept Hides for the Forsaken
    .train 8613 >> Train Skinning
    .target Shelene Rhobart
    .goto 1420/0,84.90,2023.50
    >>Возьми отчёт у Deathguard Kristof для Зиганда и примени на нём Executor's Motivator для Discipline.
    .use 286176 >> Use Executor's Motivator on Deathguard Kristof
    .complete 99141,2 -- Kristof's Report
    .target Deathguard Kristof
step
    .goto 1420/0,346.94,2258.95
    >>За домом возьми A New Plague. Если надо — используй /tar apo
    .accept 367 >> Accept A New Plague
    .target Apothecary Johaan
step
    #loop
    .goto 1420/0,655.12,2120.98,0
    .goto 1420/0,550.28,2315.28,50,0
    .goto 1420/0,622.58,2322.51,50,0
    .goto 1420/0,678.16,2319.80,50,0
    .goto 1420/0,716.12,2282.15,50,0
    .goto 1420/0,682.23,2218.58,50,0
    .goto 1420/0,670.48,2128.81,50,0
    .goto 1420/0,595.47,2134.53,50,0
    .goto 1420/0,613.54,2082.72,50,0
    .goto 1420/0,655.12,2120.98,50,0
    .goto 1420/0,496.96,2256.54,0
    .goto 1420/0,1191.04,2198.10,0
    .goto 1420/0,1191.04,2198.10,40,0
    .goto 1420/0,1133.65,2177.31,40,0
    .goto 1420/0,1063.61,2201.71,40,0
    .goto 1420/0,945.22,2127.00,40,0
    .goto 1420/0,824.57,2092.36,40,0
    .goto 1420/0,740.97,2112.24,40,0
    .goto 1420/0,660.09,2196.29,40,0
    .goto 1420/0,571.07,2251.42,40,0
    .goto 1420/0,496.96,2256.54,40,0
    >>На мосту убивай Rotting Dead и Ravaged Corpses для A Putrid Task. По пути найди Gordo («Пуджа») и возьми только его отчёт для Patience — его собственный квест не брать и не выполнять.
    .complete 404,1 -- Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .complete 99141,3 -- Gordo's Report
    .unitscan Gordo
step
    #completewith next
    .use 286176 >>|cRXP_WARN_Используй Executor's Motivator на стражниках Брилла, пока не будет 5/5. Не забывай помечать нужного гварда для квеста Марвена.|r
    .complete 99134,1 -- Deathguards motivated (5)
step
    #loop
    .goto 1420/0,1238.60,2424.90,0
    .goto 1420/0,1238.60,2424.90,60,0
    .goto 1420/0,1204.80,2543.00,60,0
    .goto 1420/0,1122.60,2396.80,60,0
    >>После зомби беги к озеру по пути к Fields of Grief. Приоритет — Darkhound 5-го и 6-го уровня: у них меньше здоровья. Не трать время на собак 7-го уровня и выше, если рядом есть более слабые.
    .complete 367,1 -- Darkhound Blood (5)
    .complete 97558,2 -- Darkhound Hide (6)
    .mob Decrepit Darkhound
step
    #loop
    .goto 1420/0,1509.16,2351.13,50,0
    .goto 1420/0,1512.77,2299.02,50,0
    .goto 1420/0,1597.27,2290.28,50,0
    .goto 1420/0,1676.80,2316.79,50,0
    .goto 1420/0,1681.78,2354.14,50,0
    .goto 1420/0,1649.69,2405.66,50,0
    .goto 1420/0,1632.07,2436.69,50,0
    .goto 1420/0,1580.56,2487.00,50,0
    .goto 1420/0,1509.16,2473.14,50,0
    .goto 1420/0,1492.44,2395.11,50,0
    >>Убивай Scarlet Warriors для At War With The Scarlet Crusade. На лоулвл — 3 Fireball + Frostbolt; на хайлвл — 4 Fireball, если надо.
    .complete 427,1 -- Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #softcore
    .deathskip >>Умри и возродись в Брилле
step
    .goto 1420/0,403.42,2287.57
    .turnin 404 >> Turn in A Putrid Task
    .accept 426 >> Accept The Mills Overrun
    .target Deathguard Dillinger
    .goto 1420/0,295.87,2277.93
    .turnin 99134 >> Turn in Discipline
    .turnin 99141 >> Turn in Patience
    .target Executor Zygand
step
    .goto 1420/0,346.94,2258.95
    >>За домом через стену сдай A New Plague и возьми следующий этап
    .turnin 367 >> Turn in A New Plague
    .accept 368 >> Accept A New Plague
    .target Apothecary Johaan
step
    .goto 1420/0,295.87,2277.93
    >>Сдай квест на скарлетов, возьми следующий этап; затем возьми Wanted: Maggot Eye с постера и Graverobbers у магистра внутри здания
    .turnin 427 >> Turn in At War With The Scarlet Crusade
    .accept 370 >> Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .goto 1420/0,288.64,2285.46
    .accept 398 >> Accept Wanted: Maggot Eye
    .target Wanted Poster
    .goto 1420/0,265.15,2305.94
    .accept 358 >> Accept Graverobbers
    .target Magistrate Sevren
step
    .goto 1420/0,280.06,2270.70
    >>Возьми Proof of Demise на кольца и продай ненужный лут по пути в таверну. Кольца специально не фармим и квест на финальном заходе не сдаём.
    .accept 374 >> Accept Proof of Demise
    .target Deathguard Burgess
    .goto 1420/0,244.81,2269.19
    .vendor >> Продай ненужный лут
    .target Innkeeper Renee
step
    .goto 1420/0,250.69,2252.92
    >>Запрыгни на стол и используй /tar Gretchen, чтобы взять The Chill of Death через стену. На этом посещении квест не сдаём.
    .accept 375 >> Accept The Chill of Death
    .target Gretchen Dedmar
    .isQuestAvailable 375
step
    .goto 1420/0,244.36,2262.26
    >>Поговори с Coleman Farthing и возьми оба квеста.
    .accept 354 >> Accept Deaths in the Family
    .accept 362 >> Accept The Haunted Mills
    .target Coleman Farthing
step
    .goto 1420/0,244.81,2269.19
    >>Купи вручную 10 Ice Cold Milk у Innkeeper Renee. Автопокупку не добавляем.
    .collect 1179,10 -- Ice Cold Milk (10)
    .target Innkeeper Renee
step
    #optional
    #loop
    .goto 1420/0,138.30,2829.60,0
    .goto 1420/0,138.30,2829.60,50,0
    .goto 1420/0,121.20,2727.40,50,0
    .goto 1420/0,127.50,2601.80,50,0
    .goto 1420/0,211.40,2545.50,50,0
    .goto 1420/0,146.30,2408.00,50,0
    .goto 1420/0,94.60,2312.10,50,0
    .goto 1420/0,39.90,2248.10,50,0
    .goto 1420/0,-137.10,2206.00,50,0
    .goto 1420/0,-190.80,2387.70,50,0
    >>Пока Hides for the Forsaken ещё не взят, фарми здесь только 5 Duskbat Pelt для The Chill of Death. Мембраны проверим после взятия Hides.
    .complete 375,1 -- Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #loop
    .goto 1420/0,488.83,2642.44,40,0
    .goto 1420/0,561.13,2596.65,40,0
    .goto 1420/0,597.73,2514.11,40,0
    .goto 1420/0,537.18,2555.98,40,0
    .goto 1420/0,483.40,2514.41,40,0
    .goto 1420/0,380.38,2768.97,50,0
    .goto 1420/0,332.48,2862.35,50,0
    .goto 1420/0,401.16,2895.19,50,0
    .goto 1420/0,318.47,2696.36,50,0
    >>На кладбище убивай Rot Hide Graverobbers, Mongrels и Gnolls. Ориентир — 3 Fireball + автоатака; если моб 8-го уровня, используй 4 Fireball. Иди к Maggot Eye, когда будешь 7-го уровня + примерно 40% опыта.
    .complete 358,1 -- Rot Hide Graverobber (8)
    .mob Rot Hide Graverobber
    .complete 358,2 -- Rot Hide Mongrel (5)
    .mob Rot Hide Mongrel
    .complete 358,3 -- Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
    .mob Rot Hide Mongrel
    .xp 7+1800 >>Перед Магготом желательно быть 7 уровня + 40% опыта
step
    .goto 1420/0,382.63,2910.55
    >>Убей Maggot Eye и залутай лапу
    .complete 398,1 -- Maggot Eye's Paw
    .mob Maggot Eye
step
    #loop
    .goto 1420/0,350.10,2962.37,50,0
    .goto 1420/0,342.87,2998.22,50,0
    .goto 1420/0,293.16,2974.12,50,0
    .goto 1420/0,254.75,2951.82,50,0
    .goto 1420/0,188.33,2950.02,50,0
    .goto 1420/0,65.42,2927.12,50,0
    .goto 1420/0,-15.92,2964.78,50,0
    .goto 1420/0,-49.36,3040.39,50,0
    >>Убивай мурлоков у озера, чередуй дальний бой и мили, если нужно добить цель. Собери Vile Fin Scales и шкуры для Hides for the Forsaken; сдачу A New Plague (368) отложи до возвращения после deathskip и таверны.
    .complete 368,1 -- Vile Fin Scale (5)
    .complete 97558,3 -- Vile Fin Murloc Skin (3)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #loop
    .goto 1420/0,894.16,2609.00,40,0
    .goto 1420/0,803.78,2752.40,40,0
    .goto 1420/0,1058.19,2775.59,60,0
    .goto 1420/0,998.54,2903.93,60,0
    .goto 1420/0,919.01,2939.77,60,0
    .goto 1420/0,1098.40,2875.61,60,0
    .goto 1420/0,996.28,2899.11,60,0
    >>Приоритет: Gregor Agamand (гуль), затем Thurman Agamand (зомби), Nissa Agamand (банши), затем Devlin Agamand (лич у входа на Поля Скорби). После именных мобов добери недостающие рёбра и черепа.
    .complete 354,1 -- Gregor's Remains
    .unitscan Gregor Agamand
    .complete 354,3 -- Thurman's Remains
    .unitscan Thurman Agamand
    .complete 354,2 -- Nissa's Remains
    .unitscan Nissa Agamand
    .complete 362,1 -- Devlin's Remains
    .unitscan Devlin Agamand
    .complete 426,1 -- Notched Rib (5)
    .mob Rattlecage Soldier
    .mob Cracked Skull Soldier
    .complete 426,2 -- Blackened Skull (3)
    .mob Darkeye Bonecaster
step
    #completewith LetterDeathskip
    >>Если Thurman's Letter выпадет у мельниц, используй его и возьми A Letter Undelivered. Этот шаг работает параллельно с фармом и не должен задерживать маршрут.
    .collect 2839,1,361 -- Thurman's Letter / A Letter to Yvette
    .accept 361 >> Accept A Letter Undelivered
    .use 2839
step
    #optional
    #loop
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.20,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    >>|cRXP_WARN_Если Thurman's Letter уже получено — гринди мышей (Black Rat) до 8-го уровня + 1000 XP. Если письма нет, используй следующий порог 8 + 1480 XP; если письмо выпадет во время гринда, сразу делай deathskip.|r
    .xp 8+1000 >>Гринд до 8 уровня + 1000 XP, приоритет — Black Rat (мыши)
    .itemcount 2839,1
    .mob Black Rat
step
    #optional
    #loop
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.20,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .xp 8+1480 >>Гринд до 8 уровня + 1480 XP, по возможности на Black Rat (мышах)
    .itemcount 2839,<1
    .mob Black Rat
step
    #label LetterDeathskip
    #softcore
    .deathskip >>Письмо есть — сразу делай deathskip в Брилл
    .itemcount 2839,1
step
    #softcore
    .deathskip >>Письмо не выпало — после 8 уровня + 1480 опыта делай deathskip в Брилл
    .itemcount 2839,<1
step
    .goto 1420/0,403.42,2287.87
    >>Сдай рёбра и черепа
    .turnin 426 >> Turn in The Mills Overrun
    .target Deathguard Dillinger
    .goto 1420/0,295.87,2277.93
    .turnin 398 >> Turn in Wanted: Maggot Eye
    .target Executor Zygand
    .goto 1420/0,244.36,2262.26
    .turnin 354 >> Turn in Deaths in the Family
    .turnin 362 >> Turn in The Haunted Mills
    .accept 355 >> Accept Speak with Sevren
    .target Coleman Farthing
    .goto 1420/0,265.15,2305.94
    .turnin 358 >> Turn in Graverobbers
    .accept 359 >> Accept Forsaken Duties
    .target Magistrate Sevren
step
    .goto 1420/0,250.69,2252.92
    >>Если взял A Letter Undelivered, сдай его Yvette Farthing. Если письма нет, этот шаг пропустится и не помешает остальным сдачам.
    .turnin 361 >> Turn in A Letter Undelivered
    .target Yvette Farthing
    .isOnQuest 361
step
    .goto 1420/0,275.54,2260.46
    >>Купи Coarse Thread у Эбигейл
    .collect 2320,1 -- Coarse Thread (1)
    .complete 375,2 -- Coarse Thread (1)
    .target Abigail Shiel
step
    .goto 1420/0,244.81,2269.19
    >>Купи 10 Ice Cold Milk перед следующим выходом.
    .collect 1179,10 -- Ice Cold Milk (10)
    .target Innkeeper Renee
step
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.20,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    >>После таверны один раз пройди через район мышей (Black Rat), затем направляйся к Johaan. Это маршрутный проход, а не бесконечный гринд; сдачу A New Plague (368) откладываем до этого момента, третий этап 369 пока не выполняем.
    .mob Black Rat
step
    .goto 1420/0,346.94,2258.95
    >>Через стену сдай второй этап A New Plague (Vile Fin Scale), возьми третий этап A New Plague (пауки) и Delivery to Silverpine Forest. Третий этап 369 не выполняй и не сдавай в этом маршруте. После сдачи 368 цель — 9-й уровень + примерно 10% опыта.
    .turnin 368 >> Turn in A New Plague
    .accept 369 >> Accept A New Plague
    .accept 445 >> Accept Delivery to Silverpine Forest
    .target Apothecary Johaan
step
    #optional
    #loop
    .goto 1420/0,857.56,2793.97,60,0
    .goto 1420/0,880.15,2884.04,60,0
    .goto 1420/0,953.35,2926.22,60,0
    .goto 1420/0,1025.20,2908.44,60,0
    .goto 1420/0,1040.56,2793.07,60,0
    .goto 1420/0,918.56,2780.11,60,0
    .goto 1420/0,953.35,2926.22,60,0
    >>После сдачи A New Plague (368) проверь опыт. Если ещё меньше 9-го уровня + 650 XP, добей разницу на мышах; если порог уже достигнут, шаг пропусти. A New Plague (369) не выполнять.
    .xp 9+650 >>Grind to level 9 + 650 XP if needed
    .mob Black Rat
step
    #loop
    .goto 1420/0,138.30,2829.60,0
    .goto 1420/0,138.30,2829.60,50,0
    .goto 1420/0,121.20,2727.40,50,0
    .goto 1420/0,127.50,2601.80,50,0
    .goto 1420/0,211.40,2545.50,50,0
    .goto 1420/0,146.30,2408.00,50,0
    .goto 1420/0,94.60,2312.10,50,0
    .goto 1420/0,39.90,2248.10,50,0
    .goto 1420/0,-137.10,2206.00,50,0
    .goto 1420/0,-190.80,2387.70,50,0
    >>Теперь Hides for the Forsaken уже взят. Добери 8 Duskbat Wing Membranes, если они ещё не засчитаны; если предметы уже собраны, шаг автоматически пропустится.
    .complete 97558,1 -- Duskbat Wing Membrane (8)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #optional
    .goto 1420/0,76.00,2026.90
    >>Если ещё не сдал Hides for the Forsaken, вернись в лагерь кожевки после сбора шкур собак, летучих мышей и мурлоков
    .turnin 97558 >> Turn in Hides for the Forsaken
    .target Shelene Rhobart
    .isQuestComplete 97558
step
    .goto 1420/0,74.00,2022.47
    >>Сдай Forsaken Duties и возьми следующие задания
    .turnin 359 >> Turn in Forsaken Duties
    .accept 360 >> Accept Return to the Magistrate
    .accept 356 >> Accept Rear Guard Patrol
    .target Deathguard Linnea
step
    #loop
    .goto 1420/0,770.80,1762.79,40,0
    .goto 1420/0,763.57,1820.93,40,0
    .goto 1420/0,721.54,1857.38,40,0
    .goto 1420/0,694.88,1848.04,40,0
    .goto 1420/0,641.56,1800.45,40,0
    .goto 1420/0,651.05,1748.93,40,0
    .goto 1420/0,685.39,1741.70,40,0
    .goto 1420/0,727.42,1742.31,40,0
    >>Убивай Scarlet Zealot и Scarlet Missionary: примерно 3 Fireball по низким и 4 по более высоким. Если A Letter Undelivered было получено и сдано — цель 9-й уровень + 1635 XP. Rings для Proof of Demise специально не фармим.
    .complete 370,2 -- Scarlet Zealot (3)
    .mob Scarlet Zealot
    .complete 370,3 -- Scarlet Missionary (3)
    .mob Scarlet Missionary
    .xp 9+1635 >>Grind to level 9 + 1635 XP
    .isQuestTurnedIn 361
step
    #optional
    #loop
    .goto 1420/0,770.80,1762.79,40,0
    .goto 1420/0,763.57,1820.93,40,0
    .goto 1420/0,721.54,1857.38,40,0
    .goto 1420/0,694.88,1848.04,40,0
    .goto 1420/0,641.56,1800.45,40,0
    .goto 1420/0,651.05,1748.93,40,0
    .goto 1420/0,685.39,1741.70,40,0
    .goto 1420/0,727.42,1742.31,40,0
    >>Если A Letter Undelivered не было получено, продолжай фарм до 9-го уровня + 2335 XP, одновременно добивая 3 Scarlet Zealot и 3 Scarlet Missionary. Rings для Proof of Demise специально не фармим.
    .complete 370,2 -- Scarlet Zealot (3)
    .mob Scarlet Zealot
    .complete 370,3 -- Scarlet Missionary (3)
    .mob Scarlet Missionary
    .xp 9+2335 >>Grind to level 9 + 2335 XP
    .isQuestAvailable 361
step
    #loop
    .goto 1420/0,770.80,1762.79,30,0
    .goto 1420/0,724.25,1682.66,50,0
    .goto 1420/0,629.36,1553.42,50,0
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39,100
    >>После убийства 3 Scarlet Zealot и 3 Scarlet Missionary запули Captain Perrine в башне. Хитрани его до Silverpine Forest и убей только там; затем сразу делай deathskip, чтобы возродиться в Sepulcher.
    .complete 370,1 -- Captain Perrine (1)
    .mob Captain Perrine
step
    #softcore
    .deathskip >>После убийства Captain Perrine в Silverpine Forest сразу умри и возродись в Sepulcher.
step
    .goto 1421/0,1533.96,474.43
    >>Открой полётную точку Sepulcher у Karos Razok.
    .fp Sepulcher >> Get the Sepulcher flight path
    .target Karos Razok
step
    .goto 1421/0,1593.60,554.23
    >>Возьми Prove Your Worth и затем купи Ice Cold Milk.
    .accept 421 >> Accept Prove Your Worth
    .target Dalar Dawnweaver
    .goto 1421/0,1602.84,549.75
    >>Купи молоко у Edwin
    .collect 1179,10 -- Ice Cold Milk (10)
    .target Edwin Harly
step
    #loop
    .goto 1421/0,1099.68,1213.63,50,0
    .goto 1421/0,998.46,1230.99,50,0
    .goto 1421/0,955.20,1286.43,50,0
    .goto 1421/0,925.38,1372.39,50,0
    .goto 1421/0,1025.76,1384.71,50,0
    >>Убей 5 Moonrage Whitescalps (воргенов) для Prove Your Worth, затем сразу умри, чтобы возродиться в Sepulcher.
    .complete 421,1 -- Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
step
    #softcore
    .deathskip >>Умри после 5 воргенов и возродись в Sepulcher
step
    .goto 1421/0,1593.60,554.23
    >>Сдай Prove Your Worth, затем сдай Delivery to Silverpine у Renferrel и нажми Hearthstone (подумай над батчем HS)
    .turnin 421 >> Turn in Prove Your Worth
    .target Dalar Dawnweaver
    .goto 1421/0,1652.82,522.31
    .turnin 445 >> Turn in Delivery to Silverpine Forest
    .target Apothecary Renferrel
    .hs >> Hearth to Brill
    .use 6948
step
    .goto 1420/0,250.69,2252.92
    >>В таверне прыгни на стол и используй /tar Gretchen; сдай The Chill of Death, если квест готов
    .turnin 375 >> Turn in The Chill of Death
    .target Gretchen Dedmar
    .isQuestComplete 375
step
    .goto 1420/0,244.81,2269.19
    >>По пути продай ненужную добычу у Innkeeper Renee. Не делай отдельный забег ради продажи.
    .vendor >> Sell junk
    .target Innkeeper Renee
step
    .goto 1420/0,295.87,2277.93
    >>На 10-м уровне сдай At War With The Scarlet Crusade у Executor Zygand и возьми следующий этап. Затем внутри здания сдай Return to the Magistrate и Speak with Sevren. Proof of Demise не завершён — не сдавай его. A New Plague (369), квест на пауков, тоже оставляем незавершённым.
    .turnin 370 >> Turn in At War With The Scarlet Crusade
    .accept 371 >> Accept At War With The Scarlet Crusade
    .target Executor Zygand
    .goto 1420/0,265.15,2305.94
    >>Зайди к магистрату и сдай доступные задания
    .turnin 360 >> Turn in Return to the Magistrate
    .turnin 355 >> Turn in Speak with Sevren
    .target Magistrate Sevren
]])
