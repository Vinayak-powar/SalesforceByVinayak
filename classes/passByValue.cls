public class passByValue {
    public static void mainvalueMethod(){
 	//Pass by Value
        String s1 = 'Sales Cloud'; 	 
        System.debug('Pass By Value 1 : '+s1); // --> Output = Sales Cloud
        ByValue(s1);					       // --> Output = Marketing Cloud
        System.debug('Pass By Value 2 : '+s1); // --> Output = Sales Cloud
        
    //Pass by Ref  
        List<String> strlist = new List<String>();
        Strlist.add('sales cloud1');
        System.debug('Befor call : '+strlist);  // --> Output = Sales Cloud
        psByValue(strlist);						// --> Output = Marketing Cloud , experince cloud
        System.debug('after call1 : '+strlist); // --> Output = Marketing Cloud
    }
   //Pass by Value
    public static void ByValue(String s2){
        s2 = 'Marketing Cloud';
    	System.debug('after call1 : '+s2);
    }
   //Pass by Ref
    public static void psByValue(List<String> strl2){
        strl2.add('marketing cloud');
        strl2.add('experince cloud');
        System.debug('after call : '+strl2);
    }
}