public class JSONClass {
    public static void handleResponse(){
        String JsonBody = '{"firstName" : "sadashiv", "lastName" : "Nimbalkar"}';
        Map<String, object> JsonData  = (Map<String, object>)JSON.deserializeuntyped(JsonBody);
        String fName = (String)JsonData.get('firstName');
        String lName = (String)JsonData.get('lastName');
        
        System.debug(fName);
        System.debug(lName);
        Contact con =  New Contact();
        con.FirstName = fName;
        con.LastName = lName;
    }
}