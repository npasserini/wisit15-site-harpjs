# Uqbar Site Generator

## Requires:
 - [HarpJS](http://harpjs.com/)
 - NodeJS
 - npm install -g bower
 - npm install -g bower-installer

## Local Server
 Se puede probar localmente haciedo:
 - `bower-installer`
 - harp server site

## Deploy:
 Por el momento se debe hacer manualmente:

 - `bower-installer` para incluir en site/libs únicamente lo necesario de cada depedencia
 - `harp compile ./site ./generated` genera el sitio estático
 - Push changes on ./generated to github pages.

## TODOs
 - Automatizar tareas con gulp



