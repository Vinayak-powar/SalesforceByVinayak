public class passByRef {
    
    public void mainrefMethod(){
    Account acc = new Account();
    acc.Name = 'test Account';
    acc.Website = 'salesforce.com';
    
    System.debug('Before ref call : '+ acc);
    passByref(acc); 
    System.debug('after fer call : '+ acc);
    }  
    
    public void passByref(Account ac){
        ac.Website = 'force.com';
        ac.Phone = '903587333';
        System.debug('after fer call : '+ ac);
    }
}