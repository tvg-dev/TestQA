#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: <описание сценария>
Если не существует элемент справочника "Сотрудники" с "ФизическоеЛицо" равным "_Иванов" Тогда
	И В командном интерфейсе я выбираю 'Сотрудники' 'Сотрудники'
	Тогда открылось окно 'Сотрудники'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Сотрудник (создание)'
	И из выпадающего списка с именем "ГоловнаяОрганизация" я выбираю точное значение '_Разрез ООО'
	И в поле с именем 'ФИО' я ввожу текст 'Иванов'
	И я перехожу к следующему реквизиту
