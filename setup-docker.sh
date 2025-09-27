#!/bin/bash

echo "🐳 Configurando Docker para Aqua Patterns..."

# Crear directorios necesarios
mkdir -p wordpress
mkdir -p uploads

# Crear archivo .env si no existe
if [ ! -f .env ]; then
    echo "📝 Creando archivo .env..."
    cat > .env << EOF
# Configuración de Docker para Aqua Patterns
WORDPRESS_DB_HOST=db:3306
WORDPRESS_DB_USER=wordpress
WORDPRESS_DB_PASSWORD=wordpress
WORDPRESS_DB_NAME=wordpress
WORDPRESS_DEBUG=1
EOF
fi

# Crear archivo wp-config.php personalizado
echo "⚙️ Creando wp-config.php personalizado..."
cat > wordpress/wp-config.php << 'EOF'
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
EOF

echo "✅ Configuración completada!"
echo ""
echo "🚀 Para iniciar el entorno de desarrollo:"
echo "   docker-compose up -d"
echo ""
echo "🌐 URLs disponibles:"
echo "   WordPress: http://localhost:8080"
echo "   phpMyAdmin: http://localhost:8081"
echo ""
echo "📁 El plugin se monta automáticamente en:"
echo "   ./aqua-patterns -> /var/www/html/wp-content/plugins/aqua-patterns"
echo ""
echo "💡 Los cambios en el código se reflejan automáticamente!"
