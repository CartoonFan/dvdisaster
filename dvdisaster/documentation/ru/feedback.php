<?php
# dvdisaster: Russian homepage translation
# Copyright (C) 2007-2013 Igor Gorbounov
#
# UTF-8 trigger: äöüß 
#
# Include our PHP sub routines, then call begin_page()
# to start the HTML page, insert the header, 
# navigation and news if appropriate.

require("../include/dvdisaster.php");
require("../include/screenshot.php");
begin_page();
?>

<!-- Insert actual page content below -->

<h3 class="top">Сообщения об ошибках</h3>
Как всякое сложное программное обеспечение, dvdisaster может содержать ошибки (ошибки программирования) и
может быть несовместим с некоторыми настройками аппаратуры (приводов) и программного обеспечения.
Пожалуйста, сообщайте нам о любых затруднениях с программой
или документацией, чтобы мы могли внести улучшения в будущих версиях.<p>

Чтобы быть уверенными, что мы получаем правильную информацию, мы составили
следующий перечень для сообщений об ошибках:


<h4>Сначала проверьте, что вы действительно столкнулись с ошибкой:</h4>

<ul>
<li>Убедитесь, что вы используете самую последнюю подлинную версию с нашего
<a href="http://dvdisaster.net/ru/download.php">сайта 
на SourceForge</a>.
Версии dvdisaster, предоставленные третьими сторонами, 
могут содержать функции и ошибки, которых нет в первоначальной версии
(и мы не можем исправить их ошибки).</li>
<li>Тщательно проверьте, что проблема, с которой вы столкнулись, еще не упоминается в
разделе <a href="qa20.php">Вопросы и ответы</a>.</li>
<li>Имейте в виду, что dvdisaster работает только с (пере-)записываемыми видами
носителей, поэтому, если он <b>отказывается</b> работать с <b>DVD-ROM</b> и <b>BD-ROM</b>, то это <b>не
ошибка</b>. Кроме того, не поддерживаются CD-Audio, VCD, SVCD и многосессионные CD, а также и
все форматы HD-DVD 
(<a href="qa10.php#media">полный список поддерживаемых форматов носителей</a>).</li>
<li>dvdisaster работает только с физическими приводами. Не поддерживаются
сетевые приводы, виртуальные приводы (например, alcohol-диски) и приводы в виртуальных 
машинах.</li>
</ul>

<h4>Как сообщать о проблемах с программой:</h4>

Сообщайте о ваших находках электронной почтой на 
<img src="../images/email.png" alt="email shown as png image" class="valigntt">. Ваше сообщение должно содержать:<p>

<ul>
<li>Информацию об операционной системе и версии dvdisaster, которыми вы пользуетесь;</li>
<li>привод и тип(ы) носителей, с которыми проявилась проблема; </li>
<li>текстовое описание проблемы, с которой вы столкнулись;</li>
<li>снимок с экрана сообщения об ошибке и/или выходные данные, которые могли бы
дать дополнительную информацию о проблеме;</li>
<li>различия между работающими и неработающими конфигурациями, если проблема
проявляется только на некоторых приводах или компьютерах;</li>
<li>журнал сообщений, если вы подозреваете, что проблема связана с несовместимостью привода или 
носителя.</li>
</ul>

<?php begin_screen_shot("Создание журнального файла.", "activate-logfile.png"); ?>

<b>Как создать журнальный файл:</b> Если вы подозреваете, что причина вашей проблемы - в несовместимости
с вашим приводом и/или носителями, включите в настройках возможность ведения журнала, 
как показано на снимке с экрана. Затем выполните проверку или чтение 
и присоедините файл журнала к вашему сообщению об ошибке.
<?php end_screen_shot(); ?>

Спасибо за обратную связь!

<!-- do not change below -->

<?php
# end_page() adds the footer line and closes the HTML properly.

end_page();
?>
