#language: ru

@tree
@ExportScenarios

Функционал: Расчетные показатели_металлы

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06018 Создаем расчетные показатели
И я закрываю все окна клиентского приложения
Если не существует элемент справочника "гдпРасчетныеПоказатели" с "Наименование" равным "_Баланс металлов" Тогда
	* Создание элемента справочника группа _Баланс металлов
		И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Расчетные показатели'
		Тогда открылось окно 'Расчетные показатели'
		И я нажимаю на кнопку с именем 'ФормаСоздатьГруппу'
		Тогда открылось окно 'Расчетные показатели (создание группы)'
		И в поле с именем 'Код' я ввожу текст '_Баланс металлов'
		И в поле с именем 'Наименование' я ввожу текст '_Баланс металлов'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна 'Расчетные показатели (создание группы) *' в течение 20 секунд

Если не существует элемент справочника "гдпРасчетныеПоказатели" с "Наименование" равным "_Золото в готовой продукции ЗИФ за период" Тогда
	* Создание элемента справочника группа _Золото в готовой продукции ЗИФ за период
		И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Расчетные показатели'
		Тогда открылось окно 'Расчетные показатели'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Расчетные показатели (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Золото в готовой продукции ЗИФ за период'
		И я нажимаю кнопку выбора у поля с именем "Родитель"
		Тогда открылось окно 'Расчетные показатели'
		И я нажимаю на кнопку с именем 'ФормаСписок'
		И в таблице "Список" я перехожу к строке:
			| 'Наименование'     |
			| '_Баланс металлов' |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Расчетные показатели (создание) *'
		И я перехожу к закладке с именем "СтраницаАналитики"
		И в таблице "Аналитики" я перехожу к строке:
			| 'Аналитика' | 'Использовать' |
			| 'Участок'   | 'Нет'          |
		И в таблице "Аналитики" я устанавливаю флаг с именем 'АналитикиИспользовать'
		И в таблице "Аналитики" я завершаю редактирование строки
		И я перехожу к закладке с именем "СтраницаЗапрос"
		И в поле с именем 'Запрос' я ввожу текст 
			|'ВЫБРАТЬ'|
			|' гдпЗначенияПоказателейСрезПоследних.Период КАК Период,'|
			|' гдпЗначенияПоказателейСрезПоследних.Участок КАК Участок,'|
			|' ВЫРАЗИТЬ(гдпЗначенияПоказателейСрезПоследних.ЗначениеПоказателя КАК ЧИСЛО(15, 3)) КАК ЗначениеПоказателя,'|
			|' гдпЗначенияПоказателейСрезПоследних.Показатель КАК Показатель'|
			|'ПОМЕСТИТЬ ВтЗРП'|
			|'ИЗ'|
			|' РегистрСведений.гдпЗначенияПоказателей.СрезПоследних(КОНЕЦПЕРИОДА(&ДатаПо, ДЕНЬ), Показатель = &ПоказательПроцентаУчастков) КАК гдпЗначенияПоказателейСрезПоследних'|
			|';'|
			|''|
			|'////////////////////////////////////////////////////////////////////////////////'|
			|'ВЫБРАТЬ'|
			|' ОКР(гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.КоличествоОборот * (ВЫРАЗИТЬ(гдпКачественныеПоказателиСерии.Значение КАК ЧИСЛО(15, 3))) / 100, 1) КАК Значение,'|
			|' гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.Смена КАК Смена,'|
			|' НАЧАЛОПЕРИОДА(гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.ПериодСмены, ДЕНЬ) КАК ПериодСмены,'|
			|' &ПоказательПроцентаУчастков КАК Показатель'|
			|'ПОМЕСТИТЬ ВТРасчет'|
			|'ИЗ'|
			|' РегистрНакопления.гдпПродукцияПолученнаяИзПереработкиОперативныйУчет.Обороты('|
			|'   &ДатаС,'|
			|'   КОНЕЦПЕРИОДА(&ДатаПо, ДЕНЬ),'|
			|'   Запись,'|
			|'   Номенклатура В (&Номенклатура)'|
			|'    И Организация = &Организация'|
			|'    И Оборудование = &Передел'|
			|'    И ПерерабатывающаяФабрика = &Фабрика) КАК гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты'|
			|'  ЛЕВОЕ СОЕДИНЕНИЕ РегистрСведений.гдпКачественныеПоказателиСерии КАК гдпКачественныеПоказателиСерии'|
			|'  ПО гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.СерияКачества = гдпКачественныеПоказателиСерии.СерияКачества'|
			|'ГДЕ'|
			|' гдпКачественныеПоказателиСерии.Показатель = &Показатель'|
			|';'|
			|''|
			|'////////////////////////////////////////////////////////////////////////////////'|
			|'ВЫБРАТЬ'|
			|' ОКР(СУММА(ВЫБОР'|
			|'    КОГДА ВтЗРП.ЗначениеПоказателя ЕСТЬ NULL'|
			|'     ТОГДА ВТРасчет.Значение'|
			|'    ИНАЧЕ ВТРасчет.Значение * ВтЗРП.ЗначениеПоказателя'|
			|'   КОНЕЦ), 1) КАК Значение,'|
			|' ВтЗРП.Участок КАК Участок'|
			|'ИЗ'|
			|' ВТРасчет КАК ВТРасчет'|
			|'  ЛЕВОЕ СОЕДИНЕНИЕ ВтЗРП КАК ВтЗРП'|
			|'  ПО ВТРасчет.Показатель = ВтЗРП.Показатель'|
			|''|
			|'СГРУППИРОВАТЬ ПО'|
			|' ВтЗРП.Участок'|
		И я нажимаю на кнопку с именем 'ФормаЗаписать'
		Тогда открылось окно '_Золото в готовой продукции ЗИФ за период (Расчетные показатели)'
		И в таблице "ТаблицаПараметров" я нажимаю на кнопку с именем 'ТаблицаПараметровДобавить'
		И в таблице "ТаблицаПараметров" в поле с именем 'ТаблицаПараметровИмя' я ввожу текст 'ДатаС'
		И в таблице "ТаблицаПараметров" я активизирую поле с именем "ТаблицаПараметровТипВФорме"
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровТипВФорме"
		Тогда открылось окно 'Выбрать тип'
		И в таблице "" я перехожу к строке:
			| 'Колонка1' |
			| 'Дата'     |
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно '_Золото в готовой продукции ЗИФ за период (Расчетные показатели) *'
		И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		И в таблице "ТаблицаПараметров" я нажимаю на кнопку с именем 'ТаблицаПараметровДобавить'
		И в таблице "ТаблицаПараметров" в поле с именем 'ТаблицаПараметровИмя' я ввожу текст 'ДатаПо'
		И в таблице "ТаблицаПараметров" я активизирую поле с именем "ТаблицаПараметровТипВФорме"
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровТипВФорме"
		Тогда открылось окно 'Выбрать тип'
		И в таблице "" я перехожу к строке:
			| 'Колонка1' |
			| 'Дата'     |
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно '_Золото в готовой продукции ЗИФ за период (Расчетные показатели) *'
		И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		Тогда элемент формы с именем "Код" стал равен '_ЗОЛОТО В ГОТОВОЙ ПРОДУКЦИИ ЗИФ ЗА ПЕРИОД'
		И элемент формы с именем "Наименование" стал равен '_Золото в готовой продукции ЗИФ за период'
		И элемент формы с именем "ВидПоказателя" стал равен 'Запрос'
		И элемент формы с именем "Родитель" стал равен '_Баланс металлов'
		И элемент формы с именем "Комментарий" стал равен ''
		И таблица "Аналитики" стала равной:
			| 'Использовать' | 'Аналитика'          |
			| 'Нет'          | 'Смена'              |
			| 'Нет'          | 'Организация'        |
			| 'Нет'          | 'Вид данных'         |
			| 'Нет'          | 'Вид операции'       |
			| 'Нет'          | 'Вид работ'          |
			| 'Нет'          | 'Должность'          |
			| 'Нет'          | 'Сотрудник'          |
			| 'Нет'          | 'Модель'             |
			| 'Нет'          | 'Марка оборудования' |
			| 'Нет'          | 'Оборудование'       |
			| 'Нет'          | 'Топливо'            |
			| 'Нет'          | 'Номенклатура'       |
			| 'Нет'          | 'Характеристика'     |
			| 'Нет'          | 'Серия номенклатуры' |
			| 'Нет'          | 'Подразделение'      |
			| 'Да'           | 'Участок'            |
			| 'Нет'          | 'Разряд и категория' |
			| 'Нет'          | 'Расстояние'         |
		
		И элемент формы с именем "Запрос" стал равен 
			|'ВЫБРАТЬ'|
			|' гдпЗначенияПоказателейСрезПоследних.Период КАК Период,'|
			|' гдпЗначенияПоказателейСрезПоследних.Участок КАК Участок,'|
			|' ВЫРАЗИТЬ(гдпЗначенияПоказателейСрезПоследних.ЗначениеПоказателя КАК ЧИСЛО(15, 3)) КАК ЗначениеПоказателя,'|
			|' гдпЗначенияПоказателейСрезПоследних.Показатель КАК Показатель'|
			|'ПОМЕСТИТЬ ВтЗРП'|
			|'ИЗ'|
			|' РегистрСведений.гдпЗначенияПоказателей.СрезПоследних(КОНЕЦПЕРИОДА(&ДатаПо, ДЕНЬ), Показатель = &ПоказательПроцентаУчастков) КАК гдпЗначенияПоказателейСрезПоследних'|
			|';'|
			|''|
			|'////////////////////////////////////////////////////////////////////////////////'|
			|'ВЫБРАТЬ'|
			|' ОКР(гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.КоличествоОборот * (ВЫРАЗИТЬ(гдпКачественныеПоказателиСерии.Значение КАК ЧИСЛО(15, 3))) / 100, 1) КАК Значение,'|
			|' гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.Смена КАК Смена,'|
			|' НАЧАЛОПЕРИОДА(гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.ПериодСмены, ДЕНЬ) КАК ПериодСмены,'|
			|' &ПоказательПроцентаУчастков КАК Показатель'|
			|'ПОМЕСТИТЬ ВТРасчет'|
			|'ИЗ'|
			|' РегистрНакопления.гдпПродукцияПолученнаяИзПереработкиОперативныйУчет.Обороты('|
			|'   &ДатаС,'|
			|'   КОНЕЦПЕРИОДА(&ДатаПо, ДЕНЬ),'|
			|'   Запись,'|
			|'   Номенклатура В (&Номенклатура)'|
			|'    И Организация = &Организация'|
			|'    И Оборудование = &Передел'|
			|'    И ПерерабатывающаяФабрика = &Фабрика) КАК гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты'|
			|'  ЛЕВОЕ СОЕДИНЕНИЕ РегистрСведений.гдпКачественныеПоказателиСерии КАК гдпКачественныеПоказателиСерии'|
			|'  ПО гдпПродукцияПолученнаяИзПереработкиОперативныйУчетОбороты.СерияКачества = гдпКачественныеПоказателиСерии.СерияКачества'|
			|'ГДЕ'|
			|' гдпКачественныеПоказателиСерии.Показатель = &Показатель'|
			|';'|
			|''|
			|'////////////////////////////////////////////////////////////////////////////////'|
			|'ВЫБРАТЬ'|
			|' ОКР(СУММА(ВЫБОР'|
			|'    КОГДА ВтЗРП.ЗначениеПоказателя ЕСТЬ NULL'|
			|'     ТОГДА ВТРасчет.Значение'|
			|'    ИНАЧЕ ВТРасчет.Значение * ВтЗРП.ЗначениеПоказателя'|
			|'   КОНЕЦ), 1) КАК Значение,'|
			|' ВтЗРП.Участок КАК Участок'|
			|'ИЗ'|
			|' ВТРасчет КАК ВТРасчет'|
			|'  ЛЕВОЕ СОЕДИНЕНИЕ ВтЗРП КАК ВтЗРП'|
			|'  ПО ВТРасчет.Показатель = ВтЗРП.Показатель'|
			|''|
			|'СГРУППИРОВАТЬ ПО'|
			|' ВтЗРП.Участок'|



		Когда открылось окно '_Золото1 (Расчетные показатели)'
		И в таблице "ТаблицаПараметров" я нажимаю на кнопку с именем 'КомандаЗаполнитьПараметры'
		И в таблице "ТаблицаПараметров" я перехожу к строке:
			| 'Имя'          | 'Тип'          |
			| 'Номенклатура' | 'Номенклатура' |
		И в таблице "ТаблицаПараметров" я активизирую поле с именем "ТаблицаПараметровЗначениеВФорме"
		И в таблице "ТаблицаПараметров" я выбираю текущую строку
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровЗначениеВФорме"
		Тогда открылось окно 'Выбор типа данных'
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно 'Номенклатура'
		И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
			| 'Наименование' |
			| 'Слиток Доре'  |
		И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку


		//Тогда открылось окно '_Золото (Расчетные показатели) *'
		И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		И в таблице "ТаблицаПараметров" я перехожу к строке:
			| 'Имя'         | 'Тип'         |
			| 'Организация' | 'Организация' |
		//И в таблице "ТаблицаПараметров" я выбираю текущую строку
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровЗначениеВФорме"
		Тогда открылось окно 'Выбор типа данных'
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно 'Организации'
		И в таблице "СписокРасширенныйПоискНоменклатура" я перехожу к строке:
			| 'Наименование' |
			| 'Слиток Доре'  |
		//Тогда открылось окно '_Золото (Расчетные показатели) *'
		//И в таблице "ТаблицаПараметров" из выпадающего списка с именем "ТаблицаПараметровЗначениеВФорме" я выбираю точное значение 'Золото Сибири'
		//И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		И в таблице "ТаблицаПараметров" я перехожу к строке:
			| 'Имя'     | 'Тип'          |
			| 'Передел' | 'Оборудование' |
		И в таблице "ТаблицаПараметров" я выбираю текущую строку
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровЗначениеВФорме"
		Тогда открылось окно 'Выбор типа данных'
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно 'Оборудование'
		И в таблице "Список" я перехожу к строке:
			| 'Марка'                       | 'Модель'                                              | 'Наименование'           | 'Организация'   | 'Подразделение' | 'Собственное' | 'Технологическая группа' |
			| 'Корпус основного обогащения' | 'Оборудование дробления, измельчения и классификации' | '4.Плавильное отделение' | 'Золото Сибири' | 'ЗИФ'           | 'Да'          | 'Для переработки руды'   |
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '_Золото (Расчетные показатели) *'
		И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		И в таблице "ТаблицаПараметров" я перехожу к строке:
			| 'Имя'        | 'Тип'                 |
			| 'Показатель' | 'Показатели качества' |
		И в таблице "ТаблицаПараметров" я выбираю текущую строку
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровЗначениеВФорме"
		Тогда открылось окно 'Выбор типа данных'
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно 'Показатели качества'
		И в таблице "Список" я перехожу к строке:
			| 'Единица измерения' | 'Код'       | 'Метод усреднения'   | 'Наименование' | 'Наименование краткое' | 'Представление в формуле' | 'Расчетный' | 'Тип значения' | 'Учет оборотов' | 'Хранить остатки' |
			| '%'                 | '000000026' | 'Среднее взвешенное' | 'Au, %'        | 'Au, %'                | 'AU%'                     | 'Нет'       | 'Число'        | 'Нет'           | 'Нет'             |
		И в таблице "Список" я активизирую поле с именем "НаименованиеКраткое"
		И в таблице "Список" я активизирую поле с именем "Наименование"
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '_Золото (Расчетные показатели) *'
		И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		И в таблице "ТаблицаПараметров" я перехожу к строке:
			| 'Имя'                        | 'Тип'        |
			| 'ПоказательПроцентаУчастков' | 'Показатели' |
		И в таблице "ТаблицаПараметров" я выбираю текущую строку
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровЗначениеВФорме"
		Тогда открылось окно 'Выбор типа данных'
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно 'Показатели'
		И в таблице  "Список" я перехожу на один уровень вниз
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '_Золото (Расчетные показатели) *'
		И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		И в таблице "ТаблицаПараметров" я перехожу к строке:
			| 'Имя'     | 'Тип'                      |
			| 'Фабрика' | 'Перерабатывающие фабрики' |
		И в таблице "ТаблицаПараметров" я выбираю текущую строку
		И в таблице "ТаблицаПараметров" я нажимаю кнопку выбора у реквизита с именем "ТаблицаПараметровЗначениеВФорме"
		Тогда открылось окно 'Выбор типа данных'
		И в таблице "" я выбираю текущую строку
		Тогда открылось окно 'Перерабатывающие фабрики'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно '_Золото (Расчетные показатели) *'
		И в таблице "ТаблицаПараметров" я завершаю редактирование строки
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '_Золото (Расчетные показатели) *' в течение 20 секунд
		

		