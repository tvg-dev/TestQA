﻿#language: ru

@tree

Функционал: Создание вида цен _Основная 

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _00010 Создание тестового элемента справочника Виды цен
Если не существует элемент справочника "ВидыЦен" с "Наименование" равным "_Основная" Тогда
	И В командном интерфейсе я выбираю 'Склады и отгрузка' 'Виды цен'
	Тогда открылось окно 'Виды цен '
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Вид цены (создание)'
	И в поле с именем 'Наименование' я ввожу текст '_Основная'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Вид цены (создание)' в течение 20 секунд
