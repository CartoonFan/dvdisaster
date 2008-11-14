<?php
# dvdisaster: Russian homepage translation
# Copyright (C) 2007-2008 Igor Gorbounov
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

<!--- Insert actual page content below --->

<h3>Сообщения об ошибках</h3>
Как всякое сложное программное обеспечение, dvdisaster может содержать ошибки (ошибки программирования) и
может быть несовместим с некоторыми настройками аппаратуры (приводов) и программного обеспечения.
Пожалуйста, сообщайте нам о любых затруднениях с программой
или документацией, чтобы мы могли внести улучшения в будущих версиях.<p>

Чтобы быть уверенными, что мы получаем правильную информацию, мы составили
следующий перечень для сообщений об ошибках:


<h4>Сначала проверьте, что Вы действительно столкнулись с ошибкой:</h4>

<ul>
<li>Убедитесь, что Вы используете самую последнюю подлинную версию с нашего
<a href="http://dvdisaster.net/en/download.php">сайта 
на SourceForge</a>.
Версии dvdisaster, предоставленные третьими сторонами, 
могут содержать функции и ошибки, которых нет в первоначальной версии.</li>
<li>Тщательно проверьте, что проблема, с которой Вы столкнулись, еще не упоминается в
разделе <a href="qa20.php">Вопросы и ответы</a>.</li>
<li>Обратите внимание, что dvdisaster работает только с (пере-)записываемыми видами
носителей, поэтому, если он отказывается работать с DVD-ROM, BD-ROM и HD DVD-ROM, то это <b>не
ошибка</b>. Кроме того, не поддерживаются CD-Audio, VCD, SVCD и многосессионные CD 
(<a href="qa10.php#media">полный список поддерживаемых форматов носителей</a>).</li>
<li>dvdisaster работает только с физическими приводами. Не поддерживаются
сетевые приводы, виртуальные приводы (например, alcohol) и приводы в виртуальных 
машинах (например, VMWare(R) и Xen).</li>
</ul>

<h4>Как сообщать о проблемах с программой:</h4>

Сообщайте о Ваших находках электронной почтой на 
<img src="../images/email.png" align="top">. Ваше сообщение должно содержать:<p>

<ul>
<li>Информацию об операционной системе и версии dvdisaster, которыми Вы пользуетесь;</li>
<li>привод и тип(ы) носителей, с которыми проявилась проблема; </li>
<li>текстовое описание проблемы, с которой Вы столкнулись;</li>
<li>снимок с экрана сообщения об ошибке и/или выходные данные, которые могли бы
дать дополнительную информацию о проблеме;</li>
<li>различия между работающими и неработающими конфигурациями, если проблема
проявляется только на некоторых приводах или компьютерах;</li>
<li>журнал сообщений, если Вы подозреваете, что проблема связана с несовместимостью привода или 
носителя.</li>
</ul>

<?php begin_screen_shot("Создание журнального файла.", "activate_logfile.png"); ?>

<b>Как создать журнальный файл:</b> Если Вы подозреваете, что причина Вашей проблемы - в несовместимости
с Вашим приводом и/или носителем, включите в настройках возможность ведения журнала, 
как показано на снимке с экрана. Затем выполните проверку или чтение 
и присоедините файл журнала к Вашему сообщению об ошибке.
<?php end_screen_shot(); ?>

Спасибо за обратную связь!

<!--- do not change below --->

<?php
# end_page() adds the footer line and closes the HTML properly.

end_page();
?>