//
//  MainViewModelTest.swift
//  DatabaseRealmTests
//
//  Created by haruto.makino on 2023/06/12.
//

import Cuckoo
import RealmSwift

class MainViewModelTest: XCTestCase{
    
    // Mockの作成
    private let realmDBModel = MockRealmDBModel()
    
    //終わったときに初期化する
    override func tearDown() {
        super.tearDown()
        reset(realmDBModel)
    }
    
    
    func loadDataTest(){
        
        let result = Results<Memo>
     
        //テストケースのチェック用のデータをかく
        stub(self.realmDBModel){ stub in
            when(stub.readAll()).thenReturn()
        }
        
        //ここからテストを書いていく。
    }
    
    
}

extension Memo:Matchable{
    public var matcher: ParameterMatcher<Memo>{
        return ParameterMatcher{ tested in
            return self.title == tested.title &&
            self.content == tested.content
        }
    }
}
