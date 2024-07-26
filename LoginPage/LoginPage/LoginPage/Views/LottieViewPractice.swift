//
//  LottieViewPractice.swift
//  LoginPage
//
//  Created by siddhatech on 23/07/24.
//

import SwiftUI
import Lottie


struct ContentView3 :View {
    var body: some View {
        LottieView(name: "success" ,loopMode: .loop)
    }
}

struct LottieView: UIViewRepresentable {
    var name = "success"
    var loopMode: LottieLoopMode = .loop

    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)

        let animationView = LottieAnimationView()
        let animation = LottieAnimation.named(name)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()

        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}




#Preview {
 ContentView3()
}
