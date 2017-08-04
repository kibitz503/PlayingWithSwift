//: Playground - noun: a place where people can play

import UIKit

let displayer = ModelDisplayer()

let error = generateErrorModel()
let success = generateSuccessModel()
let partialSuccess = generatePartialSuccessModel()

displayer.displayMyModel(model: error)
displayer.displayMyModel(model: success)
displayer.displayMyModel(model: partialSuccess)

let errorEnum: Result = .error(errorModel: error)
let successEnum: Result = .success(successModel: success)
let partialSuccessEnum: Result = .partialSucess(partialSuccessModel: partialSuccess)

errorEnum.doWork(value: errorEnum)
successEnum.doWork(value: successEnum)
partialSuccessEnum.doWork(value: partialSuccessEnum)