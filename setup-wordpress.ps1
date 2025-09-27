# Script para configurar WordPress inicial
Write-Host "⚙️ Configurando WordPress inicial..." -ForegroundColor Green

# Esperar a que WordPress esté completamente listo
Write-Host "⏳ Esperando a que WordPress esté completamente listo..." -ForegroundColor Yellow
Start-Sleep -Seconds 30

# Verificar si WordPress responde
$maxAttempts = 10
$attempt = 0
$wordpressReady = $false

while ($attempt -lt $maxAttempts -and -not $wordpressReady) {
    try {
        $response = Invoke-WebRequest -Uri "http://localhost:8080" -TimeoutSec 5
        if ($response.StatusCode -eq 200) {
            $wordpressReady = $true
            Write-Host "✅ WordPress está respondiendo" -ForegroundColor Green
        }
    } catch {
        $attempt++
        Write-Host "⏳ Intento $attempt/$maxAttempts - Esperando WordPress..." -ForegroundColor Yellow
        Start-Sleep -Seconds 10
    }
}

if (-not $wordpressReady) {
    Write-Host "❌ WordPress no está respondiendo después de $maxAttempts intentos" -ForegroundColor Red
    Write-Host "   Verifica los logs: docker-compose logs wordpress" -ForegroundColor Yellow
    exit 1
}

Write-Host "`n🎉 WordPress está listo para usar!" -ForegroundColor Green
Write-Host "`n📋 Próximos pasos:" -ForegroundColor Cyan
Write-Host "1. Ve a http://localhost:8080/wp-admin" -ForegroundColor White
Write-Host "2. Completa la configuración inicial de WordPress" -ForegroundColor White
Write-Host "3. Ve a Plugins → Activar 'Aqua Patterns'" -ForegroundColor White
Write-Host "4. Crea una página y usa los patrones" -ForegroundColor White

Write-Host "`n🔄 Para ver cambios en tiempo real:" -ForegroundColor Cyan
Write-Host "   ✏️  Edita: aqua-patterns/patterns/*.html" -ForegroundColor White
Write-Host "   👀 Ve: http://localhost:8080" -ForegroundColor White
Write-Host "   ⚡ Los cambios se reflejan automáticamente" -ForegroundColor White
