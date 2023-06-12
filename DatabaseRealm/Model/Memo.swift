//
//  Memo.swift
//  DatabaseRealm
//
//  Created by Owner on 2021/12/27.
//

import Foundation
import RealmSwift

class Memo:Object{
    @objc dynamic var title:String = ""
    @objc dynamic var content:String = ""
}
