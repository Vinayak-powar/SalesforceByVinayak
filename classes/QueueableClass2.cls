public class QueueableClass2 implements Queueable 
{
	public void execute(QueueableContext context)
    {
        System.debug('Queueable Executed2');
    }
}