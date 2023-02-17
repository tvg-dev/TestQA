﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю 'Горные работы' 'Нормы выхода работ'
Тогда открылось окно 'Установка норм выхода работ'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
Тогда открылось окно 'Установка норм выхода работ (создание)'
И из выпадающего списка с именем "Организация" я выбираю точное значение 'Разрез "Полевой"'
И в поле с именем 'ДатаС' я ввожу текст '01.01.2021'
И я нажимаю кнопку выбора у поля с именем "Смена"
Тогда открылось окно 'Смены'
И в таблице "Список" я перехожу к строке:
	| 'Наименование'          |
	| '1 смена (8-20) Разрез' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Установка норм выхода работ (создание) *'
И я нажимаю кнопку выбора у поля с именем "Подразделение"
Тогда открылось окно 'Структура предприятия'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'              |
	| '000000031' | 'Горное управление карьера' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Установка норм выхода работ (создание) *'
И я нажимаю кнопку выбора у поля с именем "Ответственный"
Тогда открылось окно 'Выбор пользователя'
И в таблице "ПользователиСписок" я выбираю текущую строку
Тогда открылось окно 'Установка норм выхода работ (создание) *'
И я перехожу к закладке с именем "ГруппаНормыВыходаРабот"

И в таблице "НормыЗагрузки" я нажимаю на кнопку с именем 'НормыЗагрузкиУдалить'
И в таблице "НормыЗагрузки" я нажимаю на кнопку с именем 'НормыЗагрузкиДобавить'
И в таблице "НормыЗагрузки" я нажимаю кнопку выбора у реквизита с именем "НормыЗагрузкиВидРабот"
Тогда открылось окно 'Виды работ'
И в таблице "Список" я перехожу к строке:
	| 'Входит в состав горной массы' | 'Наименование'    | 'Наименование полное' | 'Первичное производство продукции' | 'Учет в весе и объеме' |
	| 'Да'                           | 'Добыча (разрез)' | 'Добыча (разрез)'     | 'Да'                               | 'Да'                   |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Установка норм выхода работ (создание) *'
И в таблице "НормыЗагрузки" я завершаю редактирование строки
И в таблице "НормыЗагрузки" я активизирую поле с именем "НормыЗагрузкиЕдиницаИзмеренияРабот"
И в таблице "НормыЗагрузки" я выбираю текущую строку
И в таблице "НормыЗагрузки" я активизирую поле с именем "НормыЗагрузкиВидОперации"
И в таблице "НормыЗагрузки" я выбираю текущую строку
И в таблице "НормыЗагрузки" я нажимаю кнопку выбора у реквизита с именем "НормыЗагрузкиВидОперации"
Тогда открылось окно 'Виды операций'
И в таблице "Список" я перехожу к строке:
	| 'Количество операций' | 'Наименование'                                    | 'Норма учета'               | 'По норме' | 'По фактической выработке' | 'С применением транспорта' | 'Тип операции'              |
	| 'Да'                  | 'Экскавация горной массы с погрузкой в транспорт' | 'Нормы загрузки транспорта' | 'Да'       | 'Да'                       | 'Да'                       | 'Выпуск продукции на склад' |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Установка норм выхода работ (создание) *'
И в таблице "НормыЗагрузки" я завершаю редактирование строки
И в таблице "НормыЗагрузки" я активизирую поле с именем "НормыЗагрузкиАналитикаМестаРаботыСтрока"
И в таблице "НормыЗагрузки" я выбираю текущую строку
Тогда открылось окно 'Аналитики места работ'
И я нажимаю кнопку выбора у поля с именем "УчастокРабот"
Тогда открылось окно 'Участки работ'
И в таблице "Список" я перехожу к строке:
	| 'Код'       | 'Наименование'      | 'Наименование полное'      | 'Подразделение'             | 'Порядок' | 'Производственный' |
	| '000000001' | 'Горный участок №1' | 'Горный участок отвода №1' | 'Горное управление разреза' | '1'       | 'Да'               |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Аналитики места работ'
И я нажимаю на кнопку с именем 'ОК'
Тогда открылось окно 'Установка норм выхода работ (создание) *'
И в таблице "НормыЗагрузки" я активизирую поле с именем "НормыЗагрузкиНоменклатура"
И в таблице "НормыЗагрузки" я выбираю текущую строку
И в таблице "НормыЗагрузки" я нажимаю кнопку выбора у реквизита с именем "НормыЗагрузкиНоменклатура"
Тогда открылось окно 'Номенклатура'

И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
Тогда открылось окно 'Установка норм выхода работ (создание) *'
И в таблице "НормыЗагрузки" я активизирую поле с именем "НормыЗагрузкиХарактеристика"
И в таблице "НормыЗагрузки" я завершаю редактирование строки
И в таблице "НормыЗагрузки" я активизирую поле с именем "НормыЗагрузкиУпаковка"
И в таблице "НормыЗагрузки" я выбираю текущую строку
И в таблице "НормыЗагрузки" я выбираю текущую строку
И в таблице "НормыЗагрузки" я активизирую поле с именем "НормыЗагрузкиОбъемЗагрузки"
И в таблице "НормыЗагрузки" я выбираю текущую строку
И в таблице "НормыЗагрузки" в поле с именем 'НормыЗагрузкиОбъемЗагрузки' я ввожу текст '38,000'
И в таблице "НормыЗагрузки" я завершаю редактирование строки
И из выпадающего списка с именем "Статус" я выбираю точное значение 'Согласован'
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'