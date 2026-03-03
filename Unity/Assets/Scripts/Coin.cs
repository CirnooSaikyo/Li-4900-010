using UnityEngine;

public class Coin : MonoBehaviour
{
    static int count;

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            count++;
            Debug.Log("Coin collected! " + count);
            gameObject.SetActive(false);
        }
    }
}
