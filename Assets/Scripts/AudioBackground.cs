using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioBackground : MonoBehaviour {//This class contains the background music for the game, to be kept constant thruoghout all scenes
    private static GameObject audioSource;   

    // Use this for initialization
    private static AudioBackground _instance;

    void Awake()
    {
        //if we don't have an [_instance] set yet
        if (!_instance)
            _instance = this;
        //otherwise, if we do, kill this thing
        else
            Destroy(this.gameObject);//Makes sure multple of this gmaeobject dont spawn when moving between scenes


        DontDestroyOnLoad(this.gameObject);
    }

}
