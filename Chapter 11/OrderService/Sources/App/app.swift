import Vapor

public func app(_ environment: Environment) throws -> Application {
    var environment = environment
    try LoggingSystem.bootstrap(from: &environment)
    let app = Application(environment: environment)
    try configure(app)
    try boot(app)
    return app
}
