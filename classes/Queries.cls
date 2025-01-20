public class Queries {
    public static void QueryMethod(){
        List<techknologie__c> techlist = new List<techknologie__c>();
        String st ='java';
        techlist = [Select id, Name from techknologie__c where Name =: 'salesforce'];
        
        if(!techlist.isEmpty()){
            for(techknologie__c tech : techlist){
               System.debug(tech.Name +','+ tech.Id); 
            }
        }
    }
}