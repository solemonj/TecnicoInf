
package codigos;

import java.util.Scanner;

public class CalculadoraIMC2 {
   
    public static void main (String[] args) {
        
        Scanner ledor = new Scanner(System.in);
        
        for (int i = 1; i < 6; i++){
            
            System.out.println("Calculando o imc da "+ i + "ª pessoa");
            
            System.out.println("Digite seu nome");
            String nome = ledor.nextLine();

            System.out.println("Digite seu peso");
            float peso = ledor.nextFloat();

            System.out.println("Digite sua altura");
            float altura = ledor.nextFloat();
            ledor.nextLine();
            
            float imc = peso / (altura*altura);

            System.out.println(nome + "seu IMC é " + imc);

            if ((imc >= 16) && (imc <= 16.9)){
                System.out.println("Está muito abaixo do peso");
            }else if (imc <= 18.4){
                System.out.println("Está abaixo do peso");
            }else if (imc <=24.9){
                System.out.println("Está no peso normal");
            }else {
                System.out.println("Está acima do peso");
            }
        }
        
    
    }
    
    
    
}
