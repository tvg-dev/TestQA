#language: ru

@tree
@ExportScenarios

Функционал: Исследовательские лаборатории

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06013 создаем исследовательские лаборатории
И я закрываю все окна клиентского приложения
Если не существует элемент справочника "гдпИсследовательскиеЛаборатории" с "Наименование" равным "_Лаборатория" Тогда
		* Создание элемента справочника _Исследовательские лаборатории
			И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
			Тогда открылось окно 'Настройки и справочники'
			И я нажимаю на кнопку с именем 'ОткрытьСправочникЛабораторий'
			Тогда открылось окно 'Исследовательские лаборатории'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Исследовательские лаборатории (создание)'
			И в поле с именем 'Наименование' я ввожу текст '_Лаборатория'
			И из выпадающего списка с именем "ТипЛаборатории" я выбираю точное значение 'Собственная'
			И я нажимаю кнопку выбора у поля с именем "Контрагент"
			Тогда открылось окно 'Структура предприятия'
			И в таблице "Список" я перехожу к строке:
				| 'Наименование' |
				| '_Разрез'      |
			И в таблице "Список" я выбираю текущую строку
			Тогда открылось окно 'Исследовательские лаборатории (создание) *'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Исследовательские лаборатории (создание) *' в течение 20 секунд
	
	

