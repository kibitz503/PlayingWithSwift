import Foundation
//contived protocols
public protocol ErrorModel {
    var errorMessage: String { get }
    var errorSeverity: String { get }
}

public protocol SuccessModel {
    var cellTitle: String { get }
    var cellSubtitle: String { get }
}

public protocol PartialSuccessModel: ErrorModel, SuccessModel {
    
}

//contrived model
public class APIModel: PartialSuccessModel{
    public init() {}
    
    public let cellTitle = "cellTitle"
    public let cellSubtitle = "cellSubtitle"
    public let errorMessage = "error message"
    public let errorSeverity = "error severity"
}

//convenience
public func generateErrorModel() -> ErrorModel {
    return APIModel() as ErrorModel
}

public func generateSuccessModel() -> SuccessModel {
    return APIModel() as SuccessModel
}

public func generatePartialSuccessModel() -> PartialSuccessModel {
    return APIModel() as PartialSuccessModel
}

