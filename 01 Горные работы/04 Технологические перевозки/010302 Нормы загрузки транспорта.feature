#language: ru

@tree
@ExportScenarios

Функционал: Установка норм загрузки транспорта

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: _010302 Создаем и проводим установки норм загрузки транспорта
И я закрываю все окна клиентского приложения
И В командном интерфейсе я выбираю 'Горные работы' 'Нормы загрузки транспорта'
Тогда открылось окно 'Установка норм загрузки транспорта'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
Тогда открылось окно 'Установка норм загрузки транспорта (создание)'
* заполнение шапки
	// дата нормы
	И в поле с именем "ДатаНормы" я ввожу текущую дату
	И в поле с именем 'ДатаНормы' я ввожу текст '31.12.2021'
	// смена 
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	Когда открылось окно 'Смены'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'          |
		| '_Смена 1' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Установка норм загрузки транспорта (создание) *'
	// транспорт
	И я нажимаю кнопку выбора у поля с именем "Транспорт"
	Тогда открылось окно 'Выбор типа данных'
	И в таблице "" я перехожу к строке:
		| ''                   |
		| 'Марка оборудования' |
	И в таблице "" я выбираю текущую строку
	Тогда открылось окно 'Марки оборудования'
	Когда открылось окно 'Марки оборудования'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Белаз 7555'  |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Установка норм загрузки транспорта (создание) *'
* заполнение закладки нормы загрузки
	И я перехожу к закладке с именем "ГруппаНормыЗагрузки"
	Когда открылось окно 'Установка норм загрузки транспорта (создание) *'
	И в таблице "НормыЗагрузки" я нажимаю на кнопку с именем 'НормыЗагрузкиУдалить'
	И в таблице "НормыЗагрузки" я нажимаю на кнопку с именем 'НормыЗагрузкиДобавить'
	// номенклатура
	И в таблице "НормыЗагрузки" я нажимаю кнопку выбора у реквизита с именем "НормыЗагрузкиНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Когда открылось окно 'Установка норм загрузки транспорта (создание) *'
	И в таблице "НормыЗагрузки" в поле с именем 'НормыЗагрузкиОбъемЗагрузки' я ввожу текст '18,500'
	И в таблице "НормыЗагрузки" я завершаю редактирование строки
* смена статуса и запись
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Согласован'
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
