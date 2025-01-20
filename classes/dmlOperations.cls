public class dmlOperations {
 /*   public static void insertmethod(){
       List<techknologie__c> techno = new List<techknologie__c>();
        for(integer i=0; i<=5; i++){
            techknologie__c tech = new techknologie__c();
        		tech.Name = 'solona'+i;
        		techno.add(tech);
        }
        insert techno;
    }*/
    
  /*  public static void updateMehod(){
        List<techknologie__c> tech = [select id, Name from techknologie__c where Name like 'Salsforce'];
        integer li = tech.size();
        for(integer i=0; i<li; i++){
            tech[i].Name = 'Instiens cloud'+i;
        }
        update tech;
    }*/
     /*  public static void DeleteMethod(){
      	List<techknologie__c> tech = [select id, Name from techknologie__c]; //fetch all records from techknologie__c cutome object and strore in this list.
           List<techknologie__c> techdellist = new list<techknologie__c>(); // creating new list that hold the record ehich matchs the "if Statement criteria"
           for(integer i=2; i<tech.size(); i++){
               if(tech[i].Name == 'solona'+i){
                   techdellist.add(tech[i]);
               }
           }
           delete techdellist; 
       }*/
    public static void DatabaseMeth(){
       // List<techknologie__c> techlist = [select id, Name, Result__c, Rating__c from techknologie__c]; 
        techknologie__c techobj = new techknologie__c();
        List<techknologie__c> updatetechlist = new List<techknologie__c>();
        	techobj.Name = 'salesforce';
        	techobj.Result__c = 'pass';
            techobj.Rating__c = '3';
        	updatetechlist.add(techobj);
        Database.SaveResult[] srList = Database.insert(updatetechlist, false);
        for (Database.SaveResult sr : srList){
   			if(sr.isSuccess()){
            	System.debug('succesfuly insrted records : ' + sr.getId());
            }
            else{
               for(Database.Error objErr : sr.getErrors()) {
         		System.debug('The following error has occurred.');
                   System.debug(objErr.getStatusCode() + ': ' + objErr.getMessage());
         		   System.debug('Invoice oject field which are affected by the error:' + objErr.getFields());
            	}
        	}
        }
    }
}