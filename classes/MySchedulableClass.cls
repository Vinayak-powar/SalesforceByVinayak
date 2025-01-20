public class MySchedulableClass implements Schedulable {
    public void execute(SchedulableContext Sc){
        System.debug('Schedualabel Class Executed');
        
        List<Account> accList = [SELECT Id, Name FROM Account WHERE LastModifiedDate > :System.now().addDays(-30)];
        for(Account acc : accList){
            acc.Name = acc.Name + ' Schedulable';
        }
        update accList;
    }
}