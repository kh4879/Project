//
//  StoryboardInstantiable.swift
//  Entry
//
//  Created by User8 on 2017/12/21.
//  Copyright © 2017年 User8. All rights reserved.
//

import UIKit

protocol StoryboardInstantiable {}
//プロトコルにデフォルトの実装をする
extension StoryboardInstantiable { //同じ名前で拡張する
    static func instantiate() -> Self {
        let storyBoard = UIStoryboard(name:
            ClassNameFromStoryboardInstantiable(type:Self.self),bundle:nil)
        return storyBoard.instantiateInitialViewController() as! Self
    }
}

private func ClassNameFromStoryboardInstantiable(type:
    StoryboardInstantiable.Type)-> String {
    let classString = NSStringFromClass(type as! AnyClass)
    return classString.components(separatedBy:".").last!
}


