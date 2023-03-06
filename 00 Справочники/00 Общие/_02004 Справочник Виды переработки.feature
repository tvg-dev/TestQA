﻿#language: ru

@tree
@ExportScenarios
Функционал: Справочник гдпВидыПереработки

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _02004 Создаем виды переработки
Если не существует элемент справочника "гдпВидыПереработки" с "Наименование" равным "_Подготовительные процессы" Тогда
	* Создание Вида переработки _Подготовительные процессы
		И В командном интерфейсе я выбираю 'Переработка' 'Настройки и справочники'
		Тогда открылось окно 'Настройки и справочники'
		И я нажимаю на кнопку с именем 'ОткрытьВидыПереработки'
		Тогда открылось окно 'Виды переработки продукции'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды переработки продукции (создание)'
		И я нажимаю кнопку выбора у поля с именем "Родитель"
		Тогда открылось окно 'Виды переработки продукции'
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
		Тогда открылось окно 'Виды переработки продукции (создание группы)'
		И в поле с именем 'Наименование' я ввожу текст '_Фабрика'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды переработки продукции (создание группы) *' в течение 20 секунд
		Тогда открылось окно 'Виды переработки продукции'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Виды переработки продукции (создание) *'
		И в поле с именем 'Наименование' я ввожу текст '_Подготовительные процессы'
		И из выпадающего списка с именем "НаименованиеПолное" я выбираю точное значение '_Подготовительные процессы'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды переработки продукции (создание) *' в течение 20 секунд
Если не существует элемент справочника "гдпВидыПереработки" с "Наименование" равным "_Обогатительные процессы" Тогда
	* Создание Вида переработки _Оборатительные процессы
		Когда открылось окно 'Виды переработки продукции'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды переработки продукции (создание)'
		И я нажимаю кнопку выбора у поля с именем "Родитель"
		Тогда открылось окно 'Виды переработки продукции'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Виды переработки продукции (создание) *'
		И в поле с именем 'Наименование' я ввожу текст '_Обогатительные процессы'
		И из выпадающего списка с именем "НаименованиеПолное" я выбираю точное значение '_Обогатительные процессы'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды переработки продукции (создание) *' в течение 20 секунд
Если не существует элемент справочника "гдпВидыПереработки" с "Наименование" равным "_Заключительные операции" Тогда
	* Создание Вида переработки _Заключительные операции
		Когда открылось окно 'Виды переработки продукции'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды переработки продукции (создание)'
		И я нажимаю кнопку выбора у поля с именем "Родитель"
		Тогда открылось окно 'Виды переработки продукции'
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Виды переработки продукции (создание) *'
		И в поле с именем 'Наименование' я ввожу текст '_Заключительные операции'
		И из выпадающего списка с именем "НаименованиеПолное" я выбираю точное значение '_Заключительные операции'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды переработки продукции (создание) *' в течение 20 секунд
	