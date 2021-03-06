# NakedSun. Запити зацікавлених осіб

<a name="1"> </a>

## Вступ

Документ містить опис запитів зацікавлених осіб, щодо проекту cистеми організації та управління експертними опитуваннями, що перебуває в розробці.

<a name="2"> </a>

### Мета 

Створення та впровадження системи управління опитуваннями експертів.

<a name="3"> </a>

### Контекст

Цей документ пов'язаний с такими проектами:
- Бази данних з опитаннями та їх результатами;

<a name="4"> </a>

### Основні визначення та скорочення

**Інформація в документі: [Аналіз предметної області]()**

<a name="5"> </a>
## Короткий зміст

Данна частина цого документу описує пошагове планування системи управління проектами та роботи проекту в цілому, охоплюючи усі проміжні етапи розвитку проекту.

Структура документу:

- [Вступ](#1)
- [Мета](#2)
- [Контекст](#3)
- [Основні визначення та скорочення](#4)
- [Короткий зміст](#5)
- [Характеристика ділових процесів](#6)
- [Короткий огляд продукту](#7)
- [Експлуатаційна придатність](#8)
- [Практичність](#9)
- [Надійність](#10)
- [Продуктивність](#11)
- [Функціональність](#12)
- [Інтерфейс експерта](#13)
- [Інтерфейс замовника](#14)
- [Інтерфейс аналітика](#15)
- [Інтерфейс менеджера](#16)

<a name="6"> </a>

## Характеристика ділових процесів

- ***Замовник*** - людина, яка бажає створити опитування.
- ***Менеджер*** - Керівник проєкту. Є сполучною ланкою між замовниками, аналітиками і експертами.
- ***Аналітик*** - людина або группа людей, які відповідають за створення анкет і опрацювання результатів експерних опитувань.
- ***Експерт-Респондент*** - людина або группа людей, що займається експертизою відповідей до анкет сценарію.
<hr>

***ID:*** Main.000 
    
***НАЗВА:*** Перейти до форми створення опитування
    
***УЧАСНИКИ:*** Замовник, Менеджер, Аналітик, Експерт-Респондент

***ПЕРЕДУМОВИ:*** Замовник має обліковий запис в системі

***РЕЗУЛЬТАТ:*** Замовник отримав результат опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- ER.000.001 Замовник не має облікового запису в системі
- ER.000.002 Замовлення є неможливим для реалізації

***ОСНОВНИЙ СЦЕНАРІЙ:***

![Main.000_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/Main.000_Diagram.puml)

1. Замовник дає завдання;
2. Менеджер передає замовлення аналітику;
3. Аналітик перевіряє замовлення на можливість реалізації;
4. Аналітик створює опитування, передає його менеджеру;
5. Менеджер запрошує респондентів-експертів для проходження опитування;
6. Менеджер передає відповіді аналітику;
7. Аналітик проводить аналіз відповідей та оформляє звіт по результатам опитування та передає менеджеру;
8. Менеджер передає звіт з результатами замовнику.
<hr>


### Замовник
#### Сценарій 1

***ID:*** CS.001
       
***НАЗВА:*** Дати/оновити завдання

***УЧАСНИКИ:*** Замовник, Менеджер 

***ПЕРЕДУМОВИ:*** На одному з етапів створення опитування, замовнику не сподобалось те чи інше. Замовник знає, що він хоче змінити.

***РЕЗУЛЬТАТ:*** Менеджер проекту отримав запит на переробку/коригування опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_CS.001.001 Опитування вже створене та опубліковане, тому не підлягає змін
 - ER_CS.001.002 Опитування було видалене або не інсує


***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![CS.001_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/CS.001_Diagram.puml)

1. Замовник висуває менеджеру свої вимоги;
2. Менеджер перевіряє умови замовника (можливі ER_CS.001.001E, ЕR_CS.001.002 );
3. Менеджер формує новий план створення опитування з корективами від замовника;
4. Відправляє готове опитуання замовнику.
<hr>


### Менеджер
#### Сценарій 1

***ID:*** MG.001
       
***НАЗВА:*** Демонстрація роботи замовнику

***УЧАСНИКИ:*** Замовник, Менеджер 

***ПЕРЕДУМОВИ:*** Завдання замовника виконано

***РЕЗУЛЬТАТ:*** Замовник проінформованний

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_MG.001.001 Менеджер не задоволенний створеним опитуванням
 - CS.001 Замовнику не сподобалось створенне опитування
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![MG.001_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/MG.001_Diagram.puml)

1. Менеджер  перевіряє умови замовника (можливе ER_MG.001.001);
2. Менеджер демонструе виконану роботу замовнику (можливе CS.001).


#### Сценарій 2

***ID:*** MG.002
       
***НАЗВА:*** Передача завдання Замовника Аналітику

***УЧАСНИКИ:*** Менеджер, Аналітик

***ПЕРЕДУМОВИ:*** Завдання Замовника прийнято Менеджером

***РЕЗУЛЬТАТ:*** Аналітик видає готове опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_MG.002.001 Опитування не було надіслано
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![MG.002_Diargam](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/MG.002_Diargam.puml)

1. Менеджер  надсилає завдання Замовника Аналітику;
2. Менеджер отримує готове опитування (можливе ER_MG.002.001).


#### Сценарій 3

***ID:*** MG.003
       
***НАЗВА:*** Відправлення запрошень на проходження опитування Експерта.

***УЧАСНИКИ:*** Менеджер, Експерт

***ПЕРЕДУМОВИ:*** Отримання опитування від Аналітика

***РЕЗУЛЬТАТ:*** Отримання відповідей на опитування від Експерта

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_MG.003.001 Відповіді не було надіслано 

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![MG.003_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/MG.003_Diagram.puml)

1. Менеджер  надсилає опитування Експерту;
2. Менеджер отримує готові відповіді (ER_MG.003.001).


#### Сценарій 4

***ID:**** MG.004
       
***НАЗВА:*** Передача відповідей Експурта Аналітику

***УЧАСНИКИ:*** Менеджер, Аналітик

***ПЕРЕДУМОВИ:*** Отримання відповідей від Експерта

***РЕЗУЛЬТАТ:*** Отримання звіту з результатами опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_MG.003.001 Звіт не був надіслан 

***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![MG.004_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/MG.004_Diagram.puml)

1. Менеджер  надсилає відповіді Експерта Аналітику;
2. Менеджер отримує готовий звіт з результатами опитування (можливе ER_MG.003.001).
<hr>


### Аналітик
#### Сценарій 1

***ID:*** AL.001
       
***НАЗВА:*** Створення опитування

***УЧАСНИКИ:*** Аналітик, Менеджер 

***ПЕРЕДУМОВИ:*** Отримання від Менеджера завдання Замовника

***РЕЗУЛЬТАТ:*** Створення готового опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_AL.001.001 Завдання Замовника не проходить перевірку цензурою, або завдання неможливо реалізувати.
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![AL.001_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/AL.001_Diagram.puml)

1. Перевірка завдання Замовника (можливе ER_AL.001.001);
2. Створення опитування та його надсилання Менеджеру.


#### Сценарій 2

***ID:*** AL.002
       
***НАЗВА:*** Аналіз відповідей Експерта та створення звіту

***УЧАСНИКИ:*** Аналітик, Менеджер 

***ПЕРЕДУМОВИ:*** Отримання від Менеджера відповідей Експерта

***РЕЗУЛЬТАТ:*** Створення звіту по результатам опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_AL.002.001 Відповіді Експерна неможливо аналізувати.
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![AL.002_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/AL.002_Diagram.puml)

1. Аналіз відповідей Експера (можливе ER_AL.002.001);
2. Створення звіту по результатам опитування та його надсилання Менеджеру.
<hr>


### Експерт
#### Сценарій 1

***ID:*** EX.001
       
***НАЗВА:*** Проходження опитування

***УЧАСНИКИ:*** Експерт, Менеджер 

***ПЕРЕДУМОВИ:*** Отримання від Менеджера опитування

***РЕЗУЛЬТАТ:*** Проходження наданого опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:***
 - ER_EX.001.001 Пройти опитування неможливо.
 
***ОСНОВНИЙ СЦЕНАРІЙ:*** 

![EX.001_Diagram](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/EX.001_Diagram.puml)

1. Проходження опитування (можливе ER_EX.001.001);
2. Надсилання отриманних відповідей Менеджеру.
<hr>

<a name="7"> </a>
## Короткий огляд продукту

СУБД "NakedSun" - це майбутній веб-сервіс, який дозволяє збирати інформацію від користувачів за допомогою персоналізованого опитування. Сервіс буде зручним, зрозумілим недосвідченим юзерам, а головне - багатофункціональним.

<a name="8"> </a>
## Експлуатаційна придатність

- доступ неавторизованим експертам
- зручний та простий інтерфейс
- підтримка іноземних користувачів
- постійна підтримка з боку розробників

<a name="9"> </a>
## Практичність

 - простота у використанні
 - доступність 24/7
 - безкоштовність
 - мобільність
 - зрозумілість

<a name="10"> </a>
## Надійність

 - використання облачного сховища
 - резервне копіювання на локальну сіть
 - надійний сервер

<a name="11"> </a>
## Продуктивність

 - в опитуванні може міститися велика кількість відповідей
 - стабільне підключення
 
<a name="12"> </a>
## Функціональність

Кожен режим реалізований через відповідний йому інтерфейс. Такий підхід сприяє ієрахічній систематизації взаємодії між різними ролями учасників створення опитувань та взаємодії з ними (тестуваннями). Кожна з представлених моделей відводить певний набір функцій для впорядкування робочого процесу, сприяє автоматизації поділу на ці самі ролі та відведенню певній особі відповідної ланки взаємодії в застосунку.

<a name="13"> </a>
***Інтерфейс експерта***

Функціональний простір облікового запису респондента має відповідати моделі опитуваної особи та подальшому механізму обробки відповідей. 
Надаються можливості:
- Виконувати пошук необхідних анкет;
- приймати (або відхиляти) запрошення на проходження опитування;
- заповнювати анкети;
- зв'язуватись з тех. підтримкою;

<a name="14"> </a>
***Інтерфейс замовника***

Існування інтерфейсу замовника в системі пов'язано з його бажанням контролювати та бачити статус розробки проєкту. 
Доступні функції:
- Робити замовлення за допомогою сервісу або безпосередньо менеджера;
- контроль стану замовлень;
- зв'язуватись з менеджером для консультації;


<a name="15"> </a>
***Інтерфейс аналітика***

Інтерфейс облікового запису аналітика надає можливості для роботи та аналізу даних.
Можливості:
- аналізувати завдання на можливість реалізації;
- створювати та редагувати опитування;
- застосовувати статистичні механізми для прогнозування відповідей;
- опрацьовувати результати опитування;


<a name="16"> </a>
***Інтерфейс менеджера***

Існування даного інтерфейсу полягає необхідності цілісної комунікації між зовнішніми та внутрішніми акторами. Це дозволяє цілісно проаналізувати створюване опитування, поетапно прослідкувати та виявити недоліки проектування моделі опитування.
Дозволяє:
- Здійснювати комунікацію з замовником; та експертами;
- назначати аналітиків;
- надсилати запрошення експертам;
- управляти експертним середовищем (дивитися інформацію про кожного експерта);
- передавати завдання аналітику та отримувати звіт з результатами;
- отримувати та оформляти замовлення для подальшого опрацювання;
