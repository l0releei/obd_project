# Менеджер

***ID:*** UC_MG_1.1
    
***НАЗВА:*** Передача плану проекту
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Менеджер отримав завдання

***РЕЗУЛЬТАТ:*** Система отримала план проекту

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_1.uml)



***ID:*** UC_MG_1.2
    
***НАЗВА:*** Отримання готового опитування
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Виповнення UC_MG_1.1

***РЕЗУЛЬТАТ:*** Менеджер отримав готове опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_2.uml)



***ID:*** UC_MG_1.3
    
***НАЗВА:*** Передача результатів опитування
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Виповнення UC_MG_1.2, UC_MG_2.2
 

***РЕЗУЛЬТАТ:*** Опитування передано системою

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_3.uml)



***ID:*** UC_MG_1.4
    
***НАЗВА:*** Отримання звіту
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Виповнення UC_MG_1.3

***РЕЗУЛЬТАТ:*** Менеджер отримує звіт

***ВИКЛЮЧНІ СИТУАЦІЇ:***
- UC_MG.ER.1.1 Звіт надійшов невчасно

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_4.uml)



***ID:*** UC_MG_2.1
    
***НАЗВА:*** Поширення опитування серед Експертів
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Виповнення UC_MG_1.2

***РЕЗУЛЬТАТ:*** Система відправляє повідомлення

***ВИКЛЮЧНІ СИТУАЦІЇ:***

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_5.uml)



***ID:*** UC_MG_2.2
    
***НАЗВА:*** Отримання звіту по результатам
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Виповнення UC_MG_1.3

***РЕЗУЛЬТАТ:*** Менеджер отримує звіт

***ВИКЛЮЧНІ СИТУАЦІЇ:***

- UC_MG.ER.1.2 Опитування ще не прошов жоден з єкспертів

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_6.uml)



***ID:*** UC_MG_3.1
    
***НАЗВА:*** Отримання завдання
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Виповнення UC_CS_1

***РЕЗУЛЬТАТ:*** Менеджер отримує завдання

***ВИКЛЮЧНІ СИТУАЦІЇ:***

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_7.uml)



***ID:*** UC_MG_3.2
    
***НАЗВА:*** Презентація виконаної роботи
    
***УЧАСНИКИ:*** Менеджер, система

***ПЕРЕДУМОВИ:*** Виповнення UC_MG_1.4

***РЕЗУЛЬТАТ:*** Звіт відправлено

***ВИКЛЮЧНІ СИТУАЦІЇ:***

**ОСНОВНИЙ СЦЕНАРІЙ:***
![UC_MG_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/l0releei/src/use_case/Manager/UC_MG_8.uml)


