//
//  AbsentViewController.swift
//  CustomTable
//
//  Created by 古賀賢司 on 2019/03/17.
//  Copyright © 2019 古賀賢司. All rights reserved.
//

import UIKit

class AbsentViewController: UIViewController {

    var absentMemo:String?
    var concreteMemo:String?
    
    @IBOutlet weak var absentTextView: UITextView!
    @IBOutlet weak var concreteTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let absentMemo = self.absentMemo {
            absentTextView.text = absentMemo
        }
        
        if let concreteMemo = self.concreteMemo{
            concreteTextView.text = concreteMemo
        }

        self.navigationItem.title = "Title"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
