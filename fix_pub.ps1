$flutter = Get-ChildItem G:\DevTools -Recurse -Filter flutter.bat | Select-Object -First 1 -ExpandProperty FullName
if (-not $flutter) { Write-Host "Flutter not found in G:\DevTools!"; exit 1 }
Write-Host "Using $flutter"

for ($i=1; $i -le 5; $i++) {
  Write-Host "Attempt $i - flutter pub get..."
  & $flutter pub get
  if ($LASTEXITCODE -eq 0) { 
    Write-Host "Got dependencies!"
    break 
  }
  Start-Sleep 20
}
& $flutter build apk --release
