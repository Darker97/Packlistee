//
//  Login.swift
//  Packliste
//
//  Created by Christian Baltzer on 06.06.18.
//  Copyright © 2018 Christian Baltzer. All rights reserved.
//

import UIKit


class Login: UIViewController {
    @IBOutlet weak var Namensausgabe: UITextField!
    @IBOutlet weak var Textausgabe: UILabel!
    @IBOutlet weak var weiter: UIButton!
    var work = Core()
    
    
    @IBAction func LoginButton(_ sender: Any) {
        work.einlesen()
        weiter.isHidden = false
    }

    @IBAction func weiter(_ sender: Any) {
        work.speichern()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        work = Core(WithText: Namensausgabe, withLabel: Textausgabe)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
