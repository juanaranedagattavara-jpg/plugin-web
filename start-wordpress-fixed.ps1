# Script para iniciar WordPress con sincronización automática
Write-Host "🚀 Iniciando WordPress con Aqua Patterns..." -ForegroundColor Green

# Verificar si Docker está corriendo
try {
    docker --version | Out-Null
    Write-Host "✅ Docker detectado" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker no está instalado o no está corriendo" -ForegroundColor Red
    Write-Host "   Instala Docker Desktop desde: https://www.docker.com/products/docker-desktop" -ForegroundColor Yellow
    exit 1
}

# Verificar si el plugin existe
if (-not (Test-Path "aqua-patterns")) {
    Write-Host "❌ No se encontró la carpeta aqua-patterns" -ForegroundColor Red
    Write-Host "   Asegúrate de estar en el directorio correcto del proyecto" -ForegroundColor Yellow
    exit 1
}

# Crear directorio de uploads si no existe
if (-not (Test-Path "uploads")) {
    New-Item -ItemType Directory -Name "uploads"
    Write-Host "📁 Creado directorio uploads" -ForegroundColor Yellow
}

# Iniciar contenedores
Write-Host "🐳 Iniciando contenedores Docker..." -ForegroundColor Yellow
docker-compose up -d

# Esperar a que WordPress esté listo
Write-Host "⏳ Esperando a que WordPress esté listo..." -ForegroundColor Yellow
Start-Sleep -Seconds 15

# Verificar estado
Write-Host "`n🔍 Verificando estado de los servicios..." -ForegroundColor Cyan
docker-compose ps

Write-Host "`n✅ WordPress está listo!" -ForegroundColor Green
Write-Host "`n🌐 URLs disponibles:" -ForegroundColor Cyan
Write-Host "   🏠 WordPress: http://localhost:8080" -ForegroundColor White
Write-Host "   🔧 Admin: http://localhost:8080/wp-admin" -ForegroundColor White
Write-Host "   🗄️  phpMyAdmin: http://localhost:8081" -ForegroundColor White

Write-Host "`n📋 Credenciales por defecto:" -ForegroundColor Cyan
Write-Host "   👤 Usuario: admin" -ForegroundColor White
Write-Host "   🔑 Contraseña: admin123" -ForegroundColor White

Write-Host "`n🔄 Sincronización automática:" -ForegroundColor Cyan
Write-Host "   ✏️  Edita archivos en: aqua-patterns/patterns/" -ForegroundColor White
Write-Host "   👀 Ve cambios en: http://localhost:8080" -ForegroundColor White
Write-Host "   ⚡ Los cambios se reflejan automáticamente" -ForegroundColor White

Write-Host "`n🛑 Para detener: docker-compose down" -ForegroundColor Yellow
Write-Host "🔄 Para reiniciar: docker-compose restart" -ForegroundColor Yellow

# Abrir WordPress en el navegador
try {
    Start-Process "http://localhost:8080"
} catch {
    Write-Host "💡 Abre manualmente: http://localhost:8080" -ForegroundColor Yellow
}
