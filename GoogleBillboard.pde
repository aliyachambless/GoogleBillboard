public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public final static String eLong = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059921817413596629043572900334295260595630738132328627943490763233829880753195251019011573834187930702154089149934884167509244761460668082264800168477411853742345442437107539077744992069551702761838606261331384583000752044933826560297606737113200709328709127443747047230696977209310141692836819025515108657463772111252389784425056953696770785449969967946864454905987931636889230098793127736178215424999229576351482208269895193668033182528869398496465105820939239829488793320362509443117";
boolean found = false;
public void setup()  
{            
     noLoop();  
     String digits = e.substring(2,12);
     Double dNum = Double.parseDouble(digits);
     //System.out.println(e.length());
}  
public void draw()  
{   
	for(int i = 2; i < e.length()-10; i++){
		String digits = e.substring(i,i+10);
        Double dNum = Double.parseDouble(digits);
       //System.out.println(i);
        if(isPrime(dNum) == true)
        	System.out.println("First prime number in e: " + dNum);
        	//i = e.length();
	}
	for(int i = 2; i < eLong.length()-10; i++){
		String digits = eLong.substring(i,i+10);
		if(add49(digits))
			System.out.println("10 digit numbers adding to 49: " + digits);
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
public boolean add49(String num)
{
	int total = 0;
	for(int i = 0; i < 10; i++){
		total += parseInt(num.substring(i, i+1));
	}
	if(total == 49)
		return true;
	return false;
}