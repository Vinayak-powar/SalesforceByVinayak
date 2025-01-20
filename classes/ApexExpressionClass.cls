public class ApexExpressionClass {
    public void testExpression(){
       Integer x=5,y=7;       
        System.debug(x = x+y);
        resetValues(x, y);
        //System.debug(x = x+y);
    }
    public static void resetValues(Integer x, Integer y){
        x=5; y=7;
    }
}