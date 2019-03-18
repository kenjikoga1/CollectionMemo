//
//  ViewController.swift
//  CollectionMemo
//
//  Created by 古賀賢司 on 2019/03/16.
//  Copyright © 2019 古賀賢司. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let models = Model.createModels()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        //xibファイルを読み込む,nibNameはxibファイル
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
    }
    //Cellの数
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)
        //CollectionViewCellをキャストして
        if let cell = cell as? CollectionViewCell{
            cell.setupCell(model: models[indexPath.row])
        }
        
        return cell
    }
    

}

