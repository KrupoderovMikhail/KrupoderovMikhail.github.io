<!-- Создаем макрос html страницы, для дальнейшего использования в шаблонах(избавление от дублирования кода) -->
<#macro page>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Chatter</title>
    </head>
        <body>
            <#nested>
        </body>
    </html>
</#macro>