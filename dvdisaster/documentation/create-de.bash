#! /bin/bash

#  dvdisaster: German homepage translation
#  Copyright (C) 2004-2006 Carsten Gn�rlich
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA,
#  or direct your browser at http://www.gnu.org.

# ----- Translations for phrases used in create.bash

function dictionary_de()
{  trans_encoding="ISO-8859-1"

   trans_version="Version"

   trans_to_internet="Zur Internet-Version"
   trans_to_hoster="�bersicht (auf BerliOS)"

   trans_back="Zur�ck"

   trans_contents="Inhalt"
   trans_hosting="Diese Seiten liegen auf"

   trans_fdl="Die unver�nderte Wiedergabe und Verteilung dieses gesamten Textes in beliebiger Form ist gestattet, sofern dieser Hinweis erhalten bleibt."
   trans_copyright="Copyright 2004-2006 Carsten Gn�rlich."
}


# ----- These are the "inlined" html pages.

function inline_contents_de()
{  title="Abbildung(en)"
}

function inline1de()
{  cat >> $1 <<EOF

<tr align="center"><td><h3>Abbildung: Stark verkratzter Datentr�ger</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/scratch-img.jpg" alt="verkratzter Datentr�ger"></center>
<br clear="all">
</td></tr>
<tr><td>
Dieser Datentr�ger wurde ohne H�lle in einem Rucksack transportiert;
die runden Abdr�cke stammen von einer Flasche Mineralwasser. Die Kratzer
erscheinen in dem Foto allerdings durch Reflektionen
des Blitzlichtes etwas �berzeichnet.</td></tr>
EOF
}

function inline2de()
{  cat >> $1 <<EOF

<tr align="center"><td><h3>Abbildungen: Fehleranalyse</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/scratch-scan-de.png" alt="Verkratzten Datentr�ger einlesen"></center>
<br clear="all">
</td></tr>
<tr><td>
Beim Einlesen von Datentr�gern zeigt dvdisaster die Lesegeschwindigkeit (blaue Kurve) 
und die Anzahl der Lesefehler an. Mit Hilfe der Spirale kann man die ungef�hre Verteilung
der Lesefehler von innen nach au�en absch�tzen. Die Ma�st�blichkeit der
Darstellung darf aber nicht �berinterpretiert werden, da der exakte Winkel zwischen zwei Segmenten
aus technischen Gr�nden nicht den wirklichen Verh�ltnissen auf dem Datentr�ger entspricht.
<pre> 

</pre>
</td></tr>
<tr align="center"><td>
<center><img src="../images/scratch-corr-de.png" alt="Verkratzten Datentr�ger reparieren"></center>
<br clear="all">
</td></tr>
<tr><td>
Dieses Diagramm zeigt die zu korrigierenden Fehler pro Fehlerkorrekturbereich und vermittelt
damit einen Eindruck von der Auslastung der <a href="background10.html">Fehlerkorrektur</a> von dvdisaster.

Die Fehlerkurve entspricht <i>nicht</i> der r�umlichen Anordnung der Lesefehler
auf dem Datentr�ger, denn das Verfahren basiert gerade darauf, 
die Lesefehler gleichm��ig �ber alle Fehlerkorrekturbereiche zu verteilen.<p>

Pro Fehlerkorrekturbereich k�nnen bei Verwendung der
<a href="example83.html#redundancy">Grundeinstellungen</a>
maximal 32 Lesefehler repariert werden (gr�ne Linie).
Wenn diese Linie �berschritten wird, ist der Inhalt des Datentr�gers 
nicht mehr vollst�ndig wiederherstellbar.

</td></tr>
EOF
}

# ----- Individual page contents 

# ----- Default home page

function index_contents_de()
{  local file="$1.html"
   local query=$2
   local page=$3
   local lang=$4

   case $query in
   title)   title="�berblick" ;;

   link)    link_title="�berblick" ;;
   link0)   link_title="�berblick" ;;
   link10)   link_title="Beispiele f�r die Fehlerkorrektur" ;;   
   link20)   link_title="dvdisaster erg�nzt PI/PO-Analysen" ;;
   link30)   link_title="Vor- und  Nachteile von dvdisaster" ;;

   content*) eval "index$page$lang $file" ;;
   esac 
}

function index0de()
{  cat >> $1 <<EOF
<h3>Das dvdisaster-Projekt:</h3>

dvdisaster erzeugt einen Sicherheitspuffer gegen  <b>Datenverluste</b>, die
auf <a href="qa10.html#media">CD</a>- und  <a href="qa10.html#media">DVD</a>-Datentr�gern 
durch <b>Alterung</b> oder <b>Verkratzen</b> entstehen:

<ul>
<li>dvdisaster legt <b>Fehlerkorrektur-Daten</b> f�r die F�lle an,
in denen vom Laufwerk nicht mehr korrigierbare Lesefehler auftreten.<p></p></li>

<li>dvdisaster versucht so viele Daten wie m�glich von einem defekten Datentr�ger zu lesen.
Danach werden unlesbare Datenabschnitte durch die vorher erzeugten Fehlerkorrektur-Daten 
rekonstruiert. 
Die maximale Kapazit�t der Fehlerkorrektur ist einstellbar.<p></li>

<li>dvdisaster arbeitet auf der <a href="background20.html">Abbild-Ebene</a> und ist dadurch
vom Dateisystem unabh�ngig.</li>
</ul>

Wenn Sie die Fehlerkorrektur-Daten rechtzeitig erzeugen und gut aufheben,
haben Sie bei typischen Lesefehlern eine gute Aussicht, Ihre Daten noch
vollst�ndig auf einen neuen Datentr�ger zu retten.

<p>
<a href="index10.html">Beispiele f�r die Fehlerkorrektur...</a>
EOF
}

function index10de()
{ 
  create_inline inline de 1 index10.html "zu den Beispielen f�r die Fehlerkorrektur"
  create_inline inline de 2 index10.html "zu den Beispielen f�r die Fehlerkorrektur"
 
  cat >> $1 <<EOF
<h3>Beispiele f�r die Fehlerkorrektur</h3>

<table><tr><td valign="top">
<b><a name="scratches">Stark verkratzter Datentr�ger.</a></b> &nbsp;

Dieser Datentr�ger wurde ohne H�lle in einem Rucksack transportiert;
die runden Abdr�cke stammen von einer Flasche Mineralwasser. Die Kratzer
erscheinen in dem Foto allerdings durch Reflektionen
des Blitzlichtes etwas �berzeichnet.<p>

Eine Oberfl�chenanalyse des Datentr�gers ergibt rund 135.000 unlesbare
Sektoren (von insgesamt ca. 2.200.000, also 6% defekte Sektoren).
Bei der <a href="example40.html">Wiederherstellung</a> des Datentr�ger-Abbildes
(mit <a href="example83.html#redundancy">Grundeinstellungen</a>)
treten im schlechtesten <a href="background10.html">ECC-Bereich</a> 22 Fehler auf.
Dies entspricht einer maximal 69%-igen Auslastung der Fehlerkorrektur
unter den gew�hlten Einstellungen.<p>


</td><td width=110>
<a href="inline1.html">
<img src="../images/scratch-img.jpg" alt="verkratzter Datentr�ger" width=100 height=97></a>
<br clear="all">
<a href="inline2.html">
<img src="../images/scratch-scan-de.png" alt="verkratzten Datentr�ger lesen" width=100 height=74></a>
<br clear="all">
<a href="inline2.html">
<img src="../images/scratch-corr-de.png" alt="verkratzten Datentr�ger reparieren" width=100 height=74></a>
</td></tr></table>

<a href="index20.html">Warum PI/PO-Analysen alleine nicht ausreichen...</a>
EOF
}

function index20de()
{  cat >> $1 <<EOF
<h3>dvdisaster als Erg�nzung zu PI/PO-Analysen</h3>

<a href="qa.html#pipo">PI/PO-Analysen</a> sind ein wertvolles Werkzeug 
zur �berpr�fung und Optimierung der Brennqualit�t.
<p>

Aber: Die <b>Lebensdauer</b> von DVD-Datentr�gern l��t sich durch 
PI/PO-Analysen <b>nicht zuverl�ssig voraussagen</b>!

<ul>
<li> PI/PO-Analysen erlauben keine Aussage dar�ber,
wie viele Kratzer oder Wochen Alterung ein Datentr�ger noch
verkraftet, bevor erste unlesbare Sektoren auftreten.<p></li>

<li>Das Umkopieren eines Datentr�gers aufgrund schlechter
PI/PO-Werte erweist sich h�ufig als zu voreilig - 
manchmal "leben" solche DVDs noch viel l�nger als erwartet.<p></li>

<li>Andererseits kann man (ohne ein Werkzeug wie dvdisaster) mit dem Umkopieren 
nat�rlich nicht warten, bis Lesefehler auftreten - 
dann w�ren die ersten Daten schlie�lich schon verloren.</li>
</ul>

<a href="index30.html">Vor- und Nachteile von dvdisaster zusammengefa�t...</a>
EOF
}


function index30de()
{  cat >> $1 <<EOF
<h3>Vorteile von dvdisaster:</h3>

<ul>
<li><b>Schutz</b> vor unvorhergesehener Besch�digung (in <a href="background10.html">bestimmten Grenzen</a>).<p></li>
<li>�berpr�fen auf Lesefehler geht <b>schneller</b> als eine PI/PO-Analyse.<br>
Je nach Laufwerk mit bis zu 16-facher Lesegeschwindigkeit.<p></li>
<li><b>Kostensparend:</b> Datentr�ger brauchen erst dann umkopiert zu werden,
wenn sie wirklich defekt sind.</li>
</ul>

<h3>Nachteile von dvdisaster:</h3>

<ul>
<li>Fehlerkorrektur-Daten <b>m�ssen erzeugt werden, bevor</b> der 
Datentr�ger kaputt geht (am besten gleich beim Brennen des Datentr�gers).<p></li>
<li>Die Fehlerkorrektur-Daten ben�tigen <b>zus�tzlichen Speicherplatz</b>;
entweder direkt auf dem zu sch�tzenden Datentr�ger oder auf zus�tzlichen
Datentr�gern.
In der <a href="example83.html#redundancy">Grundeinstellung</a> betr�gt der
Speicherplatzbedarf 15% der Originaldaten (ca. 700MB f�r eine volle einschichtige DVD).<p></li>
<li><a href="background10.html">kein garantierter Schutz</a> vor Datenverlust.</li>
</ul>

<p>

Schauen Sie auch in die  <a href="background.html">Hintergrundinformationen</a>, um mehr �ber die
Arbeitsweise von dvdisaster zu erfahren.
EOF
}


# ----- Examples

function example_contents_de()
{  local file="$1.html"
   local query=$2
   local page=$3
   local lang=$4

   case $query in
   title)   title="Beispiele" ;;

   link)    link_title="Beispiele und Bildschirmfotos" ;;
   link10)   link_title="Datentr�ger auf Lesefehler pr�fen" ;;

   link20)   link_title="Fehlerkorrektur-Daten erzeugen" ;;
   link21)   link_title="als Datei" ;;
   link22)   link_title="im Abbild" ;;

   link30)   link_title="Besch�digten Datentr�ger einlesen" ;;
   link40)   link_title="Datentr�ger-Abbild rekonstruieren" ;;
   link50)   link_title="Informationen �ber Abbild und Fehlerkorrektur-Daten anzeigen" ;;

   link80)   link_title="Einstellm�glichkeiten" ;;
   link81)   link_title="Allgemein" ;;
   link82)   link_title="Lesen und Pr�fen" ;;
   link83)   link_title="Fehlerkorrektur" ;;

   link90)   link_title="Aufrufm�glichkeiten" ;;

   content*) eval "example$page$lang $file" ;;
   esac 
}

function example0de()
{  cat >> $1 <<EOF

<h3>Wor�ber m�chten Sie mehr erfahren?</h3>

<table>
<tr>
<td valign="top">
  <a href="example10.html"><b>Datentr�ger pr�fen</b></a><br>
  Eine Untersuchung der Lesegeschwindigkeit und Lesbarkeit
  des Datentr�gers.
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td valign="top">
 <a href="example20.html"><b>Fehlerkorrektur-Daten erzeugen</b></a><br>
Fehlerkorrektur-Daten k�nnen innerhalb des Abbilds oder
als eigenst�ndige Datei abgelegt werden.
</td>
</tr>
<tr>
<td>
<a href="example1.html">
  <img src="../images/ex-scan-de.png" alt="Datentr�ger pr�fen" border=0 width=275>
</a>
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>
<a href="example3.html#ecc">
  <img src="../images/ex-create-de.png" alt="Fehlerkorrektur-Daten erzeugen" border=0 width=264>
</a>
</td>
</tr>

<tr><td colspan=3>&nbsp;</td></tr>

<tr>
<td valign="top">
  <a href="example30.html"><b>Besch�digten Datentr�ger einlesen</b></a><br>
  Ein speziell angepa�tes <a href="background50.html">Leseverfahren</a>
  liest Daten von besch�digten Datentr�gern.
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>
  <a href="example40.html"><b>Datentr�ger-Abbild rekonstruieren</b></a><br>
  Unlesbare Sektoren werden mit Hilfe von
  <a href="example20.html">Fehlerkorrektur-Daten</a>
  wiederhergestellt.
</td>
</tr>
<tr>
<td>
<a href="example4.html">
  <img src="../images/ex-read-a-de.png" alt="besch�digten Datentr�ger lesen" border=0 width=264>
</a>
</td>
<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>
<a href="example5.html">
  <img src="../images/ex-fix-de.png" alt="besch�digten Datentr�ger reparieren" border=0 width=264>
</a>
</td>
</tr>
</table>

<pre> </pre>

<b>Weitere Informationen:</b>

<ul>
<li><a href="example50.html">Informationen �ber
                             Abbild- und Fehlerkorrektur-Daten anzeigen</a><p></li>

<li><a href="example80.html">Einstellm�glichkeiten (graphische Benutzeroberfl�che)</a><p></li>

<ul>
<li><a href="example81.html">Allgemeine Einstellungen</a><p></li>
<li><a href="example82.html">Einstellungen zum Lesen und Pr�fen</a><p></li>
<li><a href="example83.html">Einstellungen zur Fehlerkorrektur</a><p></li>
</ul>

<li><a href="example90.html">Aufrufm�glichkeiten (Kommandozeile)</a><p></li>

<li><a href="background70.html">Tips zum Aufbewahren der Fehlerkorrektur-Datei</a></li>
</ul>
EOF
}

function example1de()
{  cat >> $1 <<EOF

<tr align="center"><td><h3>Bildschirmfoto: Datentr�ger auf Lesefehler �berpr�fen</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/ex-scan-de.png" alt="Bildschirmfoto"></center>
<br clear="all">
</td></tr>
<tr><td>

Die graphische Darstellung zeigt den Fortschritt der �berpr�fung:<p>

<ul>
<li>Die <b>Geschwindigkeitskurve</b> liefert eine grobe �bersicht �ber den Datentr�ger-Zustand,
weil das Laufwerk beim Lesen abbremst, wenn die Qualit�t des Datentr�gers schlechter wird.<p>

Um auszuschlie�en, da� andere Systemaktivit�ten die Lesegeschwindigkeit beeinflussen,
sollten Sie w�hrend der �berpr�fung keine anderen Programme laufen lassen und auch das
dvdisaster-Fenster nicht bedienen.<p></li>

<li>Die <b>Spirale</b> gibt eine (nicht ma�stabsgetreue) 
�bersicht �ber den <b>Datentr�ger-Zustand</b>.
Rote Markierungen weisen auf Lesefehler hin!
<table width=100%><tr><td bgcolor=#000000 width=2><img width=1 height=1 alt=""></td><td>
Sobald Lesefehler auf dem Datentr�ger auftreten, m�ssen Sie
schnellstm�glich versuchen, das <a href="example40.html">Datentr�ger-Abbild zu rekonstruieren</a> 
und auf einen neuen Datentr�ger �bertragen. </td></tr></table><p>
</li>

<li>Durch Anklicken des 
<img src="../images/btn-protocol-de.png" alt="Protokoll" align="middle">--Symbols
erhalten Sie zus�tzliche Informationen �ber den Lesevorgang.<p></li>
</ul>

</td></tr>
EOF
}


function example10de()
{  
  create_inline example de 1 example10.html "zum �berpr�fen des Datentr�gers"


cat >> $1 <<EOF
<h3>Datentr�ger auf Lesefehler �berpr�fen</h3>

Um festzustellen, ob ein Datentr�ger Lesefehler enth�lt, 
gehen Sie wie folgt vor: <p>

(Hinweis: Zum Zugriff auf das CD/DVD-Laufwerk werden in Windows 2000 und XP entweder 
<b>Systemverwalter-Rechte</b> oder ein <a href="qa10.html#aspi">ASPI</a>-Treiber ben�tigt.)<p>


<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr valign="top" $BGCOLOR1>
<td>1.</td>
<td>Legen Sie den Datentr�ger in das Laufwerk.</td>
<td></td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>2.</td>
<td>W�hlen Sie das Laufwerk aus.</td>
<td><img src="../images/btn-drive.png" alt="Laufwerks-Auswahl"></td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>3.</td>
<td>Falls Sie f�r den Datentr�ger eine passende Fehlerkorrektur-Datei besitzen,
geben Sie ihren Namen ein.
Der Pr�fvorgang ben�tigt nicht zwingend eine 
Fehlerkorrektur-Datei, kann aber die darin
enthaltenen Informationen nutzen.</td>
<td><img src="../images/btn-eccfile.png" alt="Fehlerkorrektur-Datei-Auswahl"><p>
Das <img src="../images/open-ecc.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>
 
<tr valign="top" $BGCOLOR2>
<td>4.</td>
<td>Beginnen Sie die �berpr�fung mit dem "Pr�fen"-Knopf.</td>
<td><img src="../images/btn-scan-de.png" alt="Pr�fen-Knopf"></td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>5.</td>
<td>Verfolgen Sie den Fortschritt der �berpr�fung in der graphischen Darstellung.</td>
<td><a href="example1.html"><img src="../images/ex-scan-de.png" alt="Bildschirmfoto" width="200"></a><p>
</td>
</tr>
</table>

<p>

<b>Wie oft sollte man �berpr�fen?</b><br>
 Das h�ngt von der Qualit�t der Rohlinge 
und den Lagerungsbedingungen ab. Als Richtlinie f�r einmal beschreibbare CD- und DVD-Datentr�ger
mit unbekannter Qualit�t kann man nehmen:

<ol>
<li> 3 Tage nach dem Brennen (bis dahin das Abbild auf der Festplatte aufheben!), </li>
<li> 14 Tage nach dem Brennen, </li>
<li> 3 Monate nach dem Brennen, </li>
<li> dann alle weiteren 6 Monate �berpr�fen.</li>
</ol>

Wenn Sie viele gleichartige Rohlinge aus der Produktion eines Markenherstellers verwenden, 
reicht gegebenenfalls auch ein stichprobenhaftes �berpr�fen von 2-3 Datentr�gern pro Monat und Produktionsserie.<p>

<hr><p>

<a name="cli"></a>
<h3>�berpr�fung in der Kommandozeile durchf�hren</h3>

In der Kommandozeilen-Betriebsart ben�tigen Sie die folgenden Parameter
(Grundeinstellungen in Klammern):

<table>
<tr>
<td><a href="example90.html#scan">-s / --scan</a></td>
<td>�berpr�fen</td>
</tr>
<tr>
<td><a href="example90.html#device">-d / --device</a>&nbsp;</td>
<td>Laufwerk ausw�hlen (/dev/cdrom)</td>
</tr>
<tr>
<td><a href="example90.html#ecc">-e / --ecc</a></td>
<td>Fehlerkorrektur-Datei ausw�hlen (medium.ecc)</td>
</tr>
<tr>
<td><a href="example90.html#jump">-j / --jump</a></td>
<td>�berspringe Sektoren nach einem Lesefehler (16)</td>
</tr>
</table><p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>dvdisaster -s -d /dev/hdc -e korrektur.ecc</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

Laufwerk: /dev/hdc, &nbsp;ATAPI DVD+RW 8X4X12 B2K7<br>
Datentr�ger: DVD+R, 2224288 Sektoren, 1 Schicht(en)<p>

Untersuche Datentr�ger auf Lesefehler.<br>
Warte 5 Sekunden auf das Hochdrehen des Laufwerks...<br>
Sektor 57664: Medium Error; Unrecovered read error. �berspringe 15 Sektoren.<br>
Sektor 57728: Medium Error; Unrecovered read error. �berspringe 15 Sektoren.<br>
[... weitere Berichte �ber Lesefehler ...] <br>
Sektor 716640: Medium Error; Unrecovered read error. �berspringe 15 Sektoren.<br>
Leseposition: 100.0% ( 2.4x)<br>
33840 unlesbare Sektoren.
</td></tr></table><p>

Die Beschreibung des Lesefehlers (hier: "Medium Error; ...") kann 
je nach verwendeter Laufwerks-Firmware auch anders lauten.
EOF
}

function example2de()
{  cat >> $1 <<EOF

<tr align="center"><td><h3>Bildschirmfoto: Datentr�ger-Abbild erstellen</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/ex-read-de.png" alt="Bildschirmfoto"></center>
<br clear="all">
</td></tr>

<tr><td>
Die graphische Darstellung zeigt den Fortschritt des Lesevorgangs:
<ul>
<li>Die <b>Spirale</b> gibt eine (nicht ma�stabsgetreue) 
�bersicht �ber den <b>Datentr�ger-Zustand</b>.<br>
Rote Markierungen weisen auf Lesefehler hin!<p></li>

<li>
Die Fehlerkorrektur-Datei kann <i>nicht erstellt werden</i>, 
wenn das Abbild unvollst�ndig ist oder Lesefehler aufweist.
Erstellen Sie die Fehlerkorrektur-Datei deshalb sofort
nach dem Brennen des Datentr�gers.<p></li>

<li>Durch Anklicken des 
<img src="../images/btn-protocol-de.png" alt="Protokoll" align="middle">--Symbols
erhalten Sie zus�tzliche Informationen.</li>
</ul>

</td></tr>
EOF
}

function example3de()
{  cat >> $1 <<EOF

<tr align="center"><td>
<h3>Bildschirmfoto: Fehlerkorrektur-Datei erzeugen</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/ex-create-de.png" alt="Bildschirmfoto"></center>
<br clear="all">
</td></tr>

<tr><td>
Die Prozentwerte zeigen den Fortschritt des Vorgangs.
Auf einem durchschnittlichen 2Ghz-Rechner werden mit der 
voreingestellten <a href="example83.html#redundancy">Redundanz</a>
etwa 10min f�r eine volle einschichtige DVD ben�tigt.<p>

<b>Weitere Hinweise</b>:

<ul>
<li>Nach dem erfolgreichen Erstellen der Fehlerkorrektur-Datei wird die Abbild-Datei nicht mehr
ben�tigt.<br>
Wenn Sie einen anderen Datentr�ger einlesen, wird dvdisaster
die bereits bestehende Abbild-Datei automatisch �berschreiben.<p></li>

<li>
Verwahren Sie die Fehlerkorrektur-Datei auf 
einem <a href="background70.html">zuverl�ssigen Speichermedium</a>!
</li>

<li>�berpr�fen Sie danach den Datentr�ger regelm��ig auf Lesefehler.</li>

</ul>
</td></tr>


EOF
}

function example20de()
{  
   cat >> $1 <<EOF
<h3>Fehlerkorrektur-Daten erzeugen</h3>

Die Fehlerkorrektur-Daten spielen bei dvdisaster eine zentrale Rolle:<br>
Sie werden zur Rekonstruktion von unlesbaren Sektoren ben�tigt.<p>

Fehlerkorrektur-Daten k�nnen entweder in einer separaten
<a href="background30.html#file">Fehlerkorrektur-Datei</a>
oder direkt <a href="background30.html#image">innerhalb des Abbilds</a> abgelegt werden,
mit entsprechenden <a href="background30.html#table">Vor- und Nachteilen</a>.<p>

Als kurze Entscheidungshilfe:<p>

<b>Ben�tigen Sie Fehlerkorrektur-Daten f�r einen bereits gebrannten Datentr�ger?</b><p>

&nbsp; Ja: <a href="example21.html">Erzeugen Sie eine Fehlerkorrektur-Datei.</a><p>

&nbsp; Nein: n�chste Frage<p>

<b>Sind auf dem zu brennenden Datentr�ger mindestens 20% frei?</b><p>

&nbsp; Ja: <a href="example22.html">Erweitern Sie das Abbild um Fehlerkorrektur-Daten.</a><p>

&nbsp; Nein: <a href="example21.html">Erzeugen Sie eine Fehlerkorrektur-Datei.</a><p>
EOF

}

function example21de()
{  create_inline example de 2 example21.html "zum Erstellen der Fehlerkorrektur-Datei"
   create_inline example de 3 example21.html "zum Erstellen der Fehlerkorrektur-Datei"
 
   cat >> $1 <<EOF
<h3>Fehlerkorrektur-Datei erzeugen</h3>

<b>Erstellen Sie zun�chst ein Datentr�ger-Abbild auf der Festplatte:</b><p>

<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr valign="top" $BGCOLOR1>
<td>1.</td>
<td>Legen Sie den Datentr�ger in das Laufwerk.</td>
<td></td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>2.</td>
<td>W�hlen Sie das Laufwerk aus.</td>
<td><img src="../images/btn-drive.png" alt="Laufwerks-Auswahl"></td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>3.</td>
<td>W�hlen Sie eine Abbild-Datei aus.
Achten Sie darauf, gen�gend Speicherplatz f�r das Abbild zu haben. Aktivieren Sie das
<a href="example81.html#localfiles">Aufteilen von Dateien</a> wenn Ihr 
Dateisystem keine Dateigr��en von mehr als 2GB unterst�tzt. <p>
</td>
<td><img src="../images/btn-image.png" alt="Abbild-Datei-Auswahl"><p>
Das <img src="../images/open-img.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>4.</td>
<td>Beginnen Sie das Einlesen mit dem "Lesen"-Knopf.</td>
<td><img src="../images/btn-read-de.png" alt="Lesen-Knopf"></td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>5.</td>
<td>Verfolgen Sie den Fortschritt des Lesevorgangs in der graphischen Darstellung.</td>
<td><a href="example2.html"><img src="../images/ex-read-de.png" alt="Bildschirmfoto" width="200"></a><p>
</td>
</tr>
</table>

<pre> </pre>

<b>Erzeugen Sie anschlie�end die Fehlerkorrektur-Datei:</b><p>
Dies setzt voraus, da� das Abbild ohne Lesefehler eingelesen wurde.<p>

<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr valign="top" $BGCOLOR1>
<td>1.</td>
<td>
W�hlen Sie die Abbild-Datei aus.
Die zuletzt eingelesene Abbild-Datei ist bereits voreingestellt.<p>
</td>
<td><img src="../images/btn-image.png" alt="Abbild-Datei-Auswahl"><p>
Das <img src="../images/open-img.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>2.</td>
<td>
W�hlen Sie die Fehlerkorrektur-Datei aus.<p>
</td>
<td><img src="../images/btn-eccfile.png" alt="Fehlerkorrektur-Datei-Auswahl"><p>
Das <img src="../images/open-ecc.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>3.</td>
<td>
Stellen Sie die Fehlerkorrektur nach Ihren W�nschen ein.<p>
</td>
<td><a href="example83.html"><img src="../images/prefs-ecc-de.png" alt="Bildschirmfoto" width="200"></a></td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>4.</td>
<td>Erstellen Sie die Fehlerkorrektur-Datei durch Klick auf den "Erzeugen"-Knopf.</td>
<td><img src="../images/btn-create-de.png" alt="Erzeugen-Knopf"></td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>5.</td>
<td>Verfolgen Sie den Fortschritt des Vorgangs.</td>
<td><a href="example3.html"><img src="../images/ex-create-de.png" alt="Bildschirmfoto" width="200"></a><p>
</td>
</tr>
</table><p>

Verwahren Sie die Fehlerkorrektur-Datei auf 
einem <a href="background70.html">zuverl�ssigen Speichermedium</a>,
und �berpr�fen Sie den Datentr�ger anschlie�end regelm��ig auf Lesefehler.

<hr><p>

<h3>Fehlerkorrektur-Datei in der Kommandozeile erzeugen</h3>

Zum Einlesen des Abbildes ben�tigen Sie die folgenden Parameter
(Grundeinstellungen in Klammern):

<table>
<tr>
<td><a href="example90.html#read">-r/ --read</a></td>
<td>Einlesen</td>
</tr>
<tr>
<td><a href="example90.html#device">-d / --device</a>&nbsp;</td>
<td>Laufwerk ausw�hlen (/dev/cdrom)</td>
</tr>
<tr>
<td><a href="example90.html#image">-i / --image</a></td>
<td>Abbild-Datei ausw�hlen (medium.iso)</td>
</tr>
</table><p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>dvdisaster -r -d /dev/hdc -i abbild.iso</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

Laufwerk: /dev/hdc, &nbsp;ATAPI DVD+RW 8X4X12 B2K7<br>
Datentr�ger: DVD+R, 2224288 Sektoren, 1 Schicht(en)<p>

Erzeuge neues Abbild abbild.iso.<br>
Warte 5 Sekunden auf das Hochdrehen des Laufwerks...<br>
Leseposition: 100.0% ( 7.7x)<br>
Alle Sektoren erfolgreich eingelesen.
</td></tr></table><p>

W�hrend des Einlesens werden der Fortschritt in Prozent und die momentane
Lesegeschwindigkeit des Laufwerks angezeigt. Erzeugen Sie anschlie�end die 
Fehlerkorrektur-Datei mit folgendem Aufruf:<p>

<table>
<tr>
<td><a href="example90.html#create">-c/ --create</a></td>
<td>Fehlerkorrektur-Datei erzeugen</td>
</tr>
<tr>
<td><a href="example90.html#image">-i / --image</a></td>
<td>Abbild-Datei ausw�hlen (medium.iso)</td>
</tr>
<tr>
<td><a href="example90.html#ecc">-e / --ecc</a></td>
<td>Fehlerkorrektur-Datei ausw�hlen (medium.ecc)</td>
</tr>
<tr>
<td><a href="example90.html#redundancy">-n / --redundancy</a>&nbsp;</td>
<td>Redundanz ausw�hlen (32 Nullstellen = 14.3%)</td>
</tr>
</table><p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>dvdisaster -c -i abbild.iso -e korrektur.ecc </b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

�ffne abbild.iso: 2224288 Datentr�ger-Sektoren.<br>
Pr�fe Abbild-Sektoren : 100%<br>
Kodiere mit Methode RS01: 32 Nullstellen, 14.3% Redundanz.<br>
Kodierungs-Fortschritt: 100.0%<br>
Fehlerkorrektur-Datei "korrektur.ecc" wurde erzeugt.<br>
Verwahren Sie die Datei auf einem zuverl�ssigen Datentr�ger.
</td></tr></table><p>

Anhand der Prozentanzeige k�nnen Sie den Fortschritt des Vorgangs beobachten.<p>

Danach finden Sie die Fehlerkorrektur-Datei <i>korrektur.ecc</i> im aktuellen 
Verzeichnis:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>ls -lA</b><br>
-rwx------    1 user     linux    653721680 2004-07-02 22:45 korrektur.ecc<br>
-rwx------    1 user     linux    4555341824 2004-07-02 21:31 abbild.iso<br>
</td></tr></table><p>

Die Abbild-Datei k�nnen Sie jetzt l�schen, <p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>rm -f abbild.iso</b><br>
</td></tr></table><p>

aber die Fehlerkorrektur-Datei m�ssen Sie auf 
einem <a href="background70.html">zuverl�ssigen Speichermedium</a>
aufbewahren!<p>

<u>Tip:</u> Fassen Sie die Aktionen zum Einlesen 
und zum Erzeugen der Fehlerkorrektur-Datei
zusammen. Dann entf�llt das �berpr�fen des Abbildes im zweiten Schritt:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; dvdisaster <b>-r -c</b> -d /dev/hdc -i abbild.iso -e korrektur.ecc<br>
u.s.w.
</td></tr></table>
EOF
}

function example22de()
{  
   cat >> $1 <<EOF
<h3>Abbild um Fehlerkorrektur-Daten erweitern</h3>

Das Erweitern von Abbildern um Fehlerkorrektur-Daten  wird in der vorliegenden
Version nur in der Kommandozeile unterst�tzt. Ab Version 0.70 werden die
entsprechenden Funktionen auch mit der Maus bedienbar.<p>

<b>Erstellen Sie ein Abbild mit den zu sichernden Daten.</b><p>

Verwenden Sie eine handels�bliche Brennsoftware, um die zu sichernden
Daten auszuw�hlen und in ein ISO- oder UDF-Abbild zu schreiben. 
Andere Abbild-Typen f�hren zum Datenverlust!<p>

<b>Erweitern Sie das Abbild um die Fehlerkorrektur-Informationen.</b><p>

Dazu ben�tigen Sie die folgenden Parameter
(Grundeinstellungen in Klammern):

<table>
<tr>
<td><a href="example90.html#create">-c/ --create</a></td>
<td>Fehlerkorrektur-Informationen hinzuf�gen</td>
</tr>
<tr>
<td><a href="example90.html#method">-m / --method</a>&nbsp;</td>
<td>Fehlerkorrektur-Verfahren ausw�hlen</td>
</tr>
<tr>
<td><a href="example90.html#redundancy">-n / --redundancy</a></td>
<td>maximale Datentr�ger-Gr��e in Sektoren (Gr��e des kleinstm�gl. Datentr�gers)</td>
</tr>
</table><p>

Wenn Sie mit der Brennsoftware das Abbild "abbild.iso" erzeugt haben, geben Sie ein:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>dvdisaster -c -mRS02 -i abbild.iso</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

�ffne abbild.iso: 284234 Datentr�ger-Sektoren.<p>

Erweitere Abbild mit dem RS02-Verfahren:<br>
555M Daten, 143M Fehlerkorrektur-Daten (52 Nullstellen; 25.6% Redundanz)<br>
Berechne Sektoren-Pr�fsummen: 100%<br>
Erweitere das Abbild: 100%<br>
Kodierungs-Fortschritt: 100.0%<br>
Das Abbild wurde um Fehlerkorrektur-Informationen erweitert.<br>
Die neue Abbild-Gr��e ist 357818 Sektoren.
</td></tr>
</table><p>

<b>Schreiben Sie das Abbild auf den Datentr�ger.</b><p>

Verwenden Sie die Brennsoftware, um das erweiterte Abbild 
auf den Datentr�ger zu schreiben. <p>

Einige Brennprogramme sind mit den erweiterten Abbildern nicht kompatibel
und besch�digen die Fehlerkorrektur-Daten. F�hren Sie zumindest beim ersten
Mal die nachfolgende �berpr�fung durch.<p>

Lesen Sie das Abbild nach dem Brennen mit dvdisaster wieder ein:<p>

<table>
<tr>
<td><a href="example90.html#read">-r/ --read</a></td>
<td>Einlesen</td>
</tr>
<tr>
<td><a href="example90.html#device">-d / --device</a>&nbsp;</td>
<td>Laufwerk ausw�hlen (/dev/cdrom)</td>
</tr>
<tr>
<td><a href="example90.html#image">-i / --image</a></td>
<td>Abbild-Datei ausw�hlen (medium.iso)</td>
</tr>
</table><p>

<table class="example" width="100%" bgcolor="#ffffe0"><tr><td>
user@linux&gt; <b>dvdisaster -r -d/dev/hdc -i abbild-neu.iso</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

Laufwerk: /dev/hdc, &nbsp; ATAPI DVD+RW 8X4X12 B2K7<br>
Datentr�ger: Daten-CD Mode 1, 357818 Sektoren<p>

Erzeuge neues Abbild abbild-neu.iso.<br>
Warte 5 Sekunden auf das Hochdrehen des Laufwerks...<br>
Leseposition: 100.0% (35.1x)<br>
Alle Sektoren erfolgreich eingelesen.
</td></tr>
</table><p>

�berpr�fen Sie das Abbild:<p>

<table>
<tr>
<td><a href="example90.html#test">-t/ --test</a></td>
<td>Abbild �berpr�fen</td>
</tr>
<tr>
<td><a href="example90.html#image">-i / --image</a></td>
<td>Abbild-Datei ausw�hlen (medium.iso)</td>
</tr>
</table><p>

<table class="example" width="100%" bgcolor="#ffffe0"><tr><td>
user@linux&gt; <b>dvdisaster -t -i abbild-neu.iso</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

/dvd/abbild-neu.iso: vorhanden, enth�lt 357818 Datentr�ger-Sektoren.<br>
- gutes Abbild      : Alle Sektoren vorhanden<br>
- Daten-md5sum      : 4eca3615a88a11ba68466226295c4bcb<p>

Fehlerkorrektur-Daten: Erzeugt von dvdisaster-${project_version}<br>
- Methode           : RS02, 52 Nullstellen, 25.6% Redundanz.<br>
- Ben�tigt          : dvdisaster-0.66 (gut)<br>
- Daten-md5sum      : 4eca3615a88a11ba68466226295c4bcb (gut)<br>
- CRC-md5sum        : 9776489c12e12cbabfe5145da4f6ae66 (gut)<br>
- Ecc-md5sum        : e975aed39c962eeabedd9d6cbdbfc45e (gut)
</td></tr>
</table>
EOF
}

function example4de()
{  cat >> $1 <<EOF

<tr align="center"><td>
<h3>Bildschirmfoto: Besch�digten Datentr�ger einlesen</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/ex-read-a-de.png" alt="Bildschirmfoto"></center>
<br clear="all">
</td></tr>

<tr><td>
Ber�cksichtigen Sie, da� das Einlesen eines besch�digten Datentr�gers 
mehrere Stunden dauern kann.
</td></tr>


EOF
}

function example30de()
{  create_inline example de 4 example30.html "zum Einlesen besch�digter Datentr�ger"
 
   cat >> $1 <<EOF
<h3>Besch�digten Datentr�ger einlesen</h3>

dvdisaster enth�lt ein <a href="background50.html">Leseverfahren</a>, 
das an das Einlesen besch�digter Datentr�ger angepa�t ist:<p>

<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr valign="top" $BGCOLOR1>
<td>1.</td>
<td>Legen Sie den Datentr�ger in das Laufwerk.</td>
<td></td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>2.</td>
<td>W�hlen Sie das Laufwerk aus.</td>
<td><img src="../images/btn-drive.png" alt="Laufwerks-Auswahl"></td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>3.</td>
<td>
W�hlen Sie die Abbild-Datei aus.<p>
</td>
<td><img src="../images/btn-image.png" alt="Abbild-Datei-Auswahl"><p>
Das <img src="../images/open-img.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>4.</td>
<td>
W�hlen Sie die Fehlerkorrektur-Datei aus.
Diese Datei wird jetzt schon ben�tigt, damit dvdisaster ermitteln kann, 
wann es gen�gend Informationen zur Wiederherstellung des
Abbildes besitzt.<p>
</td>
<td><img src="../images/btn-eccfile.png" alt="Fehlerkorrektur-Datei-Auswahl"><p>
Das <img src="../images/open-ecc.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>5.</td>
<td>
W�hlen Sie das angepa�te Leseverfahren aus.<p>
</td>
<td><a href="example82.html"><img src="../images/prefs-read-de.png" alt="Bildschirmfoto" width="200"></a></td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>6.</td>
<td>Beginnen Sie mit dem Einlesen durch Klick auf den "Lesen"-Knopf.</td>
<td><img src="../images/btn-read-de.png" alt="Lesen-Knopf"></td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>7.</td>
<td>Verfolgen Sie den Fortschritt des Vorgangs.</td>
<td><a href="example4.html"><img src="../images/ex-read-a-de.png" alt="Bildschirmfoto" width="200"></a><p>
</td>
</tr>
</table><p>

Wenn der Lesevorgang mit der Ausgabe beendet wird, da� gen�gend Informationen
f�r eine erfolgreiche Wiederherstellung vorhanden sind, stellen Sie die noch fehlenden
Sektoren aus den <a href="example20.html">Fehlerkorrektur-Daten</a> wieder her.<p>

Anderenfalls m�ssen Sie probieren, das Abbild erneut 
einzulesen <a href="background60.html#reading-tips">(ein paar Tips dazu)</a>.
In diesem Fall versucht dvdisaster nur die fehlenden Sektoren noch einmal zu lesen.

<hr><p>

<h3>Besch�digten Datentr�ger in der Kommandozeile einlesen</h3>

Zum Einlesen des besch�digten Datentr�gers ben�tigen Sie die folgenden Parameter
(Grundeinstellungen in Klammern):

<table>
<tr>
<td><a href="example90.html#read">-r/ --read</a></td>
<td>Einlesen</td>
</tr>
<tr>
<td><a href="example90.html#adaptiveread">--adaptive-read</a></td>
<td>Leseverfahren f�r besch�digte Datentr�ger verwenden</td>
</tr>
<tr>
<td><a href="example90.html#device">-d / --device</a>&nbsp;</td>
<td>Laufwerk ausw�hlen (/dev/cdrom)</td>
</tr>
<tr>
<td><a href="example90.html#image">-i / --image</a></td>
<td>Abbild-Datei ausw�hlen (medium.iso)</td>
</tr>
<tr>
<td><a href="example90.html#ecc">-e / --ecc</a></td>
<td>Fehlerkorrektur-Datei ausw�hlen (medium.ecc)</td>
</tr>
</table><p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>dvdisaster -r --adaptive-read -i abbild.iso -e korrektur.ecc</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

Laufwerk: /dev/cdrom, &nbsp;ATAPI DVD+RW 8X4X12 B2K7<br>
Datentr�ger: DVD+R, 2224288 Sektoren, 1 Schicht(en)<p>

Angepa�tes Leseverfahren: Versuche gen�gend Daten f�r die Fehlerkorrektur zu sammeln.<br>
Erzeuge neues Abbild abbild.iso.<br>
Reparierbar:  2.6% (korrigierbar: 0; lese in [0..2224288], Gr��e 2224288)<br>
Sektoren 57264-57279: Medium Error; Unrecovered read error.<br>
Auff�llen des Abbild-Bereichs [57280..1083504]<br>
[... weitere Berichte �ber den Lesevorgang ...]<br>
Reparierbar: 100.0% (korrigierbar: 319200; lese in [320304..327065], Gr��e 6762)<br>
Gen�gend Daten zur Wiederherstellung des Abbildes vorhanden.
</td></tr></table><p>

EOF
}

function example5de()
{  cat >> $1 <<EOF

<tr align="center"><td>
<h3>Bildschirmfoto: Datentr�ger-Abbild wiederherstellen</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/ex-fix-de.png" alt="Bildschirmfoto"></center>
<br clear="all">
</td></tr>

<tr><td>
Der Fortschritt der Rekonstruktion wird in Prozent angezeigt.
<p>

<ul>
<li>Die Meldung "Gut! Alle Sektoren wurden repariert." bedeutet, da� das Abbild
des Datentr�gers vollst�ndig wiederhergestellt werden konnte. Das reparierte 
Abbild l��t sich mit einer geeigneten Brennsoftware
auf einen neuen Datentr�ger schreiben. 
<p></li>

<li>Wenn unkorrigierbare Sektoren �brigbleiben, 
lesen Sie das Abbild erneut 
ein <a href="background60.html#reading-tips">(ein paar Tips dazu)</a>.
In diesem Fall versucht dvdisaster nur die fehlenden Sektoren noch einmal zu lesen.
Dadurch erhalten Sie gegebenenfalls gen�gend Daten f�r einen zweiten erfolgreichen 
Fehlerkorrektur-Durchlauf.<p></li>

<li>Die rote Fehlerkurve entspricht <i>nicht</i> der r�umlichen Anordnung der Lesefehler
auf dem Datentr�ger, denn das Verfahren basiert gerade darauf, 
Lesefehler gleichm��ig �ber alle Fehlerkorrekturbereiche zu verteilen.<br>
Die gr�ne Linie kennzeichnet die Leistungsgrenze der Fehlerkorrektur. Wenn sie
�berschritten wird, kann der Datentr�ger-Inhalt mit den zu diesem Zeitpunkt vorhandenen
Daten nicht vollst�ndig wiederhergestellt werden.
Falls die Linie nur knapp �berschritten wird,
hilft manchmal ein <a href="background60.html#reading-tips">weiterer Leseversuch</a>.<p>
</li>

<li>Wenn Sie das Abbild mit dem "angepa�ten Lese-Verfahren" einlesen,
wird die Fehlerkorrektur immer maximal ausgelastet.</li>
</ul>
</td></tr>


EOF
}


function example40de()
{  create_inline example de 5 example40.html "zum Wiederherstellen des Abbildes"

   cat >> $1 <<EOF
<h3>Datentr�ger-Abbild rekonstruieren</h3>

Zum Wiederherstellen der Daten eines defekten Datentr�gers m�ssen Sie zun�chst
versuchen, so <a href="example30.html">viele Daten wie m�glich davon einzulesen</a>.
Zus�tzlich ben�tigen Sie die <a href="example20.html">zugeh�rigen Fehlerkorrektur-Daten</a>,
die Sie hoffentlich zu einem Zeitpunkt angelegt haben, als der Datentr�ger noch
lesbar war:<p>

<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr valign="top" $BGCOLOR1>
<td>1.</td>
<td>
W�hlen Sie die Abbild-Datei aus.<p>
</td>
<td><img src="../images/btn-image.png" alt="Abbild-Datei-Auswahl"><p>
Das <img src="../images/open-img.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>2.</td>
<td>
W�hlen Sie die zugeh�rige Fehlerkorrektur-Datei aus.<p>
</td>
<td><img src="../images/btn-eccfile.png" alt="Fehlerkorrektur-Datei-Auswahl"><p>
Das <img src="../images/open-ecc.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>3.</td>
<td>F�hren Sie die Wiederherstellung durch Klick auf den "Reparieren"-Knopf aus.</td>
<td><img src="../images/btn-fix-de.png" alt="Reparieren-Knopf"></td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>4.</td>
<td>Verfolgen Sie den Fortschritt der Wiederherstellung.<p>
W�hrend der Wiederherstellung sind Phasen hoher Festplatten-Aktivit�t normal.</td>
<td><a href="example5.html"><img src="../images/ex-fix-de.png" alt="Bildschirmfoto" width="200"></a><p>
</td>
</tr>
</table><p>

Wenn das Abbild erfolgreich wiederhergestellt wurde, k�nnen Sie es mit einer
handels�blichen Brennsoftware auf einen neuen Datentr�ger �bertragen.

<hr><p>

<h3>Abbild in der Kommandozeile wiederherstellen</h3>

Zur Wiederherstellung des Abbildes ben�tigen Sie die folgenden Parameter
(Grundeinstellungen in Klammern):

<table>
<tr>
<td><a href="example90.html#fix">-f/ --fix</a></td>
<td>Wiederherstellen</td>
</tr>
<tr>
<td><a href="example90.html#image">-i / --image</a></td>
<td>Abbild-Datei ausw�hlen (medium.iso)</td>
</tr>
<tr>
<td><a href="example90.html#ecc">-e / --ecc</a></td>
<td>Fehlerkorrektur-Datei ausw�hlen (medium.ecc)</td>
</tr>
</table><p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>dvdisaster -f -i abbild.iso -e korrektur.ecc</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

�ffne abbild.iso: 2224288 Datentr�ger-Sektoren.<p>

"Fix"-Modus: Reparierbare Sektoren werden im Abbild wiederhergestellt.<br>
&nbsp;&nbsp;&nbsp;    5 reparierte Sektoren: 708225 59850 69825 79800 199500 <br>
&nbsp;&nbsp;&nbsp;    6 reparierte Sektoren: 708226 59851 69826 79801 89776 199501<br>
[... weitere Berichte �ber reparierte Sektoren ...] <br>
&nbsp;&nbsp;&nbsp;    5 reparierte Sektoren: 708224 59849 69824 79799 199499<br>
Reparatur-Fortschritt: 100.0% <br>
Reparierte Sektoren: 33264 <br>  
Gut! Alle Sektoren wurden repariert.<br>
Ausl�schungen pro Ecc-Bereich: Mittelwert =  3.3; Schlechtester = 7.
</td></tr></table><p>

EOF
}

function example6de()
{  cat >> $1 <<EOF

<tr align="center"><td>
<h3>Bildschirmfoto: Datentr�ger-Abbild mit Fehlerkorrektur-Datei vergleichen</h3><p></td></tr>
<tr align="center"><td>
<center><img src="../images/ex-compare-de.png" alt="Bildschirmfoto"></center>
<br clear="all">
</td></tr>

<tr><td>

Der Vergleich kann eine Weile dauern, da beide 
Dateien komplett gelesen (aber nicht ver�ndert) werden.<p>


Danach erhalten Sie die folgenden Informationen:<p>

<ul>
<li><b>Felder "Abbild-Datei" und "Datentr�ger-Zustand".</b><p> 
Diese Felder geben Aufschlu� dar�ber, ob das Abbild eine Fehlerkorrektur
ben�tigt. Bei noch unkorrigierten Lesefehlern ist die Anzahl der fehlenden
Sektoren gr��er als Null. Pr�fsummenfehler deuten hingegen auf
<a href="qa20.html#crc">Bedienungs-Fehler oder Hardware-Probleme</a> hin.<p></li>

<li><b>Feld "Fehlerkorrektur-Datei"</b>.<p>
Hier k�nnen Sie sehen, 
mit welchen Einstellungen die Fehlerkorrektur-Datei erstellt worden 
ist und ob sie mit der verwendeten
Version von dvdisaster verarbeitet werden kann.<br>
Falls die Fehlerkorrektur-Datei zu einem anderen Abbild geh�rt oder 
besch�digt ist, erscheinen Warnungen im Bereich der letzten vier Eintr�ge.<p></li>

<li><b>Hinweis:</b> Wenn das Abbild mit einer anderen Software als dvdisaster eingelesen
worden ist, wird das Ergebnis des Vergleichs unzuverl�ssig.
Insbesondere erscheinen in diesem Fall alle fehlenden Sektoren als Pr�fsummenfehler.</li>
</ul>
</td></tr>
EOF
}

function example50de()
{  create_inline example de 6 example50.html "zum Vergleichen von Abbild- und Fehlerkorrektur-Dateien"

   cat >> $1 <<EOF
<h3>Informationen �ber Abbild und Fehlerkorrektur-Daten anzeigen</h3>

Diese Funktion liefert Informationen �ber Abbild- und Fehlerkorrektur-Dateien,
die sich bereits auf der Festplatte befinden:<p>

<table width="100%" border="0" cellspacing="0" cellpadding="10">
<tr valign="top" $BGCOLOR1>
<td>1.</td>
<td>
W�hlen Sie die Abbild-Datei aus.<p>
</td>
<td><img src="../images/btn-image.png" alt="Abbild-Datei-Auswahl"><p>
Das <img src="../images/open-img.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>2.</td>
<td>
W�hlen Sie die zugeh�rige Fehlerkorrektur-Datei aus.<p>
</td>
<td><img src="../images/btn-eccfile.png" alt="Fehlerkorrektur-Datei-Auswahl"><p>
Das <img src="../images/open-ecc.png" alt="Dateiauswahl-Knopf" align="middle">-Symbol �ffnet die Dateiauswahl.</td>
</tr>

<tr valign="top" $BGCOLOR1>
<td>3.</td>
<td>Vergleichen Sie die beiden Dateien durch Klick auf den "Vergleichen"-Knopf.</td>
<td><img src="../images/btn-compare-de.png" alt="Vergleichen-Knopf"></td>
</tr>

<tr valign="top" $BGCOLOR2>
<td>4.</td>
<td>Verfolgen Sie den Fortschritt des Vergleichs.</td>
<td><a href="example6.html"><img src="../images/ex-compare-de.png" alt="Bildschirmfoto" width="200"></a><p>
</td>
</tr>
</table><p>

<hr><p>

<h3>Abbild- und Fehlerkorrektur-Dateien in der Kommandozeile vergleichen</h3>

F�r den Vergleich ben�tigen Sie die folgenden Parameter
(Grundeinstellungen in Klammern):

<table>
<tr>
<td><a href="example90.html#test">-t/ --test</a></td>
<td>Vergleichen</td>
</tr>
<tr>
<td><a href="example90.html#image">-i / --image</a></td>
<td>Abbild-Datei ausw�hlen (medium.iso)</td>
</tr>
<tr>
<td><a href="example90.html#ecc">-e / --ecc</a></td>
<td>Fehlerkorrektur-Datei ausw�hlen (medium.ecc)</td>
</tr>
</table><p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>dvdisaster -t -i abbild.iso -e korrektur.ecc</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gn�rlich.<br>
Dies ist freie Software; es gelten die Bedingungen der<br>
GNU GENERAL PUBLIC LICENSE aus dem Quelltext.<p>

/dvd/abbild.iso: vorhanden, enth�lt 2224288 Datentr�ger-Sektoren.<br>
- Gutes Abbild      : Alle Sektoren vorhanden<br>
- Abbild-md5sum     : 55cdd507e8d96af0da0667ce4365c7ae<p>

/dvd/korrektur.ecc: Erzeugt von dvdisaster-0.62.<br>
- Methode           : RS01, 32 Nullstellen, 14.3% Redundanz.<br>
- Ben�tigt          : dvdisaster-0.55 (gut)<br>
- Datentr.-Sektoren : 2224288 (gut)<br>
- Abbild-md5sum     : 55cdd507e8d96af0da0667ce4365c7ae (gut)<br>
- Fingerabdruck     : pa�t (gut)<br>
- Ecc-Bereiche      : 20428800 (gut)<br>
- Ecc-md5sum        : 4bdf5ed398e7662ac93c9d08e1ba9ff2 (gut)
</td></tr></table><p>
EOF
}



function example80de()
{  cat >> $1 <<EOF
<h3>Einstellm�glichkeiten</h3>

Dr�cken Sie den 
<img src="../images/open-preferences.png" align="middle" alt="Preferences button">-Knopf rechts oben
in der Werkzeugleiste, um den Dialog zum �ndern der Grundeinstellungen zu �ffnen.
Der Dialog enth�lt die folgenden Reiterkarten:<p>

<center>
<a href="example81.html">
<img src="../images/prefs-general-de.png" alt="Bildschirmfoto"><br>
Allgemeine Einstellungen
</a>
</center>
<br clear="all">

<center>
<a href="example82.html">
<img src="../images/prefs-read-de.png" alt="Bildschirmfoto"><br>
Einstellungen zum Lesen und Pr�fen
</a>
</center>
<br clear="all">

<center>
<a href="example83.html">
<img src="../images/prefs-ecc-de.png" alt="Bildschirmfoto"><br>
Einstellungen zur Fehlerkorrektur
</a>
</center>

<br clear="all">
EOF
}


function example81de()
{  cat >> $1 <<EOF
<h3>Allgemeine Einstellungen</h3>

Mehr Informationen �ber die Reiterkarte mit allgemeinen Einstellungen befinden sich
weiter unten.<p>

<center><img src="../images/prefs-general-de.png" alt="Bildschirmfoto"></center>
<br clear="all">

<p><hr><p>

<a name="iso"></a>
<b>Dateisystem-Einstellungen f�r Datentr�ger und Abbilder</b><p>

<center><img src="../images/prefs-general-1-de.png" alt="Bildschirmfoto"></center>
<br clear="all">

Aktivieren Sie diese Option, 
damit dvdisaster die Gr��enangaben f�r das Abbild aus dem
ISO- bzw. UDF-Dateisystem ermittelt. 
Dies ist hilfreich bei <a href="qa20.html#plusrw">Problemen mit Laufwerken</a>, 
die bei DVD-RW/+RW falsche Abbild-Gr��en zur�ckmelden.

<p><hr><p>

<a name="localfiles"></a>
<b>Einstellungen f�r lokale Dateien (auf der Festplatte)</b><p>

<center><img src="../images/prefs-general-2-de.png" alt="Bildschirmfoto"></center>
<br clear="all">

<b>Dateien automatisch mit Endungen versehen <font color="red">(1)</font>:</b> 
Dieser Schalter bewirkt, da� Dateien automatisch
mit den Endungen ".iso" oder ".ecc" versehen werden, sofern nicht bereits eine andere Endung
angegeben wurde.<p>

<b>Dateien in Segmente aufteilen <font color="red">(2)</font>:</b> 
Erm�glicht das Arbeiten mit Dateisystemen, 
die nur Dateien mit einer Maximalgr��e von 2GB zulassen 
(z.B. FAT unter Windows). <br>
Anstelle einer einzigen Datei "abbild.iso" werden bis zu 100
Segmente "abbild00.iso", "abbild01.iso" usw. verwendet; dies kostet
etwas Geschwindigkeit.<p> 

<p><hr><p>

<a name="auto"> </a>
<b>Automatisches Erzeugen und L�schen von Dateien</b><p>

<center><img src="../images/prefs-general-3-de.png" alt="Bildschirmfoto"></center>
<br clear="all">

<b>Fehlerkorrektur-Datei erzeugen <font color="red">(1)</font>:</b> Nach dem erfolgreichen 
Einlesen eines Abbilds wird automatisch eine Fehlerkorrektur-Datei erzeugt. Zusammen mit
der "Abbild l�schen"-Funktion beschleunigt dies das Erstellen von Fehlerkorrektur-Dateien
f�r mehrere Datentr�ger.<p>

<b>Abbild l�schen <font color="red">(2)</font>:</b> Nach dem erfolgreichen 
Erstellen einer Fehlerkorrektur-Datei wird
die zugeh�rige Abbild-Datei gel�scht, wenn dieser Schalter aktiviert ist.
EOF
}


function example82de()
{  cat >> $1 <<EOF
<h3>Einstellungen zum Lesen und Pr�fen</h3>

Mehr Informationen �ber die Reiterkarte zum Lesen und Pr�fen befinden sich
weiter unten.<p>

<center><img src="../images/prefs-read-de.png" alt="Einstellungen zum Lesen und Pr�fen"></center><br clear="all">

<p><hr><p>

<a name="read"></a>
<b>Einstellungen zum Lesen</b><p>

<center><img src="../images/prefs-read-1-de.png" alt="Bildschirmfoto"></center>
<br clear="all">

<b>Leseverfahren <font color="red">(1)</font>:</b> W�hlen Sie zwischen dem
<a href="background40.html">linearen Leseverfahren</a> und dem
<a href="background50.html">angepa�ten Leseverfahren</a>.
Das lineare Verfahren eignet sich f�r unbesch�digte Datentr�ger 
und das angepa�te Verfahren ist besser f�r Datentr�ger mit Lesefehlern.<p>

<b>Lesebereich <font color="red">(2)</font>:</b> Anw�hlen dieses Schalters
beschr�nkt die einzulesenden Sektoren auf den angegebenen Bereich
(inklusiv; 0-100 liest also 101 Sektoren ein). Diese Einstellungen gelten nur f�r
die aktuelle Sitzung, d.h. sie werden nicht gespeichert.<p>

<b>�berspringe x Sektoren nach einem Lesefehler /<br>
Lesen beenden wenn unlesbare Bereiche < x <font color="red">(3)</font></b><br>
Mit dem Schieberegler wird die Behandlung von Lesefehlern beeinflu�t. Seine
Auswirkungen sind leicht unterschiedlich f�r 
das <a href="background40.html#configure">lineare</a> und 
das <a href="background50.html#configure">angepa�te</a> Leseverfahren.
Gr��ere Werte verringern die Bearbeitungszeit und die mechanische Beanspruchung 
des Laufwerkes, lassen aber gr��ere L�cken beim Einlesen defekter Bereiche.

<p><hr><p>

<a name="image"></a>
<b>Abbild-Eigenschaften</b><p>
<center><img src="../images/prefs-read-2-de.png" alt="Bildschirmfoto"></center>
<br clear="all">

<b>DAO-Abbild <font color="red">(1)</font>:</b> 
Verhindert ein <a href="qa20.html#tao">sehr seltenes Problem</a> beim
Erstellen von Abbildern von "DAO" ("disc at once") - CD-R.<p>

<b>Unlesbare Sektoren auff�llen <font color="red">(2)</font>:</b> 
Stellt die Kompatibilit�t mit anderen Datenrettungsprogrammen her.
Momentan bekannte Einstellungen und Programme sind:<p>
<i>0xb0 (dezimal 176)</i> -- h2cdimage/dares (c't-Magazin)<p>
Schalten Sie dieses Feld aus, wenn Sie Ihre Abbilder ausschlie�lich
mit dvdisaster verarbeiten.

<p><hr><p>

<b>Laufwerk vorbereiten</b><p>

<center><img src="../images/prefs-read-3-de.png" alt="Bildschirmfoto"></center>
<br clear="all">

Gibt dem Laufwerk die angegebene Anzahl Sekunden Zeit zum Hochdrehen bevor
der Lesevorgang beginnt. Dadurch erscheinen keine abrupten 
Geschwindigkeits�nderungen am Anfang der Lesekurve.
EOF
}


function example83de()
{  cat >> $1 <<EOF
<h3>Einstellungen zur Fehlerkorrektur</h3>

Mehr Informationen �ber die Reiterkarte zur Fehlerkorrektur befinden sich
weiter unten.<p>

<center><img src="../images/prefs-ecc-de.png" alt="Fehlerkorrektur-Einstellungen"></center><br clear="all">

<p><hr><p>


<a name="redundancy"></a>
<b>Redundanz f�r neu erstellte Fehlerkorrekturdateien</b> <p>

<center><img src="../images/prefs-ecc-1-de.png"  alt="Bildschirmfoto"></center><br clear="all">

Die Redundanz gibt an, wieviel Prozent der 
Originaldaten <a href="background10.html">im g�nstigsten Fall</a>
korrigiert werden k�nnen. Da der Idealfall nat�rlich selten eintritt, sollten
Sie die Redundanz gro�z�gig mit einer der folgenden M�glichkeiten ausw�hlen:<p>

<font color="red">(1)</font> / <font color="red">(2)</font> Die Voreinstellungen
<b>normal</b> und <b>hoch</b> liefern eine Redundanz von 14.3% bzw. 33.5%. 
Mit diesen beiden Einstellungen werden Fehlerkorrektur-Dateien durch optimierten Programmcode
besonders schnell erzeugt.<p>


<font color="red">(3)</font> Einstellung der Redundanz in <b>Prozentwerten</b>.
Beachten Sie dabei:
<ul>
<li> Eine Fehlerkorrekturdatei mit x% Redundanz ben�tigt 
auch etwa x% der Gr��e des zugeh�rigen Abbilds an Speicherplatz.</li>
<li> Die Leistung der Fehlerkorrektur h�ngt von der Verteilung der Lesefehler ab.
Erst �nderungen der Redundanz um etwa 5 Prozentpunkte 
haben einen sp�rbaren Einflu� auf die Fehlerkorrektur.</li>
</ul><p>

<font color="red">(4)</font> Gr��e der Fehlerkorrektur-Datei (in MB) vorgeben.
In diesem Fall w�hlt dvdisaster eine geeignete Redundanz, damit die
Fehlerkorrektur-Datei nicht gr��er als angegeben wird.<p>

Vorsicht: Wenn man unterschiedlich gro�e Abbilder 
mit der gleichen Einstellung bearbeitet, erhalten die kleineren Abbilder 
mehr Fehlerkorrekturinformationen als die gro�en Abbilder.<p>

<p><hr><p>

<b>Speichernutzung.</b><p>

<center><img src="../images/prefs-ecc-2-de.png"  alt="Bildschirmfoto"></center><br clear="all">

Zugriffe auf die Abbild- und Fehlerkorrektur-Datei werden durch einen eigenen
Zwischenspeicher optimiert. Die Voreinstellung von 32MB ist f�r die meisten Systeme passend.<p>
EOF
}


function example90de()
{  cat >> $1 <<EOF
<h3>Aufrufm�glichkeiten</h3>

<b>Verwenden der Kommandozeile.</b> dvdisaster arbeitet in der Kommandozeilen-Betriebsart,
wenn Sie beim Aufruf einen der untenstehenden
<a href="#modes">Aktionsparameter</a> (read, create, scan, fix, test) angeben. 
Anderenfalls �ffnet es ein Fenster
f�r die graphische Betriebsart.<p>

In der Kommandozeile werden Einstellungen aus der graphischen Oberfl�che
bzw. der <i>.dvdisaster</i>-Datei ignoriert. Ebenso haben die auf dieser Seite
beschriebenen Kommandozeilen-Parameter keine Wirkung in der graphischen Betriebsart.<p>

Aus technischen Gr�nden gibt es unter Windows zwei Programmversionen:<p>
<table>
<tr><td><i>dvdisaster.exe</i></td><td>--</td><td>f�r die Kommandozeilen-Betriebsart</td></tr>
<tr><td><i>dvdisaster-win.exe</i></td><td>--</td><td>f�r die graphische Benutzeroberfl�che</td></tr>
</table><p>

<b><a name="modes">Aktionen.</a>&nbsp;</b>dvdisaster ben�tigt beim Aufruf die Angabe einer Aktion entweder
in Langform (--read) oder mit dem Anfangsbuchstaben in Kurzform (-r):<p>

<table>
<tr valign=top><td>&nbsp; &nbsp;</td><td><a href="#scan">--scan</a></td><td>Datentr�ger auf Lesefehler �berpr�fen</tr>
<tr valign=top><td></td><td><a href="#read">--read</a></td><td>Abbild des Datentr�gers einlesen</td></tr>
<tr valign=top><td></td><td><a href="#create">--create</a> &nbsp; &nbsp;</td><td>Fehlerkorrektur-Datei erzeugen</td></tr>
<tr valign=top><td></td><td><a href="#fix">--fix</a></td><td>Versucht, ein Abbild mit Hilfe der Fehlerkorrektur-Datei zu reparieren</td></tr>
<tr valign=top><td></td><td><a href="#test">--test</a></td><td>�berpr�ft, ob Abbild- und  Fehlerkorrektur-Datei zusammengeh�ren</td></tr>
<tr valign=top><td></td><td><a href="#unlink">--unlink</a></td><td>L�scht die Abbild-Datei beim Beenden des Programms</td></tr>
</table>
<pre> </pre> 

<b><a name="drive">Laufwerks- und Dateinamen.</a></b> Diese Optionen haben ebenfalls eine Langform (--device) und eine
Kurzform (-d). Sie dienen dazu, andere als die voreingestellten Laufwerke und Dateinamen zu verwenden.<p>

<table>
<tr><td>&nbsp; &nbsp;</td><td><a href="#device">--device</a>  &nbsp; &nbsp;</td><td>Laufwerk ausw�hlen</td></tr>
<tr><td></td><td><a href="#prefix">--prefix</a></td><td>Pr�fix f�r Abbild- und Fehlerkode-Dateien</td></tr>
<tr><td></td><td><a href="#image">--image</a></td><td>Name der Abbild-Datei</td></tr>
<tr valign=top><td></td><td><a href="#ecc">--ecc</a></td><td>Name der Fehlerkode-Datei<p></td></tr>
<tr><td></td><td><a href="#list">--list</a></td><td>Zeigt verf�gbare Laufwerke unter ASPI &nbsp; (nur in der Windows-Version)</td></tr>
</table><pre> </pre> 

<b><a name="options">Weitere Optionen.</a></b> Diese weniger h�ufig benutzten Optionen verwenden nur die Langform,
sofern nicht anders angegeben.<p>

<table>
<tr valign=top><td>&nbsp; &nbsp;</td><td><a href="#adaptiveread">--adaptive-read</a></td><td>Angepa�tes Leseverfahren f�r defekte Datentr�ger verwenden</td></tr>
<tr valign=top><td>&nbsp; &nbsp;</td><td><a href="#autosuffix">--auto-suffix</a></td><td>Automatisches Anf�gen der .iso- und .ecc-Dateiendungen</td></tr>
<tr valign=top><td>&nbsp; &nbsp;</td><td><a href="#cache">--cache-size</a></td><td>Zwischenspeicher-Gr��e w�hrend der Fehlerkode-Berechnung</td></tr>
<tr valign=top><td></td><td><a href="#dao">--dao</a></td><td>Behandelt Datentr�ger als "disk at once"</td></tr>
<tr valign=top><td></td><td><a href="#fillunreadable">--fill-unreadable [n]</a></td><td>f�lle unlesbare Sektoren mit Byte n auf</td></tr>
<tr valign=top><td></td><td><a href="#jump">-j / --jump</a></td><td>�berspringe Sektoren nach einem Lesefehler</td></tr>
<tr valign=top><td></td><td><a href="#parse-udf">--parse-udf</a>&nbsp; &nbsp;</td><td>Informationen aus dem ISO/UDF-Dateisystem auswerten</td></tr>
<tr valign=top><td></td><td><a href="#redundancy">-n / --redundancy</a>&nbsp; &nbsp;</td><td>Redundanz des Fehlerkorrekturkodes festlegen</td></tr>
<tr valign=top><td></td><td><a href="#method">-m / --method</a>&nbsp; &nbsp;</td><td>Fehlerkorrektur-Methode ausw�hlen</td></tr>
<tr valign=top><td></td><td><a href="#speedwarn">--speed-warning [n]</a>&nbsp; &nbsp;</td><td>Warnung bei Einbr�chen der Lesegeschwindigkeit</td></tr>
<tr valign=top><td></td><td><a href="#spinup">--spinup-delay [n]</a>&nbsp; &nbsp;</td><td>Gibt dem Laufwerk Zeit zum Hochdrehen</td></tr>
<tr valign=top><td></td><td><a href="#split">--split-files</a>&nbsp; &nbsp;</td><td>Teilt Dateien in Segmente <=2GB auf</td></tr>
</table>

<h3>Aktionen.</h3>

<a name="scan"><b>--scan [n-m]: Datentr�ger auf Lesefehler �berpr�fen</b></a><p>

Liest jeden Sektor des Datentr�gers 
und gibt am Ende die Anzahl der nicht lesbaren Sektoren aus.<p>

Die einzulesenden Sektoren k�nnen auf einen bestimmten Bereich eingeschr�nkt
werden. Die Sektornumerierung beginnt bei 0; "end" bezeichnet den letzten Sektor.
Das angegebene Intervall wird inklusive der Grenzen eingelesen; 0-100 liest also 101 Sektoren ein.<p>

In der Kurzform sind zwischen dem "-s" und dem Intervall keine Leerzeichen zul�ssig:
<pre>
dvdisaster -s0-100            # liest Sektoren 0 bis 101
dvdisaster --scan 0-100       # Langform
dvdisaster --scan 3000-end    # liest von Sektor 3000 bis zum Datentr�ger-Ende

</pre>
<div align=right><a href="#modes">&uarr;</a></div><p>



<a name="read"><b>--read [n-m]: Abbild des Datentr�gers erzeugen</b></a><p>

Erzeugt ein Abbild des Datentr�gers auf der Festplatte.<p>

Falls die Abbild-Datei bereits existiert, werden nur diejenigen Sektoren
eingelesen, die noch nicht in der Abbild-Datei vorhanden sind.
Dies erm�glicht es, ein Abbild durch mehrere Leseversuche zu erg�nzen
und dabei verschiedene Laufwerke einzusetzen.<p>

Ohne weitere Angaben setzt --read 
das <a href="background40.html">lineare Leseverfahren</a> ein. 
Verwenden Sie zus�tzlich die <a href="example90.html#adaptiveread">--adaptive-read</a>--Option,
um das <a href="background50.html">angepa�te Leseverfahren</a> einzusetzen.<p>

Die einzulesenden Sektoren k�nnen wie bei 
der <a href="example90.html#scan">--scan</a>-Option auf einen 
bestimmten Bereich eingeschr�nkt werden. 

<div align=right><a href="#modes">&uarr;</a></div><p>



<a name="create"><b>--create: Fehlerkorrektur-Datei erzeugen</b></a><p>

Erzeugt eine Fehlerkorrekturdatei zu einem Abbild.<p>

<div align=right><a href="#modes">&uarr;</a></div><p>



<a name="fix"><b>--fix: Abbild reparieren</b></a><p>

Versucht, ein Abbild mit Hilfe der Fehlerkorrektur-Datei zu reparieren.<p>

Falls es im ersten Anlauf nicht gelingt, alle Sektoren zu reparieren,
k�nnen Sie einen weiteren Durchlauf mit <a href="#read">--read</a> versuchen
<a href="background60.html#reading-tips">(ein paar Tips dazu)</a>.
Dabei werden gegebenenfalls gen�gend fehlende Sektoren eingelesen
um eine erfolgreiche Reparatur des Abbildes durchzuf�hren.<p>

<div align=right><a href="#modes">&uarr;</a></div><p>



<a name="test"><b>--test: Abbild- und Fehlerkorrektur-Datei �berpr�fen</b></a><p>

�berpr�ft, ob die Abbild- und  Fehlerkorrektur-Dateien zu dem gleichen Datentr�ger
geh�ren und ob ihre internen Pr�fsummen korrekt sind.<p>
Siehe auch <a href="qa20.html#crc">Punkt 3.3</a> in den <a href="qa20.html">Fragen und
Antworten</a>.

<div align=right><a href="#modes">&uarr;</a></div><p>



<a name="unlink"><b>--unlink: L�scht die Abbild-Datei beim Beenden des Programms</b></a><p>

Diese Funktion l�scht die Abbild-Datei, wenn alle Aktionen mit Erfolg durchgef�hrt
worden sind. 

<div align=right><a href="#modes">&uarr;</a></div><p>



<h3>Laufwerks- und Dateinamen.</h3>

<a name="device"><b>--device &lt;Laufwerk&gt;: Laufwerk ausw�hlen</b></a><p>

Voreingestellt sind "/dev/cdrom" unter Linux bzw. das erste CD/DVD-Laufwerk
(nach Laufwerksbuchstabe) unter Windows.<p>

<b>FreeBSD:</b>
<table class="example-bsd" width=100%><tr><td>
user@freebsd&gt; dvdisaster <b>-d /dev/pass0</b> -r
</td></tr></table><p>

dvdisaster unterst�tzt Laufwerke, 
die �ber den "passthrough"-Treiber <tt>/dev/pass*</tt> eingebunden sind
und den MMC-3 Standard implementieren.
ATAPI-Laufwerke werden m�glicherweise
erst nach einem <a href="download20.html#freebsd">Neu�bersetzen des Kernels</a>
verf�gbar.<p>

<b>Linux:</b> 
<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; dvdisaster <b>-d /dev/hdc</b> -r
</td></tr></table><p>

dvdisaster unterst�tzt Laufwerke, die �ber den einheitlichen
CD-ROM-Treiber von Linux angesteuert werden und den MMC3-Standard implementieren.
Dies sind insbesondere ATAPI-Laufwerke
mit den symbolischen Ger�ten <tt>/dev/hd*</tt> sowie SCSI-Laufwerke mit den 
symbolischen Ger�ten <tt>/dev/scd*</tt>. Externe Laufwerke mit anderen Bussystemen
(z.B. USB, IEEE 1394) erscheinen typischerweise ebenfalls als SCSI-Ger�te.<p>

Das Einbinden von ATAPI-Ger�ten �ber das <i>ide-scsi</i>-Modul wird nicht empfohlen; 
diese Ger�te sind aber normalerweise �ber <tt>/dev/scd*</tt> problemlos nutzbar.<p>

Der allgemeine SCSI-Treiber <i>sg</i> (<tt>/dev/sg*</tt>) wird nicht
unterst�tzt. Dies sollte kein Problem darstellen, da die jeweiligen Ger�te
normalerweise auch �ber <tt>/dev/scd*</tt> oder <tt>/dev/sr*</tt> verf�gbar sind.<p>

<b>Windows:</b>
<table class="example-win" width=100% bgcolor=#e0e0ff><tr><td>
user@windows&gt; dvdisaster <b>-d E:</b> -r
</td></tr></table><p>

dvdisaster unterst�tzt lokale Laufwerke, die den MMC3-Standard
implementieren und mit einem Laufwerksbuchstaben im System erscheinen.<p>



<div align=right><a href="#drive">&uarr;</a></div><p>

<a name="prefix"><b>--prefix &lt;Pr�fix&gt;: Pr�fix f�r Abbild- und Fehlerkorrektur-Datei</b></a><p>

Voreingestellt ist "medium"; die Abbild- und Fehlerkorrekturdateien erhalten automatisch
die Endungen ".iso" bzw. ".ecc".

<div align=right><a href="#drive">&uarr;</a></div><p>

<a name="image"><b>--image &lt;Dateiname&gt;: Name der Abbild-Datei</b></a><p>

Voreingestellt ist "medium.iso"; der angegebene Dateiname wird genau (ohne automatisches
Anf�gen einer Endung) f�r die Abbild-Datei �bernommen, 
sofern die <a href="#autosuffix">--auto-suffix</a>--Option nicht ebenfalls verwendet wird.

<div align=right><a href="#drive">&uarr;</a></div><p>

<a name="ecc"><b>--ecc &lt;Dateiname&gt;: Name der Fehlerkorrektur-Datei</b></a><p>

Voreingestellt ist "medium.ecc"; der angegebene Dateiname wird genau (ohne automatisches
Anf�gen einer Endung) f�r die Fehlerkorrektur-Datei �bernommen,
sofern die <a href="#autosuffix">--auto-suffix</a>--Option nicht ebenfalls verwendet wird.


<div align=right><a href="#drive">&uarr;</a></div><p>

<a name="list"><b>--list: Zeigt verf�gbare Laufwerke unter ASPI</b></a><p>

Diese Funktion zeigt alle CD/DVD-Laufwerke an, die unter Windows durch
die <a href="qa10.html#aspi">ASPI</a>-Schicht ansprechbar sind:<p>

<table class="example-win" width=100% bgcolor=#e0e0ff><tr><td>
user@windows&gt; dvdisaster <b>-l</b><br>
dvdisaster-${project_version} Copyright 2004-2006 Carsten Gnoerlich.<br>
<i>[... der Rest des GPL-Begr��ungstextes ...]</i><p>

List of ASPI CD/DVD drives:<p>
 1: (H:) ATAPI DVD+RW 8X4X12 B2K7<br>
 2: (I:) MYDRIVE CD-R MY-401610X 1.05<p>

Um die Benutzung von ASPI anstelle von SPTI zu erzwingen,<br>
verwenden Sie die obigen Laufwerksnummern,<br>
also 1:, 2:,... anstelle von C:, D:,...
</td></tr></table><p>

dvdisaster verwendet standardm��ig nur dann ASPI, wenn ein Zugriff
auf die Laufwerke �ber SPTI nicht m�glich ist.
Die Benutzung von ASPI l��t sich durch
Angabe der Laufwerksnummer anstelle des Laufwerksbuchstabens
erzwingen. Um einen Datentr�ger per ASPI in dem "MYDRIVE"-Laufwerk 
des obigen Beispiels einzulesen, geben Sie also ein:<p>

<table class="example-win" width="100%" bgcolor="#e0e0ff"><tr><td>
user@windows&gt; dvdisaster <b>-d 2:</b> -r<br>
</td></tr>
</table>

<div align=right><a href="#drive">&uarr;</a></div><p>


<h3>Weitere Optionen.</h3>

<a name="adaptiveread"><b>--adaptive-read: Angepa�tes Leseverfahren f�r defekte Datentr�ger verwenden</b></a><p>

Dieser Schalter aktiviert das <a href="background50.html">angepa�te Leseverfahren</a>,
das besonders gut f�r das Einlesen von besch�digten Datentr�gern geeignet ist.
Verwenden Sie diesen Schalter in Verbindung mit <a href="#read">-r/--read</a> sowie mit
<a href="#ecc">-e/--ecc</a>, damit das Verfahren anhand der Fehlerkorrektur-Datei
entscheiden kann, wann genug Informationen f�r eine erfolgreiche Wiederherstellung des
Abbildes eingelesen worden sind. 
<p>

<div align=right><a href="#options">&uarr;</a></div><p>



<a name="autosuffix"><b>--auto-suffix: Automatisches Anf�gen der .iso- und .ecc-Dateiendungen</b></a><p>

Diese Option bewirkt, da� an die mit den <a href="#image">-i/--image</a>- bzw. <a href="#ecc">-e/--ecc</a>-Optionen angegebenen Dateinamen die Endungen ".iso" bzw. ".ecc" angeh�ngt werden,
sofern nicht bereits eine andere Endung vorhanden ist.

<div align=right><a href="#options">&uarr;</a></div><p>



<a name="cache"><b>--cache-size &lt;Gr��e in MB&gt;: Zwischenspeicher-Gr��e einstellen</b></a><p>

dvdisaster optimiert den Zugriff auf die Abbild- und
Fehlerkorrektur-Dateien durch einen eigenen Zwischenspeicher,
dessen Gr��e zwischen 1 und 2048 MB betragen kann. Voreingestellt sind 32MB,
was f�r die meisten Systeme passend ist. <p>

Diese Option hat nur bei der <a href="#create">--create</a>--Aktion eine Wirkung.

<div align=right><a href="#options">&uarr;</a></div><p>



<a name="dao"><b>--dao: Behandelt Datentr�ger als "disc at once"</b></a><p>

Datentr�ger, die im "TAO"-Modus ("track at once") gebrannt wurden,
k�nnen am Ende zwei Sektoren 
mit <a href="qa20.html#tao">Pseudo-Lesefehlern</a> enthalten. 
Daher ignoriert dvdisaster in der Grundeinstellung bis zu 2 Lesefehler
am Ende des Datentr�gers. <p>

Wenn Sie nun das ausgesprochene Pech haben,
einen "DAO" ("disc at once") - Datentr�ger mit genau ein oder zwei echten
Lesefehlern am Ende zu besitzen, erreichen Sie durch Angabe
der  "--dao"-Option eine korrekte Behandlung des Datentr�ger-Endes.

<div align=right><a href="#options">&uarr;</a></div><p>


<a name="fillunreadable"><b>--fill-unreadable &lt;F�ll-Byte&gt;: Unlesbare Sektoren mit angegebenen Byte auff�llen </b></a><p>

dvdisaster kennzeichnet unlesbare Sektoren mit einem F�lltext, dessen Vorkommen auf einem
unbesch�digten Datentr�ger sehr unwahrscheinlich ist.<br>
Einige andere Datenrettungsprogramme erwarten hingegen, da� unlesbare Sektoren mit einem
bestimmten Byte aufgef�llt sind. Um den Austausch von Abbildern mit anderen Programmen zu
erm�glichen, m�ssen Sie das "richtige" Byte angeben:<p>

<ul>
<li><b>0xb0 (dezimal 176)</b>: bewirkt Kompatibilit�t mit dem Programm <i>h2cdimage</i> 
des c't-Magazins.
</li>
</ul>

Hinweis: Das Auff�llen mit Nullen (0x00, dezimal 0) ist <b>nicht empfehlenswert</b>.
Die meisten Datentr�ger enthalten auch im unbesch�digten Zustand Sektoren, die mit Null
aufgef�llt sind. Diese Sektoren k�nnen sp�ter nicht von unlesbaren Sektoren unterschieden werden.

<div align=right><a href="#options">&uarr;</a></div><p>



<a name="jump"><b>-j / --jump &lt;Anzahl Sektoren&gt;: �berspringe Sektoren nach einem Lesefehler </b></a><p>

Die Auswirkungen dieser Option h�ngen von dem verwendeten Leseverfahren ab:
<ul>
<li>bei dem <a href="background40.html#configure">linearen Lese-Verfahren</a> 
(Grundeinstellung) wird die angegebene Anzahl von nachfolgenden Sektoren 
nach einem Lesefehler �bersprungen.</li>
<li>bei dem <a href="background50.html#configure">angepa�ten Lese-Verfahren</a> 
(<a href="#adaptiveread">--adaptive--read</a>--Option)
wird das Einlesen abgebrochen,
sobald keine unlesbaren Bereiche mehr existieren, die l�nger als der angebene Wert sind.</li>
</ul> 
Gr��ere Werte verringern die Bearbeitungszeit und die mechanische Beanspruchung des Laufwerkes,
lassen aber gr��ere L�cken beim Einlesen defekter Bereiche.
Die Anzahl der zu �berspringenden Sektoren mu� ein Vielfaches von 16 sein.

<div align=right><a href="#options">&uarr;</a></div><p>



<a name="parse-udf"><b>--parse-udf: Informationen aus dem ISO/UDF-Dateisystem auswerten</b></a><p>
Aktivieren Sie diese Option, damit dvdisaster die Gr��enangaben f�r das Abbild aus dem
ISO- bzw. UDF-Dateisystem ermittelt. 
Dies ist hilfreich bei <a href="qa20.html#plusrw">Problemen mit Laufwerken</a>, 
die bei DVD-RW/+RW falsche Abbild-Gr��en zur�ckmelden.

<div align=right><a href="#options">&uarr;</a></div><p>



<a name="redundancy"><b>-n / --redundancy: Redundanz des Fehlerkorrekturcodes festlegen</b></a><p>

Die Redundanz gibt an, wieviel Prozent der 
Originaldaten <a href="background10.html">im g�nstigsten Fall</a>
korrigiert werden k�nnen. Daher sollten Sie die Redundanz gro�z�gig w�hlen
und dabei auch beachten:<p>

<ul>
<li> Eine Fehlerkorrekturdatei mit x% Redundanz ben�tigt 
auch etwa x% der Gr��e des zugeh�rigen Abbilds an Speicherplatz.</li>
<li> Die Leistung der Fehlerkorrektur h�ngt von der Verteilung der Lesefehler ab.
Erst �nderungen der Redundanz um etwa 5 Prozentpunkte 
haben einen sp�rbaren Einflu� auf die Fehlerkorrektur.</li>
</ul>

Zur Einstellung der Redundanz gibt es mehrere M�glichkeiten:<p>

<ol>
<li> <b>"normal" oder "hoch"</b><p>

Geben Sie "normal" oder "high" an, um die folgenden Redundanzen zu erhalten:<p>

<table border="1" cellpadding="3">
<tr><td align=center>Wert</td><td>Redundanz</td></tr>
<tr><td><tt>-n normal</tt></td><td align=center>14.3%</td></tr>
<tr><td><tt>-n high</tt></td><td align=center>33.5%</td></tr>
</table><p>

Mit diesen beiden Einstellungen werden Fehlerkorrektur-Dateien durch 
optimierten Programmcode besonders schnell erzeugt.

Der Wert "normal" ist die Voreinstellung.<p>
</li>

<li> <b>Angabe in Prozent</b><p>

Sie k�nnen die Redundanz auch direkt in Prozent angeben:<p> 

<table border="1" cellpadding="3">
<tr><td>Beispiel</td><td>Wertebereich</td></tr>
<tr><td><tt>-n 25%</tt></td><td align=center>3.2% bis 64.5%</td></tr>
</table><p>

Aus technischen Gr�nden kann die wirklich verwendete Redundanz um einige
Nachkommastellen von der Vorgabe abweichen.<p></li>

<li> <b>Korrigierbare Fehler pro Fehlerkorrekturbereich</b><p>

Wenn Sie keine Ma�einheit bei der Redundanz angeben, wird der Wert
so interpretiert, da� Sie einen (255, 255-x)-Reed-Solomon-Kode
erzeugen m�chten:<p>

<table border="1" cellpadding="3">
<tr><td>Beispiel</td><td>Wertebereich</td></tr>
<tr><td><tt>-n 32</tt></td><td align=center>8 bis 100</td></tr>
</table><p>

Dies f�hrt dazu, da� jeweils 255-x Datentr�ger-Sektoren zu einem
Fehlerkorrekturbereich zusammengefa�t werden, innerhalb dessen bis zu
x unlesbare Sektoren korrigiert werden k�nnen.<p>

Dabei gilt der folgende Zusammenhang: &nbsp; &nbsp; Redundanz in Prozent = (100 * x) / (255 - x)<p>
</li>

<li> <b>Maximalgr��e der Fehlerkorrekturdatei</b><p>

Eine weitere M�glichkeit besteht darin, die Gr��e der
Fehlerkorrekturdatei (in MB) vorzugeben:<p>

<table border="1" cellpadding="3">
<tr><td>Beispiel</td><td>Wertebereich</td></tr>
<tr><td><tt>-n 50m</tt></td><td align=center>3.2% bis 64.5% der Abbild-Gr��e</td></tr>
</table><p>

In diesem Fall w�hlt dvdisaster eine geeignete Redundanz, damit die
Fehlerkorrektur-Datei nicht gr��er als angegeben wird.<p>

Vorsicht: Wenn man unterschiedlich gro�e Abbilder 
mit der gleichen Einstellung bearbeitet, erhalten die kleineren Abbilder 
mehr Fehlerkorrekturinformationen als die gro�en Abbilder.<p>

</li>
</ol>
<div align=right><a href="#options">&uarr;</a></div><p>



<a name="method"><b>-m / --method &lt;m&gt;: Fehlerkorrektur-Verfahren ausw�hlen</b></a><p>

W�hlen Sie zwischen den Verfahren 
<a href="background30.html">RS01</a> (Voreinstellung) 
und <a href="background30.html">RS02</a>.

<div align=right><a href="#options">&uarr;</a></div><p>



<a name="speedwarn"><b>--speed-warning [n]: Warnung bei Einbr�chen der Lesegeschwindigkeit</b></a><p>

Gibt eine Warnung aus, wenn sich die Lesegeschwindigkeit um mehr als <i>n</i> Prozent
ver�ndert. Dies ist hilfreich, um beginnende Datentr�gerprobleme zu erkennen. 
Wenn der optionale Wert [n] nicht angegeben wird, sind 10 Prozent voreingestellt.

<div align=right><a href="#options">&uarr;</a></div><p>


<a name="spinup"><b>--spinup-delay [n]: Gibt dem Laufwerk Zeit zum Hochdrehen</b></a><p>

Gibt dem Laufwerk die angegebene Anzahl Sekunden Zeit zum Hochdrehen bevor
der Lesevorgang beginnt. Dadurch erscheinen keine abrupten Geschwindigkeits�nderungen
beim Beginn des Lesens und entsprechende Warnungen in Verbindung mit der
<a href="#speedwarn">--speed-warning</a>-Option werden vermieden.<br>

F�r den optionalen Wert [n] sind 5 Sekunden voreingestellt.

<div align=right><a href="#options">&uarr;</a></div><p>


<a name="split"><b>--split-files: Teilt Dateien in Segmente <= 2GB auf</b></a><p>

Erm�glicht das Anlegen von Abbildern und Fehlerkorrektur-Dateien 
auf Dateisystemen, 
die nur Dateien mit einer Maximalgr��e von 2GB zulassen 
(z.B. FAT unter Windows). <br>
Anstelle einer einzigen Datei "abbild.iso" werden bis zu 100
Segmente "abbild00.iso", "abbild01.iso" usw. verwendet; dies kostet
etwas Geschwindigkeit.<p> 

Geben Sie weiterhin den Dateinamen als "abbild.iso" bei der <a href="#image">--image</a>-Option an; 
die Nummern werden automatisch hinzugef�gt, wenn dieser Schalter aktiv ist.<p>

<div align=right><a href="#options">&uarr;</a></div><p>

EOF
}

# ----- Downloads

function download_contents_de()
{  local file="$1.html"
   local query=$2
   local page=$3
   local lang=$4

   case $query in
   title)   title="Herunterladen" ;;

   link)    link_title="Herunterladen" ;;
   link10)   link_title="Systemanforderungen" ;;
   link20)   link_title="Installation" ;;

   content*) eval "download$page$lang $file" ;;
   esac 
}

function download0de()
{  cat >> $1 <<EOF
<h3>dvdisaster herunterladen</h3>

dvdisaster unterst�tzt die Betriebssysteme FreeBSD, Linux und Windows
in den <a href="download10.html">aktuellen Versionen</a>.<p>

Laden Sie sich bitte entweder den Quellkode oder eine Bin�rversion 
aus der folgenden Liste herunter. Die Pakete k�nnen mit
einer <a href="#signature">digitalen Unterschrift</a> auf 
ihren Ursprungszustand �berpr�ft werden.<p>

Um die Bin�rversion f�r Windows zu installieren, rufen Sie das Programm nach dem
Herunterladen auf und folgen dem Dialog. F�r die Installation
der Quellkode-Version gibt es <a href="download20.html">Installationshinweise</a>.

<pre> </pre>

<b>Entwickler-Versionen</b> - neu und experimentell f�r erfahrene Benutzer!<p> 

<table width="100%" $IDXCOLOR cellpadding="0" cellspacing="5">
<tr><td><b>dvdisaster-0.66</b></td><td align="right">xx-Mar-2006</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
  <table>
    <tr><td align="right">&nbsp;&nbsp;Quellkode f�r alle Betriebssysteme:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.66.tar.bz2">dvdisaster-0.66.tar.bz2</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.66.tar.bz2.gpg">dvdisaster-0.66.tar.bz2.gpg</a></td></tr>
    <tr><td align="right">Bin�rversion f�r Windows:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.66-setup.exe">dvdisaster-0.66-setup.exe</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.66-setup.exe.gpg">dvdisaster-0.66-setup.exe.gpg</a></td></tr>
  </table>
</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
Abbilder werden bereits beim <a href="example10.html">Pr�fen</a> mit der
Fehlerkorrektur-Datei abgeglichen. Das Erzeugen von Dateien kann nach 
behobenem Speicherplatzmangel auf der Festplatte fortgesetzt werden.<p>

<i>Neues <a href="background30.html">Fehlerkorrektur-Verfahren</a> ohne 
Fehlerkorrektur-Datei:</i> 
Fehlerkorrektur-Informationen k�nnen direkt an das Abbild angeh�ngt werden.
Das Verfahren ist noch experimentell und in dieser Version nur in der
Kommandozeile verf�gbar. Schauen Sie auch in 
das <a href="http://sourceforge.net/cvs/?group_id=157550">CVS-Archiv</a>,
um die Weiterentwicklung des neuen Verfahrens zu verfolgen (ben�tigt Kenntnisse
zum Erzeugen von Programmen aus dem Quellkode).
</td></tr></table><p>

<table width="100%" $IDXCOLOR cellpadding="0" cellspacing="5">
<tr><td><b>dvdisaster-0.65</b></td><td align="right">14-Jan-2006</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
  <table>
    <tr><td align="right">&nbsp;&nbsp;Quellkode f�r alle Betriebssysteme:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.65.tar.bz2">dvdisaster-0.65.tar.bz2</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.65.tar.bz2.gpg">dvdisaster-0.65.tar.bz2.gpg</a></td></tr>
    <tr><td align="right">Bin�rversion f�r Windows:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.65-setup.exe">dvdisaster-0.65-setup.exe</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.65-setup.exe.gpg">dvdisaster-0.65-setup.exe.gpg</a></td></tr>
  </table>
</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
<i>Alle Betriebssysteme:</i>
<ul>
<li>Das Pr�fen des Abbildes entf�llt bei der Erstellung der Fehlerkorrekturdatei,<br>
wenn das Abbild unmittelbar vorher eingelesen wurde.</li>
<li>Fehlerkorrektur-Dateien k�nnen in 2GB gro�e Segmente aufgeteilt werden.</li>
<li>Tschechische �bersetzung von Lubo&#353; Stan&#283;k.</li>
</ul>
<i>FreeBSD:</i>
<ul>
<li>wird mit dieser Version erstmalig unterst�tzt.</li>
</ul>
<i>Windows:</i>
<ul>
<li>komplette Unterst�tzung f�r FAT32-Dateisysteme (s.o.)</li>
<li>Bin�rversion wird jetzt mit Gtk+2.6-Bibliotheken ausgeliefert.</li>
</ul>
</td></tr></table><p>

<pre> </pre>

<b>Stabile Versionen</b> - zum Einstieg empfohlen<p> 

<table width="100%" $IDXCOLOR cellpadding="0" cellspacing="5">
<tr><td><b>dvdisaster-0.64 (pl2)</b></td><td align="right">01-Nov-2005</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
  <table>
    <tr><td align="right">&nbsp;&nbsp;Quellkode (Linux/Windows):&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.64.2.tar.bz2">dvdisaster-0.64.2.tar.bz2</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.64.2.tar.bz2.gpg">dvdisaster-0.64.2.tar.bz2.gpg</a></td></tr>
    <tr><td align="right">Bin�rversion f�r Windows:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.64.2-setup.exe">dvdisaster-0.64.2-setup.exe</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.64.2-setup.exe.gpg">dvdisaster-0.64.2-setup.exe.gpg</a></td></tr>
  </table>
</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
Diese Version kann die <a href="example81.html#iso">Abbild-Gr��e aus dem
UDF/ISO-Dateisystem</a> bestimmen, um 
die <a href="qa20.html#plusrw">Gr��enerkennung von -RW/+RW-Medien</a> zu verbessern.
Das Einlesen von Abbildern und das Erzeugen der zugeh�rigen Fehlerkorrektur-Datei
kann jetzt zusammen
<a href="example81.html#auto">mit einem Mausklick</a> durchgef�hrt werden.
Au�erdem gibt es eine Reihe von kleinen Verbesserungen in den Bereichen
Laufwerksunterst�tzung, Abrundung der Funktionalit�t 
sowie einige kleinere Bugs weniger ;-)<p>
<b>Patches</b> (kleine �nderungen nach Version 0.64; die obigen Dateien wurden erneuert):<br>
<b>pl1</b> verhindert Absturz sofort nach dem Programmaufruf  bei Verwendung von gtk+-2.6; 
betrifft nur die Linux-Version.<br>
<b>pl2</b> repariert die -u-Kommandozeilenoption und
pa�t Dateinamen-Berechtigungen unter Linux an Unix-Konventionen an.

</td></tr></table><p>

<table width="100%" $IDXCOLOR cellpadding="0" cellspacing="5">
<tr><td><b>dvdisaster-0.63</b></td><td align="right">01-Aug-2005</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
  <table>
    <tr><td align="right">&nbsp;&nbsp;Quellkode (Linux/Windows):&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.63.tbz">dvdisaster-0.63.tbz</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.63.tbz.gpg">dvdisaster-0.63.tbz.gpg</a></td></tr>
    <tr><td align="right">Bin�rversion f�r Windows:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.63-setup.exe">dvdisaster-0.63-setup.exe</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.63-setup.exe.gpg">dvdisaster-0.63-setup.exe.gpg</a></td></tr>
  </table>
</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
Enth�lt ein <a href="example40.html">verbessertes Verfahren</a> zum
<a href="example90.html#adaptiveread">Lesen defekter Datentr�ger</a>, 
das durch einen Artikel im c't-Magazin 16/2005 motiviert wurde.
</td></tr></table><p>

<pre> </pre>

<b>Historische Versionen</b><p>

<table width="100%" $IDXCOLOR cellpadding="0" cellspacing="5">
<tr><td><b>dvdisaster-0.55</b></td><td align="right">20-Feb-2005</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
  <table>
    <tr><td align="right">&nbsp;&nbsp;Quellkode (Linux/Windows):&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.55.tgz">dvdisaster-0.55.tgz</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.55.tgz.gpg">dvdisaster-0.55.tgz.gpg</a></td></tr>
    <tr><td align="right">Bin�rversion f�r Windows:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.55.zip">dvdisaster-0.55.zip</a></td></tr>
    <tr><td align="right">Digitale Unterschrift:&nbsp;</td>
        <td><a href="http://download.berlios.de/dvdisaster/dvdisaster-0.55.zip.gpg">dvdisaster-0.55.zip.gpg</a></td></tr>
  </table>
</td></tr>
<tr bgcolor="#000000"><td colspan="2"><img width=1 height=1 alt=""></td></tr>
<tr><td colspan="2">
Dies ist die letzte reine Kommandozeilen-Version von dvdisaster.
</td></tr></table><p>

<pre> </pre>

<a name="signature"><b>Was ist die digitale Unterschrift?</b></a><p>

Die herunterladbaren Quellkode-Pakete enthalten
eine mit <a href="http://www.gnupg.org/gnupg.html">GnuPG</a> erstellte 
digitale Unterschrift, damit Sie nachpr�fen k�nnen,
ob sich die Software in ihrem urspr�nglichen Zustand befindet.<p>

Zur �berpr�fung der Echtheit des <a href="../pubkey.asc">�ffentlichen Schl�ssels</a> 
vergleichen Sie seinen "Fingerabdruck" am besten mit demjenigen, der in der Fu�zeile
meiner EMails angegeben ist. Schicken Sie mir bei Bedarf eine EMail mit dem
Betreff "GPG Fingerabdruck".
EOF
}


function download10de()
{  cat >> $1 <<EOF
<h3>Systemanforderungen</h3>

<ul>
 <li><b>x86-kompatible</b> Hardware in der <b>32bit</b>-Betriebsart
  (64-bit Unterst�tzung siehe Betriebssysteme),<p></li>
 <li>ein aktuelles CD- oder DVD-Laufwerk mit ATAPI- oder SCSI-Schnittstelle,<p></li>
 <li>mindestens P4 mit 2Ghz oder vergleichbare Rechenleistung<p>
</ul>

<h3>Betriebssysteme</h3>

<ul>
 <li><b>FreeBSD</b> ab Version <b>6.0</b><br> 
     (f�r ATAPI-Laufwerke mu� der Kernel neu �bersetzt werden)<p>
 </li>
 <li><b>Linux</b> ab Kernel <b>2.6.7</b>, 64bit m�glich<br> 
     (Kernel >= 2.4.20 sind m�glich, aber nicht empfohlen!)<p>
 </li>
 <li><b>Windows</b> <b>2000</b> oder <b>XP</b><br>
     (Windows 98 und ME sind m�glich, aber f�r die Bearbeitung von DVD nicht empfohlen)
 </li>
</ul>

EOF
}


function download20de()
{  cat >> $1 <<EOF
<h3>Installation der Quellkode-Version</h3>

<b>Ben�tigte Werkzeuge und Bibliotheken</b><p>

dvdisaster ben�tigt die �blichen <a href="http://www.gnu.org/">GNU</a>-Entwicklungswerkzeuge 
zum �bersetzen von C-Programmen. Bei FreeBSD und Linux sind diese Werkzeuge auf den
mitgelieferten Datentr�gern normalerweise vorhanden.<p>
F�r Windows sind die entsprechenden Werkzeuge in der
 <a href="http://www.mingw.org">Mingw</a>-Umgebung enthalten.
Cygwin wird nicht unterst�tzt.<p>

Abh�ngig vom Betriebssystem brauchen Sie au�erdem:

<ul>
<li>Die <a href="http://www.gnu.org/software/gettext/">gettext</a>-Bibliothek</li>
<li>Die <a href="http://www.gnu.org/software/libiconv/">iconv</a>-Bibliothek (nur f�r Windows)</li>
<li>Das Werkzeug <a href="http://www.freedesktop.org/software/pkgconfig/releases">pkgconfig</a></li>
<li>Die <a href="http://www.gtk.org">GTK+-Bibliothek</a> ab Version 2.2 einschlie�lich aller Hilfsbibliotheken</li>
</ul>

Diese Komponenten sind auf den FreeBSD- und Linux-Installations-Datentr�gern
typischerweise vorhanden.
Das <a href="http://www.gtk.org">Gtk+</a>-Projekt bietet
spezielle Versionen dieser Bibliotheken 
<a href="http://www.gimp.org/~tml/gimp/win32/downloads.html">f�r Windows</a> an.
Sie ben�tigen sowohl die normalen Bibliotheken als auch die "-devel"-Versionen.<p> 

<a name="freebsd"></a>
<b>Hinweise f�r FreeBSD</b><p>

FreeBSD hat keinen einheitlichen CD-ROM-Treiber vorinstalliert, der sowohl SCSI- als
auch ATAPI-Laufwerke unterst�tzt (wie dies unter Linux und Windows der Fall ist).
Dadurch kann dvdisaster auf einem frisch installierten FreeBSD-System keine 
ATAPI-Laufwerke ansprechen. Um einen passenden Treiber nachzuinstallieren,
m�ssen Sie einen Kernel mit dem zus�tzlichen Modul<p>

<tt>device atapicam</tt><p>

erzeugen. Die Module <i>ata</i>, <i>scbus</i>, <i>cd</i>
und <i>pass</i> werden ebenfalls ben�tigt, sind aber bei FreeBSD 6.0 
schon voreingestellt. Zum �bersetzen der dvdisaster-Quellen ben�tigen Sie
au�erdem GNU make (gmake) und die bash-Kommandozeile.<p>

<b>�bersetzen des Quellkodes</b><p>

Um den Quellkode zu �bersetzen, f�hren Sie bitte die folgenden Schritte
in einer Eingabeaufforderung durch.<p>

Packen Sie das Quellkode-Archiv aus:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>tar xjf $project_package.tar.bz2</b><br>
</td></tr></table><p>

Wechseln Sie in das dadurch erzeugte Verzeichnis:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>cd $project_package</b><br>
</td></tr></table><p>

Rufen Sie das Konfigurations-Skript auf:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>bash configure</b><br>
<i>[... viele Ausgaben des Konfigurationsskriptes ...]</i>
</td></tr></table><p>

Das Skript wird Ihnen gegebenenfalls Hinweise �ber fehlende 
Bibliotheken geben. "bash configure --help" liefert Informationen dar�ber,
wie man den Pfad zu einer bereits installierten Bibliothek setzen kann.<p>

Wenn das Konfigurations-Skript ohne Fehlermeldungen abgearbeitet ist,
�bersetzen Sie den Quellkode in das ausf�hrbare Programm:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>gmake</b><br>
<i>[... viele Ausgaben des �bersetzungsprozesses ...]</i>
</td></tr></table><p>

Rufen Sie das Programm testweise auf:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>./dvdisaster</b><br>
<i>[... nach einer Weile �ffnet sich das Hauptfenster ...]</i>
</td></tr></table><p>

Sie k�nnen das Programm direkt aus dem aktuellen Verzeichnis
aufrufen und verwenden. Eine Kopie der dvdisaster-Internetseiten
befindet sich �brigens im Unterverzeichnis <i>documentation/de.</i><p>

Optional k�nnen Sie das Programm und die Dokumentation auch
in Ihrem System installieren lassen:<p>

<table class="example" width=100% bgcolor=#ffffe0><tr><td>
user@linux&gt; <b>gmake install</b><br>
<i>[... Ausgaben des Installationsvorganges ...]</i>
</td></tr></table><p>

Beachten Sie vorher die Ausgabe des "<tt>configure</tt>"-Skriptes oder geben 
Sie "<tt>gmake show</tt>" ein um zu erfahren, in welche Unterverzeichnisse
die Programmkomponenten installiert werden. <p>
Rufen Sie "<tt>bash configure --help</tt>" auf, um
Informationen dar�ber zu erhalten, wie Sie diese Pfade an Ihr System
anpassen k�nnen.

<pre> </pre>

<font size="+1">Viel Erfolg bei der Benutzung von dvdisaster!</font>
EOF
}

# ----- Questions and Answers

function qa_contents_de()
{  local file="$1.html"
   local query=$2
   local page=$3
   local lang=$4

   case $query in
   title)   title="Fragen und Antworten" ;;

   link)    link_title="Fragen und Antworten" ;;
   link10)   link_title="Technische Fragen" ;;
   link20)   link_title="Fehlermeldungen" ;;

   content*) eval "qa$page$lang $file" ;;
   esac 
}

function qa0de()
{  cat >> $1 <<EOF
<h3><a name="top">Allgemeine Fragen und Antworten</a></h3>

<a href="#pronounce">1.1 Wie spricht man "dvdisaster" aus?</a><p>
<a href="#pipo">1.2 Wo gibt es mehr Informationen zu PI/PO-Analysen?</a><p>
<a href="#compat">1.3 Ist dvdisaster mit nachfolgenden Versionen kompatibel?</a>

<pre> </pre><hr><pre> </pre>

<b><a name="pronounce">1.1 Wie spricht man "dvdisaster" aus?</a></b><p>
Da der Wortstamm <i>disaster</i> aus dem Englischen kommt, 
spricht man es etwa wie "diwidisaster" aus. 
<div align=right><a href="#top">&uarr;</a></div>


<b><a name="pipo">1.2 Wo gibt es mehr Informationen zu PI/PO-Analysen?</a></b><p>
DVDs enthalten einen Fehlerkorrektur-Mechanismus, der nach einem
<a href="background10.html">�hnlichen Prinzip</a> wie dvdisaster arbeitet.
Die Fehlerkorrektur findet bei DVDs in zwei Ebenen bzw. Schritten statt, 
die als PI und PO bezeichnet werden. Erst wenn ein Fehler auf beiden
Ebenen nicht korrigierbar ist, meldet das Laufwerk unlesbare Sektoren
und es gibt Arbeit f�r dvdisaster (oder der Datentr�ger ist reif f�r den M�ll). <p>

F�r einige DVD-Laufwerke gibt es Programme, die ermitteln k�nnen, 
wie h�ufig die beiden Fehlerkorrektur-Ebenen beim Auslesen einer DVD beansprucht werden. 
Im Internet gibt es viele interessante Foren mit Verweisen auf diese Werkzeuge. 
Dort finden sich auch einige gut gemachte Artikel dar�ber, 
wie man aus den gemessenen PI/PO-Werten R�ckschl�sse
auf die Qualit�t der betreffenden Datentr�ger ziehen kann. 
<div align=right><a href="#top">&uarr;</a></div><p>

<b><a name="compat">1.3 Ist dvdisaster mit nachfolgenden Versionen kompatibel?</a></b><p>
Ja, denn dvdisaster ist f�r eine Datenarchivierung �ber viele Jahre vorgesehen. 
Sie k�nnen beim Umstieg auf eine neuere Version von dvdisaster die Abbild- und
Fehlerkorrekturdateien von Vorg�ngerversionen weiter verwenden und brauchen
diese <i>nicht</i> neu zu erzeugen.<p>
<div align=right><a href="#top">&uarr;</a></div><p>

EOF
}


function qa10de()
{  cat >> $1 <<EOF
<h3><a name="top">Technische Fragen</a></h3>

<a href="#nls">2.1 In welchen �bersetzungen ist das Programm verf�gbar?</a><p>
<a href="#media">2.2 Welche Datentr�ger-Typen werden unterst�tzt?</a><p>
<a href="#filesystem">2.3 Welche Dateisysteme werden unterst�tzt?</a><p>
<a href="#aspi">2.4 Was bedeuten "SPTI" und "ASPI"?</a><p>

<pre> </pre><hr><pre> </pre>

<b><a name="nls">2.1 In welchen �bersetzungen ist das Programm verf�gbar?</a></b><p>

dvdisaster beinhaltet Bildschirmtexte in den folgenden Sprachen:<p>

<table>
<tr><td>&nbsp;&nbsp;&nbsp;</td><td>Deutsch</td><td>--</td><td>vollst�ndig</td></tr>
<tr><td></td><td>Englisch</td><td>--</td><td>vollst�ndig</td></tr>
<tr><td></td><td>Italienisch</td><td>--</td><td>vollst�ndig</td></tr>
<tr><td></td><td>Tschechisch</td><td>--</td><td>vollst�ndig</td></tr>
</table><p>

�bersetzer/-innen f�r andere Sprachen sind willkommen!<p>

dvdisaster �bernimmt die Spracheinstellungen des Betriebssystems
automatisch. Falls die lokale Sprache noch nicht unterst�tzt wird,
werden englische Texte verwendet. Eine andere Sprache kann mit Hilfe
von Umgebungsvariablen eingestellt werden.<p>

Zum Beispiel f�r die bash-Kommandozeile und deutsche Sprache:

<pre>export LANG=de_DE</pre>

Wenn Umlaute nicht richtig oder als "a,"o,"u usw. dargestellt werden,
fehlt eventuell noch: <p>

<tt>export OUTPUT_CHARSET=iso-8859-1</tt> (X11, XTerm)<p>

oder<p>

<tt>export OUTPUT_CHARSET=CP850</tt> (Windows)<p>

<div align=right><a href="#top">&uarr;</a></div>



<b><a name="media">2.2 Welche Datentr�ger-Typen werden unterst�tzt?</a></b><p>

dvdisaster unterst�tzt einmal oder mehrmals beschreibbare CD- und DVD-Datentr�ger.
Datentr�ger mit Mehrfachsitzungen (engl.: multisession)
oder einem Kopierschutz k�nnen <i>nicht</i> verwendet werden.<p>

Unterst�tzte Datentr�ger nach Typ:<p>

<b>DVD-R, DVD+R</b><p>

<ul>
<li>Keine weiteren Einschr�nkungen bekannt.</li>
</ul>

<b>DVD+R9 (zweischichtig)</b>
<ul>
<li>Das Laufwerk mu� die <a href="qa20.html#dvdrom">Erkennung
des Datentr�ger-Typs</a> erm�glichen.</li>
</ul>

<b>DVD-RW, DVD+RW</b><p>

<ul>
<li>Einige Laufwerke liefern eine <a href="qa20.html#plusrw">falsche Abbild-Gr��e</a>.<br>
Abhilfe: Option zum <a href="example81.html#iso">Verwenden von Informationen aus dem ISO/UDF-Dateisystem</a> setzen.
</li>
</ul>

<b>CD-R, CD-RW</b><p>

<ul>
 <li>nur Daten-CDs werden unterst�tzt.</li>
</ul>

<b>Nicht verwendbare Typen</b> (kein Einlesen des Abbildes m�glich):<p> 
Audio-CD und Video-CD sowie DVD-ROM und DVD-RAM.

<div align=right><a href="#top">&uarr;</a></div><p>


<b><a name="filesystem">2.3 Welche Dateisysteme werden unterst�tzt?</a></b><p>

dvdisaster arbeitet ausschlie�lich auf der Ebene von 
<a href="background20.html">Datentr�ger-Abbildern</a>,
auf die es sektorweise zugreift. 
Daher ist es unerheblich, mit welchem Dateisystem der Datentr�ger formatiert wurde. <p>
Weil dvdisaster die Struktur der Dateisysteme nicht kennt bzw. nutzt,
kann es keine logischen Fehler darin beheben und insbesondere keine
verlorengegangenen oder gel�schten Dateien wiederherstellen.
<div align=right><a href="#top">&uarr;</a></div><p>


<b><a name="aspi">2.4 Was bedeuten "SPTI" und "ASPI"?</a></b><p>

Windows 98 und ME verwenden ASPI als Treiber, um CD/DVD-Laufwerke 
anzusprechen. Windows NT und seine Nachfolger
sind hingegen mit der Schnittstelle SPTI ausger�stet, erlauben
jedoch auch noch die zus�tzliche Installation von ASPI-Treibern.<p>

<i>&gt;&nbsp; Vor- und Nachteile von ASPI unter Windows NT/2000/XP?</i><p>

<table>
<tr valign=top><td>+</td><td>Es werden keine Systemverwalterrechte f�r den Zugriff
auf die Laufwerke ben�tigt.</td></tr>
<tr valign=top><td>-</td><td>ASPI erlaubt manchmal keine eindeutige Zuordnung von Laufwerksbuchstaben.</td></tr>
<tr valign=top><td>-</td><td>Einige Brennprogramme installieren ihre 
eigenen ASPI-Versionen.
Die zus�tzliche Installation eines fremden ASPI-Treibers kann die Funktion
der vorhandenen Brennsoftware st�ren.</td></tr>
</table><p>

<i>&gt;&nbsp; Welche ASPI-Version wird f�r die Benutzung mit dvdisaster empfohlen?</i><p>

Adaptec stellt seine ASPI-Treiber zum kostenlosen Herunterladen bereit.
Unter Windows 2000/XP erkennen die Versionen 4.72.* manchmal keine
Laufwerke. In diesem Fall hilft typischerweise die Installation der
�lteren Version 4.60.<p>

<i>&gt;&nbsp; Die Laufwerksbuchstaben stimmen unter ASPI nicht!</i><p>

Die ASPI-Treiber verwenden ein eigenes System von Laufwerkskennungen,
das nicht zu den Laufwerksbuchstaben von Windows kompatibel ist.<br>
Um eine einheitliche Benutzerschnittstelle f�r SPTI und ASPI zu bieten, 
versucht dvdisaster zu erraten, wie die Laufwerke unter ASPI zugeordnet sind.
Diese Zuordnung gelingt nicht in allen Konfigurationen.<p>

Mit Hilfe der <a href="example90.html#list">--list</a> -Funktion kann man 
die aktuelle Zuordnung von Laufwerksbuchstaben herausfinden.<p>

<i>&gt;&nbsp; Wie kann man zwischen SPTI und ASPI ausw�hlen?</i><p>

In der Grundeinstellung w�hlt dvdisaster automatisch zwischen SPTI und
ASPI aus, wobei SPTI bevorzugt wird.
Die Benutzung von ASPI kann allerdings erzwungen werden; 
n�heres dazu steht in der Beschreibung
der <a href="example90.html#list">--list</a> -Funktion.

<div align=right><a href="#top">&uarr;</a></div><p>

EOF
}


function qa20de()
{  cat >> $1 <<EOF
<h3>Fehlermeldungen und Probleme</h3>

<a href="#tao">3.1 Was bedeutet "Warnung: 2 Sektoren fehlen am Ende des Datentr�gers..."?</a><p>
<a href="#block">3.2 Das Programm h�ngt nach dem Aufruf.</a><p>
<a href="#crc">3.3 Was bedeutet die Meldung "CRC error, sector: n"?</a><p>
<a href="#plusrw">3.4 Lesefehler oder falsche Abbild-Gr��e bei -RW/+RW-Datentr�gern</a><p>
<a href="#dvdrom">3.5 Selbstgebrannter Datentr�ger wird als "DVD-ROM" erkannt und abgelehnt.</a><p>
<a href="#freebsd">3.6 Unter FreeBSD erscheinen keine Laufwerke.</a><p>
<a href="#v40error">3.7 "Fehlerkorrekturdatei wurde mit Version 0.40.7 erzeugt"</a><p>
<pre> </pre><hr><pre> </pre>

<b><a name="tao">3.1 Was bedeutet "Warnung: 2 Sektoren fehlen am Ende des Datentr�gers..."?</a></b><p>
Diese Warnung tritt bei CD-Datentr�gern auf, die im "TAO"-Modus ("track at once")
gebrannt wurden. Manche Laufwerke liefern f�r diese Medien eine um 2 zu gro�e L�nge
f�r das Abbild zur�ck. Dadurch entstehen 2 Pseudo-Lesefehler am Ende des Datentr�gers, 
die jedoch <i>keinen</i> Datenverlust bedeuten. <p>

Da man dem Datentr�ger nicht ansehen kann, in welcher Betriebsart er gebrannt wurde,
geht dvdisaster davon aus, da� eine "TAO"-CD vorliegt, wenn nur die letzten beiden
Sektoren unlesbar sind, und das Abbild wird um diese beiden Sektoren verk�rzt.
Ob dies zutreffend ist, m�ssen Sie von Fall zu Fall selbst entscheiden
und gegebenenfalls mit der <a href="example90.html#dao">--dao</a>-Option 
oder dem <a href="example82.html#image">Dialog zum Lesen und Pr�fen</a> einen 
Hinweis geben, um diese Sektoren als echte Lesefehler zu betrachten.<p>

Wenn Sie Datentr�ger mit nur einer Sitzung erzeugen, sollten Sie daher immer
im Modus "DAO / Disc at once" (manchmal auch "SAO / Session at once" genannt) brennen, 
um diese Probleme zu vermeiden. 
<div align=right><a href="#top">&uarr;</a></div>


<b><a name="block">3.2 Das Programm h�ngt nach dem Aufruf</a></b><p>
Unter alten Linux-Versionen (Kernel 2.4.x) bleibt das Programm 
manchmal nach dem Starten h�ngen, bevor es mit der ersten
Aktion beginnt. Es l��t sich dann weder mit Strg-C noch mit "kill -9"
unterbrechen.<p>

Werfen Sie den Datentr�ger aus, damit sich das Programm beendet.
Legen Sie das Speichermedium dann wieder ein und warten Sie, 
bis das Laufwerk den Datentr�ger erkennt und zur Ruhe kommt.
Ein erneuter Aufruf von dvdisaster sollte jetzt funktionieren. 
<div align=right><a href="#top">&uarr;</a></div>


<b><a name="crc">3.3 Was bedeutet die Meldung "CRC error, sector: n"?</a></b><p>
Der betreffende Sektor konnte gelesen werden, aber die Pr�fsumme seines Inhalts
stimmt nicht mit ihrem Gegenst�ck in der Fehlerkorrekturdatei �berein. 
Dies kann mehrere Ursachen haben:<p>
<ul>
<li>Das Datentr�ger-Abbild wurde mit Schreibrechten in das System eingebunden
und dadurch ver�ndert (typisches Indiz: CRC-Fehler in Sektor 64 und in den Sektoren 200 bis 400).</li>
<li>Es gibt technische Probleme mit dem verwendeten Computersystem,
insbesondere bei der Kommunikation mit den Massenspeichern.</li>
</ul>

Falls Sie technische Probleme vermuten, erstellen  
Sie versuchsweise eine zweite Version des Abbildes und der Fehlerkorrekturdatei
und <a href="example50.html">vergleichen Sie die Dateien erneut</a>. 
Wenn der Fehler verschwindet oder an einer anderen Stelle auftritt,
hat Ihr Rechner m�glicherweise ein Problem mit defektem Hauptspeicher, 
fehlerhafter Laufwerks-Verkabelung oder falsch
eingestellten Taktfrequenzen.
<div align=right><a href="#top">&uarr;</a></div>

<b><a name="plusrw">3.4 Lesefehler oder falsche Abbild-Gr��e bei -RW/+RW-Datentr�gern</a></b><p>

Einige Laufwerke liefern bei -RW/+RW-Datentr�gern fehlerhafte Informationen �ber die
Abbild-Gr��e. Besonders h�ufig sind die folgenden beiden F�lle:<p>

<table>
<tr><td valign="top">Fehler:</td>
<td>Das Laufwerk liefert den Umfang des gr��ten jemals auf den Datentr�ger geschriebenen Abbildes 
anstelle der tats�chlichen Abbild-Gr��e.
</td></tr>
<tr><td valign="top">Auswirkung:</td>
<td>Ein Datentr�ger wird gel�scht und dann mit einer 100MB gro�en Datei beschrieben.
Beim Zur�cklesen ist das Abbild aber einige GB gro� und es enth�lt
noch die Reste �lterer Abbilder.
</td></tr>
<tr><td><pre> </pre></td><td></td></tr>
<tr><td valign="top">Fehler:</td>
<td>Das Laufwerk liefert die maximale Datentr�ger-Kapazit�t (typischerweise 2295104 Sektoren)
anstelle der tats�chlich genutzten Sektoren.
</td></tr>
<tr><td valign="top">Auswirkung:</td>
<td>Beim Einlesen des Abbilds treten ab einer bestimmten Stelle nur noch Lesefehler auf;
die Dateien auf dem Datentr�ger sind aber alle vollst�ndig.
</td></tr>
</table><p>

M�gliche Abhilfe: <p>

<table width=100%><tr><td bgcolor=#000000 width=2><img width=1 height=1 alt=""></td><td>
Setzen Sie die Option zum <a href="example81.html#iso">Verwenden von Informationen aus dem ISO/UDF-Dateisystem</a>, damit die Abbild-Gr��e aus dem ISO/UDF-Dateisystem ermittelt wird.
</td></tr></table><p>

Falls bei der Bearbeitung eines besch�digten Datentr�gers 
die ben�tigten ISO/UDF-Sektoren auf dem Abbild unlesbar sind, haben Sie zwei M�glichkeiten:

<ul>
<li>F�hren Sie die <a href="example50.html">"Vergleichen"</a>-Funktion nur mit der 
Fehlerkorrektur-Datei aus. Entnehmen Sie die korrekte Abbild-Gr��e der Ausgabe und 
<a href="example82.html#read">schr�nken Sie den Lesebereich</a> entsprechend ein.
</li>
<li>Lesen Sie einfach das Abbild mit der zu gro�en L�nge ein. Wenn Sie nach dem Aufruf
der <a href="example40.html#repair">"Reparieren"</a>-Funktion gefragt werden, ob das Abbild
abgeschnitten werden soll, antworten Sie mit "OK".
</li>
</ul>

<div align=right><a href="#top">&uarr;</a></div>


<b><a name="dvdrom">3.5 Selbstgebrannter Datentr�ger wird als "DVD-ROM" erkannt und abgelehnt.</a></b><p>

Dies kann die folgenden Ursachen haben:
 
<ol>
<li> Der "book type" des Rohlings wurde auf "DVD-ROM" gesetzt.<br>
In diesem Fall mu� das Laufwerk es erm�glichen, 
den wahren Typ des eingelegten Datentr�gers zu erkennen.
dvdisaster gibt dann "DVD-ROM (faked book type)" 
(DVD-ROM, vorget�uschter book type) aus.<p>

Nicht alle Laufwerke unterst�tzen jedoch die Erkennung eines vorget�uschten
book types.

<li> Einige Laufwerke betrachten DVD+R9 (zweischichtig) tats�chlich als DVD-ROM.
</li>
</ol>

Versuchen Sie in diesen F�llen, das Abbild mit einem anderen Laufwerk einzulesen.

<div align=right><a href="#top">&uarr;</a></div>


<b><a name="freebsd">3.6 Unter FreeBSD erscheinen keine Laufwerke.</a></b><p>

<ul>
<li>Unter FreeBSD wird f�r ATAPI-Laufwerke (das sind fast alle heute gebr�uchlichen Typen)
m�glicherweise ein <a href="download20.html#freebsd">Neu�bersetzen des Kernels</a>
ben�tigt, um die Laufwerke mit dvdisaster verwenden zu k�nnen. 
<li>Sie m�ssen Lese- und Schreibrechte auf dem betreffenden Ger�t 
(z.B. /dev/pass0) haben.
</ul>

<div align=right><a href="#top">&uarr;</a></div>


<b><a name="v40error">3.7 "Fehlerkorrekturdatei wurde mit Version 0.40.7 erzeugt"</a></b><p>

Die <a href="http://sourceforge.net/cvs/?group_id=157550">CVS-Versionen</a> von 
dvdisaster markieren ihre Fehlerkorrektur-Dateien mit einem
speziellen Bit. Dies bewirkt in den dvdisaster-Versionen bis einschlie�lich
0.65 f�lschlicherweise die obige Fehlermeldung. Bitte verwenden Sie die CVS-Versionen
nur zusammen mit dvdisaster 0.66 oder neueren Versionen.

<div align=right><a href="#top">&uarr;</a></div>

EOF
}


# ----- Background information

function background_contents_de()
{  local file="$1.html"
   local query=$2
   local page=$3
   local lang=$4

   case $query in
   title)   title="Hintergrundinformationen" ;;
 
   link)    link_title="Hintergrundinformationen" ;;
   link10)   link_title="Eigenschaften der Fehlerkorrektur" ;;   
   link20)   link_title="Datenrekonstruktion auf Abbild-Ebene" ;;   
   link30)   link_title="RS01 und RS02" ;;   
   link40)   link_title="Lineares Lese-Verfahren" ;;   
   link50)   link_title="Angepa�tes Lese-Verfahren" ;;   
   link60)   link_title="Bemerkungen zu Lesefehlern" ;;   
   link70)   link_title="Fehlerkorrektur-Datei aufbewahren" ;;

   content*) eval "background$page$lang $file"
	    return 0
	    ;;
   esac 
}

function background0de()
{  cat >> $1 <<EOF

<h3>Hintergrundinformationen</h3>

Die Informationen in diesem Abschnitt werden nicht unbedingt f�r die
Bedienung von dvdisaster ben�tigt. Sie sind aber hilfreich um zu verstehen
wie dvdisaster funktioniert und k�nnen Ihnen dabei helfen, das Programm
entsprechend Ihren Bed�rfnissen anzuwenden.

<ol>
<li><a href="background10.html">Eigenschaften der Reed-Solomon-Fehlerkorrektur</a><p></li>
<li><a href="background20.html">Datenrekonstruktion auf Abbild-Ebene</a><p></li>
<li><a href="background30.html">Die RS01 und RS02-Verfahren</a><p></li>
<li><a href="background40.html">Arbeitsweise des linearen Lese-Verfahrens</a><p></li>   
<li><a href="background50.html">Arbeitsweise des angepa�ten Lese-Verfahrens</a><p></li>   
<li><a href="background60.html">Einige Bemerkungen zu Lesefehlern</a><p></li>   
<li><a href="background70.html">Tips zum Aufbewahren der Fehlerkorrektur-Datei</a><p></li>
</ol>

EOF
}


function background10de()
{  cat >> $1 <<EOF
<h3>Technische Eigenschaften der Fehlerkorrektur</h3>

Diese Seite skizziert die Grundideen hinter dvdisaster, damit Sie absch�tzen k�nnen,
ob es Ihren Anforderungen zur Datensicherung gen�gt. Im Zweifelsfall sollten Sie
dvdisaster nicht einsetzen oder zus�tzliche Sicherungsstrategien anwenden.<p>

<b>Fehlerkorrektur-Verfahren.</b> &nbsp; dvdisaster verwendet einen 
<a href="http://en.wikipedia.org/wiki/Reed-Solomon_error_correction">Reed-Solomon</a>-Kode
mit einem auf die Behandlung von Ausl�schungen optimierten Fehlerkorrektur-Algorithmus.
Die Implementierung bezieht eine Menge Inspiration und Programmcode aus der
hervorragenden <a href="http://www.ka9q.net/code/fec/">Reed-Solomon-Bibliothek</a>
von <a href="http://www.ka9q.net/">Phil Karn</a>.

<p>

In der <a href="example83.html#redundancy">Grundeinstellung</a> bilden
jeweils 223 Datentr�ger-Sektoren einen Fehlerkorrektur ("ECC") - Bereich.
Auf dem Datentr�ger auftretende Lesefehler werden als Ausl�schungen betrachtet,
so da� pro ECC-Bereich bis zu 
32 defekte Sektoren<sup><a href="#footnote1">*)</a></sup> rekonstruierbar sind.<p>

Die 223 Sektoren werden so ausgew�hlt, da� sie sich gleichm��ig �ber die gesamte
Datentr�ger-Oberfl�che verteilen. Dadurch k�nnen gro�e zusammenh�ngende Bereiche von defekten Sektoren 
korrigiert werden, bevor die kritische Anzahl von 
32 Defekten<sup><a href="#footnote1">*)</a></sup> pro ECC-Bereich erreicht wird. 
Dieses Fehlermuster ist besonders typisch f�r alternde Datentr�ger, bei denen im Au�enbereich geh�uft 
Fehler auftreten, und f�r Kratzer entlang der Datenspirale. <p>

Radiale oder diagonale Kratzer werden hingegen in der Regel schon im Laufwerk selbst korrigiert.
F�r diese F�lle ist die verwendete Fehlerkorrektur weder besonders gut noch besonders schlecht geeignet.<p>

<b>Grenzen der Fehlerkorrektur.</b> &nbsp; Im schlechtesten Fall reichen schon 
33 defekte Sektoren<sup><a href="#footnote1">*)</a></sup> auf dem
Datentr�ger, um seine Wiederherstellung zu verhindern. Damit diese Wirkung eintritt, m�ssen die Fehler
wie ein Schrotschu� �ber den Datentr�ger verteilt sein und alle im gleichen ECC-Bereich liegen -
das ist eher unwahrscheinlich. <br>
Erfahrungstests haben ergeben, da� bei normaler Alterung ca. 10% an Sektoren ausfallen k�nnen,
bevor die kritsche Anzahl von 33 Defekten pro ECC-Bereich<sup><a href="#footnote1">*)</a></sup>
erreicht wird.<br>
Bei <a href="index10.html">Kratzern</a> wird die Ausfallschwelle fr�her erreicht; deshalb empfiehlt sich eine st�ndige Sichtkontrolle
und ein sofortiges Umkopieren von Datentr�gern, die durch Kratzer verursachte Lesefehler aufweisen. <p>

<b>Technische Einschr�nkungen.</b> &nbsp; Viele Laufwerke erkennen den Datentr�ger nicht mehr, 
wenn die Einf�hrungszone ("Lead in") vor dem ersten Sektor (nahe dem Innenloch) besch�digt ist.
In diesem Fall k�nnen Sie dvdisaster nicht mehr anwenden, um den Inhalt des Datentr�gers zu retten. <p>

Es ist <i>nicht m�glich</i>, die Qualit�t <b>minderwertiger Datentr�ger</b> durch dvdisaster aufzuwerten.
Billige Rohlinge k�nnen bereits nach wenigen Tagen so stark verfallen, da� die Kapazit�t des
Fehlerkorrekturkodes �berschritten wird. 

<pre> </pre>
<table width="50%"><tr><td><hr></td></tr></table>

<font size="-1">
<a name="footnote1"><sup>*)</sup></a> Die angegebene Grenze 
von 32 korrigierbaren Defekten pro ECC-Bereich ist die Grundeinstellung.
Sie k�nnen hier andere Werte <a href="example83.html#redundancy">einstellen</a>
und so die Leistungf�higkeit der Fehlerkorrektur anpassen.
</font>
<p>
EOF
}

function background20de()
{  cat >> $1 <<EOF
<h3>Datenrekonstruktion auf Abbild-Ebene</h3>

Eine Datentr�ger-Rekonstruktion mit fehlerkorrigierenden Kodes findet in
zwei Schritten statt:

<ol>
<li>Zuerst wird versucht, m�glichst viele Daten von dem Datentr�ger zu lesen.<p></li>
<li>Dann werden die noch fehlenden Daten durch den Fehlerkorrektur-Kode rekonstruiert.</li>
</ol>

Der Erfolg der Datenrekonstruktion h�ngt wesentlich davon ab, wieviele
Daten im ersten Schritt noch eingelesen werden konnten. Deshalb ist es
wichtig, ein Leseverfahren einzusetzen, das die Ausbeute an noch lesbaren
Daten optimiert. Zwei m�gliche Leseverfahren werden nachfolgend verglichen.<p>

<b>Einlesen auf Datei- und Abbild-Ebene gegen�bergestellt</b><p>

Datentr�ger k�nnen auf verschiedenen logischen Ebenen eingelesen werden:<p>

<a name="file"> </a>
Beim Lesen auf <b>Datei-Ebene</b> wird versucht, die auf einem
defekten Datentr�ger enthaltenen Dateien einzeln soweit wie m�glich auszulesen.
Dabei ist jedoch zu ber�cksichtigen, da� Dateien Teil 
eines <i>Dateisystems</i> sind, das vom Betriebssystem verwaltet wird.
Der Menge der noch lesbaren Daten h�ngt sehr davon ab, ob das Dateisystem
mit besch�digten Datentr�gern umgehen kann. Dies ist bei CD und DVD 
typischerweise nicht der Fall.<p>

<a name="image"> </a>
Unterhalb der logischen Ebene von Dateien und Dateisystemen liegt 
die <b>Abbild-Ebene</b>, die CD- und DVD-Datentr�ger in Daten-Sektoren 
von jeweils 2048 Bytes aufteilt. Liest man diese Sektoren nacheinander
aus und speichert sie ab, so erh�lt man ein <i>Abbild</i> des Datentr�gers.
Auf der Abbild-Ebene k�nnen die noch lesbaren Daten sehr effizient gesammelt werden.
<p>

Der nachfolgende Vergleich zeigt, da� das Lesen auf Abbild-Ebene die besseren
Voraussetzungen bietet, um gen�gend Daten f�r eine erfolgreiche 
Datentr�ger-Rekonstruktion zu erhalten. Deshalb ist dvdisaster mit 
Abbild-basierten Leseverfahren ausgestattet.<p>


<table width="100%" border="1" cellspacing="0" cellpadding="5">
<tr>
<td width="50%"><i>Einlesen auf Datei-Ebene</i></td>
<td width="50%"><i>Einlesen auf Abbild-Ebene</i></td>
</tr>
<tr valign="top">
<td><i>Abh�ngigkeit vom Dateisystem</i><p>
Wenn die Datenstrukturen des Dateisystems besch�digt sind,
k�nnen keine Dateien mehr von dem Datentr�ger gelesen werden,
auch wenn die Datei-Datenbl�cke selbst noch lesbar sind.</td>
<td><i>Unabh�ngigkeit vom Dateisystem</i><p>
Das Einlesen von Abbild-Sektoren ist unabh�ngig vom Zustand des Dateisystems.</td>
</tr>

<tr valign="top">
<td><i>Verlust von lesbaren Informationen</i><p>
Das Betriebssystem erlaubt h�ufig nur das Einlesen einer Datei bis zum
ersten Lesefehler. Nur mit speziellen Werkzeugen k�nnen besch�digte 
Dateien bis zum Ende gelesen werden. Anderenfalls ist der Rest der Datei verloren, 
auch wenn die zugeh�rigen Datei-Datenbl�cke noch lesbar sind. 
</td>
<td><i>Alle lesbaren Daten k�nnen gerettet werden</i><p>
Abbilder lassen sich auch dann problemlos lesen, wenn der Datentr�ger besch�digt ist.
Lesefehler in einem Sektor verhindern nicht den Zugriff auf andere Sektoren.
</td>
</tr>

<tr valign="top">
<td><i>Kein Schutz des Dateisystems</i><p>
Die Datenstrukturen des Dateisystems sind nicht Teil der darin enthaltenen
Dateien. Das Dateisystem kann daher nicht durch Einbringen von 
Fehlerkorrektur-Informationen in die Dateien gesch�tzt werden.</td>
<td><i>Wiederherstellung des Dateisystems</i><p>
Das Abbild enth�lt sowohl die Dateien als auch das Dateisystem.
Fehlerkorrektur-Informationen f�r das Abbild beinhalten den Schutz und die
Wiederherstellung des Dateisystems.</td>
</tr>
</table><p>

<a name="eccfile"> </a>
<b>Konsequenzen f�r das Aufbewahren von Fehlerkorrektur-Dateien</b><p>

Datentr�ger sind durch die mit dvdisaster erzeugten Fehlerkorrektur-Daten
auf Abbild-Ebene gesch�tzt. Aber was ist mit den Fehlerkorrektur-Dateien selbst?<p>

F�r Fehlerkorrektur-Dateien treffen die Einschr�nkungen beim Lesen auf
Datei-Ebene nat�rlich auch zu. Wenn der Datentr�ger schadhaft wird,
auf dem sich die Fehlerkorrektur-Dateien befinden, ist nicht mehr
sichergestellt, da� sich die Fehlerkorrektur-Dateien noch vollst�ndig lesen
lassen.<p>

Deshalb ist es unverzichtbar, auch Fehlerkorrektur-Dateien auf der
Abbild-Ebene zu sch�tzen: Die 
<a href="background70.html">Datentr�ger mit Fehlerkorrektur-Dateien</a> 
m�ssen ebenfalls mit dvdisaster gesichert werden.<p>


Weil dies vorausgesetzt wird, enthalten die Fehlerkorrektur-Dateien <i>keinen</i> 
Schutz gegen Besch�digung! Dies w�rde auch mehr schaden als nutzen:
Nat�rlich k�nnten die Fehlerkorrektur-Dateien so gestaltet werden, 
da� sie auch im besch�digten Zustand 
noch eine (verminderte) Fehlerkorrektur leisten k�nnen. 
Aber egal wie ausgekl�gelt  der innere Schutz-Mechanismus auch w�re, 
es bliebe ein Schutz auf Datei-Ebene mit den oben beschriebenen Nachteilen!<p>

Hinzu kommt, da� die daf�r ben�tigte Rechenzeit und Redundanz besser 
auf der Abbild-Ebene investiert sind: Die Reed-Solomon-Fehlerkorrektur profitiert davon,
wenn Fehlerkorrektur-Informationen �ber gro�e Datenmengen verteilt werden. 
Das Abbild als Ganzes l��t sich besser sch�tzen als die einzelnen Dateien darin.
EOF
}

function background30de()
{  cat >> $1 <<EOF
<h3>�bersicht �ber die RS01- und RS02-Fehlerkorrektur-Verfahren</h3>

dvdisaster verf�gt �ber zwei Fehlerkorrektur-Verfahren RS01 und RS02.
RS01 ist das bisherige und erprobte Verfahren, w�hrend sich RS02 
gerade in Entwicklung befindet. RS02 ist momentan nur in der Kommandozeile
verf�gbar und wird mit Version 0.70 vollst�ndig in die graphische 
Benutzeroberfl�che integriert.<p>

<b>Vergleich der beiden Verfahren.</b>

RS01 und RS02 setzen die gleiche 
<a href="background10.html">Reed-Solomon</a>-Fehlerkorrektur ein.
Sie berechnen Fehlerkorrektur-Informationen zu CD/DVD-Abbildern mit dem Ziel,
sp�ter unlesbar gewordene Abbild-Sektoren aus diesen Informationen wiederherzustellen.<p>

Die Unterschiede liegen in der Art, wie die Fehlerkorrektur-Informationen abgelegt werden:<p>

<ul>
<li>
<a name="file"> </a>
RS01 erzeugt <b>Fehlerkorrektur-Dateien,</b> die unabh�ngig von dem
zugeh�rigen Abbild aufbewahrt werden. Da ein Schutz von Daten auf
<a href="background20.html#file">Datei-Ebene</a> schwierig ist, 
m�ssen Fehlerkorrektur-Dateien auf Datentr�gern gespeichert werden,
die selbst mit dvdisaster gegen Datenverlust gesch�tzt sind.<p></li>

<li>
<a name="image"> </a>
Beim RS02-Verfahren wird zun�chst ein Abbild der zu sichernden Daten 
auf der Festplatte mit Hilfe einer Brennsoftware erzeugt. Vor dem Schreiben auf
den Datentr�ger wird dieses <b>Abbild</b> jedoch mit dvdisaster um 
Fehlerkorrektur-Daten <b>erweitert</b>.
Dadurch befinden sich die zu sch�tzenden Daten zusammen mit den 
Fehlerkorrektur-Informationen auf dem selben Datentr�ger. 
Defekte Sektoren in den Fehlerkorrektur-Informationen verringern
die Kapazit�t der Fehlerkorrektur, machen diese aber nicht unm�glich - ein
zweiter Datentr�ger zum Aufbewahren oder Sch�tzen 
der Fehlerkorrektur-Informationen wird nicht ben�tigt.<p></li>
</ul>


<a name="table"> </a>
<b>Vergleich zum Ablegen der Fehlerkorrektur-Informationen</b><p>

<table width="100%" border="1" cellspacing="0" cellpadding="5">
<tr>
<td width="50%"><i>Fehlerkorrektur-Dateien</i></td>
<td width="50%"><i>Fehlerkorrektur-Daten im Abbild</i></td>
</tr>
<tr valign="top">
<td> Redundanz kann beliebig gro� gew�hlt werden</td>
<td> Redundanz ist durch freien Platz auf dem Datentr�ger beschr�nkt<br>
(= Kapazit�t des Datentr�gers - Gr��e des urspr�nglichen Abbildes)</td>
</tr>

<tr valign="top">
<td>bereits wirksam ab 15% Redundanz;
Datentr�ger kann beliebig voll sein</td>
<td>ben�tigt mindestens 20%-30% Redundanz;
nutzbare Datentr�ger-Kapazit�t sinkt entsprechend</td> 
</tr>

<tr valign="top">
<td> k�nnen nachtr�glich f�r bereits existierende Datentr�ger
erzeugt werden</td>
<td> nur beim Brennen neuer Datentr�ger anwendbar, weil das Abbild vorher 
um Fehlerkorrektur-Daten erweitert werden mu�</td>
</tr>

<tr valign="top">
<td> unabh�ngige Speicherung von den zu sch�tzenden Daten erh�ht Datensicherheit</td>
<td> gemeinsame Aufbewahrung von Nutzdaten und Fehlerkorrektur-Daten auf dem gleichen Datentr�ger vermindert die Fehlerkorrektur-Kapazit�t</td>
</tr>

<tr valign="top">
<td>Zuordnung von Fehlerkorrektur-Dateien zu Datentr�gern
mu� geeignet realisiert werden. Fehlerkorrektur-Dateien m�ssen
vor Besch�digung gesch�tzt werden</td>
<td>Einfache L�sung mit einem Datentr�ger; Fehlerkorrektur-Informationen m�ssen nicht
katalogisiert oder gesch�tzt werden</td></tr>

<tr valign="top">
<td> keine Kompatibilit�tsprobleme beim Abspielen </td>
<td> um Fehlerkorrektur-Daten erweiterte Abbilder
 sind m�glicherweise nicht �berall abspielbar</td>
</tr>
</table><p>

EOF
}

function background40de()
{  cat >> $1 <<EOF
<h3><b>Das lineare Lese-Verfahren</b></h3>
<p>

In dvdisaster sind zwei verschiedene
<a href="example82.html#read"> Leseverfahren</a> enthalten.<p>

<b>Anwendungen f�r das lineare Leseverfahren:</b><p>
<ul>
<li>Abbilder von unbesch�digten Datentr�gern zum Erzeugen einer Fehlerkorrekturdatei einlesen</li>
<li>Lesegeschwindigkeitskurve zum Pr�fen des Datentr�ger-Zustandes ermitteln</li>
</ul>

<b>Anwendungen f�r das <a href="background50.html">angepa�te Leseverfahren:</a></b><p>
<ul>
<li> Inhalt von besch�digten Datentr�gern rekonstruieren
</li>
</ul>

<pre> </pre>

<b>Eigenschaften des linearen Verfahrens.</b><p>

 CD- und DVD-Datentr�ger 
sind in Sektoren aufgeteilt, die mit Null beginnend numeriert sind 
und jeweils 2048 Bytes an Daten enthalten.<p>

Das lineare Leseverfahren liest den Datentr�ger vom Anfang (Sektor 0)
bis zum Ende (letzter Sektor) ein. Die Lesegeschwindigkeit wird 
graphisch dargestellt, um die <a href="background40.html#quality">Qualit�t des Datentr�gers</a>
absch�tzen zu k�nnen:<p>

<center><img src="../images/bg-linear-de.png" alt="Bildschirmfoto"><br>
Bildschirmausschnitt: lineares Leseverfahren</center>

<pre> </pre>


<a name="configure"></a>
<b>Einstellm�glichkeiten.</b><p>

<b>Anzahl der zu �berspringenden Sektoren nach einem Lesefehler.</b>
Leseversuche von defekten Sektoren kosten viel Zeit und bewirken in ung�nstigen F�llen
einen erh�hten Verschlei� des Laufwerks. Lesefehler treten aber typischerweise nicht einzeln,
sondern �ber l�ngere Bereiche auf. Daher gibt es eine 
<a href="example82.html#read"> Einstellm�glichkeit</a> nach einem Lesefehler
eine Anzahl nachfolgender Sektoren zu �berspringen. Diese Sektoren werden ohne weitere Leseversuche 
als defekt angenommen. Dies hat die folgenden Auswirkungen:<p>


<ul>
<li>Das �berspringen einer gro�en Anzahl von Sektoren (z.B <b>1024</b>) ergibt eine schnelle
�bersicht �ber die Besch�digung des Datentr�gers.<br>
Es liefert aber in der Regel nicht gen�gend Daten f�r eine erfolgreiche Fehlerkorrektur.<p></li> 
<li>Kleinere Werte von <b>16, 32 oder 64</b> sind ein guter Kompromi� zwischen verringerter 
Bearbeitungszeit und Wiederherstellbarkeit des Datentr�ger-Abbildes.<p></li>
</ul>

Auf DVD-Datentr�gern erstrecken sich Lesefehler aus technischen Gr�nden meist �ber
mindestens 16 Sektoren. Daher lohnt es sich f�r DVD nicht, 
einen Wert kleiner als 16 einzustellen.
<p>

<a name="range"></a>
<b>Einschr�nkung des Lesebereiches.</b>
Der Einlesevorgang kann 
<a href="example82.html#read"> auf einen Teil des Datentr�gers eingeschr�nkt</a> werden.
Dies ist bei mehrfachen Einlese-Versuchen von besch�digten Datentr�gern hilfreich.

<pre> </pre>

<a name="quality"></a>
<b>Absch�tzung der Datentr�ger-Qualit�t.</b><p>

<a name="error"></a>
<b>Die Geschwindigkeitskurve.</b>
Viele Laufwerke verringern ihre Lesegeschwindigkeit in Bereichen
des Datentr�gers, die sich in einem schlechten Zustand befinden:
<ul>
<li>Einbr�che in der Lesegeschwindigkeit k�nnen ein Warnzeichen f�r ein
baldiges Versagen des Datentr�gers darstellen.</li>
<li>
Es gibt aber auch Laufwerke, die "bis zum bitteren Ende" mit voller
Geschwindigkeit lesen. Man sich also nicht darauf verlassen,
da� sich ein Versagen des Datentr�gers durch Unterbrechungen in der 
Geschwindigkeitskurve ank�ndigt.
</li>
</ul><p>

Die Lesekurve ist bei der
<a href="example10.html"> "Pr�fen"</a>-Funktion am aussagekr�ftigsten.
In der 
<a href="example30.html"> "Lesen"</a>-Betriebsart
werden die gelesenen Daten gleichzeitig auf der
Festplatte abgelegt, was je nach Betriebssystem und verwendeter Hardware kleine
Verz�gerungen und damit Unregelm��igkeiten in der Lesekurve bewirkt.<p>

<b>Lesefehler.</b>
Lesefehler werden <a href="example1.html">rot in der Spirale markiert</a> bzw. 
<a href="example10.html#cli">in der Kommandozeile ausgegeben</a>.
An diesen Stellen konnte der Datentr�ger im momentanen Durchlauf nicht vollst�ndig gelesen werden:
<ul>
<li>Es ist damit wahrscheinlich, da� der Datentr�ger defekt ist. </li>
<li>Das Abbild sollte jetzt schnellstm�glich
<a href="example40.html"> rekonstruiert</a> und auf einen neuen Datentr�ger geschrieben werden.</li>
</ul>
EOF
}


function background50de()
{  cat >> $1 <<EOF
<h3>Das angepa�te Lese-Verfahren</h3>
<p>

dvdisaster enth�lt zwei verschiedene 
<a href="example82.html#read">Leseverfahren</a>.<p>

<b>Anwendungen f�r das angepa�te Leseverfahren:</b><p>
<ul>
<li> Inhalt von besch�digten Datentr�gern rekonstruieren
</li>
</ul>

<b>Anwendungen f�r das <a href="background40.html">lineare Leseverfahren:</a></b><p>
<ul>
<li>Abbilder von unbesch�digten Datentr�gern zum Erzeugen einer Fehlerkorrekturdatei einlesen</li>
<li>Lesegeschwindigkeitskurve zum Pr�fen des Datentr�ger-Zustandes ermitteln</li>
</ul>

<pre> </pre>

<b>Eigenschaften des angepa�ten Verfahrens.</b><p>

Das angepa�te Verfahren setzt eine "Teile-und-Herrsche" ("divide-and-conquer") - Strategie ein,
um m�glichst schnell die noch lesbaren Stellen eines besch�digten Datentr�gers zu ermitteln 
und auszulesen.
Die Strategie geht auf einen Artikel von Harald B�geholz im c't-Magazin 16/2005 
zur�ck, wo sie zusammen mit dem Programm <i>h2cdimage</i> ver�ffentlicht wurde:

<ol>
<li> 
  Zu Anfang wird der Datentr�ger als ein einziger noch nicht gelesenener Bereich betrachtet. 
Das Lesen beginnt mit Sektor Null.<p>
</li>
<li>
Der Lesevorgang wird solange linear fortgesetzt,
bis entweder das Ende des momentanen Bereiches erreicht ist oder ein Lesefehler auftritt.<p>
</li>
<li>
Der Lesevorgang wird entweder beendet, wenn (3a) gen�gend Sektoren f�r eine Fehlerkorrektur 
gelesen wurden oder (3b) keine unlesbaren Bereiche oberhalb einer bestimmten Gr��e 
mehr vorhanden sind.
<p>
</li>
<li>Anderenfalls wird der gr��te noch nicht gelesene Bereich auf dem Datentr�ger bestimmt
und in der Mitte aufgeteilt. Der Lesevorgang wird in der Mitte wie in Schritt 2 fortgesetzt.
Die erste H�lfte des aufgeteilten Bereiches verbleibt hingegen als noch nicht gelesenener Bereich
f�r einen sp�teren Durchlauf.<p>
</li>
</ol>

Das Abbruchkriterium (3a) ist besonders wirkungsvoll: Es beendet das Einlesen sofort,
wenn die absolut notwendigen Sektoren zur Wiederherstellung des Abbildes mit Hilfe 
der Fehlerkorrektur gelesen worden sind.
Dies kann die Bearbeitungszeit  gegen�ber einem vollst�ndigen Einlese-Versuch um bis zu 90% verk�rzen,
erfordert aber nat�rlich, da� man die zugeh�rige Fehlerkorrektur-Datei zur Hand hat.<p>

<center><img src="../images/bg-adaptive-de.png" alt="Bildschirmfoto"><br>
Bildschirmausschnitt: angepa�tes Leseverfahren</center>

<pre> </pre>

<a name="configure"></a>
<b>Einstellm�glichkeiten</b><p>

<b>Fehlerkorrekturdatei.</b> Angepa�tes Lesen funktioniert am besten, wenn die zum Abbild geh�rende
Fehlerkorrektur-Datei vorhanden ist. Das setzt nat�rlich voraus, da� man diese Datei
zu einem Zeitpunkt <a href="example20.html">erzeugt</a> hat, 
als der Datentr�ger noch vollst�ndig lesbar war.

Um die Fehlerkorrektur-Datei zu nutzen, mu� sie vor Beginn des Lesens 
<a href="example30.html">ausgew�hlt</a> werden.<p>

<b>Einschr�nkung des adaptiven Lesebereiches.</b> Der Einlesevorgang 
kann auf einen Teil des Datentr�gers <a href="example82.html#read">eingeschr�nkt</a> werden. 

Bei der Verwendung einer Fehlerkorrektur-Datei ist das Einschr�nken 
des Lesebereichs nicht sinnvoll, da es gegebenenfalls das Einlesen von Sektoren
verhindert, die zur Fehlerkorrektur ben�tigt werden.
Ohne Fehlerkorrektur-Datei kann es hingegen bei mehrfachen Einlese-Versuchen 
von besch�digten Datentr�gern hilfreich sein.<p>

<b>Lesen vorzeitig beenden.</b>Wenn keine Fehlerkorrektur-Datei vorhanden ist, wird der Lesevorgang beendet, sobald keine
unlesbaren Bereiche oberhalb 
<a href="example82.html#read">einer bestimmten Gr��e</a> mehr vorhanden sind.<p>

Der Wert zum Beenden sollte nicht kleiner als 128 eingestellt werden.
Anderenfalls werden in der Schlu�phase des Einlesens sehr viele Neupositionierungen des
Laserschlittens im Laufwerk durchgef�hrt. Darunter leidet sowohl die Lebensdauer als auch die
Lesef�higkeit des Laufwerks. G�nstiger ist es typischerweise, fr�her mit den adaptiven
Lesen aufzuh�ren und die letzten Sektoren mit dem <a href="background40.html">linearen Leseverfahren</a>
zu vervollst�ndigen.
EOF
}


function background60de()
{  cat >> $1 <<EOF
<h3>Ein paar Hintergr�nde zu Lesefehlern</h3>

DVDs verf�gen �ber einen eigenen Fehlerkorrektur-Kode, der kleinere
Material- und Brennfehler ausgleicht und so die gespeicherten Daten
sch�tzt. Wenn der Brenner und die Rohlinge kompatibel und 
von hoher Qualit�t sind, ist die eingebaute Fehlerkorrektur 
direkt nach dem Brennen nur schwach ausgelastet. Sie verf�gt dann
�ber gen�gend Kapazit�t, um die w�hrend der Benutzung des Datentr�gers
auftretenden Verschlei�- und Alterungserscheinungen f�r viele Jahre
auszugleichen.<p>

Erst wenn die Reserven der eingebauten Fehlerkorrektur ersch�pft sind,
entstehen Lesefehler, die Sie in dvdisaster mit 
der <a href="example10.html">"Pr�fen"</a>-Funktion feststellen k�nnen.
Dabei ist die folgende Unterscheidung wichtig:<p>


<b>Lesefehler direkt nach dem Brennen.</b> <br>Wenn unlesbare Sektoren
direkt nach dem Brennen auftreten, ist das ein Hinweis auf

<ul>
<li>Produktionsfehler bei den Rohlingen, oder</li>
<li>Rohlinge, die nicht mit dem Brenner kompatibel sind</li>
</ul>

In diesem Fall hilft nur ein Entsorgen der defekten Rohlinge und ein
erneutes Brennen auf einwandfreie Ware, gegebenenfalls verbunden mit
einem Herstellerwechsel.<p>

Der Versuch, derartige Fehlbr�nde mit Hilfe einer Fehlerkorrekturdatei
am Leben zu erhalten, endet hingegen ziemlich sicher mit einem Datenverlust.<p>

<b>Lesefehler nach einigen Monaten/Jahren.</b> Die eingebaute Fehlerkorrektur des
Datentr�gers wird mit zunehmender Lebensdauer immer st�rker belastet, 
bis schlie�lich Lesefehler entstehen.
Dies hat sowohl mechanische Ursachen (Kratzer, Verziehen des Materials) als
auch chemische Hintergr�nde (Zerfall des Farbstoffes und/oder der Spiegelschicht).<p>

Typischerweise treten diese Effekte auf, w�hrend der Datentr�ger f�r einige 
Monate gelagert wird, und es ist danach auch mit den unten beschriebenen Tips
nicht mehr m�glich, den Datentr�ger wieder komplett einzulesen. <p>

Deshalb ist es wichtig, rechtzeitig mit dvdisaster die zugeh�rigen
<a href="example20.html">Fehlerkorrektur-Daten</a> zu erzeugen, weil
dadurch innerhalb <a href="background10.html">bestimmter Grenzen</a> 
der Inhalt von Sektoren berechnet (= wiederhergestellt) werden kann,
die von keinem Laufwerk mehr gelesen werden k�nnen.<p>

Dabei braucht man den Datentr�ger typischerweise nicht bis auf den letzten
lesbaren Sektor "auszuquetschen": 
Das <a href="background50.html">angepa�te Leseverfahren</a>
von dvdisaster �berpr�ft beim Lesen st�ndig, ob gen�gend Daten f�r
die Fehlerkorrektur zur Verf�gung stehen. Sobald dies der Fall ist,
wird der Lesevorgang beendet und die bis dahin noch nicht gelesenen
Sektoren werden aus der Fehlerkorrektur-Datei wiederhergestellt.<p>

<a name="reading-tips"><b>Einige Tips zum effektiven Auslesen besch�digter Datentr�ger</b></a><p>

Die "Ausbeute" beim Lesen besch�digter Datentr�ger h�ngt von mehreren Umst�nden ab:

<ul>
<li><b>Nicht alle Laufwerke sind gleich gebaut.</b><br>
Verschiedene Laufwerke haben auch verschieden gute Lesef�higkeiten. 
Nutzen Sie die M�glichkeit von dvdisaster, ein Abbild mit mehreren Lesevorg�ngen
zu vervollst�ndigen, und setzen Sie dabei verschiedene Laufwerke ein. 
�bertragen Sie die Abbild-Datei mit Hilfe eines Netzwerks oder mit RW-Datentr�gern,
um Laufwerke in verschiedenen Rechnern einsetzen zu k�nnen.<p></li>
<li><b>Auswerfen und wieder einlegen.</b><br>
Ab und zu hilft es, den Datentr�ger auszuwerfen, 
um ein Viertel zu drehen und dann einen neuen Leseversuch zu starten.<p></li>
<li><b>Kalte Laufwerke lesen besser.</b><br>
Einige Laufwerke haben im kalten Zustand bessere Leseeigenschaften.
Schalten Sie den Rechner �ber Nacht aus und versuchen Sie es am n�chsten Morgen noch mal.<p>
"Kalt" hei�t �brigens Raumtemperatur - Ein Aufenthalt im K�hlschrank ist f�r 
Hardware und Datentr�ger ziemlich ungesund.<p></li>
</ul>
EOF
}


function background70de()
{  cat >> $1 <<EOF
<h3>Tips zum Aufbewahren der Fehlerkorrektur-Datei</h3>

Zur Zeit gibt es kaum Wechselspeichersysteme, 
die eine wirtschaftliche Alternative zu CD/DVD-Formaten darstellen.
Vermutlich werden Sie daher Ihre Fehlerkorrektur-Dateien auch auf CD/DVD
speichern. <p>


Dagegen ist nichts einzuwenden, aber Sie m�ssen sich dabei bewu�t sein,
da� sich Ihre Nutzdaten und die Fehlerkorrektur-Dateien auf 
Speichermedien mit �hnlicher Verl��lichkeit befinden.
Wenn Lesefehler
auf einem zu rekonstruierenden Datentr�ger auftreten, so m�ssen Sie damit rechnen,
da� die zur gleichen Zeit erstellte Scheibe mit den Fehlerkorrektur-Daten
ebenfalls nicht mehr vollst�ndig lesbar ist.<p>

Deshalb ist es wichtig, die Fehlerkorrektur-Dateien
genauso wie die �brigen Daten zu sch�tzen. Am einfachsten geht dies, wenn Sie die
Fehlerkorrektur-Dateien in Ihre normale Datensicherung mit einbeziehen. 
Dazu zwei Anregungen:<p>

<b>1. Fehlerkorrektur-Dateien auf eigenen Datentr�gern sammeln:</b><p>

Wenn Sie Fehlerkorrektur-Dateien auf extra daf�r vorgesehenen Datentr�gern speichern,
ist es <a href="background20.html#eccfile">wichtig</a>, diese Datentr�ger ebenfalls
mit dvdisaster zu sch�tzen. Um zu verhindern, da� man eine endlose Kette 
(Fehlerkorrektur-Dateien �ber Fehlerkorrektur-Dateien �ber ...) erh�lt, 
hilft folgender Kniff:<p>

Angenommen, Sie k�nnen jeweils 5 Fehlerkorrektur-Dateien pro Datentr�ger speichern.
Legen Sie die ersten f�nf Fehlerkorrektur-Dateien auf dem ersten Datentr�ger ab
und erzeugen Sie dann eine weitere Fehlerkorrektur-Datei f�r diesen Datentr�ger.
Speichern Sie die neu erzeugte Fehlerkorrektur-Datei zusammen mit vier weiteren auf dem
zweiten Datentr�ger. Wenn Sie so weitermachen, sind stets alle Fehlerkorrekur-Dateien
bis auf diejenigen vom letzten Datentr�ger mit dvdisaster gesichert.<p>

<b>2. Fehlerkorrektur-Dateien jeweils auf dem n�chsten Datentr�ger speichern:</b><p>

Wenn Sie Ihre DVDs nicht randvoll mit Nutzdaten (also mit weniger als 4GB) beschreiben,
k�nnen Sie die Fehlerkorrektur-Dateien innerhalb einer Serie von DVDs jeweils
auf dem n�chsten Datentr�ger ablegen.<p>

EOF
}


# ----- Impressum

function imprint_contents_de()
{  local file="$1.html"
   local query=$2
   local page=$3
   local lang=$4

   case $query in
   title)   title="Impressum" ;;
 
   link)    link_title="Impressum" ;;

   content*) eval "imprint$page$lang $file"
	    return 0
	    ;;
   esac 
}

function imprint0de()
{  cat >> $1 <<EOF

   <h3>Impressum</h3>

   Carsten Gn�rlich <br>
   Im Hagen 10 <br>
   59514 Welver / Deutschland<br>
   Tel.: +49 2384 941174<pre> </pre>
   E-Mail: carsten@dvdisaster.de<br>
   Internet: www.dvdisaster.de

   <pre> </pre>

   Inhaltlich Verantwortlicher gem�� � 10 MDStV: <p>
   Carsten Gn�rlich (Anschrift wie oben).

   <pre> </pre>

   Das Impressum gilt f�r die Internetpr�senz unter den Adressen<br>
   <a href="http://www.dvdisaster.com">www.dvdisaster.com</a>, &nbsp;
   <a href="http://www.dvdisaster.de">www.dvdisaster.de</a>, &nbsp;
   <a href="http://www.dvdisaster.org">www.dvdisaster.org</a><br>
   und unter der Unterdom�ne <a href="http://dvdisaster.berlios.de">dvdisaster.berlios.de</a>.


EOF
}

