//
//  Scene1CoordinatorViewModel.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI

enum Scene1NavigationItem: Hashable, Identifiable {
    case scene2
    
    var id: UUID {
        UUID()
    }
    
    @ViewBuilder
    func nextView() -> some View {
        switch self {
        case .scene2:
            Scene2Factory.build()
        }
    }
}

protocol Scene1CoordinatorViewModelProtocol: ObservableObject {
    var navigationItem: Scene1NavigationItem? { get set }
    var navigationItemCases: [Scene1NavigationItem] { get }
}

protocol Scene1CoordinatorProtocol {
    func navigateTo(_ item: Scene1NavigationItem)
}

final class Scene1CoordinatorViewModel: Scene1CoordinatorViewModelProtocol {
    @Published var navigationItem: Scene1NavigationItem?
    
    var navigationItemCases: [Scene1NavigationItem] {
        [.scene2]
    }
}

extension Scene1CoordinatorViewModel: Scene1CoordinatorProtocol {
    func navigateTo(_ item: Scene1NavigationItem) {
        self.navigationItem = item
    }
}
