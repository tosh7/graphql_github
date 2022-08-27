import Foundation

protocol HomeViewModelInputs {}

protocol HomeViewModelOutputs {}

protocol HomeViewModelType {
    var input: HomeViewModelInputs { get }
    var output: HomeViewModelOutputs { get }
}

final class HomeViewModel: ObservableObject, HomeViewModelInputs, HomeViewModelOutputs, HomeViewModelType {

    init() {}

    var input: HomeViewModelInputs { self }
    var output: HomeViewModelOutputs { self }
}
