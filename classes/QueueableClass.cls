//@author : Vinayak Powar
//Date Created : 19-12-2024
//Date Last Modified :
//Last ModifiedBy : 
//Description :  Queueable is asynchronous model in apex that helps 
//               apex developer to handle coplex logic with large number of records

public class QueueableClass implements Queueable  
{
    public void execute(QueueableContext context)
    {
        System.debug('Queueable executed1');
        
        //Enque the next job
        QueueableClass2 qclass2 = new QueueableClass2();
        System.enqueueJob(qclass2);
    }
}