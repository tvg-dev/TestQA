﻿#language: ru

@tree
@ExportScenarios

Функционал: Разубоживание и потери

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: _010304 Создаем и проводим разубоживание и потери
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Горные работы' 'Разубоживание и потери'
Тогда открылось окно 'Разубоживание и потери'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Разубоживание и потери (создание)'
* заполнение шапки
	// организация
	И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
	// участок	
	И я нажимаю кнопку выбора у поля с именем "Участок"
	Тогда открылось окно 'Участки работ'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'      |
		| '_Участок 1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
	// вид данных
	И я нажимаю кнопку выбора у поля с именем "ВидДанныхЗапасов"
	Тогда открылось окно 'Виды данных геологических запасов'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'      |
		| 'Факт' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
	// подразделение
	И я нажимаю кнопку выбора у поля с именем "Подразделение"
	Тогда открылось окно 'Структура предприятия'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'   |
		| '_Разрез' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
* заполнение закладки запасы
	И я перехожу к закладке с именем "ГруппаГеологическиеЗапасы"
	И в таблице "Запасы" я нажимаю на кнопку с именем 'ЗапасыУдалить'
	И в таблице "Запасы" я нажимаю на кнопку с именем 'ЗапасыДобавить'
	// номенклатура
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
	// характеристика
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыХарактеристика"
	Тогда открылось окно 'Характеристики номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_ДО'           |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
	// ед. изм.
//	И в таблице "Запасы" я активизирую поле с именем "ЗапасыНоменклатураЕдиницаИзмерения"
//	И в таблице "Запасы" я выбираю текущую строку
	// горизонт
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыГоризонт"
	Тогда открылось окно 'Горизонты'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Горизонт1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
	Когда открылось окно 'Разубоживание и потери (создание) *'
	// блок
	И в таблице "Запасы" я активизирую поле с именем "ЗапасыБлок"
	И в таблице "Запасы" я выбираю текущую строку
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыБлок"
	Тогда открылось окно 'Блоки'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_БлокБалансовый'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
	И в таблице "Запасы" я нажимаю кнопку выбора у реквизита с именем "ЗапасыЗалежь"
	Тогда открылось окно 'Залежи полезных ископаемых'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Пласт1'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Разубоживание и потери (создание) *'
	И в таблице "Запасы" в поле с именем 'ЗапасыПотери' я ввожу текст '2,000'
	И в таблице "Запасы" в поле с именем 'ЗапасыОбъемРазубоживания' я ввожу текст '45 000,000'
	И в таблице "Запасы" я завершаю редактирование строки
* запись
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
