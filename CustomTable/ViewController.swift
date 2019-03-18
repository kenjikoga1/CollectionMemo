//
//  ViewController.swift
//  CustomTable
//
//  Created by 古賀賢司 on 2019/03/17.
//  Copyright © 2019 古賀賢司. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let models = Model.createModels()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "CutomTableViewCell")
        
        self.navigationItem.hidesBackButton = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CutomTableViewCell", for: indexPath)
        
        if let cell = cell as? TableViewCell{
            cell.setupCell(model: models[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.estimatedRowHeight = 100
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "editMemo", sender: indexPath.row)
    }
    
    //編集の際の遷移
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editMemo"{
            let nav = segue.destination as! UINavigationController
            let TV = nav.topViewController as! TitleViewController
            TV.memoDetail = "titleDetailを返す"
            TV.memoTitle = "titleTitle"
            
        }
    }
    


}

