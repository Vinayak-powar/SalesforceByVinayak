public class AccountsOppSum {
    public static void sumOfOppAmmount(Set<Id> accountIds){
       List<Account> accountsToUpdate  = [Select Id, Total_Opportunity_Amount__c, (Select Amount From Opportunities) From Account where Id IN : accountIds];
       
        for(Account acc : accountsToUpdate){
            Decimal totalAmount = 0;
            
            for(Opportunity opp : acc.Opportunities){
                totalAmount += opp.Amount;
            }
            acc.Total_Opportunity_Amount__c = totalAmount;
        }
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;
        }
    }
}