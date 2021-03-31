//
//  Defaults.swift
//  days
//
//  Created by Samuel Shi on 3/31/21.
//

import Foundation

func getDayNumber(tutorial: Tutorial) -> Int {
  let defaults = UserDefaults.standard
  let day = defaults.integer(forKey: tutorial.rawValue)
  return day
}

func setDayNumber(day: Int, tutorial: Tutorial) {
  let defaults = UserDefaults.standard
  defaults.setValue(day, forKey: tutorial.rawValue)
}
