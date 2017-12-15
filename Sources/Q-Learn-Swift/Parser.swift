import Foundation

struct Parser {
    var data : String
    
    init(dataToParse: String) {
        self.data = dataToParse
    }
    
    func ShowData() -> String {
        return self.data
    }
    
    func Size() -> Int {
        return self.data.count
    }
    
    func CountWalls() -> Int {
        
        self.data.forEach { item in
            var wallCount: Int
            if item == "O" {
                wallCount += 1
            }
        }
        return wallCount
    }
}


