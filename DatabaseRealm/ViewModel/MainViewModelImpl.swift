//
//  MainViewModelImpl.swift
//  DatabaseRealm
//
//  Created by haruto.makino on 2023/06/16.
//

import Foundation
import RealmSwift

class MainViewModelImpl:MainViewModel{
    
    private let memoRepository : MemoRepository

    init(memoRepository:MemoRepository = MemoRepositoryImpl()) {
        self.memoRepository = memoRepository
    }
    
    
    func loadData() -> List<Memo>{
        return memoRepository.readAll()
    }
    
    func create(memo:Memo, sucsess:(_ text:String) -> Void,failed:(_ text:String) -> Void ){
        
        if(memo.title.isEmpty || memo.content.isEmpty){
            failed("空のフィールドがあります")
        }
        
        memoRepository.create(
            memo:memo,
            sucsess: {
                sucsess("DBに保存できました")
            },
            failed: {
                failed("DBの保存に失敗しました")
            }
        )
    }
}
