//
//  main.swift
//  100 Days
//
//  Created by Samuel Shi on 3/31/21.
//

import Foundation

func run() {
  let arguments = CommandLine.arguments
  
  guard arguments.count > 1 else {
    print("Enter an argument (swiftui or uikit)")
    return
  }
  
  let isSwiftUI = arguments[1].lowercased() == "swiftui"
  let tutorial: Tutorial = isSwiftUI ? .swiftui : .uikit
  
  if getDayNumber(tutorial: tutorial) >= 100 {
    print("Congratulations! You finished 100 days of \(tutorial.rawValue)")
    exit(0)
  }
  
  /// Start a day
  /// - Parameter tutorial: "swiftui" or "uikit"
  if arguments.count == 2 {
    var urlString = "https://www.hackingwithswift.com/100"
    
    if isSwiftUI { urlString += "/" + tutorial.rawValue }
    
    let day = getDayNumber(tutorial: tutorial)
    urlString += "/\(day)"
    
    openWebsite(string: urlString)
    
    print("Good Luck on day \(day) of 100 days of \(tutorial.rawValue)")
  }
  
  /// Complete a day
  /// - Parameter tutorial: "swiftui" or "uikit"
  /// - Parameter "done"
  if arguments.count == 3 {
    let day = getDayNumber(tutorial: tutorial)
    setDayNumber(day: day + 1, tutorial: tutorial)
    print("Great job on day \(day) of 100 days of \(tutorial.rawValue)")
  }
  
  /// Set day value
  /// - Parameter tutorial: "swiftui" or "uikit"
  /// - Parameter "set"
  /// - Parameter dayNumber: integer between 0 & 100
  if arguments.count == 4 {
    if arguments[2] == "set", let day = Int(arguments[3]) {
      setDayNumber(day: day, tutorial: tutorial)
      let dayFromDefaults = getDayNumber(tutorial: tutorial)
      print("Current day # of 100 days of \(tutorial.rawValue) set to \(dayFromDefaults)")
    }
  }
}

run()
