$api = $API_KEY

$url = Read-Host "Enter a URL to Scan"

$headers =@{
    'API-Key' = $api
    'Content-Type' = 'application/json'
}

$data= @{
    'url' = $url
    'visibility' = 'public'
}
$response = Invoke-RestMethod -Uri 'https://urlscan.io/api/v1/scan/' -Method Post -Headers $headers -Body ($data | ConvertTo-Json)

Write-Host($response | ConvertTo-Json)
