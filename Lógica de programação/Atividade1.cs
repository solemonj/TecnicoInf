/******************************************************************************

Construir um algoritmo, em C#, para calcular e imprimir o juros mensal de um dado valor. O algoritmo deve solicitar que o usuário digite o montante e a taxa de juros.

*******************************************************************************/

using System;
class JuroMensal {
    
  static void Main() {
      
    Console.WriteLine("Digite o valor do montante em reais");
    string montante_texto = Console.ReadLine();
    
    Console.WriteLine("A porcentagem que deseja receber de juros por mês");
    string porcentagem_texto = Console.ReadLine();
    
    double montante = Convert.ToDouble(montante_texto);
    double porcentagem = Convert.ToDouble(porcentagem_texto);
    
    double valorjuros = (montante * porcentagem) / 100;
    
    Console.WriteLine("O valor do juro mensal será de " + valorjuros + " reais");
    
  }
}
