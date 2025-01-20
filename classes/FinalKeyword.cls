public class FinalKeyword {
    static final integer a1 = 100;
    static final integer a2;
    
    public static integer calculate(){
        return 7+7;
    }
    
    static {
        a2 = calculate();
    }

}