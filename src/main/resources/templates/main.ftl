<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <!-- Кнопка logout -->
    <div>
        <@l.logout />
    </div>

    <!--Форма добавления сообщений-->
    <div>
        <form method="post" action="/main">
            <input type="text" name="text" placeholder="Введите сообщение"/>
            <input type="text" name="tag" placeholder="Тэг"/>

            <!-- Защита от хакерских атак(только для mustache) -->
            <input type="hidden" name="_csrf" value="{_csrf.token}"/>

            <button type="submit">Добавить</button>
        </form>
    </div>

    <!--Отображение сообщений и поиск по тегу-->
    <!--Отображение сообщений и поиск по тегу-->
    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Найти</button>
    </form>

<!-- Обход списков -->
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
    <#else>
No message
</#list>
</@c.page>