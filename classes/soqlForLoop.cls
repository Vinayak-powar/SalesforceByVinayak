public class soqlForLoop {
    public void soqlfor(){
        List<contact> con = new List<contact>();
 		for(contact confor : [SELECT Id,Name, Level__c FROM contact WHERE CreatedDate = today]){
            if(confor.Level__c == 'Primary'){
                System.debug(confor);
            }  
        }
    }  
}