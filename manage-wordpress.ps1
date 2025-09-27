# Script de gestión completa de WordPress
param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("start", "stop", "restart", "status", "logs", "setup", "watch")]
    [string]$Action
)

function Start-WordPress {
    Write-Host "🚀 Iniciando WordPress..." -ForegroundColor Green
    & .\start-wordpress.ps1
}

function Stop-WordPress {
    Write-Host "🛑 Deteniendo WordPress..." -ForegroundColor Yellow
    docker-compose down
    Write-Host "✅ WordPress detenido" -ForegroundColor Green
}

function Restart-WordPress {
    Write-Host "🔄 Reiniciando WordPress..." -ForegroundColor Yellow
    docker-compose restart
    Write-Host "✅ WordPress reiniciado" -ForegroundColor Green
}

function Show-Status {
    Write-Host "🔍 Estado de los servicios:" -ForegroundColor Cyan
    docker-compose ps
}

function Show-Logs {
    Write-Host "📋 Logs de WordPress:" -ForegroundColor Cyan
    docker-compose logs wordpress
}

function Setup-WordPress {
    Write-Host "⚙️ Configurando WordPress..." -ForegroundColor Green
    & .\setup-wordpress.ps1
}

function Watch-Changes {
    Write-Host "👀 Iniciando monitoreo de cambios..." -ForegroundColor Green
    & .\watch-changes.ps1
}

# Ejecutar acción
switch ($Action) {
    "start" { Start-WordPress }
    "stop" { Stop-WordPress }
    "restart" { Restart-WordPress }
    "status" { Show-Status }
    "logs" { Show-Logs }
    "setup" { Setup-WordPress }
    "watch" { Watch-Changes }
}

Write-Host "`n💡 Comandos disponibles:" -ForegroundColor Cyan
Write-Host "   .\manage-wordpress.ps1 start    - Iniciar WordPress" -ForegroundColor White
Write-Host "   .\manage-wordpress.ps1 stop     - Detener WordPress" -ForegroundColor White
Write-Host "   .\manage-wordpress.ps1 restart  - Reiniciar WordPress" -ForegroundColor White
Write-Host "   .\manage-wordpress.ps1 status   - Ver estado" -ForegroundColor White
Write-Host "   .\manage-wordpress.ps1 logs     - Ver logs" -ForegroundColor White
Write-Host "   .\manage-wordpress.ps1 setup    - Configurar inicial" -ForegroundColor White
Write-Host "   .\manage-wordpress.ps1 watch    - Monitorear cambios" -ForegroundColor White
