<?php
# dvdisaster: English homepage translation
# Copyright (C) 2004-2010 Carsten Gnörlich
#
# UTF-8 trigger: äöüß 
#
# Include our PHP sub routines, then call begin_page()
# to start the HTML page, insert the header, 
# navigation and news if appropriate.

require("../include/dvdisaster.php");
require("../include/screenshot.php");
begin_page();

howto_headline("Восстановление образов носителей", "Дополнительные параметры", "images/create-icon.png");
?>

Первая попытка <a href="howtos42.php">чтения поврежденного носителя</a> 
обычно дает достаточно данных для исправления ошибок. Если это оне так,
попробуйте следующее:<p>

<?php begin_screen_shot("Оценивание вероятности восстановления","adaptive-failure.png"); ?>
<b>Оценивание вероятности восстановления</b><p>
Изучите результат процесса чтения. В разделе "Обработанные сектора" 
приводится фактический процент читаемых секторов и сколько процентов
потребуется для полного восстановления. Используя разность этих двух значений
(85.6% - 81.3% = 4.3% в примере), можно оценить шансы собрать достаточно секторов для успешного восстановления:<p>
<?php end_screen_shot(); ?>

<table cellspacing="0" cellpadding="10px">
<tr bgcolor="#c0ffc0">
<td width="10%" align="center" valign="top">&lt; 5%</td>
<td> Высока вероятность того, что будет получено достаточно данных за счет использования большего числа попыток чтения.
</td></tr>
<tr bgcolor="#ffffc0">
<td width="10%" align="center" valign="top">5%-10%</td>
<td> Если у вас есть несколько приводов с разными характеристиками чтения, 
можно получить требуемые данные, если быть настойчивым и терпеливым.
</td></tr>
<tr bgcolor="#ffe0c0">
<td width="10%" align="center" valign="top">10%-20%</td>
<td> У вас проблема. Если число недостающих секторов не уменьшится значительно 
ниже 10% за следующие 2-3 попытки чтения, то носитель, вероятно, не удастся восстановить. 
</td></tr>
<tr bgcolor="#ffc0c0">
<td width="10%" align="center" valign="top">&gt; 20%</td>
<td>Слишком много потеряно данных; этот носитель можно списать как невосстановимый.
Чтобы этого больше не случалось, используйте данные для исправления ошибок
с большей избыточностью и сократите интервалы для проверки дефектов.
</td></tr>
</table><p>

Попробуйте следующие параметры один за другим в дальнейших попытках чтения.
Выполняйте полный проход чтения для каждого параметра, чтобы можно было 
узнать, как он влияет на результат (иногда результаты отличаются еще и из-за привода, используемого для чтения). Когда вы пройдете весь список параметров, вы можете сочетать их в
более действенных конфигурациях.

<hr>

<?php begin_screen_shot("Выполнение еще одной попытки чтения","fix-prefs-read-attempts1.png"); ?>
<b>Выполнение еще одной попытки чтения</b><p>
Не меняйте никаких значений, кроме установления меньшего значения для завершения 
процесса чтения. Рекомендуемые значения: 32 для BD, 16 для DVD и 0 для CD (используйте ползунок, 
помеченный зеленым). Выполните еще одну попытку чтения с использованием этой настройки.
Можно повторять чтение носителя, пока каждый проход 
дает дополнительное число новых секторов.<p>
<b>Совет:</b> Дайте приводу остыть между проходами чтения. Извлекайте и вставляйте
носитель перед каждым проходом; иногда носитель фиксируется на месте лучше
и число читаемых секторов увеличивается.
<p>
<?php end_screen_shot(); ?>

<hr>

<b>Завершение образа за счет использования разных приводов</b><p>
Проведите дополнительные попытки чтения с использованием различных приводов. Перенесите
образ на другие компьютеры и проверьте, могут ли их приводы добавить читаемые сектора.</b><p>

<hr>

<?php begin_screen_shot("Увеличение числа попыток чтения","fix-prefs-read-attempts2.png"); ?>
<b>Увеличение числа попыток чтения</b><p>
<i>Для всех типов носителей (CD, DVD, BD):</i><p>
Установите число попыток чтения на сектор минимум 5 и максимум 9
(помечено зеленым).<p>
<i>Только для CD:</i><p>
Некоторые приводы могут частично считывать поврежденные секторы с CD.
Активируйте параметр "Хранение необработанных секторов" и укажите каталог, где
должны храниться поврежденные сектора (помечено желтым).
Если будет собрано достачное число фрагментов поврежденного сектора, то будет возможно
полностью реконструировать его по этой информации.
<?php end_screen_shot(); ?>


<?php begin_screen_shot("Несколько попыток чтения","fix-reread-dvd.png"); ?>

<i>Изучение результатов нескольких попыток чтения (CD, DVD, BD):</i><br>
Не все приводы дают улучшение после увеличения числа попыток чтения.
Наблюдайте за сообщениями вида "Сектор ..., попытка x: успешно" (выделено желтым).
Это показывает, что 
привод смог прочитать сектор после нескольких попыток чтения. Если таких сообщений нет, увеличение числа попыток чтения не оправдывает себя для соответствующего привода.
<?php end_screen_shot(); ?>

<a name="21h"></a>
<i>Изучение частичного чтения поврежденных секторов CD:</i><br>
Когда весь носитель будет обработан, загляните в каталог, введенный выше
(в этом примере /var/tmp/raw). Если здесь никаких файлов не создано, то
привод, вероятно, не поддерживает требуемый режим чтения.
Однако если у вас есть несколько приводов, которые создают файлы с необработанными секторами, тогда пусть они все работают в том же каталоге. Сбор фрагментов необработанных секторов от разных приводов повышает шанс восстановления поврежденных секторов.
<p>

<?php begin_screen_shot("Использование другого режима низкоуровневого чтения","fix-prefs-drive2.png"); ?>
<i>Использование другого режима низкоуровневого чтения для CD-носителей:</i><br>
На некоторых приводах использование предустановленного режима низкоуровневого чтения "20h" может не работать.
Выполните еще одну попытку чтения, используя режим низкоуровневого чтения "21h" (смотрите снимок с экрана).
Проверьте вновь, не создались ли файлы с необработанными секторами.
<?php end_screen_shot(); ?>

<!--- do not change below --->

<?php
# end_page() adds the footer line and closes the HTML properly.

end_page();
?>
