func Learn() {
    print("Start Learn")

    let individualScores = [75, 43, 103, 87, 12]
    var teamScore = 0
    for score in individualScores {
        if score > 50 {
            teamScore += 3
        } else {
            teamScore += 1
        }
    }
    print(teamScore)

    let scoreDecoration = if teamScore > 10 {
        "🎉"
    } else {
        ""
    }
    print("Score:", teamScore, scoreDecoration)

    let nickname: String? = "nil"
    if let nickname {
        print("Hey, \(nickname)")
    }

    let vegetable = "red pepper"
    switch vegetable {
    case "celery":
        print("Add some raisins and make ants on a log.")
    case "cucumber", "watercress":
        print("That would make a good tea sandwich.")
    case let x where x.hasSuffix("pepper"):
        print("Is it a spicy \(x)?")
    default:
        print("Everything tastes good in soup.")
    }

    let interestingNumbers = [
        "Prime": [2, 3, 5, 7, 11, 13],
        "Fibonacci": [1, 1, 2, 3, 5, 8],
        "Square": [1, 4, 9, 16, 25],
    ]
    var largest = 0
    for (_, numbers) in interestingNumbers {
        for number in numbers {
            if number > largest {
                largest = number
            }
        }
    }
    print(largest)

    var total = 0
    for i in 0..<4 {
        total += i
    }
    print(total)

    func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0

        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score
            }
            sum += score
        }

        return (min, max, sum)
    }
    let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
    print(statistics.sum)
    print(statistics.2)

    func greet(_ person: String, on day: String) -> String {
        return "Hello \(person), today is \(day)."
    }
    print(greet("John", on: "Wednesday"))

    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    var increment = makeIncrementer()
    print(increment(7))

    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    func lessThanTen(number: Int) -> Bool {
        return number < 10
    }
    var numbers = [20, 19, 7, 12]
    print(hasAnyMatches(list: numbers, condition: lessThanTen))

    let mnum = numbers.map({ (number: Int) -> Int in
        let result = 3 * number
        return result
    })
    print(mnum)
    // or
    let mappedNumbers = numbers.map({ number in 3 * number })
    print(mappedNumbers)

    let sortedNumbers = numbers.sorted { $0 > $1 }
    print(sortedNumbers)

    class NamedShape {
        var numberOfSides: Int = 0
        var name: String


    init(name: String) {
            self.name = name
        }


        func simpleDescription() -> String {
            return "A shape with \(numberOfSides) sides."
        }
    }
    class Square: NamedShape {
        var sideLength: Double


    init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 4
        }


        func area() -> Double {
            return sideLength * sideLength
        }


        override func simpleDescription() -> String {
            return "A square with sides of length \(sideLength)."
        }
    }
    let test = Square(sideLength: 5.2, name: "my test square")
    test.area()
    test.simpleDescription()
    class EquilateralTriangle: NamedShape {
        var sideLength: Double = 0.0


    init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 3
        }


        var perimeter: Double {
            get {
                return 3.0 * sideLength
            }
            set {
                sideLength = newValue / 3.0
            }
        }


        override func simpleDescription() -> String {
            return "An equilateral triangle with sides of length \(sideLength)."
        }
    }
    var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
    print(triangle.perimeter)
    triangle.perimeter = 9.9
    print(triangle.sideLength)
    class TriangleAndSquare {
        var triangle: EquilateralTriangle {
            willSet {
                square.sideLength = newValue.sideLength
            }
        }
        var square: Square {
            willSet {
                triangle.sideLength = newValue.sideLength
            }
        }
    init(size: Double, name: String) {
            square = Square(sideLength: size, name: name)
            triangle = EquilateralTriangle(sideLength: size, name: name)
        }
    }
    var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
    print(triangleAndSquare.square.sideLength)
    // Prints "10.0"
    print(triangleAndSquare.triangle.sideLength)
    // Prints "10.0"
    triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
    print(triangleAndSquare.triangle.sideLength)
    // Prints "50.0"


}


