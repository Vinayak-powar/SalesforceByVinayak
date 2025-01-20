public class cunstructorDemo {
	public string fname;
    public static final string lname;
    static{
        lname = 'tejbhau';
    }
    public cunstructorDemo(){
        this.fname = 'ram';
        System.debug(fname);
        System.debug(lname);
    }
    public void printaout(){
        System.debug(fname);
    }    
}