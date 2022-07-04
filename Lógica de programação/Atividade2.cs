/******************************************************************************

Faça um programa, em linguagem de programação C#, para ler dois números inteiros, faça a divisão do primeiro pelo segundo (somente se o segundo for diferente de 0).

*******************************************************************************/

using System;
class DivisaoCondicional {
  static void Main() {
      
    
    
    Console.WriteLine("Digite o primeiro número");
    string num1txt = Console.ReadLine();
    
    Console.WriteLine("Digite o segundo número");
    string num2txt = Console.ReadLine();
    
    double num1 = Convert.ToDouble(num1txt);
    double num2 = Convert.ToDouble(num2txt);
    
    if (num2>0){
        double resultado = (num1 / num2);
        Console.WriteLine("A divisão do primeiro número pelo segundo é " + resultado);  
    }else{
        Console.WriteLine("Por favor, da próxima vez digite o segundo numero diferente de 0");
    }

  }
}

