﻿#language: ru

@tree
@ExportScenarios

Функционал: Виды балансов металлов

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06019 Создаем виды балансов металлов
И я закрываю все окна клиентского приложения
Если не существует элемент справочника "гдпВидыБалансов" с "Наименование" равным "_Основной" Тогда
	* Создание элемента справочника виды балансов металлов
		И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
		Тогда открылось окно 'Настройки и справочники'
		И я нажимаю на кнопку с именем 'ОткрытьВидыБалансов'
		Тогда открылось окно 'Виды балансов металлов'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды балансов металлов (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Основной'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды балансов металлов (создание) *' в течение 20 секунд

