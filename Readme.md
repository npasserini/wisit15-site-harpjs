# Uqbar Site Generator

## Requires:
 - [HarpJS](http://harpjs.com/)
 - NodeJS
 - npm install -g component

## Local Server
 Se puede probar localmente haciedo dentro de /site
 - `component install` instala las dependencias en /site/components    
 - `component build`   buildea las dependencias en /site/build
 - `harp server`       levanta un server local

## Deploy:
 Por el momento se debe hacer manualmente desde /site:

 - `component install`
 - `component build`
 - `harp compile . ../generated` genera el sitio estático
 - Lo que queda en /generated se puede pushear a github pages o hostear estático.




