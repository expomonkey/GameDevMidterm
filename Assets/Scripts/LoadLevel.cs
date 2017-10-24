using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadLevel : MonoBehaviour {


    public void NextLevelButton()//Loads the main level
    {
        SceneManager.LoadScene("Midterm Playground");
    }
}
