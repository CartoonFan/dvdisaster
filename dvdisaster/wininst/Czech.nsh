; Czech messages

; WARNING!!! the file encoding is Win-1250
; Copyright (C) 2004-2006 THE dvdisaster'S COPYRIGHT HOLDER
; Copyright 2006 Lubos Stanek
; This file is distributed under the same license as the dvdisaster package.

; this file must include specific dvdisaster setup's messages
; remember that string are formatted according to the NSIS spec


; Language
!define LANG_ID_CZECH 1029

LangString LANG_PUBLISHER ${LANG_CZECH} "Carsten Gn�rlich"
LangString LANG_WEB_SITE ${LANG_CZECH} "http://www.dvdisaster.com/cs/index.html"
LangString LANG_UPDATE_SITE ${LANG_CZECH} "http://www.dvdisaster.com/cs/download.html"
LangString LANG_PUBLISHER_SITE ${LANG_CZECH} "http://www.dvdisaster.com/cs/imprint.html"

LangString LANG_INSTALLTYPE_STANDARD ${LANG_CZECH} "Standardn�"
LangString LANG_INSTALLTYPE_FULL ${LANG_CZECH} "�pln�"

LangString LANG_SECTION_APPLICATION ${LANG_CZECH} "Aplikace"
LangString LANG_SECTION_MANUAL ${LANG_CZECH} "P��ru�ka"
; the following refers to previous; if it is not possible to translate it as it is,
; prepend the previous string into all localizations (e.g. Manual in Czech)
; and translate the full expression
LangString LANG_SECTION_MANUAL_CZECH ${LANG_CZECH} "�esky"
LangString LANG_SECTION_MANUAL_ENGLISH ${LANG_CZECH} "anglicky"
LangString LANG_SECTION_MANUAL_GERMAN ${LANG_CZECH} "n�mecky"
LangString LANG_SECTION_ERROR ${LANG_CZECH} "Sekce $\"%s$\" nebyla nainstalov�na v po��dku!"

LangString LANG_SECTION_SHORTCUTS ${LANG_CZECH} "Z�stupci v nab�dce Start"
LangString LANG_SECTION_SHORTCUTS_DESC ${LANG_CZECH} "P��davn� ochrana pro m�dia CD/DVD"

LangString LANG_SECTION_DESKTOP ${LANG_CZECH} "Z�stupce na plo�e"

LangString DESC_SectionApp ${LANG_CZECH} "Nainstaluje aplikaci, knihovny, nastaven� knihoven a katalogy zpr�v."
LangString DESC_SectionManual ${LANG_CZECH} "Nainstaluje lokalizovanou p��ru�ku."
LangString DESC_SectionShortcuts ${LANG_CZECH} "Vytvo�� z�stupce."

LangString LANG_APPISRUNNING ${LANG_CZECH} "Aplikace ${CFG_PACKAGE} je spu�t�na!$\r$\rUkon�ete v�echny instance aplikace ${CFG_PACKAGE} a zkuste instalaci znovu."
LangString LANG_NOINSTALLPERMS ${LANG_CZECH} "You do not possess required rights for installations!$\r$\rThe installer will be terminated."
