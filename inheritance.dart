class Animal{
  void makeSound(){
    print("some generic animal sound");
  
  }
}
class Dog extends Animal{
  @override
  void makeSound(){
    print("bark");
  }
  }
  void main(){
    Animal genericAnimal=Animal();
    Dog dog=Dog();

 genericAnimal.makeSound();

dog.makeSound();
  }