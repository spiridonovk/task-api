# API


**Получения всех уникальных статусов задач, отсортированных по алфавиту:**

```
GET https://get-api-example.herokuapp.com/api/v1/tasks/statuses
```
**Получения кол-ва задач в каждом из проектов с сортировкой проектов по кол-ву задач по убыванию:**

```
GET https://get-api-example.herokuapp.com/api/v1/projects/sort_by_tasks
```
**Получения кол-ва задач в каждом проекте, с сортировкой проектов по названию:**

```
GET https://get-api-example.herokuapp.com/api/v1/projects
```
**Получения задач для всех проектов с именем, начинающимся на 'N':**

```
GET https://get-api-example.herokuapp.com/api/v1/tasks/first_letter
```
**Получения всех проектов, у которых есть символ 'a' в середине названия и отображения кол-ва задач для каждого проекта:**

```
GET https://get-api-example.herokuapp.com/api/v1/projects/include

```
**Получения списка задач с дублирующимися именами, отсортированных по алфавиту:**

```
GET https://get-api-example.herokuapp.com/api/v1/tasks/double
```
