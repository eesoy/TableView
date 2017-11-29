//
//  LanguageViewController.swift
//  swift_TableView
//
//  Created by soyoung on 2017. 11. 27..
//  Copyright © 2017년 Administrator. All rights reserved.
//

import UIKit

class LanguageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var btnBack: UIBarButtonItem!
    let languageElements = ["영어", "한국어"]
    let keyboardElements = ["QWERTY", "QWERTZ"]
    
    @IBOutlet weak var languageTableView: UITableView!
    override func viewDidLoad() {
        
        languageTableView.delegate = self
        languageTableView.dataSource = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    public func tableView(_ languageTableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return languageElements.count
    }
    
    func tableView(_ languageTableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    public func tableView(_ languageTableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = languageTableView.dequeueReusableCell(withIdentifier: "languageCell") as! LanguageTableViewCell
        
        //        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        cell.lblLanguage.text = languageElements[indexPath.row]
        //cell.settingImage.image = UIImage(named: imageElements[indexPath.row])
        cell.lblKeyboardType.text = keyboardElements[indexPath.row]
        //        cell.settingImage.layer.cornerRadius = cell.settingImage.frame.height / 2
        
        return cell
    }
    

}
