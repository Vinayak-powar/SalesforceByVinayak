public class opportunityHandlerClass {
    public static void CreateFallowUpTask(List<Opportunity> newOpp, Map<Id, Opportunity> oldOpp){
        List<Task> TaskToInsert = new List<Task>(); //Create list to hold the new task
        
        for(Opportunity nopp : newOpp){  					// this will go through all insrted and updated opp and store in 'opp'
        	Opportunity oOpp = oldOpp.get(nopp.Id);	    // this oldopp store the opportunities befor they were updated 
        
        	if(nopp.StageName == 'Prospecting' && (oOpp == null || oOpp.StageName != 'Prospecting')){
                if (nopp.AccountId != null && nopp.ContactId != null){
                   Task followUpTask = new Task();
            		followUpTask.Subject = 'Follow-up with Client';
            		followUpTask.OwnerId = nopp.OwnerId;
            		followUpTask.WhatId = nopp.AccountId;
            		followUpTask.WhoId = nopp.ContactId;
            		followUpTask.Status = 'Not Started';
            		followUpTask.Priority =  'Normal';
            		followUpTask.ActivityDate = nopp.CloseDate.addDays(7);
            		followUpTask.Description = 'Post-sale follow-up to ensure smooth onboarding process';
            
            		TaskToInsert.add(followUpTask); 
                	}else {
                    System.debug('Skipping Task Creation: Missing Account or Contact on Opportunity ID ' + nopp.Id);
                	}	
                }  
    		}
    	if(!TaskToInsert.isEmpty()){
    		insert TaskToInsert;
        	System.debug('Task Created Succesfully');
    	} 
	}
}