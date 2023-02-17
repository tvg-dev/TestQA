#language: ru

Функционал: Ввод элементов справочника виды номенклатуры

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

    # Я создаю вид номенклатуры с харктеристикой
        И В командном интерфейсе я выбираю 'НСИ и администрирование' 'Классификаторы номенклатуры'
        Тогда открылось окно 'Классификаторы номенклатуры'
        И я нажимаю на кнопку 'Виды номенклатуры'
        Тогда открылось окно 'Виды номенклатуры'
        И я нажимаю на кнопку с именем 'Создать'
        Тогда открылось окно 'Вид номенклатуры (создание)'
        И в поле 'Наименование' я ввожу текст 'С характеристикой'
        И я изменяю флаг 'Характеристики:'
        И из выпадающего списка "Характеристики" я выбираю точное значение 'Общие для этого вида номенклатуры'
        И я нажимаю на кнопку 'Записать'
        Тогда открылось окно 'С характеристикой (Вид номенклатуры)'
        И Я закрываю окно 'С характеристикой (Вид номенклатуры)'
        Тогда открылось окно 'Виды номенклатуры'
    # И добавляю вид номенклатуры без характеристики
        И я нажимаю на кнопку с именем 'Создать'
        Тогда открылось окно 'Вид номенклатуры (создание)'
        И в поле 'Наименование' я ввожу текст 'Без характеристики'
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Вид номенклатуры (создание) *' в течение 5 секунд
        Тогда открылось окно 'Виды номенклатуры'
    # И добавляю вид номенклатуры с характеристикой и серией
        И я нажимаю на кнопку с именем 'Создать'
        Тогда открылось окно 'Вид номенклатуры (создание)'
        И в поле 'Наименование' я ввожу текст 'С характеристикой и серией'
        И я изменяю флаг 'Характеристики:'
        И из выпадающего списка "Характеристики" я выбираю точное значение 'Общие для этого вида номенклатуры'
        И я изменяю флаг 'Серии:'
        И из выпадающего списка "ВариантЗаданияНастроекСерий" я выбираю точное значение 'Настроены для этого вида номенклатуры'
        И я перехожу к закладке "Изменить"
        И из выпадающего списка "Серия идентифицирует" я выбираю точное значение 'Партия товаров'
        И я перехожу к закладке "Изменить"
        И я нажимаю кнопку выбора у поля "ПолитикаУчетаСерий2"
        Тогда открылось окно 'Политики учета серий'
        И в таблице "Список" я перехожу к строке:
            | Наименование              |
            | Справочный учет по сериям |
        И я нажимаю на кнопку с именем 'ФормаВыбрать'
        Тогда открылось окно 'Вид номенклатуры (создание) *'
        И я нажимаю на кнопку 'Записать и закрыть'
        И я жду закрытия окна 'Вид номенклатуры (создание) *' в течение 5 секунд


