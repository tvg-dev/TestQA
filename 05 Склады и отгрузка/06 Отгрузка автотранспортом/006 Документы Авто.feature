﻿#language: ru

@tree

Функционал: Документы Авто

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание документов для "Отгрузка атвтотранспортом"
И 050201 Создаем документ Условие отгрузки - Авто
И 050202 Создаем документ Разрешение на отгрузку продукции_Авто
И 050601 Создаем отправку Автотранспортом
И 050605 Создаем отгрузку Автотранспортом
И 050606 Создаем перемещение Автотранспортом
И 050603 Создаем поставку Автотранспортом
И 050607 Создаем поступления Автотранспортом за период
И 050203 Создаем Разрешение на возврат автотранспортом
И 050604 Создаем Возврат продукции автотранспортом
И 050602 Создаем Корректировку отгрузки продукции автотранспортом