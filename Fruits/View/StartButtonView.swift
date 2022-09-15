import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage(AppStorageEnum.isOnboarding.rawValue) var isOnboarding: Bool?
    // MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            } //: HSTACK
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(
                        Color.white, lineWidth: 1.25
                    )
            )
        } //: BUTTON
        .tint(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
