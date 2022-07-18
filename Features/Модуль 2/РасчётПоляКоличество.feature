﻿#language: ru

@tree

Функционал: расчёт колонки Количество

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: расчёт колонки количество
* Заполняю реквизиты заказа
	И запонение шапки документа заказ

* заполнение таблицы товаров
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000031' | 'Босоножки'    |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '15'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки

	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000020' | 'Валенки'      |
	И в таблице "Список" я выбираю текущую строку
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '11'
	И я перехожу к следующему реквизиту
	И в таблице "Товары" я завершаю редактирование строки

	И я нажимаю на кнопку с именем 'ФормаЗаписать'

* Проверяю расчёта поля Количество(Итого)
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '26'
