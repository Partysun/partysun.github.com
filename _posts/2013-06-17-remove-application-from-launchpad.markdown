---
layout: post
title: Как удалить приложение из launchpad Mac OS
permalink: /2013/06/remove-application-from-launchpad.markdown/
---

Некоторые иконки приложений нельзя просто удалить из Launchpad Mac OS.
Чтобы навести порядок в Launchpad придется использовать terminal.(можно конечно найти специальные утилиты)

Открываем терминал и выполняем следующую команду. Примечание: надо заменить название приложения на то, которое вы хотели бы удалить.

<code>
sqlite3 ~/Library/Application\ Support/Dock/*.db "DELETE from apps WHERE title='APPNAME';" && killall Dock
</code>

<a href="https://www.evernote.com/pub/yurazatsepin/yurazatsepin">Evernote блокнот Yura Zatsepin</a>
