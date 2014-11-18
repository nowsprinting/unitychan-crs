using UnityEngine;
using UnityEditor;
using System;

public class AndroidBuilder {
	
	static void Build(){
		//Player Settings
		PlayerSettings.bundleVersion = Environment.GetEnvironmentVariable("VERSION_NAME");
		PlayerSettings.Android.bundleVersionCode = int.Parse(Environment.GetEnvironmentVariable("BUILD_NUMBER"));

		//Build
		string[] scenes = {
			"Assets/Scenes/Main.unity"
		};
		string apkPath = Environment.GetEnvironmentVariable("APK_PATH");

		string msg = BuildPipeline.BuildPlayer(
			scenes,
			apkPath,
			BuildTarget.Android,
			BuildOptions.None);
		
		if(!string.IsNullOrEmpty(msg)){
			throw new System.Exception(msg);
		}
		Debug.Log("Build completed ");
	}
}