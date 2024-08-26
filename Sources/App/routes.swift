import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works! Byaruhanga"
    }
    
    app.get("hello") { req async -> String in
        "Hello, world! Franklin"
    }
    
    app.get("os") { req async -> String in
#if os(Linux)
        return "Linux"
#else
        return "MacOS"
#endif
    }
}
