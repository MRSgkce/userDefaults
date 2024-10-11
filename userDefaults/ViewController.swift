//
//  ViewController.swift
//  userDefaults
//
//  Created by Mürşide Gökçe on 11.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let ud = UserDefaults.standard
        
        // kayıt
        ud.set("ahmet esat", forKey: "ad")
        
        //okuma
        
        let gelenAd = ud.string(forKey: "ad") ?? "kayıt yok"
        print("gelen ad : \(gelenAd)")
        
        //silme
        ud.removeObject(forKey:"ad")
        
    }


}

