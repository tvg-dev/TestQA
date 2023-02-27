﻿#language: ru

@tree
@ExportScenarios

Функционал: Номенклатура и характеристика

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _00006 Создаем номенклатуру и характеристику

Если не существует элемент справочника "Номенклатура" с "Наименование" равным "_Уголь" Тогда
	И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Номенклатура'
	Тогда открылось окно 'Номенклатура'
	И я нажимаю на кнопку с именем 'СписокРасширенныйПоискНоменклатураСоздать'
	Тогда открылось окно 'Номенклатура (создание)'
	И я нажимаю кнопку выбора у поля с именем "ВидНоменклатурыОбязательныеПоля"
	Тогда открылось окно 'Виды номенклатуры'
	И я нажимаю на кнопку с именем 'ФормаСписок'
	//И в таблице "Список" я выбираю строку:
	И в таблице "Список" я перехожу к строке
		| 'Наименование'        |
		| '_С характеристикой' |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Номенклатура (создание) *'
	И в поле с именем 'Наименование' я ввожу текст '_Уголь'
	И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
	Тогда открылось окно 'Выберите единицу измерения'
	И в таблице "Список" я перехожу к строке:
		| 'Международное сокращение' | 'Наименование' |
		| 'TNE'                      | 'т'            |
	И в таблице "Список" я выбираю текущую строку
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '_Уголь (Номенклатура) *' в течение 20 секунд
	Тогда открылось окно 'Номенклатура'
	
	//И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Номенклатура'
	//Тогда открылось окно 'Номенклатура'
	//И в таблице "ВидыНоменклатуры" я выбираю текущую строку
	
	//Тогда открылось окно '_Товар (Вид номенклатуры)'
	//И я меняю значение переключателя с именем 'НастройкаВидимостиФормы' на 'Показать все'
	//И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
	//Тогда открылось окно 'Выберите единицу измерения'
	//И в таблице "Список" я перехожу к строке:
	//	| 'Международное сокращение' | 'Наименование' |
	//	| 'TNE'                      | 'т'            |
	//И в таблице "Список" я выбираю текущую строку
	//Тогда открылось окно '_Товар (Вид номенклатуры) *'
	//И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	//И я жду закрытия окна '_Товар (Вид номенклатуры) *' в течение 20 секунд

	//И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Номенклатура'
	//Тогда открылось окно 'Номенклатура'
	
	//И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Номенклатура'
	//Тогда открылось окно 'Номенклатура'

//	И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Номенклатура'
//	Тогда открылось окно 'Номенклатура'
//	И в таблице "ВидыНоменклатуры" я выбираю текущую строку
//	Тогда открылось окно '_Товар (Вид номенклатуры)'
//	И я меняю значение переключателя с именем 'НастройкаВидимостиФормы' на 'Показать все'
//	И я устанавливаю флаг с именем 'ИспользоватьУпаковки'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна '_Товар (Вид номенклатуры) *' в течение 20 секунд
//	И я нажимаю кнопку выбора у поля с именем "НаборУпаковок"
//	Тогда открылось окно 'Наборы упаковок'
//	И я нажимаю на кнопку с именем 'ФормаСоздать'
//	Тогда открылось окно 'Набор упаковок (создание)'
//	И я нажимаю кнопку выбора у поля с именем "ЕдиницаИзмерения"
//	Тогда открылось окно 'Выберите единицу измерения'
//	И в таблице "Список" я перехожу к строке:
//		| 'Международное сокращение' | 'Наименование' |
//		| 'TNE'                      | 'т'            |
//	И я нажимаю на кнопку с именем 'ФормаВыбрать'
//	Тогда открылось окно 'Набор упаковок (создание) *'
//	И я нажимаю кнопку выбора у поля с именем "ЕдиницаДляОтчетов"
//	Тогда открылось окно 'Единицы для отчетов'
//	И в таблице "СписокУпаковки" я перехожу к строке:
//		| 'Ед. изм.' |
//		| 'т'        |
//	И в таблице "СписокУпаковки" я выбираю текущую строку
//	Тогда открылось окно 'Набор упаковок (создание) *'
//	И в поле с именем 'Наименование' я ввожу текст 'Тонна'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия 
//	окна 'Набор упаковок (создание) *' в течение 20 секунд
//	Тогда открылось окно 'Наборы упаковок'
//	И в таблице "Список" я выбираю текущую строку
//		
//
//	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
//	Тогда открылось окно '_Уголь (Номенклатура)'
//	И я перехожу к закладке с именем "СтраницаРеквизитыНоменклатуры"
//	И я разворачиваю группу с именем "СворачиваемаяГруппаЕдиницыИзмерения"
//	И в поле с именем 'КоэффициентЕдиницыДляОтчетов' я ввожу текст '1 000,000'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна '_Уголь (Номенклатура) *' в течение 20 секунд
//	Тогда открылось окно 'Номенклатура'
//	И в таблице "ВидыНоменклатуры" я выбираю текущую строку
//	Тогда открылось окно '_Товар (Вид номенклатуры)'
//	И я меняю значение переключателя с именем 'НастройкаВидимостиФормы' на 'Показать все'
//	И Я закрываю окно '_Товар (Вид номенклатуры)'
//		
//	
//	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
//	Тогда открылось окно '_Уголь (Номенклатура)'
//	И я перехожу к закладке с именем "СтраницаРеквизитыНоменклатуры"
//	И я разворачиваю группу с именем "СворачиваемаяГруппаЕдиницыИзмерения"
//	И я нажимаю кнопку выбора у поля с именем "ЕдиницаДляОтчетов"
//	Тогда открылось окно 'Выберите единицу измерения'
//	И в таблице "Список" я перехожу к строке:
//		| 'Международное сокращение' | 'Наименование' |
//		| 'TNE'                      | 'т'            |
//	И в таблице "Список" я выбираю текущую строку
//	Тогда открылось окно '_Уголь (Номенклатура) *'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна '_Уголь (Номенклатура) *' в течение 20 секунд
//		
//
//	И в таблице "Список" я выбираю текущую строку
//	Тогда открылось окно 'Номенклатура (создание) *'
//	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
//	И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд

	// установка признак учет горных раблот
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно '_Уголь (Номенклатура)'
	И я перехожу к закладке с именем "СтраницаРеквизитыНоменклатуры"
	Если появилось предупреждение, содержащее текст "Чтобы быстро перейти к редактированию реквизита" тогда
			И я нажимаю на кнопку 'Спасибо за совет'
			Тогда открылось окно '_Уголь (Номенклатура)'
	И я разворачиваю группу с именем "СворачиваемаяГруппаОсновныеПараметрыУчета"
	И я изменяю флаг с именем 'гдпУчетГорныхРабот'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна '_Уголь (Номенклатура) *' в течение 20 секунд

Если не существует элемент справочника "ХарактеристикиНоменклатуры" с "Наименование" равным "_ДО" Тогда
	И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Номенклатура'
	Тогда открылось окно 'Номенклатура'
	И я снимаю флаг с именем "ИспользоватьФильтры"
	И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
		| 'Наименование' |
		| '_Уголь'       |
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно '_Уголь (Номенклатура)'
	И я нажимаю на кнопку с именем 'КомандаПерейтиХарактеристикиНоменклатуры'
	Тогда открылось окно 'Характеристики номенклатуры (_С характеристикой)'
	И в таблице "Список" я нажимаю на кнопку с именем 'СписокСоздать'
	Тогда открылось окно 'Характеристика номенклатуры (создание)'
	И в поле с именем 'Наименование' я ввожу текст '_ДО'
	И я перехожу к следующему реквизиту
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Характеристика номенклатуры (создание) *' в течение 20 секунд


			
