﻿#language: ru

@tree
@ExportScenarios

Функционал: Приемка горных работ

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: _010302 Создаем и проводим приемку горных работ
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Горные работы' 'Приемка горных работ'
Тогда открылось окно 'Приемка горных работ'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
Тогда открылось окно 'Приемка горных работ (создание)'
* заполнение шапки
	// органеизация 
	И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
	// подразделение
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'    |
		| '_Подразделение' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приемка горных работ (создание) *'
	// реквизиты
	И в поле с именем 'ДатаНачала' я ввожу текст '01.01.2022'
	И в поле с именем 'ДатаОкончания' я ввожу текст '31.01.2022'
* заполнение закладки работы
	И я перехожу к закладке с именем "ГруппаРаботы"
	И в таблице 'Работы' я удаляю строку
	И в таблице "Работы" я нажимаю на кнопку с именем 'РаботыДобавить'
	// вид работ
	И в таблице "Работы" я нажимаю кнопку выбора у реквизита с именем "РаботыВидРабот"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'      |
		| '_Добыча' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приемка горных работ (создание) *'
	// номенклатура
	И в таблице "Работы" я нажимаю кнопку выбора у реквизита с именем "РаботыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Приемка горных работ (создание) *'
	// характеристика
	И в таблице "Работы" я нажимаю кнопку выбора у реквизита с именем "РаботыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_ДО'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Приемка горных работ (создание) *'
	// упаковка
	И в таблице "Работы" я нажимаю кнопку выбора у реквизита с именем "РаботыУпаковка"
	Тогда открылось окно 'Выберите единицу измерения'
	И в таблице "УпаковкиЕдиницыИзмерения" я перехожу к строке:
		| 'Наименование' |
		| 'т'       |
	И в таблице "УпаковкиЕдиницыИзмерения" я выбираю текущую строку
	Тогда открылось окно 'Приемка горных работ (создание) *'
	И в таблице "Работы" я завершаю редактирование строки
	// реквизиты
	И в таблице "Работы" в поле с именем 'РаботыКоличествоБракПриемка' я ввожу текст '10,000'
	И в таблице "Работы" в поле с именем 'РаботыКоличествоРаботыПриемка' я ввожу текст '88,000'
	И в таблице "Работы" в поле с именем 'РаботыКоличествоРаботыОперацииПриемка' я ввожу текст '36,000'
	И в таблице "Работы" я завершаю редактирование строки
* запись
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'