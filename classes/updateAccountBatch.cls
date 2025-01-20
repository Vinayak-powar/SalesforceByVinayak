global class updateAccountBatch Implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext BC){
        String query = 'SELECT Id, Name FROM Account'; 
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Account> accList){
        for(Account a : accList){
            if(a.Name != null && a.Name.Contains('Batch')){
                List<String> nameParts = a.Name.split(' ');
                
                if(nameParts.size() > 1){
                    String lastPart = nameParts[nameParts.size() - 1];
                    if(lastPart == 'Batch'){
                       nameParts.remove(nameParts.size() - 1);
                        a.Name = String.join(nameParts, ' ');
                    }
                }
            }
        }
        update accList;
    }
    global void finish(Database.BatchableContext BC){
        
    }
}