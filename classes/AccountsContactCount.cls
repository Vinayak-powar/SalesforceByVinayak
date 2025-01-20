public class AccountsContactCount {
    @future
    public static void countContacts(List<Id> accIds){
        List<Account> accList = [Select Id, (Select id from Contacts) From Account where Id IN : accIds];
        for(Account acc : accList){
            acc.Number_of_contacts__c = acc.Contacts.size();
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}