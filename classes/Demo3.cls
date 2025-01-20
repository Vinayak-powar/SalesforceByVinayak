public class Demo3{
  /*  public void mainValueMethod(){
        String websiteUrl =  'www.apexhours.com';
        
        System.debug('Befor value call : ' + websiteUrl);
        passByValueCall(websiteUrl);
		System.debug('After value call : ' + websiteUrl);        
    }
    private void passByValueCall(String websiteUrlValue){  //pass by valye call
        websiteUrlValue = 'www.salesforce.com';
    } */
    
    public void mainReferenceMethod(){
        Account a = new Account();
        a.Name = 'test account';
        a.Website = 'www.opp.com';
        
        System.debug('Befor ref call : ' + a);
        passByRefCall(a);
		System.debug('After ref call : ' + a);    
    }
    
    private void passByRefCall(Account a){
        a.Name = 'saturday';
        a.Website = 'www.kkk.com';
    }
}