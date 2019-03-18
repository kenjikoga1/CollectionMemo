//
//  Model.swift
//  CustomTable
//
//  Created by 古賀賢司 on 2019/03/17.
//  Copyright © 2019 古賀賢司. All rights reserved.
//

import Foundation

struct Model {
    let titleTitle: String?
    let titleDetail: String?
    let abstDetail: String?
    let concreteDetail: String?
    
    static func createModels() -> [Model] {
        return [
            Model(titleTitle: "AAAAAAAAAA", titleDetail: "aaaaaaaaaa", abstDetail: "abstDetailabstDetail", concreteDetail: "concreteDetailconcreteDetail" ),
            Model(titleTitle: "BBBBBBBBBB", titleDetail: "aaaaaaaaaa", abstDetail: "abstDetailabstDetail", concreteDetail: "concreteDetailconcreteDetail" ),
            Model(titleTitle: "CCCCCCCCCC", titleDetail: "aaaaaaaaaa", abstDetail: "abstDetailabstDetail", concreteDetail: "concreteDetailconcreteDetail" ),
            Model(titleTitle: "DDDDDDDDDD", titleDetail: "aaaaaaaaaa", abstDetail: "abstDetailabstDetail", concreteDetail: "concreteDetailconcreteDetail" ),
        ]
    }
}
