@echo off

taskkill /im OculusClient.exe /f
taskkill /im OVRRedir.exe /f
taskkill /im OVRServer_x64.exe /f
taskkill /im OVRServiceLauncher.exe /f
taskkill /im oculus-platform-runtime.exe /f

pause