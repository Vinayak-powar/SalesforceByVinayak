/*@isTest
public class AccountsContactCountTest {
	@isTest
    public static void countContactsTest(){
        List<Account> accList = new List<Account>();
        for(Integer i=0; i<200; i++){
            accList.add(new Account(Name = 'BahusarAcc'+i));
        }
        insert accList;
        
        List<Contact> conList = new List<Contact>();
        List<Id> acIds = new List<Id>();
        for(Account acc : accList){
            conList.add(new Contact(FirstName ='ConFirst', LastName = acc.Name, AccountId = acc.Id));
            acIds.add(acc.Id);
        }
        insert conList;

        Test.startTest();
        AccountsContactCount.countContacts(acIds);
        Test.stopTest();
        
        List<Account> accs = [Select Id, Number_of_contacts__c from Account];
        for (Account acc : accs) {
            System.assertEquals(1, acc[0].Number_of_contacts__c, 'Contacts are not inserted successfully for Account: ' + acc.Name);
        }
    }
}*/

@isTest
public class AccountsContactCountTest {
    
    @isTest
    public static void countContactsTest() {
        // Step 1: Create test Accounts
        List<Account> accList = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            accList.add(new Account(Name = 'BahusarAcc' + i));
        }
        insert accList;

        // Step 2: Create test Contacts and associate with Accounts
        List<Contact> conList = new List<Contact>();
        List<Id> acIds = new List<Id>();
        for (Account acc : accList) {
            conList.add(new Contact(FirstName = 'ConFirst', LastName = acc.Name, AccountId = acc.Id));
            acIds.add(acc.Id);
        }
        insert conList;

        // Step 3: Call the future method to count contacts
        Test.startTest();
        AccountsContactCount.countContacts(acIds); // Call the future method
        Test.stopTest();

        // Step 4: Retrieve updated Account records
        List<Account> accs = [SELECT Id, Number_of_contacts__c FROM Account WHERE Id IN :acIds];

        // Step 5: Verify that the custom field is correctly updated
        for (Account acc : accs) {
            System.assertEquals(1, acc.Number_of_contacts__c, 'Contacts are not inserted successfully for Account: ' + acc.Name);
        }
    }
}