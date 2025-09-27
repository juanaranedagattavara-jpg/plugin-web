# Script de PowerShell para configurar Docker
Write-Host "🐳 Configurando Docker para Aqua Patterns..." -ForegroundColor Green

# Crear directorios necesarios
if (-not (Test-Path "wordpress")) {
    New-Item -ItemType Directory -Path "wordpress" | Out-Null
    Write-Host "📁 Directorio wordpress creado" -ForegroundColor Yellow
}

if (-not (Test-Path "uploads")) {
    New-Item -ItemType Directory -Path "uploads" | Out-Null
    Write-Host "📁 Directorio uploads creado" -ForegroundColor Yellow
}

# Crear archivo .env si no existe
if (-not (Test-Path ".env")) {
    Write-Host "📝 Creando archivo .env..." -ForegroundColor Yellow
    @"
# Configuración de Docker para Aqua Patterns
WORDPRESS_DB_HOST=db:3306
WORDPRESS_DB_USER=wordpress
WORDPRESS_DB_PASSWORD=wordpress
WORDPRESS_DB_NAME=wordpress
WORDPRESS_DEBUG=1
"@ | Out-File -FilePath ".env" -Encoding UTF8
}

# Crear archivo wp-config.php personalizado
Write-Host "⚙️ Creando wp-config.php personalizado..." -ForegroundColor Yellow
$wpConfig = @'
<?php
// Configuración personalizada para Aqua Patterns

// Configuración de base de datos
define('DB_NAME', 'wordpress');
define('DB_USER', 'wordpress');
define('DB_PASSWORD', 'wordpress');
define('DB_HOST', 'db:3306');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');

// Claves de seguridad (generar nuevas en producción)
define('AUTH_KEY',         'aqua-patterns-dev-key-12345');
define('SECURE_AUTH_KEY',  'aqua-patterns-secure-key-12345');
define('LOGGED_IN_KEY',    'aqua-patterns-logged-key-12345');
define('NONCE_KEY',        'aqua-patterns-nonce-key-12345');
define('AUTH_SALT',        'aqua-patterns-auth-salt-12345');
define('SECURE_AUTH_SALT', 'aqua-patterns-secure-salt-12345');
define('LOGGED_IN_SALT',   'aqua-patterns-logged-salt-12345');
define('NONCE_SALT',       'aqua-patterns-nonce-salt-12345');

// Configuración de desarrollo
define('WP_DEBUG', true);
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);
define('SCRIPT_DEBUG', true);
define('WP_MEMORY_LIMIT', '256M');

// URLs del sitio
define('WP_HOME', 'http://localhost:8080');
define('WP_SITEURL', 'http://localhost:8080');

// Configuración de archivos
define('FS_METHOD', 'direct');

// Tabla de base de datos
$table_prefix = 'wp_';

// Configuración de WordPress
if (!defined('ABSPATH')) {
    define('ABSPATH', __DIR__ . '/');
}

require_once ABSPATH . 'wp-settings.php';
'@

$wpConfig | Out-File -FilePath "wordpress/wp-config.php" -Encoding UTF8

Write-Host "✅ Configuración completada!" -ForegroundColor Green
Write-Host ""
Write-Host "🚀 Para iniciar el entorno de desarrollo:" -ForegroundColor Cyan
Write-Host "   .\start-dev.ps1" -ForegroundColor White
Write-Host ""
Write-Host "🌐 URLs disponibles:" -ForegroundColor Cyan
Write-Host "   WordPress: http://localhost:8080" -ForegroundColor White
Write-Host "   phpMyAdmin: http://localhost:8081" -ForegroundColor White
Write-Host ""
Write-Host "📁 El plugin se monta automáticamente en:" -ForegroundColor Cyan
Write-Host "   ./aqua-patterns -> /var/www/html/wp-content/plugins/aqua-patterns" -ForegroundColor White
Write-Host ""
Write-Host "💡 Los cambios en el código se reflejan automáticamente!" -ForegroundColor Green
