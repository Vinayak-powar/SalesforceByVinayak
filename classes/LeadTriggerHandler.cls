public class LeadTriggerHandler {
    public static void convertLead(List<Lead> newLeads, Map<Id, Lead> oldLeads){
        List<Database.LeadConvert> leadConverts = new List<Database.LeadConvert>();

    	for (Lead nlead : newLeads) {
            Lead olead = oldLeads.get(nlead.Id);
        	if (nlead.Status == 'Colsed-Converted' && olead.Status != 'Colsed-Converted') {
            	Database.LeadConvert leadConvert = new Database.LeadConvert();
                	leadConvert.LeadId = nlead.Id;
                	leadConvert.OpportunityName = 'Opportunity - ' + lead.Company;
                	//leadConvert.StageName = 'Prospecting';
                	//leadConvert.CloseDate = System.today().addDays(30);
            		leadConverts.add(leadConvert);
        	} 
    	}
    	if (!leadConverts.isEmpty()) {
        	try {
            	List<Database.LeadConvertResult> results = Database.convertLead(leadConverts);
            	for (Database.LeadConvertResult result : results) {
                	if (!result.isSuccess()) {
                    	System.debug('Failed to convert Lead: ' + result.getErrors());
                	}
            	}
        	} catch (Exception e) {
            	System.debug('Error during Lead conversion: ' + e.getMessage());
        	}
        }
    }
    public static void updateIndustry(List<Lead> newLeads){
        for(Lead ld : newLeads){
            if(ld.Industry == 'Healthcare'){
                ld.LeadSource = 'Purchased List';
                ld.SICCode__c = '1100';
                ld.Primary__c = 'Yes';
            }
        }
    }
}