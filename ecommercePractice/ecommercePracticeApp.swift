//
//  ecommercePracticeApp.swift
//  ecommercePractice
//
//  Created by Jose Abad Rodriguez Sanchez on 23/07/23.
//

import SwiftUI
import Firebase

@main
struct ecommercePracticeApp: App {
    init() {
          FirebaseApp.configure()
      }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
