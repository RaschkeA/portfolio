class Movie implements Comparable<Movie>{
  private String review;
  private int rating;
  public Movie(int rat, String rev){
   this.rating = rat;
   this.review = rev;
  }
  public int compareTo(Movie other){
   if(this.getRating()>other.getRating()){
     return 1;
   }
   if(this.getRating()<other.getRating()){
    return -1; 
   }
   return 0;
  }
  public int getRating(){
   return this.rating; 
  }
  public String getReview(){
   return this.review; 
  }
  public String toString(){
   return "Rating: " + this.rating + "\nReview: " + this.review;
  }
}
