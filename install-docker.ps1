# Script de instalación automática para Aqua Patterns con Docker
Write-Host "🎯 Instalación automática de Aqua Patterns con Docker" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green

# Verificar si Docker está instalado
Write-Host "🔍 Verificando Docker..." -ForegroundColor Yellow
try {
    $dockerVersion = docker --version
    Write-Host "✅ Docker encontrado: $dockerVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker no está instalado!" -ForegroundColor Red
    Write-Host "📥 Instala Docker Desktop desde: https://www.docker.com/products/docker-desktop/" -ForegroundColor Cyan
    Write-Host "🔄 Reinicia este script después de instalar Docker" -ForegroundColor Yellow
    Read-Host "Presiona Enter para salir"
    exit 1
}

# Verificar si Docker Compose está instalado
Write-Host "🔍 Verificando Docker Compose..." -ForegroundColor Yellow
try {
    $composeVersion = docker-compose --version
    Write-Host "✅ Docker Compose encontrado: $composeVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker Compose no está instalado!" -ForegroundColor Red
    Write-Host "📥 Instala Docker Compose desde: https://docs.docker.com/compose/install/" -ForegroundColor Cyan
    Write-Host "🔄 Reinicia este script después de instalar Docker Compose" -ForegroundColor Yellow
    Read-Host "Presiona Enter para salir"
    exit 1
}

# Verificar si el plugin existe
if (-not (Test-Path "aqua-patterns/aqua-patterns.php")) {
    Write-Host "❌ Plugin Aqua Patterns no encontrado!" -ForegroundColor Red
    Write-Host "📁 Asegúrate de estar en el directorio correcto" -ForegroundColor Yellow
    Read-Host "Presiona Enter para salir"
    exit 1
}

Write-Host "✅ Plugin Aqua Patterns encontrado" -ForegroundColor Green

# Ejecutar setup
Write-Host "⚙️ Ejecutando configuración inicial..." -ForegroundColor Yellow
.\setup-docker.ps1

# Iniciar entorno
Write-Host "🚀 Iniciando entorno de desarrollo..." -ForegroundColor Yellow
.\start-dev.ps1

Write-Host ""
Write-Host "🎉 ¡Instalación completada!" -ForegroundColor Green
Write-Host "=================================================" -ForegroundColor Green
Write-Host ""
Write-Host "🌐 Accede a WordPress en:" -ForegroundColor Cyan
Write-Host "   http://localhost:8080" -ForegroundColor White
Write-Host ""
Write-Host "🔧 Configuración inicial de WordPress:" -ForegroundColor Cyan
Write-Host "   Título del sitio: Aqua Patterns Demo" -ForegroundColor White
Write-Host "   Usuario: admin" -ForegroundColor White
Write-Host "   Contraseña: admin123" -ForegroundColor White
Write-Host "   Email: admin@aqua.com" -ForegroundColor White
Write-Host ""
Write-Host "📱 Para probar el plugin:" -ForegroundColor Cyan
Write-Host "   1. Ve a Plugins → Plugins Instalados" -ForegroundColor White
Write-Host "   2. Activa 'Aqua Patterns'" -ForegroundColor White
Write-Host "   3. Crea una página nueva" -ForegroundColor White
Write-Host "   4. Busca 'Aqua' en el Inserter de patrones" -ForegroundColor White
Write-Host ""
Write-Host "💡 Los cambios en el código se reflejan automáticamente!" -ForegroundColor Green
Write-Host "   Edita archivos en ./aqua-patterns/ y recarga la página" -ForegroundColor White
Write-Host ""
Write-Host "🛠️ Comandos útiles:" -ForegroundColor Cyan
Write-Host "   Ver logs: docker-compose logs -f" -ForegroundColor White
Write-Host "   Parar: docker-compose down" -ForegroundColor White
Write-Host "   Reiniciar: docker-compose restart" -ForegroundColor White
Write-Host ""
Read-Host "Presiona Enter para abrir WordPress en el navegador"

# Abrir WordPress en el navegador
Start-Process "http://localhost:8080"
