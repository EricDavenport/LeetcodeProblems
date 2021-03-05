// Problem 434
// Numbers of segments in a string

func countSegments(_ s: String) -> Int {
  var segments = 0
  if s.count == 0 || s.first == " " { return 0 }

  for (index, letter) in s.enumerated() {
    if letter == " " {
      segments += 1
    }

    if index == (s.count - 1) {
      segments += 1
    }
  }

  return segments
}

let test = "Smoke one by yourself!"
let blankTest = ""
let test3 = "This is"
print("Word segments: \(countSegments(test))")
print("Word segments: \(countSegments(blankTest))")
print("Word segments: \(countSegments(test3))")


func segmentsCount(_ s: String) -> {
  var segmentCount = 0
  var segment = []()
  if s.count == 0 { return 0 }
  
  for (index, letter) in s.enumerated() {
    if let current = s[letter] {
      if current != " " {
        segment.append(current)
      }
    }
  }
  
  
  return segmentCount
}
