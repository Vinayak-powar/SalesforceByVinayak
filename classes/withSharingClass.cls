public with sharing class withSharingClass {
    List<techknologie__c> techList = [Select Id, Name from techknologie__c Limit 3];
    public Integer executeQuery () {
      System.debug('List will have only 5 records and the actual records are' + techList.size()+' as user has access to'+techList);
      Integer ListSize = techList.size();
      return ListSize;
   }
}