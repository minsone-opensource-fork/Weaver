/// This file is generated by Weaver 0.10.3
/// DO NOT EDIT!
import API
import Foundation
// MARK: - PersonManager
protocol PersonManagerInputDependencyResolver {
    var movieAPI: APIProtocol { get }
}
protocol PersonManagerDependencyResolver {
    var movieAPI: APIProtocol { get }
    var logger: Logger { get }
}
final class PersonManagerDependencyContainer: PersonManagerDependencyResolver {
    let movieAPI: APIProtocol
    private var _logger: Logger?
    var logger: Logger {
        if let value = _logger { return value }
        let value = Logger()
        _logger = value
        return value
    }
    init(injecting dependencies: PersonManagerInputDependencyResolver) {
        movieAPI = dependencies.movieAPI
        _ = logger
    }
}