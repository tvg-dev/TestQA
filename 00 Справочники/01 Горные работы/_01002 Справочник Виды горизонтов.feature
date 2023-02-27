﻿#language: ru

@tree
@ExportScenarios

Функционал: Виды горизонтов

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _01002 Создаем виды горизонтов
Если не существует элемент справочника "гдпВидыГоризонтов" с "Наименование" равным "_Рабочий" Тогда
	Тогда Я открываю основную форму списка справочника "гдпВидыГоризонтов"
	Когда открылось окно 'Виды горизонтов'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Вид горизонта (создание)'
	И в поле с именем 'Наименование' я ввожу текст '_Рабочий'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Вид горизонта (создание) *' в течение 20 секунд
	Тогда открылось окно 'Виды горизонтов'
		
	
		