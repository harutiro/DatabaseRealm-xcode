//
//  MainViewModel.swift
//  DatabaseRealm
//
//  Created by Owner on 2023/06/12.
//

import RealmSwift

class MainViewModel{
    
    
    private let realmDBModel : RealmDBModel

    init(realmDBModel:RealmDBModel = RealmDBModel()) {
        self.realmDBModel = realmDBModel
    }
    
    public var tableData : Results<Memo>? = nil
    
    func loadData(){
        tableData = realmDBModel.readAll()
    }
    
    func create(title:String , content:String , sucsess:() -> Void,failed:() -> Void ){
        realmDBModel.create(
            title: title,
            content: content,
            sucsess: {
                sucsess()
            },
            failed: {
                failed()
            }
        )
    }
}
