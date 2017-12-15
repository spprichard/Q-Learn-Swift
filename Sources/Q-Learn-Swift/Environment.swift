import Foundation

public enum EnvironmentError: Error {
    case unableToDetermineEnvironment
    case unableToCreateEnvironment(forKey: String)
}

public enum Environment {
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
        case .local: return "/Users/stevenprichard/Developer/Swift/Q-Learn-Swift/Sources/Q-Learn-Swift/Worlds/test.txt"
        }
    }
}

