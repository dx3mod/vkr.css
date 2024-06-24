# vkr-build

Автоматизированное решение вёрстки курсовых/дипломных работ в соответствие с ГОСТом на базе движка [WeasyPrint](https://weasyprint.org/). Позволяет сосредоточиться на содержании, а не на деталях оформления.

### Особенности 

- Markdown или HTML в качестве языка разметки;  
- Поддержка многофайловой структуры проекта;
- Простая кастомизация;
- Работает "из коробки" на большинстве платформ; 

### Примеры работ 

- [Комплексный пример со всеми возможностями](./examples/demo/) ([PDF](./examples/demo/output.pdf))
- [Реальный ВКР по юриспруденции](./examples/simple-full) ([PDF](./examples/simple-full/ВКР%20Влад.pdf)) 

### Поддержка 

Сквозной нумерации всех фигур (рисунков, таблиц), заголовков до третьего уровня, приложений. Генерация оглавления. 

Поддерживаемые элементы:
- [x] Заголовки 
- [x] Списки
- [x] Блоки кода
- Сноски
  - [x] inline html 
  - [ ] markdown сноски
- Фигуры
  - [x] Рисунки
  - [x] Таблицы
- [ ] Цитаты

## Установка 

#### Зависимости 

- Python 3.12+
- [pandoc](https://pandoc.org/)

```
pip install --upgrade vkr-build
```

Собранные пакеты можно также найти на [странице релизов](https://github.com/dx3mod/vkr.build/releases).


## Использование 

#### Конфигурационный файл

```toml
# document.toml

files = [
  # Последовательность файлов
]

# Путь до скомпилированного PDF-файла
output = 'output.pdf'

# Путь до пользовательских стилей
css = 'custom.css' 

# Префикс для названия глав
chapter_prefix = 'Глава '

# Заголовок для оглавления 
toc_title = 'Оглавление'
```

#### Переменные CSS

```css
:root {
  /* Начала подсчёта страниц, включая заголовок. */
  --start-page: 2;

  /* Расположение подзаголовков. */
  --subheader-align: center;

  /* https://developer.mozilla.org/en-US/docs/Web/CSS/list-style-type */

  /* Шрифт кода. */
  --font-mono: monospace;

   /* Режим переноса фигур (рис, таблиц). По-умолчанию, если они не помещаются
      на страницу, то переходят на новую. */
  --figure-break-inside: avoid;
}
```

#### Markdown

Сноски. 
```markdown
Приятно, граждане<footnote>Тут находится inline-сноска.</footnote>, наблюдать, 
как тщательные исследования конкурентов функционально разнесены на независимые элементы.
```
