# Лабораторная работа № 4

## SQL CLR

### Задание

#### Создать, развернуть и протестировать 6 объектов SQL CLR:

1. Определяемую пользователем скалярную функцию CLR,

2. Пользовательскую агрегатную функцию CLR,

3. Определяемую пользователем табличную функцию CLR,

4. Хранимую процедуру CLR,

5. Триггер CLR,

6. Определяемый пользователем тип данных CLR.

---

### Рекомендуемая литература

1. Эндрю Дж. Браст, Форте Стивен. Разработка приложений на основе Microsoft SQL Server 2005. Мастеркласс.
– М.: Русская Редакция, 2007. Глава 3. Обзор SQL CLR.

2. Леонард Лобел, Эндрю Дж. Браст, Стивен Форте. Разработка приложений на основе Microsoft SQL Server
2008.- СПб.: БХВ-Петербург, 2011. Глава 3. Изучаем SQL CLR.

3. Пол Нильсен. SQL Server 2005. Библия пользователя. - М.: ООО "И.Д. Вильямс", 2008. Глава 27.
Программирование сборок CLR в SQL Server. Глава 29. Поддержка пользовательских типов данных.

4. Ларс Пауэрс, Майк Снелл. Microsoft Visual Studio 2008. В подлиннике. - СПб.: БХВ-Петербург, 2009. Глава
18.Работа с базами данных.

5. Кристиан Нейгел, Билл Ивьен, Джей Глинн, Карли Уотсон, Морган Скиннер. - C# 4.0 и платформа .NET 4
для профессионалов. - М.: ООО "И.Д. Вильямс", 2011. Глава 34. Программирование приложений .NET с
использованием SQL Server.

6. Сахил Малик. Microsoft ADO.NET 2.0 для профессионалов. – М.: Вильямс, 2007. Глава 13. CLR в SQL
Server.

7. Derek Comingore, Douglas Hinson. Professional SQL Server 2005 CLR Programming: with Stored Procedures,
Functions, Triggers, Aggregates, and Types. – Wrox, 2006. Chapter 1: Introducing SQL CLR.

8. Thomas Rizzo, Adam Machanic, Julian Skinner, Louis Davidson, Robin Dewson, Jan Narkiewicz, Joseph Sack,
Rob Walters. Pro SQL Server 2005. – APRESS, 2006. Chapter 5: .NET Integration.

9. Inside Microsoft SQL Server 2008: T-SQL Programming / Itzik Ben-Gan, Dejan Sarka, Ed Katibah, Greg Low,
Roger Wolter, and Isaac Kunen. - Microsoft Press, 2010. Chapter 11. CLR User-Defined Types.

10. Using CLR Integration in SQL Server 2005
http://technet.microsoft.com/en-us/library/ms345136(v=sql.90).aspx.


Самым достоверным источником информации несомненно является Библиотека MSDN (MSDN Library) –
библиотека официальной технической документации для разработчиков под ОС Microsoft Windows. В данной
работе отправной точкой является раздел «Создание объектов SQL Server в управляемом коде» по адресу
http://msdn.microsoft.com/ru-ru/library/dd997440.aspx.
Далее по ссылкам вы найдете ответ на практически любой интересующий вас вопрос. По теме интеграции
SQL Server со средой CLR имеется несколько практических и пошаговых руководств.


Другим достоверным источником является Microsoft|TechNet - проект компании Microsoft, предназначенный
для технических специалистов по администрированию программного обеспечения и архитекторов
инфраструктурных решений. В данной работе отправной точкой является раздел «Основные понятия о
программировании интеграции со средой CLR» по адресу
http://technet.microsoft.com/ru-ru/library/ms131102(SQL.100).aspx.

---

Далее по ссылкам вы найдете ответ на практически любой интересующий вас вопрос.
Подробная информация для SQL Server 2008 R2 может быть получена из следующих источников:


Основные понятия о программировании интеграции со средой CLR
http://msdn.microsoft.com/ru-ru/library/ms131102.aspx


Включение интеграции со средой CLR
http://msdn.microsoft.com/ru-ru/library/ms131048.aspx


Создание объектов SQL Server в управляемом коде
http://msdn.microsoft.com/ru-ru/library/dd997440(v=vs.100).aspx


Практическое руководство. Создание проекта для объектов базы данных, использующих интеграцию SQL
Server со средой CLR
http://msdn.microsoft.com/ru-ru/library/84b1se47(v=vs.100).aspx


Атрибуты проектов SQL Server и объектов баз данных
http://msdn.microsoft.com/ru-ru/library/z28bh0b5(v=vs.90).aspx


Создание функций CLR
http://msdn.microsoft.com/ru-ru/library/ms189876.aspx


Практическое руководство. Создание и запуск пользовательской функции SQL Server при помощи интеграции
со средой CLR
http://msdn.microsoft.com/ru-ru/library/w2kae45k(v=vs.100).aspx


Хранимые процедуры CLR
http://msdn.microsoft.com/ru-ru/library/ms131094.aspx


Пошаговое руководство. Создание хранимой процедуры в управляемом коде
http://msdn.microsoft.com/ru-ru/library/zxsa8hkf(v=vs.100).asp


Практическое руководство. Создание и запуск хранимой процедуры SQL Server при помощи интеграции со
средой CLR
http://msdn.microsoft.com/ru-ru/library/5czye81z(v=vs.100).aspx


Практическое руководство. Отладка хранимой процедуры SQL CLR
http://msdn.microsoft.com/ru-ru/library/ms165051(v=vs.100).aspx


Создание триггеров CLR
http://msdn.microsoft.com/ru-ru/library/ms179562.aspx


Практическое руководство. Создание и запуск триггера CLR SQL Server
http://msdn.microsoft.com/ru-ru/library/938d9dz2(v=vs.90).aspx


Создание определяемых пользователем агрегатных функций
http://msdn.microsoft.com/ru-ru/library/ms190678.aspx


Практическое руководство. Создание и запуск статистического выражения SQL Server при помощи интеграции
со средой CLR
http://msdn.microsoft.com/ru-ru/library/91e6taax(v=vs.100).aspx


Использование определяемых пользователем типов данных
http://msdn.microsoft.com/ru-ru/library/ms131694.aspx


Практическое руководство. Создание и запуск пользовательского типа SQL Server при помощи интеграции со
средой CLR
http://msdn.microsoft.com/ru-ru/library/a8s4s5dz(v=vs.100).aspx


Для получения информация для SQL Server 2012 или SQL Server 2014 в списки выбора «Другие версии»
выберите другие пункты.
