public class StringListTest {
    public static List<String> generateStringList(Integer num){
        List<String> lststr = new List<String>();
        for(Integer i=0; i<num; i++){
            lststr.add('Test '+ i);
        }
        return lststr;
    }
}