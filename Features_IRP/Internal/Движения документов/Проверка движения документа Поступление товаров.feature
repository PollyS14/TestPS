﻿#language: ru

@tree
@ДвиженияДокументов

Функционал: проверка движения документа Поступление товаров

Как Тестировщик я хочу
проверить движения документа Поступления товаров
чтобы убедиться, что документ делает движения по нужным регистрам  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: _0501 подготовительный сценарий (движения документа Поступления товаров)
	Когда экспорт основных данных
	Когда загрузка документа Поступление товаров и услуг
//	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
//	Тогда в таблице 'List' я выделяю все строки
//	И в таблице "List" я нажимаю на кнопку с именем 'ListContextMenuPost'
//	Тогда не появилось окно предупреждения системы
	И я выполняю код встроенного языка на сервере
		|Документы.PurchaseInvoice.НайтиПоНомеру(1001).ПолучитьОбъект().Записать(РежимЗаписиДокумента.Проведение)|


Сценарий: _0502 проверка движений документов Поступление товаров по регистру R1001 Закупки
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице 'List' я перехожу к строке
	| 'Номер' |
	| '1 001' |
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно "Движения документа"
	И из выпадающего списка с именем 'FilterRegister' я выбираю точное значение "R1001 Закупки"
	И я нажимаю на кнопку с именем 'GenerateReport'
	Тогда табличный документ 'ResultTable' равен:
		| 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Движения документа по регистрам'                          | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| 'Регистр  "R1001 Закупки"'                                 | ''                    | ''           | ''      | ''                  | ''             | ''                       | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | ''                  |
		| ''                                                         | 'Period'              | 'Resources'  | ''      | ''                  | ''             | 'Dimensions'             | ''                          | ''                             | ''       | ''                                                         | ''                        | ''                                     | 'Attributes'        |
		| ''                                                         | ''                    | 'Количество' | 'Сумма' | 'Сумма без налогов' | 'Сумма скидки' | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Инвойс'                                                   | 'Характеристика'          | 'Ключ строки'                          | 'Отложенный расчет' |
		| ''                                                         | '21.08.2024 19:15:12' | '1'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Услуга'                  | '429647a6-e380-413a-8050-8b72678a5180' | 'Да'                |
		| ''                                                         | '21.08.2024 19:15:12' | '1'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Услуга'                  | '429647a6-e380-413a-8050-8b72678a5180' | 'Нет'               |
		| ''                                                         | '21.08.2024 19:15:12' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Услуга'                  | '429647a6-e380-413a-8050-8b72678a5180' | 'Нет'               |
		| ''                                                         | '21.08.2024 19:15:12' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Услуга'                  | '429647a6-e380-413a-8050-8b72678a5180' | 'Нет'               |
		| ''                                                         | '21.08.2024 19:15:12' | '1'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Услуга'                  | '429647a6-e380-413a-8050-8b72678a5180' | 'Нет'               |
		| ''                                                         | '21.08.2024 19:15:12' | '2'          | ''      | ''                  | ''             | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Товар без характеристик' | '51323a3d-c69b-49db-a938-6ef4efdb2b19' | 'Да'                |
		| ''                                                         | '21.08.2024 19:15:12' | '2'          | '171,8' | '143,17'            | ''             | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Товар без характеристик' | '51323a3d-c69b-49db-a938-6ef4efdb2b19' | 'Нет'               |
		| ''                                                         | '21.08.2024 19:15:12' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Товар без характеристик' | '51323a3d-c69b-49db-a938-6ef4efdb2b19' | 'Нет'               |
		| ''                                                         | '21.08.2024 19:15:12' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Товар без характеристик' | '51323a3d-c69b-49db-a938-6ef4efdb2b19' | 'Нет'               |
		| ''                                                         | '21.08.2024 19:15:12' | '2'          | '200'   | '166,67'            | ''             | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | 'Товар без характеристик' | '51323a3d-c69b-49db-a938-6ef4efdb2b19' | 'Нет'               |
	И я закрываю все окна клиентского приложения



Сценарий: _0503 проверка движений документов Поступление товаров по регистру R1021 Взаиморасчеты с поставщиками		
	И я закрываю все окна клиентского приложения
	Дано Я открываю навигационную ссылку "e1cib/list/Document.PurchaseInvoice"
	И в таблице 'List' я перехожу к строке
	| 'Номер' |
	| '1 001' |
	И я нажимаю на кнопку с именем 'FormReportDocumentRegistrationsReportRegistrationsReport'
	Тогда открылось окно "Движения документа"
	И из выпадающего списка с именем 'FilterRegister' я выбираю точное значение "R1021 Взаиморасчеты с поставщиками"
	И я нажимаю на кнопку с именем 'GenerateReport'	
	Тогда табличный документ 'ResultTable' равен:
		| 'Поступление товаров и услуг 1 001 от 21.08.2024 19:15:12' | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Движения документа по регистрам'                          | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| 'Регистр  "R1021 Взаиморасчеты с поставщиками"'            | ''            | ''                    | ''          | ''                       | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | ''                  | ''                             |
		| ''                                                         | 'Record type' | 'Period'              | 'Resources' | 'Dimensions'             | ''                          | ''                             | ''       | ''            | ''            | ''                           | ''                   | 'Attributes'        | ''                             |
		| ''                                                         | ''            | ''                    | 'Сумма'     | 'Организация'            | 'Структурное подразделение' | 'Вид мультивалютной аналитики' | 'Валюта' | 'Контрагент'  | 'Партнер'     | 'Соглашение'                 | 'Документ основание' | 'Отложенный расчет' | 'Закрытие авансов поставщиков' |
		| ''                                                         | 'Приход'      | '21.08.2024 19:15:12' | ''          | 'Собственная компания 1' | ''                          | 'В валюте бюджетирования'      | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Да'                | ''                             |
		| ''                                                         | 'Приход'      | '21.08.2024 19:15:12' | '343,6'     | 'Собственная компания 1' | ''                          | 'В локальной валюте страны'    | 'EUR'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '21.08.2024 19:15:12' | '400'       | 'Собственная компания 1' | ''                          | 'ru наименование не заполнено' | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '21.08.2024 19:15:12' | '400'       | 'Собственная компания 1' | ''                          | 'В валюте отчетности'          | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |
		| ''                                                         | 'Приход'      | '21.08.2024 19:15:12' | '400'       | 'Собственная компания 1' | ''                          | 'Валюта соглашения, USD'       | 'USD'    | 'Поставщик 2' | 'Поставщик 2' | 'Соглашение с поставщиком 2' | ''                   | 'Нет'               | ''                             |		
	И я закрываю все окна клиентского приложения
	
	
