//
//  MemoRepositoryImpl.swift
//  DatabaseRealm
//
//  Created by haruto.makino on 2023/06/16.
//

import Foundation
import RealmSwift


class MemoRepositoryImpl:MemoRepository{
    
    let realm = try! Realm()
    
    func read() -> Memo?{
        return realm.objects(Memo.self).first
    }
   
    func readAll() -> List<Memo> {
        let results = realm.objects(Memo.self)
        let memoList = List<Memo>()
        memoList.append(objectsIn: Array(results))
        return memoList
    }
    
    func create( memo:Memo , sucsess:() -> Void,failed:() -> Void){
        do{
            try realm.write{
                realm.add(memo)
                sucsess()
            }
        } catch {
            failed()
        }
    }
    
}
