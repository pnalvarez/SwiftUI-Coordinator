//
//  Scene1ViewMode.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI
    
protocol Scene1ViewModelProtocol: ObservableObject {
    func goToScene2()
}

final class Scene1ViewModel: Scene1ViewModelProtocol {
    private let coordinator: Scene1CoordinatorProtocol
    
    init(coordinator: Scene1CoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func goToScene2() {
        coordinator.navigateTo(.scene2)
    }
}
