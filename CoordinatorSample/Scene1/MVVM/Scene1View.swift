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
                TextField("Type your message", text: $viewModel.text)
                Button(action: viewModel.goToScene2) {
                    Text("Go next")
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

struct Scene1View_Previews: PreviewProvider {
    static var previews: some View {
        Scene1View(viewModel: Scene1ViewModel(coordinator: Scene1CoordinatorViewModel()))
    }
}
