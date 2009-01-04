<?php
# dvdisaster: Russian homepage translation
# Copyright (C) 2007-2009 Igor Gorbounov
#
# UTF-8 trigger: äöüß 
#
# Includes our PHP sub routines,
# starts the HTML page and inserts the header, 
# navigation and news if appropriate.

require("../include/dvdisaster.php");
begin_page();
?>

<!--- Insert actual page content here --->

<h3>Проект dvdisaster:</h3>

CD и DVD носители хранят данные лишь ограниченное время (обычно в течение многих лет).
По прошествии этого времени постепенно развивается потеря данных, при этом ошибки чтения 
распространяются от внешних областей носителя к внутренним.<p>

<b>Архивирование с защитой от потери данных</b><p>

dvdisaster хранит данные на CD/DVD (<a href="qa10.php#media">поддерживаемые носители</a>)
таким образом, что они полностью восстанавливаются даже после того, как образовалось некоторое количество ошибок чтения. 
Это дает вам возможность спасти свои данные и сохранить их на новом носителе.<p>

Потеря данных предотвращается за счет 
использования кодов коррекции ошибок.
Данные для исправления ошибок либо добавляются к носителю, либо хранятся в отдельных
файлах коррекции ошибок. dvdisaster работает на уровне образа, поэтому восстановление не зависит 
от файловой системы носителя.
Возможности исправления ошибок настраиваются пользователем.<p>

<b>Обычные недоразумения по поводу программы dvdisaster:</b>

<ul>
<li>dvdisaster не может сделать так, чтобы поврежденные носители вновь стали читаемыми.
Содержимое поврежденного носителя <i>не</i> может быть восстановлено без 
данных для исправления ошибок.<p></li> 
<li><img src="images/exclude_from_search_terms.png" align="middle"><br>
Такие функции выходят за рамки целей и внутренней архитектуры программы dvdisaster.</li>
</ul>

<p>
<a href="index10.php">Примеры исправления ошибок...</a>

<?php
# Adds the footer line and closes the HTML properly.

end_page();
?>
