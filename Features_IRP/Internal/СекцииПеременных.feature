﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Переменные:

импорт "Переменные.feature"

//Сценарий: открытие формы списка Поступлений товаров и услуг
//	И В командном интерфейсе я выбираю "ЗаголовокПодсистемаЗакупок" "ЗаголовокФормыСпискаПоступления"

//Сценарий: проверка суммы документа 
//	И у элемента формы с именем 'ItemListTotalTotalAmount' текст редактирования стал равен 'ПроверяемыеЗначения.СуммаДокументаПоступления.Значение'

	
//Сценарий: проверка итоговой суммы отчета по Закупкам
//	И в табличном документе 'Result' я перехожу к ячейке "ИтоговаяСуммаОтчетаЗакупки"


Сценарий: проверка сообщения
	И я запоминаю значение выражения 'StrTemplate($СообщениеШтрихкодНеНайден$, "123")' в переменную "ИмяПеременной2"
	Дано В последнем сообщении TestClient есть строка "$ИмяПеременной2$"
	
	

