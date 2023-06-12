// MARK: - Mocks generated from file: DatabaseRealm/ViewModel/MainViewModel.swift at 2023-06-12 12:56:46 +0000

//
//  MainViewModel.swift
//  DatabaseRealm
//
//  Created by Owner on 2023/06/12.
//

import Cuckoo
@testable import DatabaseRealm

import RealmSwift






 class MockMainViewModel: MainViewModel, Cuckoo.ClassMock {
    
     typealias MocksType = MainViewModel
    
     typealias Stubbing = __StubbingProxy_MainViewModel
     typealias Verification = __VerificationProxy_MainViewModel

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: MainViewModel?

     func enableDefaultImplementation(_ stub: MainViewModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    
    
    
    
    public override var tableData: Results<Memo>? {
        get {
            return cuckoo_manager.getter("tableData",
                superclassCall:
                    
                                    super.tableData
                    ,
                defaultCall:  __defaultImplStub!.tableData)
        }
        
        set {
            cuckoo_manager.setter("tableData",
                value: newValue,
                superclassCall:
                    
                    super.tableData = newValue
                    ,
                defaultCall: __defaultImplStub!.tableData = newValue)
        }
        
    }
    
    

    

    
    
    
    
     override func loadData()  {
        
    return cuckoo_manager.call(
    """
    loadData()
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.loadData()
                ,
            defaultCall: __defaultImplStub!.loadData())
        
    }
    
    
    
    
    
     override func create(title: String, content: String, sucsess: () -> Void, failed: () -> Void)  {
        		return withoutActuallyEscaping(sucsess, do: { (sucsess: @escaping () -> Void) -> Void in
			return withoutActuallyEscaping(failed, do: { (failed: @escaping () -> Void) -> Void in

    return cuckoo_manager.call(
    """
    create(title: String, content: String, sucsess: () -> Void, failed: () -> Void)
    """,
            parameters: (title, content, sucsess, failed),
            escapingParameters: (title, content, { () in fatalError("This is a stub! It's not supposed to be called!") }, { () in fatalError("This is a stub! It's not supposed to be called!") }),
            superclassCall:
                
                super.create(title: title, content: content, sucsess: sucsess, failed: failed)
                ,
            defaultCall: __defaultImplStub!.create(title: title, content: content, sucsess: sucsess, failed: failed))
        		})
			})

    }
    
    

     struct __StubbingProxy_MainViewModel: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        var tableData: Cuckoo.ClassToBeStubbedOptionalProperty<MockMainViewModel, Results<Memo>> {
            return .init(manager: cuckoo_manager, name: "tableData")
        }
        
        
        
        
        
        func loadData() -> Cuckoo.ClassStubNoReturnFunction<()> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockMainViewModel.self, method:
    """
    loadData()
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func create<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(title: M1, content: M2, sucsess: M3, failed: M4) -> Cuckoo.ClassStubNoReturnFunction<(String, String, () -> Void, () -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void, M4.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void, () -> Void)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: content) { $0.1 }, wrap(matchable: sucsess) { $0.2 }, wrap(matchable: failed) { $0.3 }]
            return .init(stub: cuckoo_manager.createStub(for: MockMainViewModel.self, method:
    """
    create(title: String, content: String, sucsess: () -> Void, failed: () -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_MainViewModel: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
        
        
        var tableData: Cuckoo.VerifyOptionalProperty<Results<Memo>> {
            return .init(manager: cuckoo_manager, name: "tableData", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        
    
        
        
        
        @discardableResult
        func loadData() -> Cuckoo.__DoNotUse<(), Void> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    loadData()
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func create<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(title: M1, content: M2, sucsess: M3, failed: M4) -> Cuckoo.__DoNotUse<(String, String, () -> Void, () -> Void), Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void, M4.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void, () -> Void)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: content) { $0.1 }, wrap(matchable: sucsess) { $0.2 }, wrap(matchable: failed) { $0.3 }]
            return cuckoo_manager.verify(
    """
    create(title: String, content: String, sucsess: () -> Void, failed: () -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class MainViewModelStub: MainViewModel {
    
    
    
    
    public override var tableData: Results<Memo>? {
        get {
            return DefaultValueRegistry.defaultValue(for: (Results<Memo>?).self)
        }
        
        set { }
        
    }
    
    

    

    
    
    
    
     override func loadData()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
    
    
    
     override func create(title: String, content: String, sucsess: () -> Void, failed: () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}




