<?php
# dvdisaster: English homepage translation
# Copyright (C) 2004-2013 Carsten Gnörlich
#
# UTF-8 trigger: äöüß 
#
# Include our PHP sub routines, then call begin_page()
# to start the HTML page, insert the header, 
# navigation and news if appropriate.

require("../include/dvdisaster.php");
begin_page();
?>

<!-- Insert actual page content below -->

<h3 class="top">Проверка совместимости образов</h3>

<b>Почему dvdisaster использует ISO-образы.</b> 
Некторые функции dvdisaster'а работают над образами, хранящимися на жестком диске.
Приводы CD/DVD/BD слишком медленны для выполнения требуемых режимов доступа, и они могут быстро износиться. Но жесткие диски предназначены для такого типа доступа, и они делают это быстро и без износа.<p>

<b>Проверка совместимости имеет важное значение.</b> 
При работе с dvdisaster можно (а иногда необходимо) использовать ISO-образы,
созданные с помощью стороннего программного обеспечения. К сожалению, ISO-образы
стандартизированы лишь неформально. Обычно все программы создают 
одинаковые образы, когда от них требуется использовать формат файла ".iso", но лучше убедиться, что создан пригодный ISO-образ:
обработка dvdisaster'ом образа не iso-формата приведет к получению данных для исправления ошибок, которые нельзя использовать. В оособенности для обработки dvdisaster'ом  
<b>непригодны форматы типа .nrg</b>.
<p>

<b>Возможные сценарии.</b> В следующих ситуациях требуется обмен
ISO-образов между dvdisaster и сторонним ПО:<p>

<b>а) Создание файлов для исправления ошибок по ISO-образам, сделанным ПО для записи CD</b><p>

Программное обеспечение для записи CD/DVD/BD используется для создания ISO-образа.
Этот образ используется для записи носителя и для создания файла для исправления ошибок. Когда это ПО для записи дисков используется в первый раз совместно с dvdisaster, убедитесь, что 
<a href="howtos91.php">образ записан на носитель без изменений</a>.<p>


<b>б) Дополнение ISO-образов данными для исправления ошибок</b><p>

dvdisaster добавляет на носитель "невидимые" данные для исправления ошибок для того, чтобы
минимизировать взаимодействие с другими приложениями.
Следовательно, есть возможность того, что некоторое программное обеспечение для записи CD/DVD/BD запишет на носитель данные для исправления ошибок не надлежащим образом. Когда вы используете ПО для записи в первый раз, убедитесь, что оно <a href="howtos92.php">правильно переносит данные для исправления ошибок</a>.

<!-- do not change below -->

<?php
# end_page() adds the footer line and closes the HTML properly.

end_page();
?>
