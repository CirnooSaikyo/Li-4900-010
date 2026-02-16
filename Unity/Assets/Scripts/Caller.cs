using UnityEngine;

public class Caller : MonoBehaviour
{
    public Receiver receiver;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        Debug.Log("Hello Friend");
        receiver.OnCalled();      
        receiver.StartTimerLoop();
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
