class Part implements Comparable<Part>{
  private String make, model, theRest = "";
  private int year;

  public Part(String line) {
    String[] list = line.split(" ");
    this.year = parseInt(list[list.length-1]);
    this.model = list[list.length-2];
    this.make = list[list.length-3];
    for(int i = 0; i < list.length-3; i++){
     this.theRest+= list[i] + " ";
    }
    println("Make: " + make + "\nModel: " + model + "\nYear: " + year + "\ntheRest: " + theRest);
  }

  //have to have compareTo if implements Comparable
  public int compareTo( Part other ){
    if(this.make.compareTo(other.make)>1){
      return 1;
    }
    if(this.make.compareTo(other.make)<1){
     return -1; 
    }
    if(this.model.compareTo(other.model)>1){
     return 1; 
    }
    if(this.model.compareTo(other.model)<1){
     return -1; 
    }
    if(this.year>other.year){
     return 1; 
    }
    if(this.year<other.year){
     return -1; 
    }
    
    
    return 0;
  }

  public String toString(){
    return "";
  }
}
