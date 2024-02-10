//
//  iOS_LabApp.swift
//  iOS-Lab
//
//  Created by 심현석 on 2024/02/10.
//

import SwiftUI

@main
struct SwiftLabApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ViewControllerView()
        }
    }
}

struct ViewControllerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UINavigationController

    func makeUIViewController(context: Context) -> UIViewControllerType {
        let vc = BottomSheetCustom()
        let nav = UINavigationController(rootViewController: vc)
        return nav
    }

    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
    }
}

//struct ViewControllerView: UIViewControllerRepresentable {
//    typealias UIViewControllerType = TicketTimerTutorial_TabBarController
//
//    func makeUIViewController(context: Context) -> UIViewControllerType {
//        let vc = TicketTimerTutorial_TabBarController()
//        return vc
//    }
//
//    func updateUIViewController(_ uiViewController: TicketTimerTutorial_TabBarController, context: Context) {
//    }
//}
