﻿#language: ru

@tree
@ExportScenarios

Функционал: Ввод элементов справочника Показатели качества

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06016 создаем показатели качества
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
Тогда открылось окно 'Настройки и справочники'
И я нажимаю на кнопку с именем 'ОткрытьПВХПоказателей'
Тогда открылось окно 'Показатели качества'
Если в таблице "Список" нет строки Тогда
	| 'Наименование' |
	| '_Зольность'         |
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	* Заполнение шапки элемента _Зольность
		И В командном интерфейсе я выбираю 'Управление качеством' 'Показатели качества'
		Тогда открылось окно 'Показатели качества'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Показатели качества (создание)'
		И в поле с именем 'Заголовок' я ввожу текст '_Зольность'
	* Заполнение вкладки Основное
		И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
		Тогда открылось окно 'Выберите единицу измерения'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '%'            |
		И в таблице "Список" я выбираю текущую строку
		И в поле с именем 'ПредставлениеВФормуле' я ввожу текст '_Ad'
	* Заполнение вкладки Применение в документах
		И я перехожу к закладке с именем "СтраницаДокументы"
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Запасы'   | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я активизирую поле с именем "ДокументыСКачествомДеревоИспользовать"
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'     | 'Использовать' |
			| 'Номенклатура' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я сворачиваю строку:
			| 'Документ'             | 'Использовать' |
			| 'Наряд на переработку' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я сворачиваю строку:
			| 'Документ'       | 'Использовать' |
			| 'Наряд на смену' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'  | 'Использовать' |
			| 'Продукция' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Сырье'    | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'  | 'Использовать' |
			| 'Продукция' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Запасы'   | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'  | 'Использовать' |
			| 'Продукция' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Сырье'    | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'  | 'Использовать' |
			| 'Продукция' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Показатели качества (создание) *' в течение 20 секунд

И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
Тогда открылось окно 'Настройки и справочники'
И я нажимаю на кнопку с именем 'ОткрытьПВХПоказателей'
Тогда открылось окно 'Показатели качества'
Если в таблице "Список" нет строки Тогда
	| 'Наименование' |
	| '_Летучие'         |
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	* Заполнение шапки элемента _Летучие
		И В командном интерфейсе я выбираю 'Управление качеством' 'Показатели качества'
		Когда открылось окно 'Показатели качества'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Показатели качества (создание)'
		И в поле с именем 'Заголовок' я ввожу текст '_Летучие'
	* Заполнение вкладки Основное
		И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
		Тогда открылось окно 'Выберите единицу измерения'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '%'            |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Показатели качества (создание) *'
		И в поле с именем 'ПредставлениеВФормуле' я ввожу текст '_Vdaf'
		И из выпадающего списка с именем "МетодУсреднения" я выбираю точное значение 'Без усреднения'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Показатели качества (создание) *' в течение 20 секунд
		
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
Тогда открылось окно 'Настройки и справочники'
И я нажимаю на кнопку с именем 'ОткрытьПВХПоказателей'
Тогда открылось окно 'Показатели качества'
Если в таблице "Список" нет строки Тогда
	| 'Наименование' |
	| '_Сера'         |
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	* Заполнение шапки элемента _Сера
		И В командном интерфейсе я выбираю 'Управление качеством' 'Показатели качества'
		Тогда открылось окно 'Показатели качества'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Показатели качества (создание)'
		И в поле с именем 'Заголовок' я ввожу текст '_Сера'
	* Заполнение вкладки Основное
		И в поле с именем 'ПредставлениеВФормуле' я ввожу текст '_S'
		И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
		Тогда открылось окно 'Выберите единицу измерения'
			И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '%'            |
		И в таблице "Список" я выбираю текущую строку
		И из выпадающего списка с именем "МетодУсреднения" я выбираю точное значение 'Без усреднения'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Показатели качества (создание) *' в течение 20 секунд

И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
Тогда открылось окно 'Настройки и справочники'
И я нажимаю на кнопку с именем 'ОткрытьПВХПоказателей'
Тогда открылось окно 'Показатели качества'
Если в таблице "Список" нет строки Тогда
	| 'Наименование' |
	| '_Толщина пластического слоя'         |
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	* Заполнение шапки элемента _Толщина пластического слоя
		И В командном интерфейсе я выбираю 'Управление качеством' 'Показатели качества'
		Тогда открылось окно 'Показатели качества'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Показатели качества (создание)'
	* Заполнение вкладки Основное
		И в поле с именем 'Заголовок' я ввожу текст '_Толщина пластического слоя'
		И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
		Тогда открылось окно 'Выберите единицу измерения'
		И в таблице "Список" я перехожу к строке:
			| 'Международное сокращение' | 'Наименование' |
			| 'MMT'                      | 'мм'           |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Показатели качества (создание) *'
		И в поле с именем 'ПредставлениеВФормуле' я ввожу текст '_Y'
		И из выпадающего списка с именем "МетодУсреднения" я выбираю точное значение 'Без усреднения'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Показатели качества (создание) *' в течение 20 секунд

	* Снятие флагов на вкладке Применение в документах
		И В командном интерфейсе я выбираю 'Управление качеством' 'Показатели качества'
		Тогда открылось окно 'Показатели качества'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '_Толщина пластического слоя'   |
		И в таблице "Список" я активизирую поле с именем "Наименование"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '_Толщина пластического слоя (Показатели качества)'
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'               | 'Использовать' |
			| 'Возврат из переработки' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'             | 'Использовать' |
			| 'Геологические запасы' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                         | 'Использовать' |
			| 'Качество номенклатуры на складах' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'             | 'Использовать' |
			| 'Наряд на переработку' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'       | 'Использовать' |
			| 'Наряд на смену' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                | 'Использовать' |
			| 'Отгрузка без транспорта' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'               | 'Использовать' |
			| 'Передача в переработку' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                            | 'Использовать' |
			| 'Перемаркировка продукции на складах' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                             | 'Использовать' |
			| 'Перемещение продукции без транспорта' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                  | 'Использовать' |
			| 'План внутренних перевозок' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'      | 'Использовать' |
			| 'План остатков' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'         | 'Использовать' |
			| 'План переработки' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                       | 'Использовать' |
			| 'План производства горных работ' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'      | 'Использовать' |
			| 'Разубоживание' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'         | 'Использовать' |
			| 'Структура залежи' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                                | 'Использовать' |
			| 'Установка качества добытой горной массы' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                       | 'Использовать' |
			| 'Установка качества переработки' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я разворачиваю строку:
			| 'Документ'                | 'Использовать' |
			| 'Шихтование горной массы' | 'Нет'          |
		И я перехожу к закладке с именем "СтраницаДокументы"
		И в таблице "ДокументыСКачествомДерево" я нажимаю на кнопку с именем 'ДокументыСКачествомСнятьПометки'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
	* Заполнение вкладки Применение в документах
		И В командном интерфейсе я выбираю 'Управление качеством' 'Показатели качества'
		Тогда открылось окно 'Показатели качества'
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '_Толщина пластического слоя'   |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '_Толщина пластического слоя (Показатели качества)'
		И я перехожу к закладке с именем "ГруппаГлавное"
		И я перехожу к закладке с именем "СтраницаДокументы"
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Запасы'   | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я активизирую поле с именем "ДокументыСКачествомДеревоИспользовать"
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'     | 'Использовать' |
			| 'Номенклатура' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'  | 'Использовать' |
			| 'Продукция' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'  | 'Использовать' |
			| 'Продукция' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Сырье'    | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ'  | 'Использовать' |
			| 'Продукция' | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Отходы'   | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И в таблице "ДокументыСКачествомДерево" я перехожу к строке:
			| 'Документ' | 'Использовать' |
			| 'Запасы'   | 'Нет'          |
		И в таблице "ДокументыСКачествомДерево" я изменяю флаг с именем 'ДокументыСКачествомДеревоИспользовать'
		И в таблице "ДокументыСКачествомДерево" я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно '_Толщина пластического слоя (Показатели качества)'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '_Толщина пластического слоя (Показатели качества)' в течение 20 секунд

//И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
//Тогда открылось окно 'Настройки и справочники'
//И я нажимаю на кнопку с именем 'ОткрытьПВХПоказателей'
//Тогда открылось окно 'Показатели качества'
//Если в таблице "Список" нет строки Тогда 
//	| 'Наименование' |
//	| '_Зерновой состав'         |
//	И я нажимаю на кнопку с именем 'ФормаСоздать'
//	Когда открылось окно 'Показатели качества (создание)'
//	И в поле с именем 'Заголовок' я ввожу текст '_Зерновой состав'
//	И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
//	Тогда открылось окно 'Выберите единицу измерения'
//	И я нажимаю на кнопку с именем 'ФормаВыбрать'
//	Тогда открылось окно 'Показатели качества (создание) *'
//	И в поле с именем 'ПредставлениеВФормуле' я ввожу текст '_F'
//	И из выпадающего списка с именем "МетодУсреднения" я выбираю точное значение 'Без усреднения'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна 'Показатели качества (создание) *' в течение 20 секунд
		
	