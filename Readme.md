# Uqbar Site Generator

## Requires:
 - [NodeJS](https://nodejs.org/)
 - [HarpJS](http://harpjs.com/) `npm install -g harp`
 - [Component](https://github.com/componentjs/component) `npm install -g component`

## Local Server
 Se puede probar localmente haciedo dentro de /site
 - `component install` instala las dependencias en /site/components    
 - `component build`   buildea las dependencias en /site/build
 - `harp server`       levanta un server local

## Deploy:

### Travis CI
 
 Todo lo que se suba a `master` va a ser buildeado por Travis-CI y pusheado a https://github.com/uqbar-project/uqbar-project.github.io
 El sitio estático quedará servido en http://uqbar-project.github.io/home
 
### Manual
 
 También puede usarse directamente `deploy.sh` ,  siempre y cuando se agregue al entorno la variable `GITHUB_TOKEN` con el correspondiente token de acceso.

