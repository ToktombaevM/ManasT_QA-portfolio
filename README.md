![Header](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/981f6d5d0755b32f90b4483f1663f92030ccbb29/IMG/ManasT_Header.png)

# Обо мне

Открытый, ориентированный на результат командный игрок с 8-летним опытом работы в ООН и ОБСЕ и страстью к кондитерскому делу. Меня вдохновляет инновационный опыт и сложная работа, включающая непрерывный цикл обучения, поиск ответов и осознание того, что наша совместная деятельность улучшила показатели и позволила достичь поставленных целей.

Здесь собраны материалы и проекты реализованные в рамках обучения на направлении ["Инженер по тестированию"](https://sky.pro/courses/programming/qa-engineer) в SKYpro.


***

# Направления

[**Проектирование тестов**](#test-design)<br>

    * Виды тестирования | Mind-map | Блок-схемы
    * Тест-дизайн | Классы эквивалентности | Граничные значения
    * Тестирование документации | Чек-листы | Тест-кейсы

[**Тестирование API**](#API-testing)<br>

    * REST API | JSON | Postman

[**Тестирование баз данных**](#SQL-testing)<br>

    * Консоль | SQL | PostgreSQL

 
***

  ## <a name="test-design" />Проектирование тестов
  <br>

📄**1. Составь mind-map сервиса по продаже тортиков**

<details>
<summary>Mind map сервиса</summary>

![Mind Map](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/9e5d1be44f6df16e7393e5b5eda308cdcf9a831e/IMG/Mind%20Map.jpg)

[Mind map в большом разрешении на MIRO](https://miro.com/app/board/uXjVMV_dsEQ=/?share_link_id=605007146557)

</details>
<br>

📄**2. Классы эквивалентности и граничные значения**

<details>
<summary>Задача 1-Протестировать консольное приложение (приложение в вакууме).</summary> <br>

  - Приложение на вход принимает три целых числа, интерпретируемых как длины сторон треугольника.
  - На выходе выводит на экран, является ли этот треугольник равнобедренным или равносторонним.
 
 > Что нужно сделать?
  - Составьте низкоуровневый чек-лист. Обязательно предложите конкретные значения тестовых данных.

   💡 **РЕШЕНИЕ**  
![TASK 1](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/8cc525406212ae02ac2c38242f5e1e98ae7af35a/IMG/TASK%201.png)

</details>

<details>
<summary>Задача 2-Протестировать лифт в девятиэтажном доме.</summary> <br>
   
 > Что нужно сделать?
  - Составить высокоуровневый чек-лист.

   💡 **РЕШЕНИЕ**  
![TASK 2](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/af535ce865670662d29930dfd9e36b7c3a8043b5/IMG/TASK%202.png)
</details>

<details>
<summary>Задача 3-Протестировать работу накопительных скидочных карт.</summary> <br>

Автомат принимает накопительные скидочные карты и при своем расчете учитывает количество баллов, по которому начисляет процент скидки:

от 0 до 100 баллов — скидка 1%;
от 100 до 200 баллов — скидка 3%;
от 200 до 500 баллов — скидка 5%;
от 500 баллов — скидка 10%.

 > Что нужно сделать?
  - Составить такой набор тестовых данных для автомата, при котором мы гарантированно будем знать, что в соответствии со своими накопленными баллами покупатель получит верную скидку.

      💡**РЕШЕНИЕ**  
![TASK 3](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/a2c8c01ce1f208b768d4ce170594de717757919a/IMG/TASK%203.png)
</details> 
<br>

📄**3. Тестирование документации**

<details>
<summary>ТЗ от заказчика</summary> <br>
   
   - Реализовать форму, которая по введенным данным определяет, является ли человек совершеннолетним. <br>
   - Приложение должно быть с архитектурой «клиент — сервер».
</details> 

    💡ОТВЕТЫ НА ВОПРОСЫ

<details>
<summary>Какие могут возникнуть вопросы к требованиям?</summary> <br>

   - Какой **тип данных** должен быть введен в поле определения возраста: текст, дата или число?
   - Если вводимые данные, дата рождения, **в каком формате** поле должно принимать данные: MM.YYYY, YYYY-MM-DD или другой формат?
   - Требуется уточнить **какое значение** считается совершеннолетием? 16 лет, 18 лет, 21 год?
   - Что ответит система, если вводимое значение **не соответствует требованиям** системы?
   - Что произойдет, если клиент несовершеннолетний?
   - Что произойдет, если клиент совершеннолетний?
   </details>
   
<details>
<summary>Какие виды и типы тестирования стоит проводить? Объясните почему.</summary> <br>
   
   - **Smoke тестирование:** Проверить открывается ли поле, принимает ли оно вводимые данные, работает ли кнопка «ОК» или «Далее», чтобы убедиться, в работоспособности поля для продолжения тестирования?
   - **Функциональное тестирование:** требуется проверить, что поле принимает заданные значения, и обрабатывает значения правильно, например определяет, является ли человек совершеннолетним или нет.
   - **Тестирование безопасности:** поле не позволяет ввести невалидные данные, которые могут привести к неправильному определению возраста человека (например, спецсимволы, иероглифы, скобки, кавычки и тд.).
   - **Тестирование производительности:** проверить, как поле работает под нагрузкой. Например, выдержит ли поле, если его будут заполнять и отправлять одновременно с разных клиентских устройств в большом количестве.
 </details>

<details>
<summary>Что больше подойдет для организации тестовой документации по задаче — тест-кейсы или чек-листы? Почему?</summary> <br>
   
   - Так как мы тестируем одно поле ввода, следует использовать чек-лист для охвата большего количества и вариантов проверок.
   - Чит-лист позволит оптимизировать процесс тестирования путем группировки схожих сценариев и инструментов.
   - Тест-кейсы в данном случае будут не эффективны, так как нерационально, тратить много времени на расшифровку одного действия, в то время как можно произвести большее количество проверок по чек-листу за потраченное время.
 </details> 

 <details>
<summary>Какие техники тест-дизайна вы бы использовали? Почему?</summary> <br>

- **Классы эквивалентности** (в зависимости, от того, какое число мы считаем наступлением совершеннолетием. Например, 18 лет). В данном случае классов эквивалентности будет (меньше 0, 0, 1-17, и больше 18)
- **Граничные значения** 16, 17, 19, 20, чтобы проверить правильность обработки вводимой информации.
   </details>

    <details>
<summary>Какие можно выделить негативные и позитивные входные данные?</summary> <br>

| Позитивные проверки | Примеры |
| --- | --- |
| ввод корректных данных в соответствии с документацией (чисел в заданном диапазоне) | 17, 18, 19, 20 |

| Негативные проверки | Примеры |
| --- | ---      |
| пустое поле |   |
| ввод букв | AnГ |
| спецсимволы | ?:%?* |
| ввод отрицательных чисел  | -17 |

   </details>

   <details>
<summary>Какие теоретически могут быть баги? Опишите 4–6 возможных багов.</summary> <br>
      
- Поле ввода данных неактивно, то есть в него нельзя ввести данные.
- При вводе данных не отображаются все данные, либо отображаются некорректно.
- Кнопка «ОК» неактивна, то есть на нее нельзя нажать.
- Кнопка “OK” активна, но ничего не происходит после нажатия на нее.
- Кнопка “OK” активна, но при нажатии обнуляются данные, введенные в поле.
- Кнопка “OK” активна, но при нажатии страница закрывается.
   </details>

<details>
<summary>Есть ли баги любого типа на приведенных скриншотах? Если есть, опишите все.</summary> <br>

![Screenshot dev](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/59088d98f2217ea753e99f562ead406ae3f9797f/IMG/Screenshot%20dev.png)
      
- Кнопки “ОК” разного размера и цвета
- Грамматически некорректно написано “Вы совершен**ноле**тний” (пишется слитно); Не совершеннолетний (пишется слитно).
- Неверная формулировка. Оба поля должны быть сформулированы в одном стиле, либо обращение, либо вопрос.
- Нет кнопки закрыть всплывающее окно, либо вернуться назад.
   </details><br>

📄**4. Составление SMOKE-тестов**

<details>
<summary>ТЗ от заказчика</summary> <br>
   
   **Выберите тестовую документацию**

- Если ваше полное имя начинается на согласную букву, вам нужно **составить смоук-тест-кейс(ы) - имя: МАНАС.**

**Выберите приложение, по которому будете составлять документацию**

- Главная страница https://www.rosbank.ru/ - **фамилия: Токтомбаев.**
</details> 

     💡ТЕСТ КЕЙСЫ

   <details>
<summary>TA-1: Проверить, что главная страница банка загружается и видны пункты меню.</summary> <br>
      
![TA1](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/1e8a74990cdbf3a3f8e8b5f2103d968e8ea20a4a/IMG/TA1.png)
   </details>

   <details>
<summary>TA-2: Проверить работу меню на странице</summary> <br>
      
![TA2](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/f1a2b7514765446fc3f01a988ba12e319ff5d081/IMG/TA2.png)
   </details>

<details>
<summary>TA-3: Проверить работу выпадающего меню и работоспособность кнопок в выпадающем меню.</summary> <br>
      
![TA3](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/f1a2b7514765446fc3f01a988ba12e319ff5d081/IMG/TA3.png)
   </details>

<details>
<summary>TA-4: При нажатии на логотип банка происходит возврат на главную страницу из других разделов.</summary> <br>
      
![TA3](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/e9116dac8925a8831fff31ea305113b3777a9607/IMG/TA4.png)
   </details> 

<details>
<summary>TA-5: Проверить, что кнопка ПОИСКА на главной странице банка активна и с ее помощью можно найти требуемую информацию.</summary> <br>
      
![TA3](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/e9116dac8925a8831fff31ea305113b3777a9607/IMG/TA5.png)
   </details>

<br>

[**ФАЙЛ в PDF здесь**](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/657afc0b5612227ffa3a489ac8b8279d75744e86/IMG/%D0%A2%D0%B5%D1%81%D1%82-%D0%BA%D0%B5%D0%B9%D1%81%D1%8B%20%D0%B2%20%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%82%D0%B5%20PDF.pdf)

***

## <a name="API-testing" />Тестирование API
<br>

📄**1. Создать коллекцию в Postman для работы с Trello** <br>

<details>
<summary>Техническое задание</summary><br>
 
**✅** Доска. Используйте следующие методы:

- [Создание](https://developer.atlassian.com/cloud/trello/rest/api-group-boards/#api-boards-post)
- [Получение](https://developer.atlassian.com/cloud/trello/rest/api-group-boards/#api-boards-id-get)
- [Удаление](https://developer.atlassian.com/cloud/trello/rest/api-group-boards/#api-boards-id-delete)

**✅** Списки. Используйте следующие методы:

- [Создание](https://developer.atlassian.com/cloud/trello/rest/api-group-lists/#api-lists-post)
- [Получение](https://developer.atlassian.com/cloud/trello/rest/api-group-lists/#api-lists-id-get)

**✅** Карточки. Используйте следующие методы:

- [Создание](https://developer.atlassian.com/cloud/trello/rest/api-group-cards/#api-cards-post)
- [Удаление](https://developer.atlassian.com/cloud/trello/rest/api-group-cards/#api-cards-id-delete)
- [Изменение названия](https://developer.atlassian.com/cloud/trello/rest/api-group-cards/#api-cards-id-put) (поле name)
- [Смена списка](https://developer.atlassian.com/cloud/trello/rest/api-group-cards/#api-cards-id-put) (аналогично перетаскиванию из одной колонки в другую — поле idList; для переноса нужно создать еще один список)
- [Получение информации](https://developer.atlassian.com/cloud/trello/rest/api-group-cards/#api-cards-id-get)
- [Добавление комментария к карточке](https://developer.atlassian.com/cloud/trello/rest/api-group-cards/#api-cards-id-actions-comments-post)
</details> 

[**Файл с JSON-коллекцией Postman _ Trello**](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/c173460abc6f0e9cebd48dea7d92a4e13b732403/IMG/API_HW5_trello.postman_collection.json)

<br>

📄**2. Создать коллекцию в Postman для API Yandex-погода** <br>

<details>
<summary>Техническое задание</summary><br>

   > API «Яндекс Погоды» позволяет получать погодные данные в автоматизированном режиме. Объем предоставляемых данных зависит от выбранного [тарифа доступа](https://yandex.ru/dev/weather/doc/dg/concepts/pricing.html#about).
> 
> 
> Необходимо с помощью Postman протестировать работу метода со следующими параметрами:
> 
> - тариф = Тестовый;
> - lon;
> - lat;
> - язык = русский.
> 
> Долготу и широту (lon, lat) проверьте для следующих городов:
> 
> - город вашего рождения (не забудьте указать это в названии запроса и прописать при сдаче работы);
> - город, в котором находится штаб-квартира «Яндекса»;
> - город, в котором находится штаб-квартира Google.
> 
> Также нужно создать несколько негативных сценариев и убедиться, что при неправильных данных запрос возвращает соответствующий результат.
> 
> **P. S. Для начала работы с методами вам потребуется создать API-ключ на соответствующее приложение.**
> 
> Результат необходимо прикрепить в виде готовой **JSON-коллекции Postman** (не ссылкой на проект, а именно выгрузить файл).
>
</details>

     💡Город рождения - Петрозаводск, Карелия.

   [**Файл с JSON-коллекцией Postman _ API Yandex-погода**](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/1b5c6f8f9d7a7c85850fe29666551bbb8da209df/IMG/Yandex%20Weather%20API.postman_collection.json)

***

## <a name="SQL-testing" />Тестирование баз данных
<br>

📄**Составить SQL-запросы** <br>

<details>
<summary>Техническое задание</summary><br>
    
    Составьте запросы SQL для ответов на следующие вопросы:
    
    1. **Сколько всего животных у вас** (добавьте в ограничение ваше полное имя)?
    2. Уникальные имена всех кошек, отсортированные по алфавиту. Если вы родились **в нечетный день, то от Я до А - ДЕНЬ РОЖДЕНИЯ - 5.**
        
        > Например:
        > 
        > - у Марины день рождения 4 июля, она делает сортировку от А до Я;
        > - у Егора день рождения 17 января, он делает сортировку от Я до А.
    3. Найти количество животных каждого класса. Вывести количество и имя класса для тех классов, количество животных в которых больше n. Число n — номер месяца вашего рождения **- МЕСЯЦ РОЖДЕНИЯ - 8.**
        
        > Например:
        > 
        > - у Егора день рождения 17 января — для него n = 1 и он добавляет ограничение по количеству животных больше 1.
        > - у Марины день рождения 4 июля — для нее n = 7 и она добавляет ограничение по количеству животных больше 7;
    
    *Результат приложите в виде ответов на вопросы **в формате SQL**, а также напишите день и месяц вашего рождения.*
</details>    

     💡День рождения - 5, месяц рождения - 8.

   [**Файл с SQL запросами**](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/8345f09d4bdfb9377c59f84476a3ee77541698ee/IMG/SQL%20%D0%B7%D0%B0%D0%BF%D1%80%D0%BE%D1%81_%D1%82%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%BE%D0%B5%20%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5_1.sql)


# Навыки

* Дизайн проекта и реализация.
* Изучение и анализ.
* Бюджетное планирование.
* Отчетность.
* Творческое мышление.
* Эмпатия.
* Командная работа.

# Контактная информация

* :email:reformator@gmail.com
* :card_index:[ToktombaevM] **GITHUB**
* **WhatsAPP**: +7 (777) 2672555
  
# Резюме

* 	:page_with_curl:[Резюме в формате PDF](https://github.com/ToktombaevM/ManasT_QA-portfolio/blob/main/IMG/Resume_Toktombaev%20Manas_GIT%20RUS.pdf)

