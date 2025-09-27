Write-Host "Monitoreando cambios en Aqua Patterns..." -ForegroundColor Green

# Verificar WordPress
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8080" -TimeoutSec 5
    Write-Host "WordPress funcionando en http://localhost:8080" -ForegroundColor Green
} catch {
    Write-Host "WordPress no esta corriendo" -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "MEJORAS APLICADAS:" -ForegroundColor Cyan
Write-Host "   CSS del frontend activado" -ForegroundColor Green
Write-Host "   Soporte para bloques agregado" -ForegroundColor Green
Write-Host "   CSS profesional completo" -ForegroundColor Green
Write-Host "   Patrones simplificados" -ForegroundColor Green
Write-Host "   Responsive design mejorado" -ForegroundColor Green

Write-Host ""
Write-Host "Monitoreando cambios..." -ForegroundColor Green
Write-Host "Directorio: aqua-patterns/" -ForegroundColor White
Write-Host "WordPress: http://localhost:8080" -ForegroundColor White
Write-Host ""
Write-Host "Edita archivos en aqua-patterns/" -ForegroundColor Yellow
Write-Host "Los cambios se reflejan automaticamente" -ForegroundColor Yellow
Write-Host ""
Write-Host "Presiona Ctrl+C para detener" -ForegroundColor Red

# FileSystemWatcher
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "aqua-patterns"
$watcher.Filter = "*.*"
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

# Evento de cambio
Register-ObjectEvent -InputObject $watcher -EventName "Changed" -Action {
    $file = $Event.SourceEventArgs.FullPath
    $fileName = Split-Path $file -Leaf
    Write-Host ""
    Write-Host "Cambio detectado: $fileName" -ForegroundColor Cyan
    Write-Host "Ve en: http://localhost:8080" -ForegroundColor White
    Write-Host "Hora: $(Get-Date -Format 'HH:mm:ss')" -ForegroundColor Gray
}

try {
    while ($true) {
        Start-Sleep -Seconds 1
    }
} finally {
    $watcher.EnableRaisingEvents = $false
    $watcher.Dispose()
    Write-Host ""
    Write-Host "Monitoreo detenido" -ForegroundColor Yellow
}
