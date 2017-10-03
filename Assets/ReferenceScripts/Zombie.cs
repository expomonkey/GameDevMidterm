/*using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Zombie : MonoBehaviour {
    public float speed;//Initializes variables for use and definition on creation
    public int health;
    public float yCoords;
    public float xCoords;
    public GameObject enemyVisual;
    public int number=1;

    public Zombie(){}
   
    void Update(){//Moves zombies to the left
        Vector3 pos = transform.position;
        pos.x -= GameManager.Instance.round* .01f;
        transform.position = pos;
    }

    private void OnCollisionEnter2D(Collision2D collision)//Check if they got shot. If got shot, go to LoseHealth
    {
        Destroy(collision.gameObject);        
        LoseHealth(ref health);        
    }

    void LoseHealth(ref int health)//Zombie loses health if they got shot
    {                              //Zombie dies if they are out of health
        health-=4;                 //Add 1 to zombies killed and update 
        if (health == 0)           //player kill to see if its time to go to the next round
        {
            Destroy(this.gameObject);
            GameManager.Instance.playerKills++;
            GameManager.Instance.zombieKills++;
        }
    }



}*/
