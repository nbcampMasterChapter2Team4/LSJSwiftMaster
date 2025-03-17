//
//  Challenge_1.swift
//  LSJSwiftMaster
//
//  Created by yimkeul on 3/17/25.
//

import Foundation

class Engine {
    var type: String
    init(type: String) {
        self.type = type
    }
}

class Car {
    var brand: String
    var model: String
    var year: String
    var engine: Engine
    
    init(brand: String, model: String, year: String, engine: Engine) {
          self.brand = brand
          self.model = model
          self.year = year
          self.engine = engine
      }
    // 운전하기 동작
    func drive() {
        print("\(brand) \(model) 주행 중...")
    }
    
    // 정지하기
    func stop() {
        print("\(brand) \(model) 정지 중...")
    }
    
    // 충전하기 (전기차 전용)
    func charge() {
        print("\(brand) \(model) 충전 중...")
    }
    
    // 연료 보충하기 (내연차 및 하이브리드차 전용)
    func refuel() {
        print("\(brand) \(model) 연료 보충 중...")
    }
}


// ElectricEngine 타입 정의
class ElectricEngine: Engine {
    init() {
        super.init(type: "Electric")
    }
}

// ElectricCar 클래스 설계 (Car 상속)
class ElectricCar: Car {
    init(brand: String, model: String, year: String) {
        let electricEngine = ElectricEngine()
        super.init(brand: brand, model: model, year: year, engine: electricEngine)
    }
    
    // 충전 동작을 더 강조하는 오버라이드
    override func charge() {
        print("\(brand) \(model) 전기차 충전 중...")
    }
}

// HydrogenEngine 타입 정의
class HydrogenEngine: Engine {
    init() {
        super.init(type: "Hydrogen")
    }
}

// HybridCar 클래스 설계 (Car 상속)
class HybridCar: Car {
    private var hydrogenEngine: HydrogenEngine
    
    init(brand: String, model: String, year: String) {
        let engine = Engine(type: "Gasoline")
        self.hydrogenEngine = HydrogenEngine()
        super.init(brand: brand, model: model, year: year, engine: engine)
    }
    
    // 엔진 교체 동작
    func switchEngine(to newEngine: Engine) {
        self.engine = newEngine
        print("엔진 교체 완료: \(newEngine.type) 엔진으로 변경되었습니다.")
    }
    
    // 하이브리드차 전용 동작
    override func refuel() {
        print("\(brand) \(model) 하이브리드차 연료 보충 중...")
    }
}
