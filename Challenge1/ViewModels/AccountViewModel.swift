//
//  AccountViewModel.swift
//  Challenge1
//
//  Created by Corry Handayani on 5/8/21.
//

import Foundation
import Firebase

final class AccountViewModel: ObservableObject {
    
    @Published var account: [Account] = []
    
    init(){
        fetchAccount()
    }
    //fetch account from firestore
    func fetchAccount(){
        
        let db = Firestore.firestore()
        
         //db ID name = balance
        db.collection("balance").getDocuments() { (QuerySnapshot,error) in
            if let error = error {
                print("Error getting documents: \(error)")
            }
            else {
                if let querySnapshot = QuerySnapshot {
                    for document in querySnapshot.documents {
                        let data = document.data()
                        
                       let id = data["id"] as? String ?? ""
                       let acctype = data["acctype"] as? String ?? ""
                       let balance = data["balance"] as? String ?? ""
                       let cardnum = data["cardnum"] as? String ?? ""
                        // need to try in integers
                        
                        let account = Account(id: id, acctype: acctype, balance: balance, cardnum: cardnum)
                        
                        self.account.append(account)
                    }
                }
            }
            
        }

    }
}
