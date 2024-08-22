﻿#language: ru

@tree
@БыстрыеПроверки

Функционал: проверка формы элемента справочника Организации 

Как Тестировщик я хочу
проверить доступность вкладок налоги и валюты 
чтобы убедиться, что пользователь не ошибется при вводе данных   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

//Сценарий: проверка формы элемента
//* Открытие элемента
//	И В командном интерфейсе я выбираю "Справочники" "Организации"
//	Тогда открылось окно "Организации"
//	И я нажимаю на кнопку с именем 'FormCreate'
//	Тогда открылось окно "Организация (создание)"
//* Установка галочки Наша компания и проверка присутствия на форме Валют и Налогов
//	И я устанавливаю флаг с именем 'OurCompany'
//	И элемент формы "Валюты" присутствует на форме
//	И элемент формы "Вид налога" присутствует на форме
//* Снятие галочки Наша компания и проверка отсутствия на форме Валют и Налогов
//	И я снимаю флаг с именем 'OurCompany'
//	И элемент формы "Валюты" существует и невидим на форме
//	И элемент формы "Вид налога" существует и невидим на форме
//
//
//Сценарий: проверка функциональной опции Использовать организации
//	И Я устанавливаю в константу "UseCompanies" значение "False"
//	Когда В панели разделов я выбираю "Продажи"
//	Тогда открылось окно "Организации"
//	И я перехожу к следующему реквизиту
//	И В панели функций я выбираю "Заказы покупателей"
//	Тогда открылось окно "Заказы покупателей"
//	И я нажимаю на кнопку с именем 'FormCreate'
//	И элемент формы "Организация" отсутствует на форме
//
//Сценарий: проверка заполнения справочника Организации
//	И В командном интерфейсе я выбираю "Справочники" "Организации"
//	Тогда открылось окно "Организации"
//	И я нажимаю на кнопку с именем 'FormCreate'
//	Тогда открылось окно "Организация (создание)"
//	И в поле с именем 'Description_ru' я ввожу текст "Тестовый контрагент"
//	И из выпадающего списка с именем 'Type' я выбираю точное значение "Организация"
//	И я нажимаю на кнопку "Записать"
//	Тогда элемент формы с именем 'Type' стал равен "Организация"
//	Тогда элемент формы с именем 'Description_ru' стал равен "Тестовый контрагент"
//	И я нажимаю на кнопку "Записать и закрыть"
//	И в таблице 'List' я перехожу к строке:
//	|'Наименование'|
//	|'Тестовый контрагент'|
//	И в таблице 'List' я выбираю текущую строку	
//	Тогда элемент формы с именем 'Type' стал равен "Организация"
//	Тогда элемент формы с именем 'Description_ru' стал равен "Тестовый контрагент"
//	И я закрываю все окна клиентского приложения


Сценарий: проверка расположения элементов формы Организации
	И В командном интерфейсе я выбираю "Справочники" "Организации"	
	Тогда открылось окно "Организации"
	И я нажимаю на кнопку с именем 'FormCreate'
	@screenshot
	Тогда открылось окно "Организация (создание)"		

		
		
	
		
		
