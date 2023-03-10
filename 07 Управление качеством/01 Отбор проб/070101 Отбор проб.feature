#language: ru

@tree
@ExportScenarios

Функционал: Подсистема "Качества". Отбор проб

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _070101 Создание и проведение отбора проб без основания
* Открываю в разделе управление качеством список документы отборы проб 
	И В командном интерфейсе я выбираю 'Управление качеством' 'Отборы проб'
	Тогда открылось окно 'Отборы проб'
* создаю новый документ заявка на отбор проб
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Отбор проб (создание)'
* заполняю в документе поле организация
	И из выпадающего списка с именем "Организация" я выбираю точное значение '_Разрез ООО'
* заполняю поле смена
	И я нажимаю кнопку выбора у поля с именем "Смена"
	Тогда открылось окно 'Смены'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'          |
		| '_Смена 1' |
	И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Отбор проб (создание) *'
* заполняю данные в табличной части проб
	И я перехожу к закладке с именем "ГруппаПробы"
	Когда открылось окно 'Отбор проб (создание) *'
	И в таблице "Пробы" я нажимаю на кнопку с именем 'ПробыУдалить'
	И в таблице "Пробы" я добавляю строку
	И в таблице "Пробы" я активизирую поле с именем "ПробыПроба"
	И в таблице "Пробы" я нажимаю кнопку выбора у реквизита с именем "ПробыПроба"
	Тогда открылось окно 'Пробы'
	* создание, при отсуствии и выбор пробы _Тест_0_100
	Тогда открылось окно 'Пробы'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'      |
		| '_Проба ОТК' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Отбор проб (создание) *'
	И в таблице "Пробы" я завершаю редактирование строки
* выбираю статус выполнен
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Выполнен'
* провожу и закрываю документ
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'

Сценарий: _070101 Создание и проведение отбора проб на основании заявки
* Открываю в разделе управление качеством список документы отборы проб 
	И В командном интерфейсе я выбираю 'Управление качеством' 'Отборы проб'
	Тогда открылось окно 'Отборы проб'
* создаю новый документ заявка на отбор проб
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Отбор проб (создание)'
	И я устанавливаю флаг с именем 'ОтборПоОснованию'
	И я нажимаю кнопку выбора у поля с именем "ДокументОснование"
	Тогда открылось окно 'Выбор типа данных'
	И в таблице "" я перехожу к строке:
		| ''                     |
		| 'Заявка на отбор проб' |
	И в таблице "" я выбираю текущую строку
	Тогда открылось окно 'Заявки на отбор проб'
	И в таблице "Список" я перехожу к строке:
		| 'Номер'       | 'Организация' |
		| 'РЗЦУ-000001' | '_Разрез ООО' |
	И в таблице "Список" я выбираю текущую строку
	Если появилось предупреждение, содержащее текст "Заполнить документ" тогда
			И я нажимаю на кнопку 'Да'
Тогда открылось окно 'Отбор проб (создание) *'
* заполняю данные в табличной части проб
	И я перехожу к закладке с именем "ГруппаПробы"
	Когда открылось окно 'Отбор проб (создание) *'
	И в таблице "Пробы" я выбираю текущую строку
		
	Когда открылось окно 'Отбор проб (создание) *'
	И я перехожу к закладке с именем "ГруппаПробы"
	И в таблице "Пробы" я активизирую поле с именем "ПробыТипПробы"
	И в таблице "Пробы" я выбираю текущую строку
	И в таблице "Пробы" я нажимаю кнопку выбора у реквизита с именем "ПробыТипПробы"
	Тогда открылось окно 'Типы проб'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Пластовые'   |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Отбор проб (создание) *'
	И в таблице "Пробы" я активизирую поле с именем "ПробыВидПробы"
	И в таблице "Пробы" я нажимаю кнопку выбора у реквизита с именем "ПробыВидПробы"
	Тогда открылось окно 'Виды проб'
	И в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| '_Проба ОТК'   |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Отбор проб (создание) *'
	И в таблице "Пробы" я активизирую поле с именем "ПробыМаркировка"
	//И в таблице "Пробы" в поле с именем 'ПробыМаркировка' я ввожу текст 'р 555'
	И в таблице "Пробы" в поле "Дата и время отбора" я ввожу текущую дату
	И в таблице "Пробы" я завершаю редактирование строки
	
* запись документа
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	И я запоминаю значение поля с именем "Номер" как "НомерДокумента"
	И в Таблицу "Пробы" в поле "Номер пробы" я ввожу значение переменной "НомерДокумента"
* выбираю статус выполнен
	И из выпадающего списка с именем "Статус" я выбираю точное значение 'Выполнен'
* провожу и закрываю документ
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Отбор проб РЗЦУ-000003 от * *' в течение 20 секунд
	Если появилось предупреждение, содержащее текст "имеются несформированные пробы" тогда
		И я нажимаю на кнопку 'Да'
