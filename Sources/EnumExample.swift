import Foundation

public enum Result {
    case error(errorModel: ErrorModel)
    case success(successModel: SuccessModel)
    case partialSucess(partialSuccessModel: PartialSuccessModel)
    
    public func doWork(value: Result) {
        switch value {
        case .error(let associatedValue):
            displayMyModel(model: associatedValue)
        case .success(let associatedValue):
            displayMyModel(model: associatedValue)
        case .partialSucess(let associatedValue):
            displayMyModel(model: associatedValue)
        }
    }
    
    public func displayMyModel(model: ErrorModel) {
        print("Error: \(model.errorMessage) Severity: \(model.errorSeverity) \n")
    }
    
    public func displayMyModel(model: SuccessModel) {
        print("Title: \(model.cellTitle) Subtitle: \(model.cellSubtitle) \n")
    }
    
    public func displayMyModel(model: PartialSuccessModel) {
        displayMyModel(model: model as SuccessModel)
        displayMyModel(model: model as ErrorModel)
    }
}


