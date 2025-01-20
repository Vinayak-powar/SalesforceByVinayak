public class UpdateTechnologyObj {
    Public static void Updtrec(){
        List<techknologie__c> techupdt = [Select Id, Name, Rating__c, Result__c from techknologie__c where Rating__c = '3'];
        System.debug(techupdt); 
        for(techknologie__c tech : techupdt){
            tech.Result__c = 'Pass';
        }
        System.debug(techupdt); 
        update techupdt;
    }
}