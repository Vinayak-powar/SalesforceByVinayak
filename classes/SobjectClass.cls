public class SobjectClass {
    public static void method(){
        //Standerd object
        /*Account acc = new Account();
        acc.Name = 'sf noob';
        system.debug(acc.Name);
        insert acc;*/
        
        //Gneric object
        sObject sobj = new Account();
        sobj = [Select id, Name From Account Limit 1];
        System.debug(sobj);
    }
}