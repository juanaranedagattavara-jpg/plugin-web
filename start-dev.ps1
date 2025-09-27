# Script de PowerShell para iniciar Aqua Patterns con Docker
Write-Host "🚀 Iniciando entorno de desarrollo Aqua Patterns..." -ForegroundColor Green

# Verificar si Docker está instalado
try {
    docker --version | Out-Null
    Write-Host "✅ Docker encontrado" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker no está instalado. Instálalo desde: https://www.docker.com/get-started" -ForegroundColor Red
    exit 1
}

# Verificar si Docker Compose está instalado
try {
    docker-compose --version | Out-Null
    Write-Host "✅ Docker Compose encontrado" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker Compose no está instalado. Instálalo desde: https://docs.docker.com/compose/install/" -ForegroundColor Red
    exit 1
}

# Ejecutar setup si es la primera vez
if (-not (Test-Path ".env")) {
    Write-Host "📝 Primera vez ejecutando setup..." -ForegroundColor Yellow
    .\setup-docker.ps1
}

# Crear directorios necesarios
if (-not (Test-Path "wordpress")) {
    New-Item -ItemType Directory -Path "wordpress" | Out-Null
    Write-Host "📁 Directorio wordpress creado" -ForegroundColor Yellow
}

if (-not (Test-Path "uploads")) {
    New-Item -ItemType Directory -Path "uploads" | Out-Null
    Write-Host "📁 Directorio uploads creado" -ForegroundColor Yellow
}

# Iniciar contenedores
Write-Host "🐳 Iniciando contenedores Docker..." -ForegroundColor Yellow
docker-compose up -d

# Esperar a que WordPress esté listo
Write-Host "⏳ Esperando a que WordPress esté listo..." -ForegroundColor Yellow
Start-Sleep -Seconds 15

# Verificar estado de los contenedores
Write-Host "📊 Estado de los contenedores:" -ForegroundColor Cyan
docker-compose ps

Write-Host ""
Write-Host "✅ Entorno de desarrollo iniciado!" -ForegroundColor Green
Write-Host ""
Write-Host "🌐 URLs disponibles:" -ForegroundColor Cyan
Write-Host "   WordPress: http://localhost:8080" -ForegroundColor White
Write-Host "   phpMyAdmin: http://localhost:8081" -ForegroundColor White
Write-Host ""
Write-Host "🔧 Comandos útiles:" -ForegroundColor Cyan
Write-Host "   Ver logs: docker-compose logs -f" -ForegroundColor White
Write-Host "   Parar: docker-compose down" -ForegroundColor White
Write-Host "   Reiniciar: docker-compose restart" -ForegroundColor White
Write-Host ""
Write-Host "📁 El plugin se monta automáticamente:" -ForegroundColor Cyan
Write-Host "   ./aqua-patterns -> /var/www/html/wp-content/plugins/aqua-patterns" -ForegroundColor White
Write-Host ""
Write-Host "💡 Los cambios en el código se reflejan automáticamente!" -ForegroundColor Green
Write-Host "   Edita los archivos en ./aqua-patterns/ y recarga la página" -ForegroundColor White
