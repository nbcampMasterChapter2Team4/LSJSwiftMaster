//
//  Challenge_2.swift
//  LSJSwiftMaster
//
//  Created by yimkeul on 3/17/25.
//

import Foundation

// PEngine 프로토콜: 자동차 엔진에 대한 공통 인터페이스 정의
protocol PEngine {
    var Ptype: String { get }
    func Pstart()
}

// PElectricEngine: Electric 엔진에 대한 구체적인 구현
class PElectricEngine: PEngine {
    var Ptype: String = "Electric"
    
    func Pstart() {
        print("전기 엔진 시작...")
    }
}

// PHydrogenEngine: Hydrogen 엔진에 대한 구체적인 구현
class PHydrogenEngine: PEngine {
    var Ptype: String = "Hydrogen"
    
    func Pstart() {
        print("수소 엔진 시작...")
    }
}

// PCar 프로토콜: 자동차에 대한 공통 인터페이스 정의
protocol PCar {
    var Pbrand: String { get }
    var Pmodel: String { get }
    var Pengine: PEngine { get }
    
    func Pdrive()
    func Pstop()
}

// PBasicCar: 기본적인 자동차 구현
class PBasicCar: PCar {
    var Pbrand: String
    var Pmodel: String
    var Pengine: PEngine
    
    init(Pbrand: String, Pmodel: String, Pengine: PEngine) {
        self.Pbrand = Pbrand
        self.Pmodel = Pmodel
        self.Pengine = Pengine
    }
    
    func Pdrive() {
        print("\(Pbrand) \(Pmodel) 주행 중...")
        Pengine.Pstart()  // 엔진 시작
    }
    
    func Pstop() {
        print("\(Pbrand) \(Pmodel) 정지 중...")
    }
}
