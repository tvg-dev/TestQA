#language: ru

@tree
@ExportScenarios

Функционал: Пробы

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06017 создаем пробы
И я закрываю все окна клиентского приложения
Если не существует элемент справочника "гдпПробы" с "Наименование" равным "_Проба ОТК" Тогда
	* Создание пробу _Тест
		И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
		Тогда открылось окно 'Настройки и справочники'
		И я нажимаю на кнопку с именем 'ОткрытьПробы'
		Тогда открылось окно 'Пробы'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Пробы (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Проба ОТК'
		И я нажимаю кнопку выбора у поля с именем "Номенклатура"
		Тогда открылось окно 'Номенклатура'
		И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
			| 'Наименование' |
			| '_Уголь'       |
		И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
		Тогда открылось окно 'Пробы (создание) *'
		И я нажимаю кнопку выбора у поля с именем "Характеристика"
		Тогда открылось окно 'Характеристики номенклатуры'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '_ДО'           |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Пробы (создание) *'
		И в поле с именем 'Вес' я ввожу текст '0,100'
		И в поле с именем "ДатаОтбора" я ввожу текущую дату и текущее время
		И я нажимаю кнопку выбора у поля с именем "ТипПробы"
		Тогда открылось окно 'Типы проб'
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'  |
			| '_Пластовые' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Пробы (создание) *'
		И я нажимаю кнопку выбора у поля с именем "ВидПробы"
		Тогда открылось окно 'Виды проб'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование' |
			| '_Проба ОТК' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Пробы (создание) *'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Пробы (создание) *' в течение 20 секунд


		