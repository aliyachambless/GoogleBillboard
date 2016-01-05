public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
boolean found = false;
public void setup()  
{            
     noLoop();  
     String digits = e.substring(0,10);
     Double dNum = Double.parseDouble(digits);
     System.out.println(dNum);
}  
public void draw()  
{   
	for(int i = 0; i < e.length()-10; i++){
		String digits = e.substring(i,i+10);
        Double dNum = Double.parseDouble(digits);
        if(isPrime(digits))
        	System.out.println(digits);
        	i = e.length();
	}
}  
public boolean isPrime(double dNum)  
{   
    if(dNum <= 1)
    	return false;
    if(dNum == 2)
    	return true;
    for(int i = 2; i <= Math.sqrt(dNum); i++){
    	if(dNum%i == 0)
    		return false;
    }
    return true;  
} 