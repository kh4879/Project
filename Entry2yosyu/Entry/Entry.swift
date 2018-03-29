//
//  Entry.swift
//  Entry
//
//  Created by User8 on 2017/12/21.
//  Copyright © 2017年 User8. All rights reserved.
//

import Foundation

class Entry : NSObject,NSCoding {
    var userName : String
    var email : String?
    var sex : Int
    var sweetKind:Int
    init(
        userName: String,
        email: String?,
        sex: Int,
        sweetKind: Int
    )
    {
        self.userName = userName
        self.email = email
        self.sex = sex
        self.sweetKind = sweetKind
    }
    func encode(with aCoder:NSCoder){
        aCoder.encode(userName,forKey:"userName")
        aCoder.encode(email,forKey:"email")
        aCoder.encode(sex,forKey:"sex")
        aCoder.encode(sweetKind,forKey:"sweetKind")
    }
    required init?(coder aDecoder:NSCoder){
        self.userName = aDecoder.decodeObject(forKey:"userName") as! String
        self.email = aDecoder.decodeObject(forKey:"email") as? String
        self.sex = aDecoder.decodeInteger(forKey:"sex")
        self.sweetKind = aDecoder.decodeInteger(forKey:"sweetKind")
    }
}

