﻿#language: ru

@tree

Функционал: заказ поставщику

Как Менеджер по закупкам я хочу
зафиксировать заказанный поставщику товар 
чтобы проанализировать разницу между тем что была заказано и фактически доставлено  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0401 подготовительный сценарий (заказ поставщику)
	Когда экспорт основных данных

Сценарий: _0402 проверка заполнения цены из соглашения
* Заполнение документа Заказ поставщику
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ поставщику (создание)"
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	И в таблице 'List' я перехожу к строке:
	|'Наименование'|
	|'Поставщик 1 (1 соглашение)'|
	И в таблице 'List' я выбираю текущую строку
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
	И в таблице 'ItemList' я нажимаю на кнопку с именем 'ItemListAdd'
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListItem'
	И в таблице 'ItemList' я нажимаю кнопку выбора у реквизита с именем 'ItemListItem'
	Тогда открылось окно "Номенклатура"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            | "Ссылка"                  |
		| "2"   | "Товар без характеристик" | "Товар без характеристик" |
	И в таблице 'List' я выбираю текущую строку
	И в таблице 'ItemList' я завершаю редактирование строки
* Проверка заполнения цены из соглашения
	Тогда таблица 'ItemList' содержит строки:
		| 'N' | 'Номенклатура'            | 'Характеристика'          | 'Количество' | 'Вид цены'          | 'Ед. изм.' | 'Цена'   |
		| '1' | 'Товар без характеристик' | 'Товар без характеристик' | '1,000'      | 'Цена поставщика 1' | 'шт'       | '150,00' |
* Изменение вида цены и проверка его перезаполнения при перевыборе соглашения
	И в таблице 'ItemList' я выбираю текущую строку
	И в таблице 'ItemList' я нажимаю кнопку выбора у реквизита с именем 'ItemListPriceType'
	И в таблице 'List' я перехожу к строке:
		| "Валюта" | "Код" | "Наименование"      | "Ссылка"            |
		| "USD"    | "4"   | "Цена поставщика 2" | "Цена поставщика 2" |
	И в таблице 'List' я выбираю текущую строку
	Тогда таблица 'ItemList' содержит строки:
		| 'N' | 'Номенклатура'            | 'Характеристика'          | 'Количество' | 'Вид цены'          | 'Ед. изм.' | 'Цена' |
		| '1' | 'Товар без характеристик' | 'Товар без характеристик' | '1,000'      | 'Цена поставщика 2' | 'шт'       | ''     |
	И я нажимаю кнопку выбора у поля с именем 'Agreement'
	И в таблице 'List' я перехожу к строке:
	|'Наименование'|
	|'Соглашение с поставщиком 1'|
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Табличная часть товаров будет обновлена"
	И я нажимаю на кнопку с именем 'FormOK'
	Тогда таблица 'ItemList' содержит строки:
		| 'N' | 'Номенклатура'            | 'Характеристика'          | 'Количество' | 'Вид цены'          | 'Ед. изм.' | 'Цена'   |
		| '1' | 'Товар без характеристик' | 'Товар без характеристик' | '1,000'      | 'Цена поставщика 1' | 'шт'       | '150,00' |
	И я закрываю все окна клиентского приложения
	
		
	
		
//Сценарий: тест
//* Заполнение документа Заказ поставщику
//	И я закрываю все окна клиентского приложения
//	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseOrder"
//	И я нажимаю на кнопку с именем 'FormCreate'
//	Тогда открылось окно "Заказ поставщику (создание)"
//	И я нажимаю кнопку выбора у поля с именем 'Partner'
//	И в таблице 'List' я перехожу к строке:
//	|'Наименование'|
//	|'Поставщик 1 (1 соглашение)'|
//	И в таблице 'List' я выбираю текущую строку
//	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
//	И в таблице 'ItemList' я нажимаю на кнопку с именем 'ItemListAdd'
//	И я нажимаю сочетание клавиш "Enter"
//	И в таблице 'ItemList' из выпадающего списка с именем 'ItemListItem' я выбираю по строке "товар без характеристик"
//	И я нажимаю сочетание клавиш "F9"
//	И в таблице 'ItemList' я перехожу к следующей ячейке
//	И в таблице "ItemList" я устанавливаю флаг "Отмена"
//	И Проверяю шаги на Исключение
//	|'И в таблице 'ItemList' я нажимаю кнопку выбора у реквизита 'Номенклатура''|
//	Тогда таблица 'ItemList' содержит строки:
//		| 'N' | 'Номенклатура партнера' | 'Номенклатура'            | 'Характеристика'          | 'Количество' | 'Вид цены'          | 'Ед. изм.' | 'Цена'   | 'НДС' | 'Сумма скидки' | 'Не рассчитывать строки' | 'Сумма налогов' | 'Сумма без налогов' | 'Общая сумма' | 'Склад'                         | 'Дата выполнения' | 'Статья расходов' | 'Центр прибыли/убытков' | 'Основание закупки' | 'Заказ покупателя' | 'Заявка на обеспечение товара' | 'Отмена' | 'Причина отмены' | 'Комментарий' |
//		| '1' | ''                      | 'Товар без характеристик' | 'Товар без характеристик' | '1,000'      | 'Цена поставщика 1' | 'шт'       | '150,00' | '20%' | ''             | 'Нет'                    | '25,00'         | '125,00'            | '150,00'      | 'Склад 1 (с контролем остатка)' | ''                | ''                | ''                      | ''                  | ''                 | ''                             | 'Нет'    | ''               | ''            |
//		| '2' | ''                      | 'Товар без характеристик' | 'Товар без характеристик' | '2,000'      | 'Цена поставщика 1' | 'шт'       | '150,00' | '20%' | ''             | 'Нет'                    | '50,00'         | '250,00'            | '300,00'      | 'Склад 1 (с контролем остатка)' | ''                | ''                | ''                      | ''                  | ''                 | ''                             | 'Нет'    | ''               | ''            |
//	Тогда в таблице 'ItemList' количество строк "равно" 2
//	И в таблице 'ItemList' я активизирую поле с именем 'ItemListQuantity'
//	И в таблице 'ItemList' я нажимаю на кнопку с именем 'ItemListSortListDesc'
//	И в таблице "List" текущего окна я устанавливаю сортировку по колонке "Partner" по возрастанию (расширение)
//	И таблица "List" содержит строки из макета "Макет" по шаблону
	
		
		
		
		
	
	

