//
//  Scene2Factory.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

enum Scene2Factory {
    static func build() -> Scene2CoordinatorView<Scene2CoordinatorViewModel> {
        let coordinator = Scene2CoordinatorViewModel()
        let viewModel = Scene2ViewModel(coordinator: coordinator)
        return Scene2CoordinatorView(viewModel: coordinator,
                                     content: Scene2View(viewModel: viewModel))
    }
}
