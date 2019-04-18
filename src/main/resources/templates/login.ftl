<!-- Имортируем макросы и вставляем в код -->
<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    ${message?ifExists}
    <@l.login "/login" false/>
</@c.page>