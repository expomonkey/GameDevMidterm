using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LoadInstructions : MonoBehaviour {

    public void NextLevelButton()//Loads the instruction screen
    {
        SceneManager.LoadScene("Instructions");
    }
}
