#language: ru

@tree
@ExportScenarios

Функционал:  Лицензии на пользование недрами

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _01004 Создаем лицензии на пользование недрами
Если не существует элемент справочника "гдпЛицензииНаПользованиеНедрами" с "Наименование" равным "_СИБ 0000 от 01.01.23" Тогда
	И В командном интерфейсе я выбираю 'Горные работы' 'Настройки и справочники'
	Тогда открылось окно 'Настройки и справочники'
	И я нажимаю на кнопку с именем 'ОткрытьСправочникЛицензииНедропользования'
	Тогда открылось окно 'Лицензии на пользование недр'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Лицензия на пользование недр (создание)'
	// заполнение реквизитов
	И в поле с именем 'Наименование' я ввожу текст '_СИБ 0000 от 01.01.23'
	И в поле с именем 'Серия' я ввожу текст 'СИБ'
	И я перехожу к следующему реквизиту
	И в поле с именем 'Номер' я ввожу текст '0000'
	И я перехожу к следующему реквизиту
	И из выпадающего списка с именем "ВидПолезногоИскопаемого" я выбираю точное значение 'Твердые полезные ископаемые'
	И из выпадающего списка с именем "ВидРабот" я выбираю точное значение 'Разведка и добыча ПИ'
	И я нажимаю кнопку выбора у поля с именем "Лицензиар"
	Тогда открылось окно 'Выбор типа данных'
	И в таблице "" я перехожу к строке:
		| ''           |
		| 'Контрагент' |
	И в таблице "" я выбираю текущую строку
	Тогда открылось окно 'Контрагенты (юридические или физические лица)'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'        |
		| '_Основной поставщик' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Лицензия на пользование недр (создание) *'
	И в поле с именем 'ДатаВыдачи' я ввожу текст '01.01.2023'
	И я перехожу к следующему реквизиту
	И в поле с именем 'ДатаОкончания' я ввожу текст '31.12.2029'
	И я перехожу к следующему реквизиту
	И из выпадающего списка с именем "СтатусУчасткаНедр" я выбираю точное значение 'Горный отвод'
	// запись
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Лицензия на пользование недр (создание) *' в течение 20 секунд

