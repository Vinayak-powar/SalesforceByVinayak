public virtual class UseOfVirtual {
    public virtual void method1(){
        System.debug('this is mehod1 of class UseOfVirtual');
    }
    public virtual void method2(){
        Integer a, b;
        a = 2; b = 3;
        a = a+b;
        System.debug('sum of a & b = ' + a);
    }
    public void swapNumber(){
        Integer a, b, c;
        a=1; b=2; c=3;
        System.debug('Befor swaping : ' + a);
        System.debug('Befor swaping : ' + b);
        System.debug('Befor swaping : ' + c);
         a = a+b+c;
         b = a - (b+c);
         c = a - (b+c);
         a = a - (b+c);
        System.debug('Befor swaping : ' + a);
        System.debug('Befor swaping : ' + b);
        System.debug('Befor swaping : ' + c);
    }
}