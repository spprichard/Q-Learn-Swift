import Foundation


do {
    let environment = try Environment(processInfo: ProcessInfo.processInfo)
    let data = try String(contentsOfFile: environment.path, encoding: .ascii)
    print(data)
} catch {
    print("There was an errrrrrr....with reading from file \n\(error)")
}
