public class Age_by_DOB {  
    public Integer age {get; set;}    
    public Date dt {get; set;}
     
    public void FindAge()
    {
        Integer days = dt.daysBetween(Date.Today());
        age = Integer.valueOf(days/365);
    }
}