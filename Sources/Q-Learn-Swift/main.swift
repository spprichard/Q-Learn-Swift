import Foundation

func main() {
    let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    let fileName = "test"
    let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
    
    var contents = ""
    
    do {
        contents = try String(contentsOf: fileURL)
    } catch let error as NSError {
        print("Failed reading from URL: \(fileURL), Error: " + error.localizedDescription)
    }
    
    print("Contents: \(contents)")
}

// This main.swift file IS the script that will execute when this program runs, which is why you're not seeing any output, you have defined a `func main()` but you havn't called it. Try this:
main()

// Also, check out this blog post, I think you'll like it: https://www.swiftbysundell.com/posts/building-a-command-line-tool-using-the-swift-package-manager
