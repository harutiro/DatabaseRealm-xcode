//
//  RealmDBModel.swift
//  DatabaseRealm
//
//  Created by Owner on 2023/06/12.
//

import RealmSwift

protocol MemoRepository{
    
    // 最後のデータを取得する
    func read() -> Memo?
   
    // 全データの取得
    func readAll() -> List<Memo>
    
    // データの作成
    func create( memo:Memo, sucsess:() -> Void,failed:() -> Void)
   
}
