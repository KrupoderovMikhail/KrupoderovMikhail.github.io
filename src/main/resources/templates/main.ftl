<!-- Имортируем макрос и вставляем в код -->
<#import "parts/common.ftl" as c>

<@c.page>
    <!--Отображение сообщений и поиск по тегу-->
    <!--Отображение сообщений и поиск по тегу-->
    <div class="form-row">
        <div class="form-group col-md-6">
            <form method="get" action="/main" class="form-inline">
                <input type="text" name="filter" class="form-control" value="${filter?ifExists}"
                       placeholder="Search by tag">
                <button class="btn btn-primary ml-2" type="submit">Search</button>
            </form>
        </div>
    </div>

    <#include "parts/messageEdit.ftl" />

    <#include "parts/messageList.ftl" />
</@c.page>