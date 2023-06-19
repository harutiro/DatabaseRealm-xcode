//
//  MainViewModelTest.swift
//  DatabaseRealmTests
//
//  Created by haruto.makino on 2023/06/12.
//

import Cuckoo
import RealmSwift
import XCTest

@testable import DatabaseRealm

class MainViewModelTest: XCTestCase{
    
    // Mockの作成
    private let memoRepository = MockMemoRepository()
    
    //終わったときに初期化する
    override func tearDown() {
        super.tearDown()
        reset(memoRepository)
    }
    
    
    func testReadAll(){
        // テストデータの作成
        let memo1 = Memo()
        memo1.title = "Test Memo 1"
        memo1.content = "Test Content 1"
        
        let memo2 = Memo()
        memo2.title = "Test Memo 2"
        memo2.content = "Test Content 2"
        
        let result = List<Memo>()
        result.append(memo1)
        result.append(memo2)
        
        // 返り値をあらかじめ定めておく
        stub(self.memoRepository) { stub in
            when(stub.readAll()).thenReturn(result)
        }
        
        // 返り値を決めておいたmemoRepositoryを埋め込む
        let mainViewModel = MainViewModelImpl(memoRepository: self.memoRepository)
        
        // データを取得する
        let testData = mainViewModel.loadData()
        
        // データの検証を行う
        testData.enumerated().forEach({ index , memoItem in
            
            XCTAssertEqual(memoItem, result[index])
            
        })
    }
    
    
    func testCreate(){
        
        // テストデータの作成
        let memo1 = Memo()
        memo1.title = "Test Memo 1"
        memo1.content = "Test Content 1"
        
        // 正しい文字列が入っていることを確認した後を実装
        let successFunc: (String) -> Void = { message in
            // Success closure implementation
            print("Success: \(message)")
        }

        // 間違った文字列が入っている時に呼ばれる
        let failedFunc: (String) -> Void = { error in
            // Failed closure implementation
            XCTFail("失敗した")
        }
        
        // memoRepositoryをStubするためのデータ
        let successRepoFunc = VoidClosureWrapper {
            // 成功時のクロージャの実装
        }

        // memoRepositoryをStubするためのデータ
        let failedRepoFunc = VoidClosureWrapper {
            // 失敗時のクロージャの実装
        }
        
        // 返り値をあらかじめ定めておく
        stub(self.memoRepository) { stub in
            when(stub.create(memo: memo1, sucsess:successRepoFunc , failed: failedRepoFunc)).then{_ in }
        }
         
        // Captorの取得
        let memoArgumentCaptor = ArgumentCaptor<Memo>()
        let successArgumentCaptor = ArgumentCaptor< () -> Void >()
        let failedArgumentCaptor = ArgumentCaptor< () -> Void >()
        
        // 返り値を決めておいたmemoRepositoryを埋め込む
        let mainViewModel = MainViewModelImpl(memoRepository: self.memoRepository)
        
        mainViewModel.create(memo: memo1, sucsess: successFunc, failed: failedFunc)

        verify(self.memoRepository, times(1)).create(
            memo: memoArgumentCaptor.capture(),
            sucsess: successArgumentCaptor.capture(),
            failed: failedArgumentCaptor.capture()
        )
        
        
        
        XCTAssertEqual(memo1, memoArgumentCaptor.value)

        
    }
    
    func testCreateNonTitle(){
        
        // テストデータの作成
        let memo1 = Memo()
        memo1.title = ""
        memo1.content = "Test Content 1"
        
        // 正しい文字列が入っていることを確認した後を実装
        let successFunc: (String) -> Void = { message in
            // Success closure implementation
            print("Success: \(message)")
            XCTFail("値がないのに成功している")
            
        }

        // 間違った文字列が入っている時に呼ばれる
        let failedFunc: (String) -> Void = { error in
            // Failed closure implementation
            print("Failed: \(error)")
        }
        
        // memoRepositoryをStubするためのデータ
        let successRepoFunc = VoidClosureWrapper {
            // 成功時のクロージャの実装
        }

        // memoRepositoryをStubするためのデータ
        let failedRepoFunc = VoidClosureWrapper {
            // 失敗時のクロージャの実装
        }
        
        // 返り値をあらかじめ定めておく
        stub(self.memoRepository) { stub in
            when(stub.create(memo: memo1, sucsess:successRepoFunc , failed: failedRepoFunc)).then{_ in }
        }
         
        // Captorの取得
        let memoArgumentCaptor = ArgumentCaptor<Memo>()
        let successArgumentCaptor = ArgumentCaptor< () -> Void >()
        let failedArgumentCaptor = ArgumentCaptor< () -> Void >()
        
        // 返り値を決めておいたmemoRepositoryを埋め込む
        let mainViewModel = MainViewModelImpl(memoRepository: self.memoRepository)
        
        mainViewModel.create(memo: memo1, sucsess: successFunc, failed: failedFunc)

        verify(self.memoRepository, times(1)).create(
            memo: memoArgumentCaptor.capture(),
            sucsess: successArgumentCaptor.capture(),
            failed: failedArgumentCaptor.capture()
        )
        
        
        
        XCTAssertEqual(memo1, memoArgumentCaptor.value)

        
    }
    
    func testCreateNonContent(){
        
        // テストデータの作成
        let memo1 = Memo()
        memo1.title = "Test Memo 1"
        memo1.content = ""
        
        // 正しい文字列が入っていることを確認した後を実装
        let successFunc: (String) -> Void = { message in
            // Success closure implementation
            print("Success: \(message)")
            XCTFail("値がないのに成功している")
            
        }

        // 間違った文字列が入っている時に呼ばれる
        let failedFunc: (String) -> Void = { error in
            // Failed closure implementation
            print("Failed: \(error)")
        }
        
        // memoRepositoryをStubするためのデータ
        let successRepoFunc = VoidClosureWrapper {
            // 成功時のクロージャの実装
        }

        // memoRepositoryをStubするためのデータ
        let failedRepoFunc = VoidClosureWrapper {
            // 失敗時のクロージャの実装
        }
        
        // 返り値をあらかじめ定めておく
        stub(self.memoRepository) { stub in
            when(stub.create(memo: memo1, sucsess:successRepoFunc , failed: failedRepoFunc)).then{_ in }
        }
         
        // Captorの取得
        let memoArgumentCaptor = ArgumentCaptor<Memo>()
        let successArgumentCaptor = ArgumentCaptor< () -> Void >()
        let failedArgumentCaptor = ArgumentCaptor< () -> Void >()
        
        // 返り値を決めておいたmemoRepositoryを埋め込む
        let mainViewModel = MainViewModelImpl(memoRepository: self.memoRepository)
        
        mainViewModel.create(memo: memo1, sucsess: successFunc, failed: failedFunc)

        verify(self.memoRepository, times(1)).create(
            memo: memoArgumentCaptor.capture(),
            sucsess: successArgumentCaptor.capture(),
            failed: failedArgumentCaptor.capture()
        )
        
        XCTAssertEqual(memo1, memoArgumentCaptor.value)

        
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
                 
 class VoidClosureWrapper {
     let closure: () -> Void

     init(closure: @escaping () -> Void) {
         self.closure = closure
     }
 }

 extension VoidClosureWrapper: Matchable {
     public var matcher: ParameterMatcher<() -> Void> {
         return ParameterMatcher { tested in
             // Add your matching logic here if needed
             return true
         }
     }
 }
 

