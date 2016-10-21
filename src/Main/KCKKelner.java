/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import GUI.UI;

/**
 *
 * @author Mikołaj Balcerek
 */
public class KCKKelner {

    public static void RozpocznijOdpowiedz(String tekst) {
        //Zalążek funkcji analizowania tekstu która uruchamia się po wysłaniu tekstu przez guzik
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {

        UI Okna = new UI();
        Okna.setVisible(true);

        //Miejsce na inne rzeczy wymagające main
        Okna.PrzekazOdpowiedz("Odpowiedz wpisując tekst i naciskając przycisk"); //przykład jak przesłać odpowiedź do historii (okna)

    }
};
