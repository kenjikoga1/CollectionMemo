//
//  TitleViewController.swift
//  CustomTable
//
//  Created by 古賀賢司 on 2019/03/17.
//  Copyright © 2019 古賀賢司. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {
    
    var memoTitle:String?
    var memoDetail:String?
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let memoTitle = self.memoTitle {
            self.navigationItem.title = memoTitle
        }
        
        if let memoDetail = self.memoDetail{
            textView.text = memoDetail
        }

        
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
