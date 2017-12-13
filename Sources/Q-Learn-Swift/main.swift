import Foundation

enum EnvironmentError: Error {
    case unableToDetermineEnvironment
    case unableToCreateEnvironment(forKey: String)
}

enum Environment {
    case production
    case test
    case local
    
    init(processInfo: ProcessInfo) throws {
        guard let environmentKey = ProcessInfo.processInfo.environment["ENVIRONMENT"] else {
            throw EnvironmentError.unableToDetermineEnvironment
        }
        
        switch environmentKey {
        case "PRODUCTION": self = .production
        case "TEST": self = .test
        case "LOCAL": self = .local
        default:
            throw EnvironmentError.unableToCreateEnvironment(forKey: environmentKey)
        }
    }
    
    var path: String {
        switch self {
        case .production: return "<insert path here>"
        case .test: return "<insert path here>"
        case .local: return "<insert path here>"
        }
    }
}

do {
    let environment = try Environment(processInfo: ProcessInfo.processInfo)
    let data = try String(contentsOfFile: environment.path, encoding: .ascii)
    
    // If a value was returned, print it.
    print(data)
} catch {
    print("There was an errrrrrr....with reading from file \n\(error)")
}
