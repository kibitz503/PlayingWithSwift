import Foundation

public class ModelDisplayer {
    public init() {
        
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
