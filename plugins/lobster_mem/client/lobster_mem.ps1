# TODOs:
# * Error handling

$downloadURL     = 'http://localhost/monitor/java_used_memory_percentage.jsp?memory'

$wc = New-Object system.Net.WebClient;
$result = $wc.downloadString($downloadURL)

write-host "<<<lobster_mem>>>"
"lobster_process $result"

