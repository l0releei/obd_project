# Аналітик

***ID:*** UC_AL_1.1
    
***НАЗВА:*** Аналіз опитування
    
***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Виконання UC_MG_1.1

***РЕЗУЛЬТАТ:*** Система отримала завдання

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

- UC_AL.ER.1.1 Завдання неможливо реалізувати

**ОСНОВНИЙ СЦЕНАРІЙ:***

![UC_СS_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/use_case/Analyst/UC_AL_1.1.uml)



***ID:*** UC_AL_1.2
    
***НАЗВА:*** Створення опитування
    
***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Виконання UC_AL_1.1

***РЕЗУЛЬТАТ:*** Створення опитування

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

- UC_AL.ER.1.2 Обов'язкові рядки не були заповнені

**ОСНОВНИЙ СЦЕНАРІЙ:***

![UC_СS_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/use_case/Analyst/UC_AL_1.2.uml)



***ID:*** UC_AL_1.3
    
***НАЗВА:*** Відправка опитування
    
***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Виконання UC_AL_1.2

***РЕЗУЛЬТАТ:*** Опитування надіслано 

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

**ОСНОВНИЙ СЦЕНАРІЙ:***

![UC_СS_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/use_case/Analyst/UC_AL_1.3.uml)



***ID:*** UCD_AL_1.2
    
***НАЗВА:*** Аналіз результатів опитування
    
***УЧАСНИКИ:*** Аналітик, система

***ПЕРЕДУМОВИ:*** Виконання UC_MG_1.3

***РЕЗУЛЬТАТ:*** Створення звіту по результатам опитування 

***ВИКЛЮЧНІ СИТУАЦІЇ:*** 

**ОСНОВНИЙ СЦЕНАРІЙ:***

![UC_СS_1](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/l0releei/obd_project/master/src/uml/use_case/Analyst/UC_AL_1.4.uml)
