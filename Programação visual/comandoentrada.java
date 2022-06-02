/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codigos;

import java.util.Scanner;

/**
 *
 * @author Usuário
 */
public class comandoentrada {
    public static void main (String[] args) {
        
        Scanner ledor = new Scanner (System.in);
        System.out.println("Digite um número");
        Integer n1 = ledor.nextInt(); //leia
        
        System.out.println("O número digitado foi " + n1);
    
    }
    
}
