SchTasks /Create /SC ONLOGON /TN "LogonShout - Hello" /TR "powershell.exe -executionpolicy bypass -File C:\LogonShout\Hello.ps1"
SchTasks /Create /XML C:\LogonShout\LogonShout-Job1.xml /TN "LogonShout - Welcome back"
SchTasks /Create /SC ONEVENT /MO "*[System[Provider[@Name='Microsoft-Windows-Security-Auditing'] and EventID=4647]]" /EC Security /TN "LogonShout - Bye" /TR "powershell.exe -executionpolicy bypass -File C:\LogonShout\Bye.ps1"