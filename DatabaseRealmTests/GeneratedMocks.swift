// MARK: - Mocks generated from file: DatabaseRealm/Model/RealmDBModel.swift at 2023-06-12 14:21:11 +0000

//
//  RealmDBModel.swift
//  DatabaseRealm
//
//  Created by Owner on 2023/06/12.
//

import Cuckoo
@testable import DatabaseRealm

import RealmSwift






 class MockRealmDBModel: RealmDBModel, Cuckoo.ClassMock {
    
     typealias MocksType = RealmDBModel
    
     typealias Stubbing = __StubbingProxy_RealmDBModel
     typealias Verification = __VerificationProxy_RealmDBModel

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: RealmDBModel?

     func enableDefaultImplementation(_ stub: RealmDBModel) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func read() -> Memo? {
        
    return cuckoo_manager.call(
    """
    read() -> Memo?
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.read()
                ,
            defaultCall: __defaultImplStub!.read())
        
    }
    
    
    
    
    
     override func readAll() -> Results<Memo> {
        
    return cuckoo_manager.call(
    """
    readAll() -> Results<Memo>
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.readAll()
                ,
            defaultCall: __defaultImplStub!.readAll())
        
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
    
    

     struct __StubbingProxy_RealmDBModel: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func read() -> Cuckoo.ClassStubFunction<(), Memo?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockRealmDBModel.self, method:
    """
    read() -> Memo?
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func readAll() -> Cuckoo.ClassStubFunction<(), Results<Memo>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockRealmDBModel.self, method:
    """
    readAll() -> Results<Memo>
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func create<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable>(title: M1, content: M2, sucsess: M3, failed: M4) -> Cuckoo.ClassStubNoReturnFunction<(String, String, () -> Void, () -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void, M4.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void, () -> Void)>] = [wrap(matchable: title) { $0.0 }, wrap(matchable: content) { $0.1 }, wrap(matchable: sucsess) { $0.2 }, wrap(matchable: failed) { $0.3 }]
            return .init(stub: cuckoo_manager.createStub(for: MockRealmDBModel.self, method:
    """
    create(title: String, content: String, sucsess: () -> Void, failed: () -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_RealmDBModel: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func read() -> Cuckoo.__DoNotUse<(), Memo?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    read() -> Memo?
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func readAll() -> Cuckoo.__DoNotUse<(), Results<Memo>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    readAll() -> Results<Memo>
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


 class RealmDBModelStub: RealmDBModel {
    

    

    
    
    
    
     override func read() -> Memo?  {
        return DefaultValueRegistry.defaultValue(for: (Memo?).self)
    }
    
    
    
    
    
     override func readAll() -> Results<Memo>  {
        return DefaultValueRegistry.defaultValue(for: (Results<Memo>).self)
    }
    
    
    
    
    
     override func create(title: String, content: String, sucsess: () -> Void, failed: () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}




