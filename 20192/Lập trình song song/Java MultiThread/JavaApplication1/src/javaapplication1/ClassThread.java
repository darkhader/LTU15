/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;

/**
 *
 * @author DungNT
 */
public class ClassThread extends Thread {
    
    int i;
    
    public void run()
    {
        i = 0;
        System.out.println(" New thread begins ");
        while (i<100)
        {
            System.out.println(i);
            i++;
        }
    }
}
