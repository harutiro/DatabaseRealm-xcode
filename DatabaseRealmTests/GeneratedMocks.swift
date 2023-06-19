// MARK: - Mocks generated from file: DatabaseRealm/Model/MemoRepository.swift at 2023-06-19 11:07:29 +0000

//
//  RealmDBModel.swift
//  DatabaseRealm
//
//  Created by Owner on 2023/06/12.
//

import Cuckoo
@testable import DatabaseRealm

import RealmSwift






 class MockMemoRepository: MemoRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = MemoRepository
    
     typealias Stubbing = __StubbingProxy_MemoRepository
     typealias Verification = __VerificationProxy_MemoRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: MemoRepository?

     func enableDefaultImplementation(_ stub: MemoRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func read() -> Memo? {
        
    return cuckoo_manager.call(
    """
    read() -> Memo?
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.read())
        
    }
    
    
    
    
    
     func readAll() -> List<Memo> {
        
    return cuckoo_manager.call(
    """
    readAll() -> List<Memo>
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.readAll())
        
    }
    
    
    
    
    
     func create(memo: Memo, sucsess: () -> Void, failed: () -> Void)  {
        	return withoutActuallyEscaping(sucsess, do: { (sucsess: @escaping () -> Void) -> Void in
		return withoutActuallyEscaping(failed, do: { (failed: @escaping () -> Void) -> Void in

    return cuckoo_manager.call(
    """
    create(memo: Memo, sucsess: () -> Void, failed: () -> Void)
    """,
            parameters: (memo, sucsess, failed),
            escapingParameters: (memo, { () in fatalError("This is a stub! It's not supposed to be called!") }, { () in fatalError("This is a stub! It's not supposed to be called!") }),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.create(memo: memo, sucsess: sucsess, failed: failed))
        	})
		})

    }
    
    

     struct __StubbingProxy_MemoRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func read() -> Cuckoo.ProtocolStubFunction<(), Memo?> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockMemoRepository.self, method:
    """
    read() -> Memo?
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func readAll() -> Cuckoo.ProtocolStubFunction<(), List<Memo>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockMemoRepository.self, method:
    """
    readAll() -> List<Memo>
    """, parameterMatchers: matchers))
        }
        
        
        
        
        func create<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(memo: M1, sucsess: M2, failed: M3) -> Cuckoo.ProtocolStubNoReturnFunction<(Memo, () -> Void, () -> Void)> where M1.MatchedType == Memo, M2.MatchedType == () -> Void, M3.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(Memo, () -> Void, () -> Void)>] = [wrap(matchable: memo) { $0.0 }, wrap(matchable: sucsess) { $0.1 }, wrap(matchable: failed) { $0.2 }]
            return .init(stub: cuckoo_manager.createStub(for: MockMemoRepository.self, method:
    """
    create(memo: Memo, sucsess: () -> Void, failed: () -> Void)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_MemoRepository: Cuckoo.VerificationProxy {
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
        func readAll() -> Cuckoo.__DoNotUse<(), List<Memo>> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    readAll() -> List<Memo>
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
        
        
        @discardableResult
        func create<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(memo: M1, sucsess: M2, failed: M3) -> Cuckoo.__DoNotUse<(Memo, () -> Void, () -> Void), Void> where M1.MatchedType == Memo, M2.MatchedType == () -> Void, M3.MatchedType == () -> Void {
            let matchers: [Cuckoo.ParameterMatcher<(Memo, () -> Void, () -> Void)>] = [wrap(matchable: memo) { $0.0 }, wrap(matchable: sucsess) { $0.1 }, wrap(matchable: failed) { $0.2 }]
            return cuckoo_manager.verify(
    """
    create(memo: Memo, sucsess: () -> Void, failed: () -> Void)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class MemoRepositoryStub: MemoRepository {
    

    

    
    
    
    
     func read() -> Memo?  {
        return DefaultValueRegistry.defaultValue(for: (Memo?).self)
    }
    
    
    
    
    
     func readAll() -> List<Memo>  {
        return DefaultValueRegistry.defaultValue(for: (List<Memo>).self)
    }
    
    
    
    
    
     func create(memo: Memo, sucsess: () -> Void, failed: () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}




