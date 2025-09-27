# Script para monitorear cambios en tiempo real
Write-Host "👀 Monitoreando cambios en Aqua Patterns..." -ForegroundColor Green

# Verificar si el plugin está activo
$pluginActive = $false
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080/wp-admin" -TimeoutSec 5
    $pluginActive = $true
} catch {
    Write-Host "⚠️  WordPress no está corriendo. Ejecuta primero: .\start-wordpress.ps1" -ForegroundColor Yellow
    exit 1
}

Write-Host "✅ WordPress detectado en http://localhost:8080" -ForegroundColor Green

# Función para notificar cambios
function Show-ChangeNotification {
    param($file)
    Write-Host "`n🔄 Cambio detectado: $file" -ForegroundColor Cyan
    Write-Host "   👀 Ve el cambio en: http://localhost:8080" -ForegroundColor White
    Write-Host "   ⏰ $(Get-Date -Format 'HH:mm:ss')" -ForegroundColor Gray
}

# Configurar FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "aqua-patterns"
$watcher.Filter = "*.html"
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

# Registrar evento de cambio
Register-ObjectEvent -InputObject $watcher -EventName "Changed" -Action {
    $file = $Event.SourceEventArgs.FullPath
    $fileName = Split-Path $file -Leaf
    Write-Host "`n🔄 Cambio detectado: $fileName" -ForegroundColor Cyan
    Write-Host "   👀 Ve el cambio en: http://localhost:8080" -ForegroundColor White
    Write-Host "   ⏰ $(Get-Date -Format 'HH:mm:ss')" -ForegroundColor Gray
}

Write-Host "`n👀 Monitoreando cambios en tiempo real..." -ForegroundColor Green
Write-Host "   📁 Directorio: aqua-patterns/" -ForegroundColor White
Write-Host "   📄 Archivos: *.html" -ForegroundColor White
Write-Host "   🌐 WordPress: http://localhost:8080" -ForegroundColor White
Write-Host "`n💡 Edita cualquier archivo .html en aqua-patterns/patterns/" -ForegroundColor Yellow
Write-Host "   Los cambios se reflejarán automáticamente en WordPress" -ForegroundColor Yellow
Write-Host "`n🛑 Presiona Ctrl+C para detener el monitoreo" -ForegroundColor Red

try {
    while ($true) {
        Start-Sleep -Seconds 1
    }
} finally {
    $watcher.EnableRaisingEvents = $false
    $watcher.Dispose()
    Write-Host "`n👋 Monitoreo detenido" -ForegroundColor Yellow
}
