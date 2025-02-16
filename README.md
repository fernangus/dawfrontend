# Despliegue del Frontend de Fernangus

## Desarrollo
Para levantar el entorno de desarrollo:
```sh
docker-compose -f docker-compose-dev.yml up -d --build

Accede en el navegador a:

http://localhost:8081

Para parar el contenedor:

docker-compose -f docker-compose-dev.yml down

## Producción

Para levantar el entorno de producción:

docker-compose up -d --build

Accede en el navegador a:

http://fernangus-films.chickenkiller.com

o

http://fernangus-films.mooo.com

Para parar el contenedor:

docker-compose down


---

## **12. Explicación rápida**
- **`Dockerfile.dev`** y **`Dockerfile`**: construyen la imagen con Apache y módulos necesarios.
- **`docker-compose-dev.yml`**: usa `Dockerfile.dev` y configura entorno de desarrollo.
- **`docker-compose.yml`**: usa `Dockerfile` y configura entorno de producción.
- **VirtualHosts**: Diferencian entre producción (`chickenkiller.com`, `mooo.com`) y desarrollo (`fernangus-films.dev.com`).
- **`urls.js`**: Configura la URL del backend según el entorno.
- **`.gitignore`**: Evita subir archivos de configuración sensibles.
- **`README.md`**: Explica cómo desplegar los entornos.
