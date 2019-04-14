<!-- Имортируем макрос и вставляем в код -->
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <!-- Кнопка logout -->
    <div>
        <@l.logout />
        <span><a href="/user">User list</a></span>
    </div>

    <!--Форма добавления сообщений-->
    <div>
        <form method="post" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Введите сообщение"/>
            <input type="text" name="tag" placeholder="Тэг"/>
            <input type="file" name="file">

            <!-- Защита от хакерских атак(только для mustache) -->
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>

            <button type="submit">Добавить</button>
        </form>
    </div>

    <!--Отображение сообщений и поиск по тегу-->
    <!--Отображение сообщений и поиск по тегу-->
    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter?ifExists}">
        <button type="submit">Найти</button>
    </form>

<!-- Обход списков -->
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                <img src="/img/${message.filename}">
            </
            #if>
        </div>
        </div>
    <#else>
        No message
    </#list>
</@c.page>