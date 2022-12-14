import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    // MARK: - BODY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutrutional value per 100gm") {
                ForEach(0..<nutrients.count, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    } // HStack
                } //: ForEach
            } //: DisclosureGroup
        } //: GroupBox
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
