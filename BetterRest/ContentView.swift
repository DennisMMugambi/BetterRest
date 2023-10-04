//
//  ContentView.swift
//  BetterRest
//
//  Created by Dennis Mutwiri Mugambi on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var agreedToTerms = false
    @State private var agreedToPrivacyPolicy = false
    @State private var agreedToEmails = false

    var body: some View {
        let agreedToAll = Binding<Bool>(
            get: {
                agreedToTerms && agreedToPrivacyPolicy && agreedToEmails
            },
            set: {
                agreedToTerms = $0
                agreedToPrivacyPolicy = $0
                agreedToEmails = $0
            }
        )

        return VStack {
            Toggle("Agree to terms", isOn: $agreedToTerms)
                .padding(.leading)
                .padding(.trailing)
            Toggle("Agree to privacy policy", isOn: $agreedToPrivacyPolicy)
                .padding(
                    .leading)
                .padding(.trailing)
            Toggle("Agree to receive shipping emails", isOn: $agreedToEmails)
                .padding(.leading)
                .padding(.trailing)
            Toggle("Agree to all", isOn: agreedToAll)
                .padding(.leading)
                .padding(.trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
