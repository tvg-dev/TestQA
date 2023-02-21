﻿#language: ru

@tree

Функционал: Типы исследований

Как сотрудник ОТК я хочу
Создавать виды исследований
чтобы отражать допуски для работы на оборудовании в 1С ГДП

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06014 создаем типы исследований
И я закрываю все окна клиентского приложения
Если не существует элемент справочника "гдпТипыИсследований" с "Наименование" равным "_Разрез" Тогда
	* Создание элемента справочника типы исследований
		И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
		Тогда открылось окно 'Настройки и справочники'
		И я нажимаю на кнопку с именем 'ОткрытьТипыИсследований'
		Тогда открылось окно 'Типы лабораторных исследований'
		И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
		Тогда открылось окно 'Типы лабораторных исследований (создание группы)'
		И в поле с именем 'Наименование' я ввожу текст '_Разрез'
		И я нажимаю кнопку выбора у поля с именем "Родитель"
		Тогда открылось окно 'Типы лабораторных исследований'
		И Я закрываю окно 'Типы лабораторных исследований'
		Тогда открылось окно 'Типы лабораторных исследований (создание группы) *'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Типы лабораторных исследований (создание группы) *' в течение 20 секунд
		Тогда открылось окно 'Типы лабораторных исследований'
		И в таблице "Список" я выбираю текущую строку
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Тип лабораторного исследования (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Определение зольности'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Тип лабораторного исследования (создание) *' в течение 20 секунд
				