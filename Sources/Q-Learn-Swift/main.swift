import Foundation

func main() {
    do {
        let environment = try Environment(processInfo: ProcessInfo.processInfo)
        let data = try String(contentsOfFile: environment.path, encoding: .ascii)
        let parser =  Parser(dataToParse: data)
        print(parser.ShowData())
        print(parser.Size())
        print(parser.CountWalls())
    } catch {
        print("There was an errrrrrr....with reading from file \n\(error)")
    }
}

main()


