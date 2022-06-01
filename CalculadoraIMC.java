
package codigos;

import java.util.Scanner;

public class CalculadoraIMC {
   
    public static void main (String[] args) {
        
        Scanner ledor = new Scanner(System.in);
        
        int resp = 1;
        
        while(resp == 1){
            
            System.out.println("Digite seu nome");
            String nome = ledor.nextLine();

            System.out.println("Digite seu peso");
            float peso = ledor.nextFloat();

            System.out.println("Digite sua altura");
            float altura = ledor.nextFloat();
            
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
            System.out.println("Deseja saber o imc de outra pessoa?");
            System.out.println("Digite 1 para sim");
            System.out.println("Digite 2 para não");
            resp = ledor.nextInt();
            ledor.nextLine();
        }
        
    
    }
    
    
    
}
