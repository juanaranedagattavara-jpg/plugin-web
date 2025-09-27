# 🚀 WordPress Local con Aqua Patterns

## 📋 Configuración Rápida

### 1. Iniciar WordPress
```powershell
.\start-wordpress.ps1
```

### 2. Configurar WordPress
```powershell
.\setup-wordpress.ps1
```

### 3. Monitorear Cambios
```powershell
.\watch-changes.ps1
```

## 🌐 URLs Disponibles

- **WordPress**: http://localhost:8080
- **Admin**: http://localhost:8080/wp-admin
- **phpMyAdmin**: http://localhost:8081

## 🔄 Flujo de Trabajo

### Desarrollo en Tiempo Real:
1. **Edita** archivos en `aqua-patterns/patterns/*.html`
2. **Ve cambios** automáticamente en http://localhost:8080
3. **No necesitas** reiniciar nada

### Comandos Útiles:
```powershell
# Gestión completa
.\manage-wordpress.ps1 start    # Iniciar
.\manage-wordpress.ps1 stop     # Detener
.\manage-wordpress.ps1 restart  # Reiniciar
.\manage-wordpress.ps1 status   # Ver estado
.\manage-wordpress.ps1 logs     # Ver logs
.\manage-wordpress.ps1 watch    # Monitorear cambios
```

## 📁 Estructura del Proyecto

```
plugin-web/
├── aqua-patterns/           # Plugin (sincronizado automáticamente)
│   ├── patterns/            # Patrones Gutenberg
│   ├── assets/              # CSS del plugin
│   └── includes/            # Clases PHP
├── docker-compose.yml       # Configuración Docker
├── start-wordpress.ps1      # Iniciar WordPress
├── setup-wordpress.ps1      # Configurar inicial
├── watch-changes.ps1        # Monitorear cambios
└── manage-wordpress.ps1     # Gestión completa
```

## 🎯 Uso de Patrones

1. **Activar Plugin**: WordPress Admin → Plugins → Aqua Patterns
2. **Crear Página**: Páginas → Añadir nueva
3. **Usar Patrones**: Editor → + → Patrones → Aqua
4. **Editar**: Selecciona bloque → Panel lateral

## 🔧 Solución de Problemas

### WordPress no inicia:
```powershell
docker-compose logs wordpress
```

### Plugin no aparece:
- Verificar que `aqua-patterns` esté en la carpeta correcta
- Reiniciar WordPress: `.\manage-wordpress.ps1 restart`

### Cambios no se reflejan:
- Verificar que el archivo esté guardado
- Verificar que WordPress esté corriendo
- Reiniciar monitoreo: `.\manage-wordpress.ps1 watch`

## 📝 Notas Importantes

- **Sincronización**: Los cambios en `aqua-patterns/` se reflejan automáticamente
- **Base de Datos**: Se mantiene entre reinicios
- **Uploads**: Se guardan en volumen persistente
- **Logs**: Disponibles con `docker-compose logs`
