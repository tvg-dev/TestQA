﻿#language: ru

@tree
@ExportScenarios

Функционал: Возврат продукции автотранспортом

Как Тестировщик я хочу
создать документ Возврат продукции автотранспортом
чтобы реализовать Возврат продукции автотранспортом

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: 050604 Создаем Возврат продукции автотранспортом
И я закрываю все окна клиентского приложения
И я открываю основную форму списка документа "гдпВозвратПродукцииАвтотранспортом" 
Когда открылось окно 'Возвраты автотранспортом'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
* основное
	Тогда открылось окно 'Возврат автотранспортом (создание)'
	//флаг возврат по основанию
	И я изменяю флаг с именем 'ВозвратПоОснованию'
	И я нажимаю кнопку выбора у поля с именем "ОснованиеВозврата"
	//выбор разрешения на возврат
	Тогда открылось окно 'Разрешения на возврат'
	И
	И в таблице "Список" я перехожу к строке:
		| 'Клиент'               | 'Контрагент'           | 'Организация' | 'Участок'    |
		| '_Основной покупатель' | '_Основной покупатель' | '_Разрез ООО' | '_Участок 1' |
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокВыбрать'
	Если появилось предупреждение, содержащее текст "Заполнить документ по основанию возврата?" тогда
		И я нажимаю на кнопку 'Да'
	Тогда открылось окно 'Возврат автотранспортом (создание) *'
	//смена
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Смена 1'     |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Возврат автотранспортом (создание) *'
	//склад
	И я нажимаю кнопку выбора у поля с именем "Склад"
	Тогда открылось окно 'Склады и магазины'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'   | 'Подразделение' |
		| '_Склад участка' | '_Разрез'       |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Возврат автотранспортом (создание) *'
	//штабель
	И из выпадающего списка с именем "Штабель" я выбираю точное значение '_Штабель угля ДО'
	//оборудование
	И я нажимаю кнопку выбора у поля с именем "Оборудование"
	Тогда открылось окно 'Выбор типа данных'
	И в таблице "" я перехожу к строке:
		| ''             |
		| 'Оборудование' |
	И я нажимаю на кнопку с именем 'OK'
	Тогда открылось окно 'Оборудование'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' | 
		| '_Белаз_7555'  | 
	
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Возврат автотранспортом (создание) *'
* продукция
	И я перехожу к закладке с именем "ГруппаТовары"
	//вес тары
	И в таблице "Товары" я активизирую поле с именем "ТоварыВесТары"
	И в таблице "Товары" в поле с именем 'ТоварыВесТары' я ввожу текст '20,000'
	//вес брутто
	И в таблице "Товары" я активизирую поле с именем "ТоварыВесБрутто"
	И в таблице "Товары" в поле с именем 'ТоварыВесБрутто' я ввожу текст '25,000'
	И в таблице "Товары" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Возврат автотранспортом (создание) *' в течение 20 секунд

