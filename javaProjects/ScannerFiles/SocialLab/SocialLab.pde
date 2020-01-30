import java.util.Scanner;

void setup(){
 try{
   Scanner scan = new Scanner(new File("/Users/aaronraschke/Desktop/AaronLabs/ScannerFiles/SocialLab/ss.dat"));
   int size = scan.nextInt();
   scan.nextLine();
   for(int i = 0; i<size; i++){
     String soc = scan.nextLine();
//     println(soc);
     Social s = new Social(soc);
     println(s);
   }
 }
 catch(Exception e){
   println(e);
 }
}



public class Social
{
   private String socialNum;

  public Social()
  {
  }

  public Social(String soc)
  {
    socialNum = soc;
  }

  public void setSocial(String soc)
  {
    socialNum = soc;
  }

  public int getSum()
  {
    int total = 0;
    Scanner scan = new Scanner(socialNum);
    scan.useDelimiter("-");
    while(scan.hasNext()){
      total+=scan.nextInt();
    }
    return total;
  }

  public String toString()
  {
    return "social number: " + socialNum + "\nSum: " + getSum();
  }
}
