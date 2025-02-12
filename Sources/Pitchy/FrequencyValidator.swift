public struct FrequencyValidator {
  public static let minimumFrequency = 20.0
  public static let maximumFrequency = 4190.0

  public static func isValid(frequency: Double) -> Bool {
    return frequency > 0.0
      && frequency >= minimumFrequency
      && frequency <= maximumFrequency
  }

  public static func validate(frequency: Double) throws {
    if !isValid(frequency: frequency) {
      throw PitchError.invalidFrequency
    }
  }
}
