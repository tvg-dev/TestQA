﻿#language: ru

@tree
@ExportScenarios

Функционал:  Виды работ

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _01011 Создаем виды работ
* Создание элемента справочника _Добыча
Если не существует элемент справочника "гдпВидыРабот" с "Наименование" равным "_Добыча" Тогда
	И В командном интерфейсе я выбираю 'Горные работы' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники'
	И я нажимаю на кнопку с именем 'ОткрытьВидыРабот'
	Тогда открылось окно 'Виды работ'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Вид работ (создание)'
	// наименование
	И в поле с именем 'Наименование' я ввожу текст '_Добыча'
	// Ед. изм
	И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
	Тогда открылось окно 'Выберите единицу измерения'
	И в таблице "Список" я перехожу к строке:
		| 'Международное сокращение' |
		| 'TNE'                      |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Вид работ (создание) *'
	// номенклатура работ
	И я нажимаю кнопку выбора у поля с именем "НоменклатураРабот"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| 'Добыча'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Вид работ (создание) *'
	// номенклатура работ транспорта
	И я нажимаю кнопку выбора у поля с именем "НоменклатураРаботТранспорта"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование'                  |
		| 'Доставка угля автотранспортом' |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Вид работ (создание) *'
	// виды операций
	И в таблице "ВидыОпераций" я нажимаю на кнопку с именем 'ВидыОперацийДобавить'
	И в таблице "ВидыОпераций" я нажимаю кнопку выбора у реквизита с именем "ВидыОперацийВидОперации"
	Тогда открылось окно 'Виды операций'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                                     |
		| '_Экскавация горной массы с погрузкой в транспорт' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Вид работ (создание) *'
	И в таблице "ВидыОпераций" я завершаю редактирование строки
	// перечень номенклатур
	И я перехожу к закладке с именем "ГруппаПереченьНоменклатуры"
	И в таблице "ПереченьНоменклатуры" я нажимаю на кнопку с именем 'ПереченьНоменклатурыДобавить'
	И в таблице "ПереченьНоменклатуры" я нажимаю кнопку выбора у реквизита с именем "ПереченьНоменклатурыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Вид работ (создание) *'
	И в таблице "ПереченьНоменклатуры" я завершаю редактирование строки
	// запись
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Вид работ (создание) *' в течение 20 секунд

		