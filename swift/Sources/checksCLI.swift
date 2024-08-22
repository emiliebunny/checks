// https://www.swift.org/getting-started/cli-swiftpm/

import Figlet
import ArgumentParser

//@main
struct FigletTool: ParsableCommand {
    @Option(help: "Specify the input")
    public var input: String

    // public func run() throws {
    //     Figlet.say(self.input)
    // }

    // static func main() {
    //    Figlet.say("Hello, Swift!")
    // }
}

@main
struct Checks {
    static func main() {
        print("test")
        Learn()
    }
}
