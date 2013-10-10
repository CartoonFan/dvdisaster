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
begin_page();
?>

<!-- Insert actual page content below -->

<h3 class="top">Общая картина - сравнение dvdisaster с обычным резервированием</h3>

dvdisaster хранит данные на CD/DVD/BD таким образом, что данные полностью восстановимы даже после
того, как у носителя появились ошибки чтения. Метод, применяемый в dvdisaster, использует
меньше места (или дополнительных носителей), чем полное резервное копирование.
Перед тем, как использовать dvdisaster, важно понять сходства и 
различия между dvdisaster и обычным (полным) резерированием:<p> 

Давайте сначала рассмотрим, как работает обычная схема резервирования:<p>

<table width="100%">
<tr>
<td class="w65x"><img src="../images/backup1.png" alt="Icon: Original media"></td>
<td class="w65x">Copy<br><img src="../images/right-arrow.png" alt="Icon: Arrow right"></td>
<td class="w65x"><img src="../images/backup2.png" alt="Icon: Backup media"></td>
<td> &nbsp; </td>
<td>Существующий носитель (1) копируется на резервный носитель (2).</td>
</tr>

<tr>
<td align="center"><img src="../images/down-arrow.png" alt="Icon: Arrow down">&nbsp;&nbsp;</td>
<td></td>
<td align="center"><img src="../images/down-arrow.png" alt="Icon: Arrow down">&nbsp;&nbsp;</td>
<td> </td>
</tr>

<tr>
<td class="w65x"><img src="../images/bad-cd1.png" alt="Icon: Damaged media"></td>
<td class="w65x"> </td>
<td class="w65x"><img src="../images/backup2.png" alt="Icon: Backup media"></td>
<td></td>
<td>Если люой один из этих носителей будет поврежден после этого, 
у нас все еще останется нетронутый носитель.</td>
</tr>
</table><p>

На самом деле, есть случаи, когда важно иметь вторую копию
CD/DVD/BD: один носитель может быть утерян, разрушен при вращении в приводе
или он может быть уничтожен вследствие неправильного обращения с ним. Однако
такие случаи полной потери данных редки, если с носителем правильно обращаются.<p>

Более вероятно, что носитель начнет постепенно терять данные 
через несколько лет - почти неизбежный процесс старения.
Когда носитель регулярно используется (или проверяется на дефекты), потеря данных
обычно замечается после того, как от 5% до 10% носителя уже стало
нечитаемым. На этой стадии носитель непригоден как целое, 
но, вероятно, 90% его все еще читается. <i>На этой стадии полная резервная копия 
носителя не требуется; нам просто нужен метод восстановления 
недостающих 10% данных.</i><p>

Вот тут dvdisaster и вступает в игру. Рассмотрим:<p>

<table width="100%">
<tr>
<td class="w65x"><img src="../images/good-cd.png" alt="Icon: Good medium (without read errors)"></td>
<td class="w65x">Создание<br><img src="../images/right-arrow.png" alt="Icon: Arrow right"><br>ECC</td>
<td class="w65x"><img src="../images/ecc.png" alt="Icon: Separate file with error correction data"></td>
<td> &nbsp; </td>
<td>
В этот раз мы не делаем полное резервирование. dvdisaster используется для создания данных для исправления ошибок ("ECC"), которые могут восстановить до 20% испорченного носителя.
Значение 20% было выбрано для того, чтобы иметь запас безопасности по отношению к ожидаемой потере данных в 5-10%.  
</td>
</tr>

<tr>
<td align="center"><img src="../images/down-arrow.png" alt="Icon: Arrow down">&nbsp;&nbsp;</td>
<td></td>
<td align="center"><img src="../images/down-arrow.png" alt="Icon: Arrow down">&nbsp;&nbsp;</td>
<td> </td>
</tr>

<tr>
<td><img src="../images/bad-cd.png" alt="Icon: Damaged medium (partially unreadable)"></td>
<td> </td>
<td><img src="../images/ecc.png" alt="Icon: Separate file with error correction data"></td>
<td> &nbsp; </td>
<td>
Когда носитель дает сбой через какое-то время,
его содержимое восстанавливается из все еще читаемых его частей и из
данных для исправления ошибок.
</td>
</tr>

<tr>
<td align="right" class="w65x">80%<img src="../images/rdiag-arrow.png" alt="Icon: Diagonal arrow right"></td>
<td> </td>
<td align="left" class="w65x"><img src="../images/ldiag-arrow.png" alt="Icon: Diagonal arrow left">20%</td>
<td> </td>
<td>
Для успешного восстановления не меньше 80% данных все еще должны быть читаемыми с носителя, а оставшиеся 20% рассчитываются по данным для исправления ошибок.</td>
</tr>

<tr>
<td> </td>
<td> <img src="../images/good-image.png" alt="Icon: Complete image"></td>
<td> </td>
<td> </td>
<td>Теперь полностью восстановленные данные имются в виде ISO-образа на жестком диске 
(носитель остается поврежденным, так как физическая потеря данных необратима). 
</td>
</tr>

<tr>
<td> </td>
<td align="center"><img src="../images/down-arrow.png" alt="Icon: Arrow down"></td>
<td> </td>
<td> </td>
<td>Запишите образ на чистый носитель с помощью своей любимой программы для 
создания CD/DVD/BD.</td>
</tr>

<tr>
<td> </td>
<td align="center"><img src="../images/good-cd.png" alt="Icon: Good medium (without read errors)"></td>
<td> </td>
<td> </td>
<td>Теперь у вас есть новый носитель без ошибок.</td>
</tr>
</table><p>

Как видите, восстановление данных потребовало больше шагов, чем обычное резервирование.
Итак, давайте подведем итоги "за" и "против" dvdisaster в сравнении с обычным резервированием:<p>

<table>
<tr valign="top"><td>Преимущества</td>
<td><ul>
<li>dvdisaster использует меньше места для хранения. При использовании данных для исправления ошибок с возможностью восстановления в 20%, защита 5 носителей требует только одного дополнительного носителя для ECC-данных.</li>
<li>Поскольку все носители, в конце концов, стареют и начинают терять данные в одних и тех же местах (обычно в самой внешней области), создание копии 1:1 может быть бесполезно. Через несколько лет обе копии могут оказаться поврежденными в одних и тех же местах.</li>
</ul></td></tr>
<tr valign="top"><td>Сходство</td>
<td><ul><li>Обе резервные копии и данные для коррекции ошибок должны быть созданы до того, как основной диск даст сбой. Нельзя создать их из уже поврежденного носителя.</li></ul></td></tr>
<tr valign="top"><td>Недостатки</td>
<td><ul><li>Если возможности восстановления данных для исправления ошибок будут превышены (или будет утерян носитель), данные не могут быть восстановлены!
В особенности имейте в виду, что данные для исправления ошибок с уровнем исправления  20% и носитель, читаемый на 75%, не дадут в результате восстановление в 95%! В этом случае ничего, кроме 75% читаемых данных не может быть восстановлено!</li></ul></td></tr>
</table> 

На следующих трех страницах дается более конкретная информация:<p>

<ul>
<li>Объяснение общей идеи <a href="howtos61.php">исправления ошибок</a>.<p></li>
<li>Джейн демонстрирует <a href="howtos62.php">правильное использование dvdisaster</a>. Она заранее создаст данные для исправления ошибок и, следовательно, сможет восстановить все данные, когда ее носители повредятся.<p></li>
<li>Однако вам не следует <a href="howtos63.php">повторять подход</a> Джо. 
Он не использует данные для исправления ошибок и узнает, что его дефектные 
носители не восстанавливаются даже с помощью многократного чтения. Таким образом, он теряет данные на дефектном носителе.<p></li>
</ul>

Конечно, эти рассказы являются чистым вымыслом и любое сходство с существующими  людьми или ситуациями полностью случайное.


<!-- do not change below -->

<?php
# end_page() adds the footer line and closes the HTML properly.

end_page();
?>
