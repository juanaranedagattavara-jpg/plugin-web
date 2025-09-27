# Script para iniciar el demo de Gutenberg

Write-Host "🎨 Aqua Patterns - Demo Gutenberg" -ForegroundColor Green
Write-Host "=================================" -ForegroundColor Green

# Verificar Node.js
Write-Host "🔍 Verificando Node.js..." -ForegroundColor Yellow
try {
    $nodeVersion = node -v
    Write-Host "✅ Node.js disponible: $nodeVersion" -ForegroundColor Green
}
catch {
    Write-Host "❌ Node.js no está disponible. Instálalo desde nodejs.org" -ForegroundColor Red
    exit 1
}

# Verificar archivos necesarios
Write-Host "🔍 Verificando archivos..." -ForegroundColor Yellow
if (-not (Test-Path "gutenberg-demo.html")) {
    Write-Host "❌ gutenberg-demo.html no encontrado" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path "server.js")) {
    Write-Host "❌ server.js no encontrado" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Archivos encontrados" -ForegroundColor Green

# Iniciar servidor
Write-Host "🚀 Iniciando servidor..." -ForegroundColor Yellow
Write-Host ""
Write-Host "💡 URLs disponibles:" -ForegroundColor Cyan
Write-Host "   • Demo Gutenberg: http://localhost:3001" -ForegroundColor White
Write-Host ""
Write-Host "🛠️ Controles del demo:" -ForegroundColor Yellow
Write-Host "   • Cambiar dispositivo: Desktop / Tablet / Móvil" -ForegroundColor White
Write-Host "   • Recargar patrones: Botón 'Recargar Patrones'" -ForegroundColor White
Write-Host "   • WhatsApp: Botón flotante verde" -ForegroundColor White
Write-Host ""
Write-Host "🛑 Para detener: Presiona Ctrl+C" -ForegroundColor Red
Write-Host ""

# Abrir navegador
Start-Process "http://localhost:3001"

# Iniciar servidor
node server.js
