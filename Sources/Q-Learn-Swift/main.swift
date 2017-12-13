import Foundation

func main() {
    var path: String
    
    if let env = ProcessInfo.processInfo.environment["ENVIRONMENT"]{
        switch env {
        case "PRODUCTION":
            print("This is production...but you knew that")
        case "TEST":
            print("This is test...but you knew that")
        case "LOCAL":
            path = "/Users/stevenprichard/Developer/Swift/Q-Learn-Swift/Sources/Q-Learn-Swift/Worlds/test.txt"
        default:
            path = ""
        }
    }
    
    do {
        let data = try NSString(contentsOfFile: path, encoding: String.Encoding.ascii.rawValue)
        // If a value was returned, print it.
        print(data)
    } catch {
        print("There was an errrrrrr....with reading from file \n\(error)")
    }
}

main()
