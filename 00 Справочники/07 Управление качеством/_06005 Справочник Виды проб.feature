#language: ru

@tree
@ExportScenarios

Функционал: Виды проб

Как Полные права
Я хочу ввести нормативно справочную информацию
Чтобы использовать для ввода документов   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _06005 создаем виды проб
И я закрываю все окна клиентского приложения
Если не существует элемент справочника "гдпВидыПроб" с "Наименование" равным "_Проба ОТК" Тогда
	* Создание вида проб _Проба ОТК
		И В командном интерфейсе я выбираю 'Управление качеством' 'Настройки и справочники'
		Тогда открылось окно 'Настройки и справочники'
		И я нажимаю на кнопку с именем 'ОткрытьВидыПроб'
		Тогда открылось окно 'Виды проб'
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Вид проб (создание)'
		И в поле с именем 'Наименование' я ввожу текст '_Проба ОТК'
		И в поле с именем 'Префикс' я ввожу текст '_Р'
		И я устанавливаю флаг с именем 'АвтоматическаяГенерацияСерийКачества'
		И я устанавливаю флаг с именем 'УчетЛабораторныхНомеровПроб'
		И я нажимаю на кнопку с именем 'ФормаЗаписать'	
		Тогда открылось окно '_Проба ОТК (Вид проб)'
		И я нажимаю на кнопку с именем 'РедактироватьШаблонКодаСерииКачества'
		Тогда открылось окно 'Редактирование формулы'
		И в поле с именем 'Формула' я ввожу текст '             ([Организация.Префикс] + \" \" + [ВидПробы.Префикс] + \" \" +  Формат([РезультатИспытаний.Дата] , \"ДФ=\'yyyy\'\"))'
		И в поле с именем 'Формула' я ввожу текст '([Организация.Префикс] + \" \" + [ВидПробы.Префикс] + \" \" +  Формат([РезультатИспытаний.Дата] , \"ДФ=\'yyyy\'\"))'
		И я нажимаю на кнопку с именем 'Проверить'
		И я нажимаю на кнопку с именем 'ОК'
		Тогда открылось окно '_Проба ОТК (Вид проб)'
		И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
		И я жду закрытия окна '_Проба ОТК (Вид проб)' в течение 20 секунд
		