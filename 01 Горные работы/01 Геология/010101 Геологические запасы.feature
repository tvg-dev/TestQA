﻿#language: ru

@tree
@ExportScenarios

Функционал: Геологические запасы

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: _010101 Создание и проведение геологических запасов
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Горные работы' 'Геологические запасы'
Тогда открылось окно 'Геологические запасы'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
Тогда открылось окно 'Геологические запасы (создание)'
* заполнение шапки
	// вид данных
	И я нажимаю кнопку выбора у поля с именем "ВидДанныхЗапасов"
	Тогда открылось окно 'Виды данных геологических запасов'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Факт'         |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// участок
	И я нажимаю кнопку выбора у поля с именем "Участок"
	Тогда открылось окно 'Участки работ'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'      |
		| '_Участок 1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// организация
	И я нажимаю кнопку выбора у поля с именем "Организация"
	И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
* заполнение вкладки запасы
	И я перехожу к закладке с именем "ГруппаГеологическиеЗапасы"
	Когда открылось окно 'Геологические запасы (создание) *'
	И в таблице "Запасы" я нажимаю на кнопку с именем 'ЗапасыДобавить'
	И в таблице "Запасы" я выбираю текущую строку
	// номенклатура
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// характеристика
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыХарактеристика"
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_ДО'           |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// упаковка
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыУпаковка"
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыУпаковка"
	Тогда открылось окно 'Выберите единицу измерения'
	И в таблице "УпаковкиЕдиницыИзмерения" я перехожу к строке:
		| 'Наименование' |
		| 'т'            |
	И в таблице "УпаковкиЕдиницыИзмерения" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// категория
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыКатегория"
	И в таблице "Запасы" из выпадающего списка с именем "ЗапасыКатегория" я выбираю точное значение 'А'
	// серия качества 
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыСерияКачества"
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыСерияКачества"
	Тогда открылось окно 'Серии номенклатуры по качеству'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'       |
		| '_Базовая серия _ДО' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// горизонт
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыГоризонт"
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыГоризонт"
	Тогда открылось окно 'Горизонты'
	Когда открылось окно 'Горизонты'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Горизонт1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// блок
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыБлок"
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыБлок"
	Тогда открылось окно 'Блоки'
	Когда открылось окно 'Блоки'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'    |
		| '_БлокБалансовый' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// залеж
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыЗалежь"
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыЗалежь"
	Тогда открылось окно 'Залежи полезных ископаемых'
	Когда открылось окно 'Залежи полезных ископаемых'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Пласт1'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Геологические запасы (создание) *'
	// количество
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыКоличествоУпаковок"
	И в таблице "Запасы" в поле с именем 'ЗапасыКоличествоУпаковок' я ввожу текст '16 000 056,000'
* смена статуса и запись
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Согласован'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

