# Need environment variables:
# - UNITY_APP path of Unity.app
# - DEPLOYGATE_API_TOKEN Token of deploygate.com

UNITY_APP=/Applications/Unity/Unity.app

export APK_PATH=Build/unitychan-crs.apk
export VERSION_NAME=1.0.0

ifndef BUILD_NUMBER
	export BUILD_NUMBER=1
endif

android-build:
	mkdir -p Build
	${UNITY_APP}/Contents/MacOS/Unity -quit -batchmode -logFile /dev/stdout \
		-executeMethod AndroidBuilder.Build

android-deploy:

android: android-build android-deploy
