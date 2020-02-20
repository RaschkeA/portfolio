import java.util.Collections;
public class MovieList{
      int count;
  public MovieList(){
 list = new ArrayList(); 
 this.count = list.size();
  }
  public int getCount(){
   return this.count; 
  }
  public int getSum(){
   int sum = 0;
   for (int i = 0; i<list.size(); i++){
    sum+=list.get(i).getRating(); 
   }
   return sum/this.getCount();
  }
  public String toString(){
    return "";
  }
}
