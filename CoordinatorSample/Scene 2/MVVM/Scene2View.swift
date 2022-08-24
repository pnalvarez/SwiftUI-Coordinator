//
//  Scene2View.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

struct Scene2View<ViewModel: Scene2ViewModelProtocol>: View {
    @ObservedObject var viewModel: ViewModel
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            Text(viewModel.text)
        }
    }
}

struct Scene2View_Previews: PreviewProvider {
    static var previews: some View {
        Scene2View(viewModel: Scene2ViewModel(coordinator: Scene2CoordinatorViewModel(), text: "Hello world"))
    }
}
