# Commands for DEV
Crear una imagen para desarrollo
```
docker build -t gwfernandez/frontend-dev -f Dockerfile.dev .
```

Ejecutar el contenedor de desarrollo
```
docker run -it -p 3000:3000 gwfernandez/frontend-dev
```

Agregar volumenes para impactar los cambios directamente en el contenedor

Eliminando los node_modules
```
docker run -it -p 3000:3000 -v /opt/app/node_modules -v $(pwd):/opt/app gwfernandez/frontend-dev
```

Utilizando .dockerignore
```
docker run -it -p 3000:3000  -v $(pwd):/opt/app gwfernandez/frontend-dev
```

Ejecutar los test
```
docker run -it gwfernandez/frontend-dev npm run test
```

Generar una imagen para desarrollo
```
docker build -t gwfernandez/frontend-dev -f Dockerfile.dev .
```

Generar una imagen con docker compose
```
docker-compose up
```

# Commands for PROD

Generar imagen para produccion
```
docker build -t gwfernandez/frontend .
```

Ejecutar ngnix 
```
docker run -p 8080:80 gwfernandez/frontend
```

