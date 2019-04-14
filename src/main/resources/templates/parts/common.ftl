<!-- Создаем макрос html страницы, для дальнейшего использования в шаблонах(избавление от дублирования кода) -->
<#macro page>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Chatter</title>
            <link rel="stylesheet" href="/static/style.css">
    </head>
        <body>
            <#nested>
        </body>
    </html>
</#macro>