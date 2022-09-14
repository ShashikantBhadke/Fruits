//
/*
 Copyright © 2015 - 2017 Praxify Technologies, Inc. All Rights Reserved.
 
 NOTICE:All information contained herein is, and remains the property
 of Praxify Technologies, Inc. (“Praxify”) and its suppliers, if any.
 The intellectual and technical concepts contained herein are proprietary
 to Praxify Technologies, Inc. and its licensors and may be covered by
 U.S. and Foreign Patents, patents in process, and are protected by trade
 secret or copyright law. Dissemination of this information or reproduction
 of this material is strictly forbidden unless prior written permission
 is obtained from Praxify.
 
 No license, express or implied, by estoppel or otherwise to any other
 Praxify intellectual property right, and no license to any third party
 technology or intellectual property right, is granted herein, including
 but not limited to any patent right, copyright, mask work right, or
 other intellectual property right relating to any combination, machine,
 or process in which Praxify source files are used. Praxify disclaims all
 warranties of any kind, implied, statutory, or in any communication
 between them, including without limitation, the implied warranties of
 merchantability, non-infringement, title, and fitness for a particular
 purpose.
 
 In no event shall Praxify be liable for any actual, special, incidental,
 consequential or indirect damages, however caused, including without
 limitation to the generality of the foregoing, loss of anticipated
 profits, goodwill, reputation, business receipts or contracts, costs of
 procurement of substitute goods or services; loss of use, data, or
 profits; or business interruption, losses or expenses resulting from
 third party claims. These limitations will apply regardless of the form
 of action, whether under statute, in contract or tort including
 negligence or any other form of action and whether or not Praxify has
 been advised of the possibility of such damages.
 */
//
// FruitCardView.swift
// Fruits
//
// Created by Shashikant Suryakant Bhadke on 06/09/22
//
        

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 8, x: 6, y: 8
                    )
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                // FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 2, x: 2, y: 2)
                // FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // BUTTON: START
                StartButtonView()
            } //: VSTACK
            .frame(minWidth: 0, maxWidth: .infinity,
                   minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(
                LinearGradient(
                    gradient: Gradient(colors: fruit.gradientColors),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .cornerRadius(20)
            )
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity,
               minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: fruit.gradientColors
                ),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
