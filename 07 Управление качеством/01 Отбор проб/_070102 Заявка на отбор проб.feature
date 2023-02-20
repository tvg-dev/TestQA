﻿#language: ru

@tree
@ExportScenarios

Функционал: Подсистема "Качества". Заявка на отбор проб

Как Диспетчер я хочу
создавать и проводить заявки на отбор проб 
чтобы отразить в программе информацию о заявках на пробы

Сценарий: _070102 Создание и проведение заявки на отбор проб
Дано _00006 Создаем номенклатуру и характеристику
* Открываю в разделе управление качеством список документы заявки на отбор проб
	И В командном интерфейсе я выбираю 'Управление качеством' 'Заявки на отбор проб'
	Тогда открылось окно 'Заявки на отбор проб'
* создаю новый документ заявка на отбор проб
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Заявка на отбор проб (создание)'
* заполняю в документе поле организация
	И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
* заполняю поле смена
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	//И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'          |
		| '_Смена 1' |
	И в таблице "Список" я выбираю текущую строку
* выбираю номенклатуру
	И я нажимаю кнопку выбора у поля с именем "Номенклатура"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Заявка на отбор проб (создание) *'
* выбираю характеристику
	И я нажимаю кнопку выбора у поля с именем "Характеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_ДО'           |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заявка на отбор проб (создание) *'
* ввожу количество пробы
	И в поле с именем 'КоличествоУпаковок' я ввожу текст '0,500'
* выбираю статус согласована
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Согласована'	
* провожу и закрываю документ
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'





