public class CaseTriggerHandler {
    public static void setStatusAndPriority(List<Case> casesToInsert){
        for(case c : casesToInsert){
            if(c.Origin == 'Phone'){
                c.Status = 'New';
                c.Priority = 'High';
            }else{
                c.Priority ='Low';
            }
        }
    }
}