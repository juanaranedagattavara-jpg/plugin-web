# Script simplificado de instalacion Docker
Write-Host "Instalacion automatica de Aqua Patterns con Docker" -ForegroundColor Green

# Verificar Docker
Write-Host "Verificando Docker..." -ForegroundColor Yellow
try {
    docker --version | Out-Null
    Write-Host "Docker encontrado" -ForegroundColor Green
} catch {
    Write-Host "Docker no instalado. Instala desde: https://www.docker.com/get-started" -ForegroundColor Red
    Read-Host "Presiona Enter para salir"
    exit 1
}

# Verificar Docker Compose
Write-Host "Verificando Docker Compose..." -ForegroundColor Yellow
try {
    docker-compose --version | Out-Null
    Write-Host "Docker Compose encontrado" -ForegroundColor Green
} catch {
    Write-Host "Docker Compose no instalado. Instala desde: https://docs.docker.com/compose/install/" -ForegroundColor Red
    Read-Host "Presiona Enter para salir"
    exit 1
}

# Verificar plugin
if (-not (Test-Path "aqua-patterns/aqua-patterns.php")) {
    Write-Host "Plugin Aqua Patterns no encontrado!" -ForegroundColor Red
    Read-Host "Presiona Enter para salir"
    exit 1
}

Write-Host "Plugin Aqua Patterns encontrado" -ForegroundColor Green

# Crear directorios
Write-Host "Creando directorios..." -ForegroundColor Yellow
if (-not (Test-Path "wordpress")) {
    New-Item -ItemType Directory -Path "wordpress" | Out-Null
}
if (-not (Test-Path "uploads")) {
    New-Item -ItemType Directory -Path "uploads" | Out-Null
}

# Crear .env
Write-Host "Creando archivo .env..." -ForegroundColor Yellow
@"
WORDPRESS_DB_HOST=db:3306
WORDPRESS_DB_USER=wordpress
WORDPRESS_DB_PASSWORD=wordpress
WORDPRESS_DB_NAME=wordpress
WORDPRESS_DEBUG=1
"@ | Out-File -FilePath ".env" -Encoding UTF8

# Crear wp-config.php
Write-Host "Creando wp-config.php..." -ForegroundColor Yellow
$wpConfig = @'
<?php
define('DB_NAME', 'wordpress');
define('DB_USER', 'wordpress');
define('DB_PASSWORD', 'wordpress');
define('DB_HOST', 'db:3306');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

define('AUTH_KEY', 'aqua-patterns-dev-key-12345');
define('SECURE_AUTH_KEY', 'aqua-patterns-secure-key-12345');
define('LOGGED_IN_KEY', 'aqua-patterns-logged-key-12345');
define('NONCE_KEY', 'aqua-patterns-nonce-key-12345');
define('AUTH_SALT', 'aqua-patterns-auth-salt-12345');
define('SECURE_AUTH_SALT', 'aqua-patterns-secure-salt-12345');
define('LOGGED_IN_SALT', 'aqua-patterns-logged-salt-12345');
define('NONCE_SALT', 'aqua-patterns-nonce-salt-12345');

define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);
define('SCRIPT_DEBUG', true);
define('WP_MEMORY_LIMIT', '256M');

define('WP_HOME', 'http://localhost:8080');
define('WP_SITEURL', 'http://localhost:8080');
define('FS_METHOD', 'direct');

$table_prefix = 'wp_';

if (!defined('ABSPATH')) {
    define('ABSPATH', __DIR__ . '/');
}

require_once ABSPATH . 'wp-settings.php';
'@

$wpConfig | Out-File -FilePath "wordpress/wp-config.php" -Encoding UTF8

# Iniciar Docker
Write-Host "Iniciando contenedores Docker..." -ForegroundColor Yellow
docker-compose up -d

# Esperar
Write-Host "Esperando que WordPress este listo..." -ForegroundColor Yellow
Start-Sleep -Seconds 20

# Verificar estado
Write-Host "Estado de los contenedores:" -ForegroundColor Cyan
docker-compose ps

Write-Host ""
Write-Host "Instalacion completada!" -ForegroundColor Green
Write-Host ""
Write-Host "Accede a WordPress en: http://localhost:8080" -ForegroundColor Cyan
Write-Host ""
Write-Host "Configuracion inicial:" -ForegroundColor Cyan
Write-Host "  Titulo: Aqua Patterns Demo" -ForegroundColor White
Write-Host "  Usuario: admin" -ForegroundColor White
Write-Host "  Contrasena: admin123" -ForegroundColor White
Write-Host "  Email: admin@aqua.com" -ForegroundColor White
Write-Host ""
Write-Host "Para probar el plugin:" -ForegroundColor Cyan
Write-Host "  1. Ve a Plugins -> Plugins Instalados" -ForegroundColor White
Write-Host "  2. Activa 'Aqua Patterns'" -ForegroundColor White
Write-Host "  3. Crea una pagina nueva" -ForegroundColor White
Write-Host "  4. Busca 'Aqua' en el Inserter de patrones" -ForegroundColor White
Write-Host ""
Write-Host "Los cambios en el codigo se reflejan automaticamente!" -ForegroundColor Green
Write-Host ""
Read-Host "Presiona Enter para abrir WordPress"

# Abrir navegador
Start-Process "http://localhost:8080"
