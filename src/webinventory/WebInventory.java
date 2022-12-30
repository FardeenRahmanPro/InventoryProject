/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webinventory;

import Main.Lord;
import Main.login;

/**
 *
 * @author ccs
 */
public class WebInventory {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     
         Lord ho = new Lord();
        ho.setVisible(true);
        
        try {
            
            for(int i = 0; i<=100; i++)
            {
                Thread.sleep(30);
              
                Lord.lordbar.setValue(i);
                
                if(i == 100)
                {
                    login lg  =new login();
                    lg.setVisible(true);
                    ho.dispose();
                    
                
                }
                
                
            
            }
            
        } catch (Exception e) {
        }
        
    }
    
}
