//
//  Scene1View.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

struct Scene1View<ViewModel: Scene1ViewModelProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack(alignment: .center) {
                Text("Coordinator Sample")
                    .font(.title)
                    .padding(.top)
                Spacer()
                TextField("Type your message", text: $viewModel.text)
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .background(Color.white)
                    .cornerRadius(4)
                    .padding()
                Button(action: viewModel.goToScene2) {
                    Text("Go to scene 2")
                        .foregroundColor(.white)
                }
                .padding(.bottom)
                Button(action: viewModel.goToScene3) {
                    Text("Go to scene 3")
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

struct Scene1View_Previews: PreviewProvider {
    static var previews: some View {
        Scene1View(viewModel: Scene1ViewModel(coordinator: Scene1CoordinatorViewModel()))
    }
}
