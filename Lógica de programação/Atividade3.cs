/******************************************************************************

 Crie um programa, em C#, para ler N números inteiros positivos. Utilize um laço de repetição para ler um número por vez. O laço deve ser interrompido caso o número digitado pelo usuário seja 0. Ao final da execução o programa deve exibir o menor número digitado, desconsiderando o número 0.

*******************************************************************************/

using System;
class Semana4 {
  static void Main() {
      
    double nmr , menor; 
      
    Console.WriteLine("Digite um número");
    nmr = Convert.ToDouble(Console.ReadLine());
    menor = nmr;
    
    while(nmr != 0){
        if (menor > nmr){
            menor = nmr;
        }
        Console.WriteLine("Digite um número");
        nmr = Convert.ToDouble(Console.ReadLine());
    }
    Console.WriteLine("O menor número digitado foi " + menor);
  }
}
