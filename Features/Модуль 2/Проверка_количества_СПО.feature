﻿#language: ru

@tree

Функционал: проверка расчета итогового количества при изменении количества номенклатуры

Как Администратор я хочу
проверить корректность расчета общего количества номенклатуры документа Заказ
чтобы иметь представление о планируемых объемах поставки   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Заказ (создание)"
Сценарий: в документе Заказ добавляется номенклатура, а затем меняется ее количество
* Проверка заполнения реквизитов шапки документа Заказ
	И проверка появления ревизита "Валюта взаиморасчета для организации" для организации с Валютным учетом
	И проверка заполнения реквизита "Вид цены"
	И проверка заполнения склада и статуса
* Добавление номенклатуры в документ
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Хлеб"
	И я перехожу к следующему реквизиту
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "20"
	И в таблице 'Товары' я завершаю редактирование строки
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' из выпадающего списка с именем 'ТоварыТовар' я выбираю точное значение "Масло"
	И я перехожу к следующему реквизиту
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "100"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка соответствия ожидаемого количества количеству рассчитанному
	Тогда элемент формы с именем 'ТоварыИтогКоличество' стал равен "120"	
* Изменение количества номенклатуры
	И в таблице 'Товары' я перехожу к строке:
		| "Количество" | "Товар" |
		| "20"         | "Хлеб"  |
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
	И в таблице 'Товары' я выбираю текущую строку
	И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "40"
	И в таблице 'Товары' я завершаю редактирование строки
* Проверка соответствия ожидаемой суммы сумме рассчитанной при изменении количества
	Тогда элемент формы с именем 'ТоварыИтогКоличество' стал равен "140"
* Удаление строки из табличной части	
	И в таблице 'Товары' я активизирую поле с именем 'ТоварыТовар'
	И в таблице 'Товары' я удаляю строку
* Проверка соответствия ожидаемой суммы сумме рассчитанной при изменении цены и количества при удалении номенклатуры
	Тогда элемент формы с именем 'ТоварыИтогКоличество' стал равен "100"	
		

	
	

	