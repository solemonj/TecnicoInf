/******************************************************************************

Faça uma função, em C#, para calcular o volume de uma esfera. A função deve receber como parâmetro um número real que representa o raio da esfera. Utilize a seguinte fórmula para calcular volume. 

v = (4 * PI * R3) /  3

Após criar a função crie o restante do programa para utilizar a função criada.

*******************************************************************************/

using System;


class HelloWorld {
  static void Main() {
    Console.WriteLine("Digite o valor do raio da esfera");
    string raio_texto = Console.ReadLine();
    double raio = Convert.ToDouble(raio_texto);
    double volume = calculo(raio);
    Console.WriteLine("O volume da esfera é " + volume);
  }
  
  static double calculo(double raiof){
    return (4*(raiof*raiof*raiof)*3.1415)/3;
      
    }
}