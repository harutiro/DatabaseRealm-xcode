//
//  MainViewModel.swift
//  DatabaseRealm
//
//  Created by Owner on 2023/06/12.
//

import RealmSwift

protocol MainViewModel{
    
    func loadData() -> List<Memo>
    
    func create(memo:Memo, sucsess:(_ text:String) -> Void,failed:(_ text:String) -> Void )
}
