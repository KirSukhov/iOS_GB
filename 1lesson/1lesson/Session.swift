

import UIKit

class Session {
    var token : String
    var userID : Int
    
    //static let instance = Session(token: <#String#>, userID: <#Int#>)
    
    private init(token: String, userID: Int){
        self.token = token
        self.userID = userID
    }
    
}
