﻿#language: ru

@tree
@ExportScenarios

Функционал: Бригады

Как сотрудник ОТиЗ права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06005 Создаем бригады
Если не существует элемент справочника "Бригады" с "Наименование" равным "_Бригада 1" Тогда
	* Создание _Бригада 1
		Дано Я открываю основную форму списка справочника "Бригады"
		Тогда открылось окно 'Бригады'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Бригады (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Бригада 1'
		И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
		И я нажимаю кнопку выбора у поля с именем "Подразделение"
		Тогда открылось окно 'Структура предприятия'
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'     |
			| '_Подразделение' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Бригады (создание) *'
		И я устанавливаю флаг с именем 'ПрименятьРаспределениеПоКТУ'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Бригады (создание) *' в течение 20 секунд

			