﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария>
И В командном интерфейсе я выбираю 'Склады и отгрузка' 'Поступления вагонов'
Тогда открылось окно 'Поступления вагонов'
И в таблице "Список" я перехожу к строке:
	| 'Дата'       | 'Номер'       | 'Общий вес (нетто)' | 'Организация'      | 'Ответственный'           | 'Поставщик'          | 'Станция' | 'Статус'    | 'Тип маршрута' |
	| '01.01.2020' | 'РПЦУ-000001' | '683,000'           | 'Разрез "Полевой"' | 'Федоров Виктор Петрович' | 'Основной поставщик' | 'Далекая' | 'Поступили' | 'Загруженный'  |
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Поступление вагонов РПЦУ-000001 от *'
И я нажимаю на кнопку с именем 'ПодменюСоздатьНаОснованииОбычное_Авто_A84B8525E5BD6BEB4ACA4C3618EF3F0B'
Тогда открылось окно 'Качество номенклатуры в поступивших вагонах (создание)'
И я нажимаю кнопку выбора у поля с именем "Смена"
Тогда открылось окно 'Смены'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Качество номенклатуры в поступивших вагонах (создание) *'
И я нажимаю кнопку выбора у поля с именем "ПаспортКачества"
Тогда открылось окно 'Паспорта качества'
И в таблице "Список" я выбираю текущую строку
Когда открылось окно 'Качество номенклатуры в поступивших вагонах (создание) *'
И я перехожу к закладке с именем "ГруппаВагоны"
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
Когда открылось окно 'Поступление вагонов РПЦУ-000001 от *'
И Я закрываю окно 'Поступление вагонов РПЦУ-000001 от *'

И я закрываю все окна клиентского приложения
