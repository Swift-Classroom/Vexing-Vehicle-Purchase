import Testing

struct TaskCanIBuyTests {
  @Test func testCanBuy() async throws{
      #expect(
      canIBuy(vehicle: "1974 Ford Pinto", price: 516.32, monthlyBudget: 100.00) ==
      "Yes! I'm getting a 1974 Ford Pinto")
  }

  @Test func testCannotBuy() async throws {
    
      #expect(
      canIBuy(vehicle: "2011 Bugatti Veyron", price: 2_250_880.00, monthlyBudget: 10000.00) ==
      "Darn! No 2011 Bugatti Veyron for me")
  }

  @Test func testBeFrugal() async throws {
    
      #expect(
      canIBuy(vehicle: "2020 Indian FTR 1200", price: 12_500, monthlyBudget: 200) ==
      "I'll have to be frugal if I want a 2020 Indian FTR 1200")
  }
}

struct TaskLicenseTypeTests {
  @Test func testTwoWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 2) == "You will need a motorcycle license for your vehicle")
  }

  @Test func testThreeWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 3) == "You will need a motorcycle license for your vehicle")
  }

  @Test func testFourWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 4) == "You will need an automobile license for your vehicle")
  }

  @Test func testFiveWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 5) == "We do not issue licenses for those types of vehicles")
  }

  @Test func testSixWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 6) == "You will need an automobile license for your vehicle")
  }

  @Test func testSevenWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 7) == "We do not issue licenses for those types of vehicles")
  }

  @Test func testEighteenWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 18) ==
      "You will need a commercial trucking license for your vehicle")
  }

  @Test func testZeroWheels() async throws {
    
      #expect(
      licenseType(numberOfWheels: 0) == "We do not issue licenses for those types of vehicles")
  }

  @Test func testOneWheel() async throws {
    
      #expect(
      licenseType(numberOfWheels: 1) == "We do not issue licenses for those types of vehicles")
  }
}

struct TaskCalculateResellPriceTests {
  @Test func testPriceUnderThreeYears() async throws {
    
      #expect(calculateResellPrice(originalPrice: 40_000, yearsOld: 2) == 32_000)
  }

  @Test func testPriceWhenThreeYears() async throws {
    
      #expect(calculateResellPrice(originalPrice: 40_000, yearsOld: 3) == 28_000)
  }

  @Test func testPriceWhenSevenYears() async throws {
    
      #expect(calculateResellPrice(originalPrice: 50_000, yearsOld: 7) == 35_000)
  }

  @Test func testPriceWhenTenYears() async throws {
    
      #expect(calculateResellPrice(originalPrice: 25_000, yearsOld: 10) == 12_500)
  }

  @Test func testPriceWhenOverTenYears() async throws {
    
      #expect(calculateResellPrice(originalPrice: 50_000, yearsOld: 11) == 25_000)
  }
}
