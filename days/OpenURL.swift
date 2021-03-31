//
//  Open_URL.swift
//  days
//
//  Created by Samuel Shi on 3/31/21.
//

import AppKit

func openWebsite(string: String) {
  if NSWorkspace.shared.open(URL(string: string)!) {
    print("Opened!")
  }
}
