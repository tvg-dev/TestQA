﻿#language: ru

@tree
@ExportScenarios

Функционал: Блоки

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _01012 Создаем блоки
Если не существует элемент справочника "гдпБлоки" с "Наименование" равным "_БлокБалансовый" Тогда
	И В командном интерфейсе я выбираю 'Горные работы' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники'
	И я нажимаю на кнопку с именем 'ОткрытьСправочникБлоки'
	Тогда открылось окно 'Блоки'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Блок (создание)'
	// заполнение реквизитов
	И в поле с именем 'Наименование' я ввожу текст '_БлокБалансовый'
	И я нажимаю кнопку выбора у поля с именем "УчастокРабот"
	Тогда открылось окно 'Участки работ'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Участок 1'   |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Блок (создание) *'
	И я нажимаю кнопку выбора у поля с именем "Горизонт"
	Тогда открылось окно 'Горизонты'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Горизонт1'   |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Блок (создание) *'
	И из выпадающего списка с именем "ТипБлока" я выбираю точное значение 'Балансовый'
	// ТЧ залежи
	И в таблице "Залежи" я нажимаю на кнопку с именем 'ЗалежиДобавить'
	И в таблице "Залежи" я нажимаю кнопку выбора у реквизита с именем "ЗалежиЗалежь"
	Тогда открылось окно 'Залежи полезных ископаемых'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Пласт1'   |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Блок (создание) *'
	И в таблице "Залежи" я завершаю редактирование строки
	// записать
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Блок (создание) *' в течение 20 секунд
