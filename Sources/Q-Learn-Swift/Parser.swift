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
    
    func WallCount() -> Int {
        var wallCount = 0
        self.data.forEach { item in
            if item == "O" {
                wallCount += 1
            }
        }
        return wallCount
    }
    
    func BoarderCount() -> Int{
        var boarderCount = 0
        self.data.forEach { item in
            if item == "-" {
                boarderCount += 1
            }
        }
        return boarderCount/2
    }
    
    // TODO: Figure this out
    func RowCount() -> Int {
        var itemCount = 0
        self.data.forEach { item in
            if item != "-" {
                itemCount += 1
            }
        }
        print("Total Row Count: \(itemCount)")
        return itemCount % 20
    }
}


