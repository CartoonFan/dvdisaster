<?php
# dvdisaster: Russian homepage translation
# Copyright (C) 2007-2009 Igor Gorbounov
#
# UTF-8 trigger: äöüß 
#
# Include our PHP sub routines, then call begin_page()
# to start the HTML page, insert the header, 
# navigation and news if appropriate.

require("../include/dvdisaster.php");
begin_page();
?>

<!--- Insert actual page content below --->

<h3>Типичные приложения</h3>

dvdisaster - это сложный инструмент, для описания всех свойств которого потребовалась бы
целая книга. Поскольку в настоящее время у нас нет ресурсов для
того, чтобы сделать книгу (и у вас, должно быть, тоже мало времени), мы здесь 
используем другой подход.
Сначала мы покажем, как <a href="howtos60.php">различные
функции dvdisaster работают вместе</a>.
Затем мы опишем задачи общего назначения и дадим пошаговые инструкции 
для их решения. В большинстве случаев будет достаточно
следования этим шагам. В конце каждого
набора инструкций добавлено для опытных пользователей
обсуждение дополнительных параметров конфигурации.<p>

<h3>Обозначения, используемые в этом документе</h3>

Работа с dvdisaster требует определенного сочетания оптических носителей,
образов носителей и данных для исправления ошибок. Просмотрите следующие обозначения,
чтобы знать, что вам потребуется для соответствующих задач:<p>

<b>Носитель</b> (например, CD)

<table cellspacing="10">
<tr>
<td align="center" width="15%"><img src="../images/good-cd.png"></td>
<td align="center" width="15%"><img src="../images/bad-cd.png"></td>
<td width="55%">Эти обозначения показывают, является ли обработка носителя
частью соответствующей задачи, и должен ли носитель
быть полностью без ошибок или уже может быть поврежден.
</td>
</tr>
<tr  valign="top">
<td>хороший носитель (<b>нет</b> ошибок чтения)</td>
<td>плохой носитель (<b>с</b> ошибками чтения)</td>
<td></td>
</tr>
</table><p>

<b>Образ носителя</b> (ISO-образ носителя, хранащийся на жестком диске)

<table cellspacing="10">
<tr>
<td align="center" width="15%"><img src="../images/good-image.png"></td>
<td align="center" width="15%"><img src="../images/bad-image.png"></td>
<td width="55%">Некоторые функции работают не напрямую с носителем, а
с ISO-образом на жестком диске. В зависимости от состояния соответствующего
носителя образ может быть полным или неполным.</td>
</tr>
<tr valign="top">
<td>полный образ (получен с хорошего носителя)</td>
<td>неполный образ (получен с плохого носителя)</td>
</tr>
</table><p>

<b>Данные для исправления ошибок</b>

<table cellspacing="10">
<tr>
<td align="center" width="15%"><img src="../images/good-cd-ecc.png"></td>
<td align="center" width="15%"><img src="../images/ecc.png"></td>
<td width="55%">Восстановление образов носителей с помощью данных для исправления ошибок
является главной особенностью dvdisaster. Это обозначение показывает, требуются ли
данные для исправления ошибок.
</td>
</tr>
<tr  valign="top">
<td>Носитель, содержащий данные для исправления ошибок</td>
<td>Отдельный файл с данными для исправления ошибок</td>
<td></td>
</tr>
</table><p>


<!--- do not change below --->

<?php
# end_page() adds the footer line and closes the HTML properly.

end_page();
?>
