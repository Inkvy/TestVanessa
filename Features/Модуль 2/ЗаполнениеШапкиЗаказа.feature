﻿#language: ru
@ExportScenarios
@tree

Функционал: запонение шапки документа Заказ

Как Пользователь я хочу
заполнить шапку документа Заказ
чтобы далее создать документ заказа товара

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И подготовка данных для заказа

Сценарий: запонение шапки документа заказ
	И В командном интерфейсе я выбираю 'Продажи' 'Заказ'
	И в поле с именем 'Организация' я ввожу текст 'ООО \"Товары\"'
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары" (000000002)'
	И я перехожу к следующему реквизиту
	И в поле с именем 'Покупатель' я ввожу текст 'Магазин \"Продукты\"'
	И из выпадающего списка с именем "Покупатель" я выбираю по строке 'Магазин \"Продукты\"'
	И в поле с именем 'Склад' я ввожу текст 'Малый'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый (000000001)'
	И я перехожу к следующему реквизиту
	И я нажимаю кнопку выбора у поля с именем "ВидЦен"
	И из выпадающего списка с именем "ВидЦен" я выбираю по строке 'Оптовая'
	И я нажимаю кнопку выбора у поля с именем "Валюта"
	И из выпадающего списка с именем "Валюта" я выбираю по строке 'Рубли'
	// И я нажимаю на кнопку с именем 'ФормаЗаписать'
		