//
//  Core.swift
//  Packliste
//
//  Created by Christian Baltzer on 06.06.18.
//  Copyright © 2018 Christian Baltzer. All rights reserved.
//

import Foundation
import UIKit

//Speicher (Werden auf Login gefüllt)
public var NameSpeicher = ""
public var wasSpeicher = 0
public var wievielSpeicher = 0
public var wieSpeicher = 0

//Speicherboxen (Arbeits)
public var NamensSpeicher = [""]
public var wieCluster = [0]
public var wievielCluster = [0]
public var wasCluster = [0]


class Core {
    
    //Variables
    var Namensausgabe = UILabel()
    var Textausgabe = UILabel()
    var wasSlider = UISegmentedControl()
    var wievielSlider = UISegmentedControl()
    var wieSlider = UISegmentedControl()
    
    var Namenwählen = UITableView()
    var NamenEingabe = UITextField()
    var NamensListe = UILabel()
    
    
    var Name = ""       { willSet{Namensausgabe.text = "\(newValue)"}}
    var Ausgabe = ""    { willSet{Textausgabe.text = "\(newValue)"}}
    
    
//______________________________________________________________
    //Initialisieren
    init (){
    }
    
    //Init Login
    init (WithText TextEingabe: UITextField, withLabel NamensAusgabe: UILabel){
        NamenEingabe = TextEingabe
        NamensListe = NamensAusgabe
        NamensListe.text = NamenListezuString()
        
        laden()
    }
    
    //Init Homedisplay
    init(withLabel label1: UILabel, withSegment wasControll: UISegmentedControl, withSegment wievielControll: UISegmentedControl, withSegment WieControll: UISegmentedControl){
        
        Namensausgabe = label1
        wasSlider = wasControll
        wievielSlider = wievielControll
        wieSlider = WieControll
        
        Namensausgabe.text = NameSpeicher
        wasSlider.contentOffsetForSegment(at: wasSpeicher)
        wievielSlider.contentOffsetForSegment(at: wievielSpeicher)
        wieSlider.contentOffsetForSegment(at: wieSpeicher)
    }
    
    //Init Ausgabe
    init(withLabel Label: UILabel){
        Textausgabe = Label
        Textausgabe.text = Textcreation()
    }

    
//________________________________________________________________
    //Methods
    
    //NamenEinlesen
    func einlesen(){
        Name = NamenEingabe.text!
        let i = suche(withString: Name)
        if (i != 0){
            NameSpeicher = Name
            wieSpeicher = wieCluster[i]
            wasSpeicher = wasCluster[i]
            wievielSpeicher = wievielCluster[i]
            
            return
        }
        else {
            NamensSpeicher.append(Name)
            wieCluster.append(0)
            wasCluster.append(0)
            wievielCluster.append (0)
            
            NameSpeicher = Name
            wieSpeicher = 0
            wasSpeicher = 0
            wievielSpeicher = 0
            
            NamensListe.text = NamenListezuString()
            return
        }
    }
    
    //Namen auf Login Screen ausgeben
    func NamenListezuString() -> String{
        var erg = ""
        
        for i in 0...NamensSpeicher.count-1{
            erg = erg + NamensSpeicher[i] + "\n"
        }
        return erg
    }

    //Prüfen ob Name schon vorhanden
    func suche (withString b: String) -> Int{
        if (NamensSpeicher.isEmpty){
            return 0
        }
        for i in 0...NamensSpeicher.count-1{
            if (NamensSpeicher[i] == b) {
                return i
            }
        }
        return 0
    }
    
    //SliderWerte Updaten
    func SliderUpdate(){
        wasSpeicher = wasSlider.selectedSegmentIndex
        wievielSpeicher = wievielSlider.selectedSegmentIndex
        wieSpeicher = wieSlider.selectedSegmentIndex
        print(wasSpeicher)
        print(wievielSpeicher)
        print(wieSpeicher)
    }
    
    //Textladen
    func Textcreation() -> String{
        print(wasSpeicher)
        print(wievielSpeicher)
        print(wieSpeicher)
        
        var erg:String = "Handy, Kabeltasche \n"
        switch wasSpeicher{
        case 0:
            erg = erg + "Laptop, Festplatte \n"
        case 1:
            erg = erg + "Laptop, Festplatte, Lernmappen, Vokabeln\n"
        case 2:
            erg = erg + "Sportsachen\n"
        case 3:
            erg = erg + "Ölzeug, Handschuhe, Messer\n"
        default:
            break
        }
        switch wievielSpeicher{
        case 0:
            erg = erg + "ein oder zweimal Ersatzwäsche\n"
        case 1:
            erg = erg + "Klamotten für jeden Tag + viele Anlässe \n"
        case 2:
            erg = erg + "Klamotten für jeden Tag und ruhig auch noch Sportsachen\n"
        default:
            break
        }
        
        erg += "\nAm besten benutzt du einen "
        switch wieSpeicher{
        case 0:
            erg = erg + " kleinen Rucksack"
        case 1:
            erg = erg + " Rucksack und eine Tasche"
        case 2:
            erg = erg + " Rucksack und eine Reisetasche"
        default:
            break
        }
        return erg
    }
    
    
//_____________________________________________________________________
    //Gespeicherte Cluster laden TODO
    func laden(){

    }
    
    //Gespeicherte Cluster speichern TODO
    func speichern(){

        
    }
}
