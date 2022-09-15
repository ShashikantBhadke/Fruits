import SwiftUI

@main
struct FruitsApp: App {
    // MARK: - PROPERTIES
    @AppStorage(AppStorageEnum.isOnboarding.rawValue) var isOnboarding: Bool = true
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        } //: WINDOWGROUP
    }
}
