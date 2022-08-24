//
//  Scene1CoordinatorViewModel.swift
//  CoordinatorSample
//
//  Created by Pedro Alvarez on 24/08/22.
//

import SwiftUI
import Combine

enum Scene1NavigationItem: Hashable, Identifiable {
    case scene2(_ text: String)
    
    var id: UUID {
        UUID()
    }
    
    @ViewBuilder
    func nextView() -> some View {
        switch self {
        case let .scene2(text):
            Scene2Factory.build(text: text)
        }
    }
}

protocol Scene1CoordinatorViewModelProtocol: ObservableObject {
    var navigationItem: Scene1NavigationItem? { get set }
    var navigationItemCases: [Scene1NavigationItem] { get }
    var scene2Text: String? { get }
}

protocol Scene1CoordinatorProtocol {
    func navigateTo(_ item: Scene1NavigationItem)
}

final class Scene1CoordinatorViewModel: Scene1CoordinatorViewModelProtocol {
    @Published var navigationItem: Scene1NavigationItem?
    var scene2Text: String?
    
    var navigationItemCases: [Scene1NavigationItem] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        $navigationItem
            .filter({ $0 != nil })
            .sink(receiveValue: {
                guard let item = $0 else { return }
                self.navigationItemCases.append(item)
            })
            .store(in: &cancellables)
    }
}

extension Scene1CoordinatorViewModel: Scene1CoordinatorProtocol {
    func navigateTo(_ item: Scene1NavigationItem) {
        self.navigationItem = item
    }
}
