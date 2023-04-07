//
//  PageViewController.swift
//  Landmarks
//
//  Created by 박상원 on 2023/04/06.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

    func makeUIViewController(context _: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll, navigationOrientation: .horizontal
        )
        return pageViewController
    }

    func updateUIViewController(_ pageViewController: UIPageViewController, context _: Context) {
        pageViewController.setViewControllers([UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
    }
}
