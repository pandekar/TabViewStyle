//
//  Onboarding.swift
//  Sesi4TabViewStyle
//
//  Created by Pande Adhistanaya on 27/01/24.
//

import Foundation

struct Onboarding: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let subtitle: String
    let tag: Int
}

extension Onboarding {
    static let data: Array<Onboarding> = [
        Onboarding(
            imageName: "clear1",
            title: "Your Life in Lists",
            subtitle: "Clear is a colorful canvas for\nyour thought, plans, and goals.\nHere's what makes it uniquely\nfun and effective.",
            tag: 0),
        Onboarding(
            imageName: "clear2",
            title: "Radically Simple",
            subtitle: "Clear is a pristine place to think,\ntotally free of distraction or\nfeature clutter.",
            tag: 1),
        Onboarding(
            imageName: "clear3",
            title: "Remarkably Fluent",
            subtitle: "Clear's gesture shortcuts are\nintuitive and efficient. Try\npinching to insert or take a\nscreenshot to share a list.",
            tag: 2),
        Onboarding(
            imageName: "clear4",
            title: "Strangely Addictive",
            subtitle: "Clear harnesses your dopamine\nwith satisfying sounds, haptics,\nand collectibles that unlock as\nyou get things done.",
            tag: 3),
        Onboarding(
            imageName: "clear5",
            title: "Insanely\nPersonalizable",
            subtitle: "Mix and match hundreds of\ncollectibles, totally transforming\nClear to suit your style and\n whims.",
            tag: 4),
        Onboarding(
            imageName: "clear6",
            title: "Treat Yourself",
            subtitle: "Because it's productive to after a\njob well done. Clear is 100% free\nto use and also a treat to shop in.\nHappy listing.",
            tag: 5),
    ]
}
