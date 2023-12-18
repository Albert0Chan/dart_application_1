void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor  = "Verde e Amarelo";
  String sabor = "Doce e Citrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  // Tipos de Parâmetros:
  // Posicionais obrigatorio ---- Tipo variavel --> Obriga os argumentos estarem na ordem estabelecida previamente
  // Nomeados Opcionais ---- {Tipo? variavel} --> Argumento não obrigatorio, mas ao chamalho é necessário chamar a variável "cor: valor"
  // Parâmetros com "Padrão"---- {Tipo? variavel = valor} --> Se não houver argumentos é usador a cor padrão
  // Modificador "Required" ---- {required Tipo variavel}
  
  //mostrarMadura("Uva", 40, cor: "Roxo");

   int diasAteMadura = funcQuantosDiasMadura(diasDesdeColheita);
   bool estaMadura = funcEstaMadura(diasDesdeColheita);
   String mostrarMadura = funcMostrarMadura(nome: nome, dias: diasDesdeColheita, corMadura: "Laranja", corNaoMadura: "Verde");
  toString(nome: nome, peso: peso, diasDesdeColheita: diasDesdeColheita);

} 

funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int diasAteMadura = diasParaMadura - dias;
  return diasAteMadura;
}

funcMostrarMadura({required String nome, required int dias, required String corMadura, required String corNaoMadura}){
  if(dias >= 30){
    print("A $nome está $corMadura, então está madura");
  }else{
    print("A $nome está $corNaoMadura, então não está madura");
  }
}

bool funcEstaMadura(int dias){
  if(dias >= 40){
    return  true;
  }else{
    return false;
  }
}

String toString(
    {required String nome,
    required double peso,
    required diasDesdeColheita,
    int diasParaMadura = 30,
    bool? isMadura}) {
    if (isMadura == null) {
      isMadura = diasDesdeColheita >= diasParaMadura;
    }

  String maduraString = "";
  if (isMadura != null && !isMadura) {
    maduraString = "não ";
  }

  String result =
      "A $nome pesa $peso gramas! Ela foi colhida há  $diasDesdeColheita dias e precisa de  $diasParaMadura dias para amadurecer, logo, a $nome ${maduraString}está madura!";

  return result;
}