import static java.lang.System.*;

public class Word implements Comparable<Word>
{
  private String word;

  public Word( String s )
  {
  }

  public int compareTo( Word other )
  {    
    if(this.word.length()>other.word.length()){
      return 1;
    }
    if(this.word.length()<other.word.length()){
     return -1; 
    }
    if (this.word.compareTo(other.word)>1){
      return 1;
    }
    if(this.word.compareTo(other.word)>1){
      return -1;
    }
    return 0;
  }

  public String toString()
  {
    return word;
  }
}
