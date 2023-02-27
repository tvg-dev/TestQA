﻿#language: ru

@tree
@ExportScenarios

Функционал: Заказ на испытание

Как Сотрудник ОТК я хочу
создавать документы Заказов на испытание
чтобы создавать документы Заказов на испытание и отображать данные в системе 1С:ОУ

Сценарий: _070203 Создание и проведение заказа на испытание без основания
* Открытие списка документов
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Управление качеством' 'Заказы на испытания'
	Тогда открылось окно 'Заказы на испытания'
* Создание документа
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Заказ на испытания (создание)'
	И я нажимаю кнопку выбора у поля с именем "Заказчик"
	Тогда открылось окно 'Структура предприятия'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'   |
		| '_Подразделение' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ на испытания (создание) *'
	И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
	И я нажимаю кнопку выбора у поля с именем "Исполнитель"
	Тогда открылось окно 'Исследовательские лаборатории'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Лаборатория' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ на испытания (создание) *'
* Заполнение ТЧ
	И я перехожу к закладке с именем "ГруппаПробы"
	И в таблице "Пробы" я нажимаю на кнопку с именем 'ПробыУдалить'
	И в таблице "Пробы" я нажимаю на кнопку с именем 'ПробыДобавить'
	И в таблице "Пробы" я нажимаю кнопку выбора у реквизита с именем "ПробыПроба"
	Тогда открылось окно 'Пробы'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'      |
		| '_Проба ОТК' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ на испытания (создание) *'
	И в таблице "Пробы" я активизирую поле с именем "ПробыВидИсследования"
	И в таблице "Пробы" я нажимаю кнопку выбора у реквизита с именем "ПробыВидИсследования"
	Тогда открылось окно 'Виды исследований номенклатуры'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                 |
		| '_Исходящий контроль угля _ДО' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ на испытания (создание) *'
	И в таблице "Пробы" я активизирую поле с именем "ПробыУпаковка"
	И в таблице "Пробы" я нажимаю кнопку выбора у реквизита с именем "ПробыУпаковка"
	Тогда открылось окно 'Выберите единицу измерения'
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Заказ на испытания (создание) *'
	И в таблице "Пробы" я завершаю редактирование строки
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'В работе'
	Когда открылось окно 'Заказ на испытания (создание) *'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Номер документа
	И я запоминаю значение поля 'Номер' как '$Номер$'
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровести'
* Заполнение Результата испытания (Изменение статуса документа)
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'В работе'
	И я перехожу к закладке с именем "ГруппаПробы"
	И в таблице "Пробы" я активизирую поле с именем "ПробыРезультатИспытаний"
	И в таблице "Пробы" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я нажимаю на кнопку с именем 'ЗаписатьИЗакрыть'
	И я жду закрытия окна 'Заказ на испытания " " от *' в течение 20 секунд	
* Проверка создания документа
	И таблица 'Список' содержит строки :
	| 'Номер'   |
	| '$Номер$' |

Сценарий: _070203 Создание и проведение заказа на испытание на основания отбора проб
* Создание документа на основании документа Отбор проб
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Управление качеством' 'Отборы проб'
	Тогда открылось окно 'Отборы проб'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'       |
		| 'РЗЦУ-000001' |
	И я нажимаю на кнопку 'Заказ на испытания'
	Тогда открылось окно 'Заказ на испытания (создание)'
	И я перехожу к закладке с именем "ГруппаПробы"
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Передан'
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Номер документа
	И я запоминаю значение поля 'Номер' как '$Номер$'
* Проведение документа	
	И я нажимаю на кнопку с именем 'ФормаПровести'
* Заполнение Результата испытания (Изменение статуса документа)
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'В работе'
	И я перехожу к закладке с именем "ГруппаПробы"
	И я нажимаю на кнопку с именем 'ЗаписатьИЗакрыть'
	И я жду закрытия окна 'Заказ на испытания " " от *' в течение 20 секунд	
* Проверка создания документа
	И В командном интерфейсе я выбираю 'Управление качеством' 'Заказы на испытания'
	И таблица 'Список' содержит строки :
	| 'Номер' |
	| '$Номер$' |
