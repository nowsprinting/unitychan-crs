# Need environment variables:
# - UNITY_APP path of Unity.app

UNITY_APP=/Applications/Unity/Unity.app

mac:
	mkdir -p Build
	${UNITY_APP}/Contents/MacOS/Unity -quit -batchmode -logFile /dev/stdout \
		-buildOSXPlayer ./Build/UnityChanVR.app

win:
	mkdir -p Build
	${UNITY_APP}/Contents/MacOS/Unity -quit -batchmode -logFile /dev/stdout \
		-buildWindowsPlayer ./Build/UnityChanVR.exe
