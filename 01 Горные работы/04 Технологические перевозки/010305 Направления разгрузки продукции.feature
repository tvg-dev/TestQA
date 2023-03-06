﻿#language: ru

@tree
@ExportScenarios

Функционал: Направление разгрузки продукции

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: _010305 Создаем и проводим направления разгрузки продукции
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Горные работы' 'Направления разгрузки продукции'
Тогда открылось окно 'Направления разгрузки продукции'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Направление разгрузки продукции (создание)'
* заполнение шапки
	// дата
	И в поле с именем "Период" я ввожу текущую дату и текущее время
	// смена
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	Когда открылось окно 'Смены'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'          |
		| '_Смена 1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Направление разгрузки продукции (создание) *'
	// номенклатура
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Направление разгрузки продукции (создание) *'
	// характеристика
	И я нажимаю кнопку выбора у поля с именем "Характеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_ДО'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Направление разгрузки продукции (создание) *'
* заполнение Откуда
	// участок
	И я нажимаю кнопку выбора у поля с именем "УчастокРабот"
	Тогда открылось окно 'Участки работ'
	Когда открылось окно 'Участки работ'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'      |
		| '_Участок 1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Направление разгрузки продукции (создание) *'
	// место погрузки
	И я нажимаю кнопку выбора у поля с именем "МестоПогрузки"
	Тогда открылось окно 'Выбор типа данных'
	И в таблице "" я перехожу к строке:
		| ''                             |
		| 'Склад (складская территория)' |
	И в таблице "" я выбираю текущую строку
	Тогда открылось окно 'Склады и магазины'
	Когда открылось окно 'Склады и магазины'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'      |
		| '_Склад участка' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Направление разгрузки продукции (создание) *'
	// штабель погрузки
	И я нажимаю кнопку выбора у поля с именем "ШтабельПогрузки"
	И из выпадающего списка с именем "ШтабельПогрузки" я выбираю точное значение '_Штабель1'
* заполнение Куда
	// участок
	И я нажимаю кнопку выбора у поля с именем "УчастокРазгрузки"
	Тогда открылось окно 'Участки работ'
	Когда открылось окно 'Участки работ'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_ДСК'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Направление разгрузки продукции (создание) *'
	// склад
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	Когда открылось окно 'Склады и магазины'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Отвал №1'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Направление разгрузки продукции (создание) *'
* запись
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
