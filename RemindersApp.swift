//
//  RemindersApp.swift
//  Reminders
//
//  Created by 김규리 on 2023/06/07.
//

import SwiftUI

@main
struct RemindersApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            HomeScreen(vm: HomeViewModel())
        }
    }
}
