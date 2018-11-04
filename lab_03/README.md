# Лабораторная работа №3

## SQL модули

---

### Введение

```
Язык SQL в своем оригинальном виде не являлся привычным процедурным языком
программирования (то есть не предоставлял средств для построения циклов, ветвлений и т. д.).
По этой причине разные производители вводили различные процедурные расширения языка
```

### SQL. Microsoft SQL Server поддерживает следующие программируемые возможности:

• Stored procedures (Хранимые процедуры),

• Functions (Функции),

• Triggers (Триггеры),

• Assemblies (Сборки),

• Types (Типы данных),

• Rules (Правила),

• Default (Умолчания).

Целью данной лабораторной работы является изучение трех видов программируемых
возможностей Microsoft SQL Server: хранимых процедур, функций и триггеров. В дальнейшем
эти программируемые возможности будут называться SQL модулями.
Рекомендуемые ресурсы для выполнения лабораторной работы
Функции T-SQL:

* Определяемые пользователем функции (компонент Database Engine)
http://msdn.microsoft.com/ru-ru/library/ms189593.aspx

* CREATE FUNCTION (Transact-SQL)
http://msdn.microsoft.com/ru-ru/library/ms186755.aspx

Хранимые процедуры T-SQL:

* Хранимые процедуры (компонент Database Engine)
http://msdn.microsoft.com/ru-ru/library/ms190782.aspx

* CREATE PROCEDURE (Transact-SQL)
http://msdn.microsoft.com/ru-ru/library/ms187926.aspx

Триггеры DML T-SQL:

* Триггеры DML
http://msdn.microsoft.com/ru-ru/library/ms191524.aspx

* CREATE TRIGGER (Transact-SQL)
http://msdn.microsoft.com/ru-ru/library/ms189799.aspx

* Использование таблиц inserted и deleted
http://msdn.microsoft.com/ru-ru/library/ms191300.aspx

* Применение триггеров INSTEAD OF
http://msdn.microsoft.com/ru-ru/library/ms179288.aspx

* UPDATE() (Transact-SQL)
http://msdn.microsoft.com/ru-ru/library/ms187326.aspx

* COLUMNS_UPDATED() (Transact-SQL)
http://msdn.microsoft.com/ru-ru/library/ms186329.aspx

Курсоры T-SQL:

* Курсоры (компонент Database Engine)
http://msdn.microsoft.com/ru-ru/library/ms191179.aspx

* DECLARE CURSOR (Transact-SQL)
http://msdn.microsoft.com/ru-ru/library/ms180169.aspx

#### Теоретическая часть

Хранимая процедура - это сохраненная совокупность инструкций языка T-SQL или ссылка на
метод среды CLR платформы Microsoft .NET Framework, которая может принимать и возвращать
предоставленные пользователем параметры.

Функция - это подпрограмма языка T-SQL или ссылка на метод среды CLR платформы Microsoft
.NET Framework, которая возвращает значение. Функция не должна (не может) выполнять
действия, изменяющие состояние базы данных. Она должна быть (может быть) вызвана из
запроса.

Триггер - это особая разновидность хранимой процедуры, выполняемая автоматически при
возникновении события на сервере базы данных. Различают триггеры DDL и DML. Событиями
DML являются инструкции INSERT, UPDATE или DELETE, применяемые к таблице или
представлению. Событиями DDL прежде всего являются инструкциям CREATE, ALTER, DROP
и вызовы некоторых системных хранимых процедур, которые выполняют схожие операции.

---

## Задание
### Разработать и тестировать 10 модулей:

#### A. Четыре функции

1. Скалярную функцию

2. Подставляемую табличную функцию

3. Многооператорную табличную функцию

4. Рекурсивную функцию или функцию с рекурсивным ОТВ

#### B. Четыре хранимых процедуры

1. Хранимую процедуру без параметров или с параметрами

2. Рекурсивную хранимую процедуру или хранимую процедур с рекурсивным ОТВ

3. Хранимую процедуру с курсором

4. Хранимую процедуру доступа к метаданным

#### C. Два DML триггера

1. Триггер AFTER

2. Триггер INSTEAD OF