//
//  RealmDBModel.swift
//  DatabaseRealm
//
//  Created by Owner on 2023/06/12.
//

import RealmSwift

class RealmDBModel{
    
    let realm = try! Realm()
    
    func read() -> Memo?{
        return realm.objects(Memo.self).first
    }
   
    func readAll() -> Results<Memo>{
        return realm.objects(Memo.self)
    }
    
    func create( title:String , content:String , sucsess:() -> Void,failed:() -> Void){
        let newMemo = Memo()
        
        newMemo.title = title
        newMemo.content = content
        
        do{
            try realm.write{
                realm.add(newMemo)
                sucsess()
            }
        } catch {
            failed()
        }
    }
    
}
