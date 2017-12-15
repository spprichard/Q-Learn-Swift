import Foundation

func main() {
    do {
        let environment = try Environment(processInfo: ProcessInfo.processInfo)
        let data = try String(contentsOfFile: environment.path, encoding: .ascii)
        let parser =  Parser(dataToParse: data)
        print("Data: \n\(parser.ShowData())")
        print("File Size: \(parser.Size())")
        print("Wall Count: \(parser.WallCount())")
        print("Boarder Count: \(parser.BoarderCount())")
    } catch {
        print("There was an errrrrrr....with reading from file \n\(error)")
    }
}

main()


