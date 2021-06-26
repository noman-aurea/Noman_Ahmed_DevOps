$pclist = "google.com", "yahoo.com", "facebook.com", "bing.com"
do{
foreach ($pc in $pclist) {
if (test-Connection -ComputerName $pc -Count 2 -Quiet ) {
Write-Host $pc is online -ForegroundColor Green
} else {Write-Host $pc is offline -ForegroundColor Red}
}
} until($forever)
