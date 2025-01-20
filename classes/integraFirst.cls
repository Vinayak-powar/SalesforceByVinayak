public class integraFirst {
    public static void handleResponse(){
        String JsonBody  = '{"firstName" : "Salesforce", "LastName" : "Velocity"}';
        Map<String, object> JsonMap = (Map<String, object>)JSON.deserializeUntyped(JsonBody);
        String fname = (String)JsonMap.get('firstName');
        String lname = (String)JsonMap.get('LastName');
        System.debug('FirstName : '+fname);
        System.debug('LastName : '+lname);
        
        Contact con = new Contact();
        con.FirstName = fname;
        con.LastName = lname;
        Insert con;
    }
}