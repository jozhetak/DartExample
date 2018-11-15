void main(){
  print("Hello world");
  var edad = 28;
  
  String nombre = "Jose Diestra";
  
  final double pi = 3.14;
  print(nombre);
  print(pi);
  
  //IF-ELSE
  bool esFlutter = true;
  
  if (esFlutter == true){
    print("si es genial");
  }
  
  String resultado = esFlutter ? "Si es genial" : "No es Genial";
  
  print(resultado);
  
  //Switch
  String action = "Chile";
  switch(action){
    case "Canada":
      print("Canada");
      break;
    case "Francia":
      print("Francia");
      break;
    case "Peru":
    	print("Peru");
    	break;
    default:
      //throw("No existe");//Excepcion de Dart
      break;
      
  }
  
  //For-Loop
  
  for(var i = 0; i < 5; i++ ){
    print(i);
  }
  
  //Do While
  
  int maxIteracciones=10;
  
  int index = 0;
  
  do {
    print("Imprimiendo la iteraccion $index");
    
    index++;
  }
  while(index <= maxIteracciones);
 	
  //Function
  saludos("Jose");
  
  //Parametros opcionales
  
  saludos1("Jose", null, 32);
 
  saludos2(nombre: "Jose");
  saludos2();
  saludos2(apellido: "Diestra");
  
  //Function Recursive
  print(factorial(7).toString());
  
  //POO+constructor
  
  var auto = new Vehiculo("Ford", "Focus");
  
  //auto.color = "Rojo";
  //auto.marca = "Ford";
  
  auto.Arrancar();
  
  auto.CambiarValor(auto);
  
  auto.Arrancar();
  
  auto.Acelerar(6);
  
  print("------------ Herencia -------------");
  //Herencia
  
  var camion = new Camion("Volvo","Truck");
  
  camion.color = "Blanco";
  camion.modelo = "Truck";
  camion.marca = "Volvo";
  
  camion.MostrarVehiculo();
  
  var auto_ = new Auto("Ford","Focus");
  
  auto_.color = "Rojo";
  auto_.modelo = "Focus";
  auto_.marca = "Ford";
  
  auto_.MostrarVehiculo();
  
  //Sobreescribir Métodos:
  
  camion.QueVehiculoSoy();
  auto_.QueVehiculoSoy();
  
  //Clases Abstractas
  
  //var camion_ = new Camion_();
  var auto__ = new Auto_();
  var moto_ = new Moto_();
  
  //camion_.miCombustible();
  auto__.miCombustible();
  moto_.miCombustible();
  
  //Interfaces
  
  EsTransporte camion_ = new Camion_();
 	camion_.QueTransporteSoy();
  
  //Collection
  
  var list = [1,6,7,32,45];
  
  print(list.length);
  
  for(int i = 0; i < list.length; i++){
    print("El valor del indice $i es " + list[i].toString());
  }
  
  var onlyString = new List<String>();
  
  onlyString.add("Flutter");
  onlyString.add("Dart");
  onlyString.add("es Genial");
  
  for(int i = 0; i < onlyString.length; i++){
    print(onlyString[i].toString());
  }
  
  var listPersonas =  new List<Persona>();
  
  var persona1 = new Persona();
  persona1.nombre = "Rodrigo";
  
  var persona2 = new Persona();
  persona2.nombre = "Juan";
  
  listPersonas.add(persona1);
  listPersonas.add(persona2);
  
  for(var x in listPersonas){
    print(x.nombre);
  }
  
  //Maps
  
  var groups = {
    "Perro": "Animal",
    "Bus": "Vehiculo"
  };
  
  groups.forEach((key, value) => print(key) );
  
  print(groups.keys);
  print(groups.values);
  
  
  
  
}



void saludos(String nombre) => print("Bienvenido $nombre");

void saludos1(String nombre, [String apellido, num edad]){
  if(apellido != null && edad != null){
    print("Bienvenido $nombre $apellido, edad $edad");
  } else {
    print("Bienvenido $nombre");
  }
}

void saludos2({String nombre= "Anonymous", String apellido = ""}){
  var saludos = new StringBuffer("Bienvenido a Dart");
  
  if(nombre != null){
    saludos.write(" $nombre");
  }
  if(apellido != null){
    saludos.write(" $apellido");
  }
  
  print(saludos.toString());
}

//Function Resursive
num factorial(num n ){
  if(n == 1){
    return 1;
    } else {
    return n * factorial(n - 1);
  }
}

//POO + Constructor

class Vehiculo{
  String color;
  String modelo;
  String marca;
  
  Vehiculo(this.marca, this.modelo);
  
  void Arrancar(){
    print("Hola soy el auto $marca y estoy arrancando");
  }
  
  void CambiarValor(Vehiculo vehiculo){
    vehiculo.marca = "Mazda";
  }
  
  void Acelerar(int velocidad){
    print("Mi velocidad actual es $velocidad km/h");
  }
}


//Herencia

class Vehiculo_ {
  String color;
  String modelo;
  String marca;
  
  //Constructor
  Vehiculo_(this.modelo, this.marca);
  
  void MostrarVehiculo(){
    print("Marca: $marca, Modelo $modelo, color: $color");
  }
  
  void QueVehiculoSoy(){
    print("No estoy implementado aún");
  }
  
}

class Camion extends Vehiculo_ {
  Camion(String modelo, String marca) : super(modelo, marca);
  //Sobreescribir Método
  @override
  void QueVehiculoSoy(){
    print("Soy un Camion");
  }
}

class Auto extends Vehiculo_ {
  Auto(String modelo, String marca) : super(modelo, marca);
  //Sobreescribir Método
  @override
  void QueVehiculoSoy(){
    print("Soy un Auto");
  }
}


abstract class Vehiculo__{
  String color;
  String modelo;
  String marca;
  
  void miCombustible();
}

abstract class EsTransporte{
  void QueTransporteSoy();
}

class Camion_ extends Vehiculo__ implements EsTransporte{
  @override
  void miCombustible(){
    print("Diesel");
  }
  @override
  void QueTransporteSoy(){
    print("Soy un Camion");
  }
  
}

class Auto_ extends Vehiculo__{
  @override
  void miCombustible(){
    print("Gasolina");
  }
}

class Moto_ extends Vehiculo__{
  @override
  void miCombustible(){
    print("Gasolina");
  }
}

class Persona{
  String nombre;
}

//Collecion



