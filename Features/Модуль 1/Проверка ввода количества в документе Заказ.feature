﻿#language: ru

@tree

Функционал: Ввода количества в документе Заказ

Как Менеджер по заказам я хочу
изменять количество в документе заказа
чтобы иметь возможность указывать нужное количество товаров в заказе

Контекст:
Дано Я открыл новый сеанс TestClient или подключил уже существующий


Сценарий: Изменение количества в документе заказа
//Создание документа
* Открытие формы создания документа
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
	Тогда открылось окно 'Заказы товаров'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Заказ (создание)'
* Заполнение шапки документа
	И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "Товары"'
	И из выпадающего списка с именем "Покупатель" я выбираю точное значение 'Мосхлеб ОАО'
	И из выпадающего списка с именем "Склад" я выбираю точное значение 'Малый'
	И из выпадающего списка с именем "Валюта" я выбираю точное значение 'Рубли'
* Заполнение табличной части товаров
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000026' | 'Молоко'       |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
* Проверка ввода колчиества в табличной части для одного товара	
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5'
	И в таблице "Товары" я завершаю редактирование строки
	И таблица "Товары" содержит строки:
		| 'Товар'  | 'Количество' |
		| 'Молоко' | '5'          |

	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '8'
	И в таблице "Товары" я завершаю редактирование строки
	И таблица "Товары" содержит строки:
		| 'Товар'  | 'Количество' |
		| 'Молоко' | '8'          |

* Проверка ввода колчиества в табличной части для другого товара	
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыТовар"
	Тогда открылось окно 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000021' | 'Масло'        |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '4'
	И таблица "Товары" содержит строки:
		| 'Товар' | 'Количество' |
		| 'Масло' | '4'          |

	И в таблице "Товары" я перехожу к строке
        | 'Товар' |
        | 'Масло' |
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '-5'
	И в таблице "Товары" я завершаю редактирование строки
	И таблица "Товары" содержит строки:
		| 'Товар' | 'Количество' |
		| 'Масло' | '-5'         |
// Нет ошибки на отрицательное значение

* Запись и проведение документа
	И в таблице "Товары" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
	Тогда открылось окно 'Заказ * от *'
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно 'Заказ * от *'
	