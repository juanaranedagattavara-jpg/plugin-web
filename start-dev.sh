#!/bin/bash

echo "🚀 Iniciando entorno de desarrollo Aqua Patterns..."

# Verificar si Docker está instalado
if ! command -v docker &> /dev/null; then
    echo "❌ Docker no está instalado. Instálalo desde: https://www.docker.com/get-started"
    exit 1
fi

# Verificar si Docker Compose está instalado
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose no está instalado. Instálalo desde: https://docs.docker.com/compose/install/"
    exit 1
fi

# Ejecutar setup si es la primera vez
if [ ! -f .env ]; then
    echo "📝 Primera vez ejecutando setup..."
    chmod +x setup-docker.sh
    ./setup-docker.sh
fi

# Iniciar contenedores
echo "🐳 Iniciando contenedores Docker..."
docker-compose up -d

# Esperar a que WordPress esté listo
echo "⏳ Esperando a que WordPress esté listo..."
sleep 10

# Verificar estado de los contenedores
echo "📊 Estado de los contenedores:"
docker-compose ps

echo ""
echo "✅ Entorno de desarrollo iniciado!"
echo ""
echo "🌐 URLs disponibles:"
echo "   WordPress: http://localhost:8080"
echo "   phpMyAdmin: http://localhost:8081"
echo ""
echo "🔧 Comandos útiles:"
echo "   Ver logs: docker-compose logs -f"
echo "   Parar: docker-compose down"
echo "   Reiniciar: docker-compose restart"
echo ""
echo "📁 El plugin se monta automáticamente:"
echo "   ./aqua-patterns -> /var/www/html/wp-content/plugins/aqua-patterns"
echo ""
echo "💡 Los cambios en el código se reflejan automáticamente!"
echo "   Edita los archivos en ./aqua-patterns/ y recarga la página"
