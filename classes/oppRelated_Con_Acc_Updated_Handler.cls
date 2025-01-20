public class oppRelated_Con_Acc_Updated_Handler {
    public static void updateCon_Acc(List<Opportunity> newOpp, Map<Id, Opportunity> oldOpp){
        set<Id> accountIdToUpdate = new set<Id>();
        set<Id> contactIdToUpdate = new set<Id>();
        Map<Id, Account> accountsToUpdate = new Map<Id, Account>();
        List<Contact> ContactToUpdate = new List<Contact>();
        
        for(Opportunity opp : newOpp){
            if(opp.StageName == 'Closed Won' && opp.StageName != oldOpp.get(opp.Id).StageName){
                accountIdToUpdate.add(opp.AccountId);
            }
        }
       List<Account> Account = [SELECT Id, Name, Primary_Contact__c,(SELECT Id, CleanStatus, Is_Primary__c FROM Contacts WHERE Is_Primary__c = TRUE) FROM Account];
    }
}