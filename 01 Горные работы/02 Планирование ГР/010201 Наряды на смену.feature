﻿#language: ru

@tree
@ExportScenarios

Функционал: Наряд на смену>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: _010201 Создаем и проводим наряды на смену
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Горные работы' 'Наряды на смену'
Тогда открылось окно 'Наряды на смену'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Наряд на смену (создание)'
	// организация
	И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
	И в поле с именем "ДатаНаряда" я ввожу текущую дату
	// смена
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'          |
		| '_Смена 1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	// подразделение
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'   |
		| '_Подразделение' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
* заполнение закладки оборудование
	И я перехожу к закладке с именем "ГруппаОборудование"
	И в таблице "ГорноеОборудованиеСмены" я нажимаю на кнопку с именем 'ГорноеОборудованиеСменыДобавить'
	// вид работ
	И в таблице "ГорноеОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ГорноеОборудованиеСменыВидРабот"
	Тогда открылось окно 'Виды работ'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'     |
		| '_Добыча' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	// вид операции
	И в таблице "ГорноеОборудованиеСмены" я активизирую поле с именем "ГорноеОборудованиеСменыВидОперации"
	И в таблице "ГорноеОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ГорноеОборудованиеСменыВидОперации"
	Тогда открылось окно 'Виды операций'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                                    |
		| '_Экскавация горной массы с погрузкой в транспорт' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	// оборудование
	И в таблице "ГорноеОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ГорноеОборудованиеСменыГорноеОборудование"
	Тогда открылось окно 'Оборудование'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                 |
		| '_Экскаватор' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	// участок
	И в таблице "ГорноеОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ГорноеОборудованиеСменыУчастокПогрузки"
	Тогда открылось окно 'Участки работ'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'      |
		| '_Участок 1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	И в таблице "ГорноеОборудованиеСмены" я завершаю редактирование строки
	И в таблице "ГорноеОборудованиеСмены" я активизирую поле с именем "ГорноеОборудованиеСменыАналитикаМестаРаботы"
	И в таблице "ГорноеОборудованиеСмены" я выбираю текущую строку
	Тогда открылось окно 'Аналитики места работ'
	// горизонт
	И я нажимаю кнопку выбора у поля с именем "Горизонт"
	Тогда открылось окно 'Горизонты'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Горизонт1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Аналитики места работ'
	// блок
	И я нажимаю кнопку выбора у поля с именем "Блок"
	Тогда открылось окно 'Блоки'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_БлокБалансовый'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Аналитики места работ'
	Когда открылось окно 'Аналитики места работ'
	И я нажимаю кнопку выбора у поля с именем "Залежь"
	Тогда открылось окно 'Залежи полезных ископаемых'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Пласт1'    |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Аналитики места работ'
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно 'Наряд на смену (создание) *'
	И в таблице "ГорноеОборудованиеСмены" я активизирую поле с именем "ГорноеОборудованиеСменыАналитикаМестаРазгрузки"
	И в таблице "ГорноеОборудованиеСмены" я выбираю текущую строку
	Тогда открылось окно 'Аналитики места работ'
	// место разгрузки
	И я нажимаю кнопку выбора у поля с именем "МестоРазгрузки"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Отвал №1'     |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Аналитики места работ'
	И я нажимаю на кнопку с именем 'ОК'
	Тогда открылось окно 'Наряд на смену (создание) *'
	// номенклатура
	И в таблице "ГорноеОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ГорноеОборудованиеСменыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	// характеристика
	И в таблице "ГорноеОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ГорноеОборудованиеСменыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_ДО'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	И в таблице "ГорноеОборудованиеСмены" в поле с именем 'ГорноеОборудованиеСменыКоличествоУпаковок' я ввожу текст '700,000'
	// упаковка
	И в таблице "ГорноеОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ГорноеОборудованиеСменыУпаковка"
	Тогда открылось окно 'Выберите единицу измерения'
	И в таблице "УпаковкиЕдиницыИзмерения" я перехожу к строке:
		| 'Наименование' |
		| 'т'           |
	И в таблице "УпаковкиЕдиницыИзмерения" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	И в таблице "ГорноеОборудованиеСмены" в поле с именем 'ГорноеОборудованиеСменыНачалоРаботыГорногоОборудования' я ввожу текст '08:00'
	И в таблице "ГорноеОборудованиеСмены" в поле с именем 'ГорноеОборудованиеСменыОкончаниеРаботыГорногоОборудования' я ввожу текст '14:00'
	И в таблице "ГорноеОборудованиеСмены" я завершаю редактирование строки
	Когда открылось окно 'Наряд на смену (создание) *'
* заполнение ТЧ транспорт
	И в таблице "ОборудованиеСмены" я нажимаю на кнопку с именем 'ОборудованиеСменыДобавить'
	И в таблице "ОборудованиеСмены" я нажимаю кнопку выбора у реквизита с именем "ОборудованиеСменыТранспортноеСредство"
	Тогда открылось окно 'Оборудование'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'   |
		| '_Белаз 7555' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	И в таблице "ОборудованиеСмены" в поле с именем 'ОборудованиеСменыРасстояние' я ввожу текст '0,700'
	И в таблице "ОборудованиеСмены" в поле с именем 'ОборудованиеСменыКоличествоРейсов' я ввожу текст '17'
	И в таблице "ОборудованиеСмены" в поле с именем 'ОборудованиеСменыКоэффициент' я ввожу текст '0,94'
	И в таблице "ОборудованиеСмены" в поле с именем 'ОборудованиеСменыКоличествоУпаковок' я ввожу текст '350,000'
	И в таблице "ОборудованиеСмены" в поле с именем 'ОборудованиеСменыНачалоРаботыТранспорта' я ввожу текст '08:00'
	И в таблице "ОборудованиеСмены" в поле с именем 'ОборудованиеСменыОкончаниеРаботыТранспорта' я ввожу текст '14:00'
	И в таблице "ОборудованиеСмены" я завершаю редактирование строки
	Когда открылось окно 'Наряд на смену (создание) *'
* заполнение закладки сотрудники
	И я перехожу к закладке с именем "ГруппаСотрудники"
	И в таблице "Сотрудники" я нажимаю на кнопку с именем 'СотрудникиДобавить'
	// оборудование
	И в таблице "Сотрудники" я нажимаю кнопку выбора у реквизита с именем "СотрудникиОборудование"
	Тогда открылось окно 'Оборудование'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Экскаватор'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	// сотрудник
	И в таблице "Сотрудники" я активизирую поле с именем "СотрудникиСотрудник"
	И в таблице "Сотрудники" я нажимаю кнопку выбора у реквизита с именем "СотрудникиСотрудник"
	Тогда открылось окно 'Физические лица'
	И в таблице "Список" я перехожу к строке:
		| 'ФИО'        |
		| '_Иванов ИИ' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Наряд на смену (создание) *'
	И в таблице "Сотрудники" я завершаю редактирование строки
	Тогда открылось окно 'Наряд на смену (создание) *'
* запись
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
