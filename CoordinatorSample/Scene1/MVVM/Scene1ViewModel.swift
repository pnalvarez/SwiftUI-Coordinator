//
//  Scene1ViewMode.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI
    
protocol Scene1ViewModelProtocol: ObservableObject {
    var text: String { get set }
    func goToScene2()
    func goToScene3()
}

final class Scene1ViewModel: Scene1ViewModelProtocol {
    private let coordinator: Scene1CoordinatorProtocol
    
    @Published var text: String = ""
    
    init(coordinator: Scene1CoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func goToScene2() {
        coordinator.navigateTo(.scene2(text))
    }
    
    func goToScene3() {
        coordinator.present(.scene3)
    }
}
