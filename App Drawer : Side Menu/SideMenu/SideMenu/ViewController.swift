//
//  ViewController.swift
//  SideMenu
//
//  Created by MacBook Pro on 23/5/21.
//

import UIKit

class ViewController: UIViewController  , UITableViewDelegate,UITableViewDataSource{
    
    var List = ["Line1","Line2","Line3","Line4","Line5","Line6","Line7","Line8","Line9","Line10","Line11","Line12","Line13","Line14","Line15","Line16","Line17","Line18","Line19","Line20"]

    
   

    @IBOutlet weak var menuView: UIView!
    
    @IBOutlet weak var tableViewO1: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableViewO1.delegate = self
        self.tableViewO1.dataSource = self
        
    }
    
    
    @IBAction func sideMenuButton(_ sender: Any) {
        if menuView.isHidden == true {
            menuView.isHidden = false
        }else{
            
            menuView.isHidden = true
        }
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return List.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sell = tableViewO1.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        sell.nameLabel.text = List[indexPath.row]
        
        return sell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        75
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableViewO1.cellForRow(at: indexPath) as! TableViewCell
//
//        cell.nameLabel.backgroundColor = UIColor.systemRed
//
//    }
    
  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(List[indexPath.row])
        
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        if let vc = storyboard.instantiateViewController(identifier: "ViewController1") as? ViewController1{

            self.navigationController?.pushViewController(vc, animated: true)
            }
            
        }
    }
   
    


