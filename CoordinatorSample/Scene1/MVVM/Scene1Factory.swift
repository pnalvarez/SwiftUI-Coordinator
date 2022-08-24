//
//  Scene1Factory.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

enum Scene1Factory {
    static func build() -> Scene1CoordinatorView<Scene1CoordinatorViewModel> {
        let coordinator = Scene1CoordinatorViewModel()
        let viewModel = Scene1ViewModel(coordinator: coordinator)
        return Scene1CoordinatorView(viewModel: coordinator,
                                     content: Scene1View<Scene1ViewModel>(viewModel: viewModel))
    }
}
