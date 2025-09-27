# 🐳 Aqua Patterns - Entorno de Desarrollo Docker

## 🚀 Inicio Rápido

### 1. Instalar Docker
- **Windows**: [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- **Mac**: [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- **Linux**: [Docker Engine](https://docs.docker.com/engine/install/)

### 2. Iniciar el Entorno
```bash
# Hacer ejecutable el script
chmod +x start-dev.sh

# Iniciar entorno de desarrollo
./start-dev.sh
```

### 3. Acceder a WordPress
- **URL**: http://localhost:8080
- **Usuario**: admin
- **Contraseña**: admin123

## 🎯 Características del Entorno

### ✅ Desarrollo en Tiempo Real
- **Hot Reload**: Los cambios en el código se reflejan automáticamente
- **Volumen Montado**: `./aqua-patterns` → `/var/www/html/wp-content/plugins/aqua-patterns`
- **Debug Activo**: Logs y errores visibles

### ✅ Servicios Incluidos
- **WordPress 6.4** con PHP 8.1
- **MySQL 8.0** para base de datos
- **phpMyAdmin** para gestión de BD
- **Apache** con mod_rewrite habilitado

### ✅ Configuración Optimizada
- **WP_DEBUG**: Activado para desarrollo
- **SCRIPT_DEBUG**: Para cargar versiones no minificadas
- **Memoria**: 256MB para plugins pesados
- **Permisos**: Configurados automáticamente

## 🔧 Comandos Útiles

### Gestión de Contenedores
```bash
# Iniciar entorno
docker-compose up -d

# Ver logs en tiempo real
docker-compose logs -f

# Parar entorno
docker-compose down

# Reiniciar WordPress
docker-compose restart wordpress

# Acceder al contenedor
docker exec -it aqua-patterns-wp bash
```

### Desarrollo del Plugin
```bash
# Editar archivos del plugin
code aqua-patterns/

# Ver cambios en tiempo real
# Los cambios se reflejan automáticamente en http://localhost:8080

# Ver logs de WordPress
docker-compose logs -f wordpress
```

## 📁 Estructura del Proyecto

```
aqua-patterns/
├── docker-compose.yml          # Configuración de servicios
├── Dockerfile                  # Imagen personalizada
├── setup-docker.sh            # Script de configuración inicial
├── start-dev.sh               # Script de inicio
├── aqua-patterns/             # Plugin (montado en WordPress)
│   ├── aqua-patterns.php
│   ├── patterns/
│   ├── assets/
│   └── includes/
└── wordpress/                 # WordPress (generado automáticamente)
    ├── wp-config.php
    └── wp-content/
```

## 🎨 Flujo de Trabajo

### 1. Desarrollo
1. **Edita** archivos en `./aqua-patterns/`
2. **Guarda** los cambios
3. **Recarga** la página en http://localhost:8080
4. **Ve** los cambios instantáneamente

### 2. Testing
1. **Activa** el plugin en WordPress Admin
2. **Crea** una página de prueba
3. **Inserta** patrones desde el editor de bloques
4. **Prueba** responsive en diferentes dispositivos

### 3. Debugging
1. **Revisa** logs: `docker-compose logs -f wordpress`
2. **Usa** phpMyAdmin: http://localhost:8081
3. **Inspecciona** errores en el navegador

## 🐛 Solución de Problemas

### WordPress no carga
```bash
# Verificar contenedores
docker-compose ps

# Reiniciar todo
docker-compose down && docker-compose up -d

# Ver logs de error
docker-compose logs wordpress
```

### Plugin no aparece
```bash
# Verificar montaje del volumen
docker exec -it aqua-patterns-wp ls -la /var/www/html/wp-content/plugins/

# Verificar permisos
docker exec -it aqua-patterns-wp chown -R www-data:www-data /var/www/html/wp-content/plugins/
```

### Base de datos no conecta
```bash
# Verificar MySQL
docker-compose logs db

# Reiniciar base de datos
docker-compose restart db
```

## 🌐 URLs del Entorno

- **WordPress**: http://localhost:8080
- **Admin**: http://localhost:8080/wp-admin
- **phpMyAdmin**: http://localhost:8081
- **Plugin**: http://localhost:8080/wp-admin/plugins.php

## 📝 Notas Importantes

1. **Primera vez**: El setup puede tardar 2-3 minutos
2. **Base de datos**: Se crea automáticamente
3. **Archivos**: Se mantienen entre reinicios
4. **Puertos**: 8080 (WordPress), 8081 (phpMyAdmin)
5. **Volúmenes**: Los cambios son persistentes

## 🚀 Próximos Pasos

1. **Activa** el plugin Aqua Patterns
2. **Crea** una página de prueba
3. **Inserta** patrones desde el editor
4. **Prueba** responsive y funcionalidad
5. **Desarrolla** nuevas características

¡Listo para desarrollar! 🎉
