//
//  ContentView.swift
//  Sesi4TabViewStyle
//
//  Created by Pande Adhistanaya on 27/01/24.
//

import SwiftUI

struct ContentView: View {
    private let tabs: Array<Onboarding> = Onboarding.data
    private let dotIndicator = UIPageControl.appearance()

    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            Image("clear\(selectedTab + 1)")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .animation(.easeInOut(duration: 0.2), value: selectedTab)
                .transition(.slide)
            
            TabView(selection: $selectedTab) {
                ForEach(tabs) { tab in
                    VStack(alignment: .leading, spacing: 15) {
                        Text(tab.title)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text(tab.subtitle)
                            .font(.title3)
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.white)
                    .padding(.top, 520)
                    .padding(.leading, 50)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .tag(tab.tag)
                }
            }
            .padding(.bottom, 40)
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeInOut(duration: 0.2), value: selectedTab)
            .transition(.slide)
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        }
        
    }
}

#Preview {
    ContentView()
}
