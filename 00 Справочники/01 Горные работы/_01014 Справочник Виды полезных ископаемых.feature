#language: ru

@tree
@ExportScenarios

Функционал: Виды полезных ископаемых

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _01014 Создаем виды полезных ископаемых
Если не существует элемент справочника "гдпВидыПолезныхИскопаемых" с "Наименование" равным "_Горнохимическое сырье" Тогда
	* Создаем вид полезных ископаемых _Горнохимическое сырье
		И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Классификаторы полезных ископаемых'
		Тогда открылось окно 'Классификаторы полезных ископаемых'
		И я нажимаю на кнопку с именем 'ВидыПолезныхИскопаемых'
		Тогда открылось окно 'Виды полезных ископаемых'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды полезных ископаемых (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Горнохимическое сырье'
		И из выпадающего списка с именем "ТипПолезногоИскопаемого" я выбираю точное значение 'Неметаллические'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды полезных ископаемых (создание) *' в течение 20 секунд
Если не существует элемент справочника "гдпВидыПолезныхИскопаемых" с "Наименование" равным "_Горючие полезные ископаемые" Тогда	
	* Создаем вид полезных ископаемых _Горючие полезные ископаемые
		И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Классификаторы полезных ископаемых'
		Тогда открылось окно 'Классификаторы полезных ископаемых'
		И я нажимаю на кнопку с именем 'ВидыПолезныхИскопаемых'
		Тогда открылось окно 'Виды полезных ископаемых'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды полезных ископаемых (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Горючие полезные ископаемые'
		И из выпадающего списка с именем "ТипПолезногоИскопаемого" я выбираю точное значение 'Горючие (топливные)'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды полезных ископаемых (создание) *' в течение 20 секунд
Если не существует элемент справочника "гдпВидыПолезныхИскопаемых" с "Наименование" равным "_Нерудные полезные ископаемые" Тогда
	* Создаем вид полезных ископаемых _Нерудные полезные ископаемые
		И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Классификаторы полезных ископаемых'
		Тогда открылось окно 'Классификаторы полезных ископаемых'
		И я нажимаю на кнопку с именем 'ВидыПолезныхИскопаемых'
		Тогда открылось окно 'Виды полезных ископаемых'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды полезных ископаемых (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Нерудные полезные ископаемые'
		И из выпадающего списка с именем "ТипПолезногоИскопаемого" я выбираю точное значение 'Неметаллические'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды полезных ископаемых (создание) *' в течение 20 секунд
Если не существует элемент справочника "гдпВидыПолезныхИскопаемых" с "Наименование" равным "_Руды" Тогда
	* Создаем вид полезных ископаемых _Руды
		И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Классификаторы полезных ископаемых'
		Тогда открылось окно 'Классификаторы полезных ископаемых'
		И я нажимаю на кнопку с именем 'ВидыПолезныхИскопаемых'
		Тогда открылось окно 'Виды полезных ископаемых'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Виды полезных ископаемых (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Руды '
		И из выпадающего списка с именем "ТипПолезногоИскопаемого" я выбираю точное значение 'Металлические'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Виды полезных ископаемых (создание) *' в течение 20 секунд
				