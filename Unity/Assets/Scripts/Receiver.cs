using UnityEngine;

public class Receiver : MonoBehaviour
{
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnCalled()
    {
        Debug.Log("Hiiiiiiiiii, Hello recieved");
    }
    public void StartTimerLoop()
    {   
        InvokeRepeating("PrintLoop", 1f, 1f);
    }

    void PrintLoop()
    {
        Debug.Log("Loop running...");
    }

}
