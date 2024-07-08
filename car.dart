void main(){
  Car myCar= Car('swift','corolla',2022);
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');
}



class Car{
  String brand;
  String model;
  int year;

Car(this.brand,this.model,this.year);

void displayInfo(){
  print("Brand: $brand,Model: $model,Year: $year");
}
}