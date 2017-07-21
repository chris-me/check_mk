# PowerShell Script to check if specified tasks last run return value was successful

$tasksToCheck = @("My Task Name", "Another tasks name")

###############################################################################################

$globalState = 0
$failedTasks = ""
$okTasks = ""

ForEach($task in $tasksToCheck) {
	$exitCode = (Get-ScheduledTask $task | Get-ScheduledTaskInfo).LastTaskResult
	if ($exitCode -ne 0) {
		$globalState = 1
		$failedTasks += "$task "
	} else {
		$okTasks += "$task "
	}
}

if ($globalState -eq 1) {
	Write-Host "2 Tasks_Last_Run_State - CRITICAL - Failed: $failedTasks , Success: $okTasks"
} else {
	Write-Host "0 Tasks_Last_Run_State - OK - Success: $okTasks"
}
