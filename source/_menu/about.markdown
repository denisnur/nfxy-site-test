---
name: about
title: Про нас
description: <p>Мы организация русскоговорящих геев, лесбиянок, бисексуалов, трансгендеров и их друзей в Германии<br/>Мы встречаемся каждую первую пятницу месяца в 19.00 по адресу Berlin, Kleiststr. 35 (Звонок LSVD)<br/></p> 
---

    <div class="item__title">
      <img class="item__title_img" src="/static/img/title-{{ page.name }}.png" alt="{{ page.title }}" width="150" height="100">
      <p><a href="$item.document.uri">$item.title</a></p>
    </div>
    <div class="item__description">
      
      <br/>
      #foreach($category in $article.categories)
      #if($foreach.count > 1 )
      #foreach($item in $category.items)
      <p style="text-indent: 0.6em"><a href="$item.document.uri">$item.title</a></p>
      #end
      #end
      <br/>
      #end
    </div>
