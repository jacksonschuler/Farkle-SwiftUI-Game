import Foundation

class Die: Identifiable  {
    var id: Int
    var result: Int
    var isActive: Bool = true
    
    init(id: Int, result: Int) {
        self.result = result
        self.id = id
    }
    
    func setResult(result: Int){
        self.result = result
    }
    
    func getResult() -> Int{
        return self.result
    }
}
