@Demo_Web-1
Feature: Als Benutzer sollte ich mich auf der Website registrieren können.

  Background:
    Given Der Benutzer ist auf dem Homepage
@TestCase01
  Scenario Outline: Positive Register Test
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password | Message                     |
      | Register | M      | Alex    | Sauza    | alexsauz6@gmail.com | Test1234 | Test1234         | Your registration completed |

  @TestCase02
  Scenario Outline: Negative Register Test-Alle nötige Bereich leer lassem
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich nicht anmelden und nimmt zuständige "<Fehlermessage>"
    Examples:
      | menuName | Gender | Vorname | Nachname | Email | Password | Confirm Password | Fehlermessage                    |
      | Register |        |         |          |       |          |                  | First name is required. |



  @TestCase03
  Scenario Outline: Negative Register Test-Ohne Vorname geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich Ohne Vorname  nicht registieren und bekommt Fehlercode
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password |
      | Register |    M    |         | Sauza    | alexsauz4@gmail.com | Test1234 | Test1234         |

  @TestCase04
  Scenario Outline: Negative Register Test-Ohne Nahnahme geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich Ohne Nachname  nicht registieren und bekommt Fehlercode
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password |
      | Register |        | Alex    |          | alexsauz4@gmail.com | Test1234 | Test1234         |

  @TestCase05
  Scenario Outline: Negative Register Test-Ohne emailadresse geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich Ohne Email  nicht registieren und bekommt Fehlercode
    Examples:
      | menuName | Gender | Vorname | Nachname | Email | Password | Confirm Password |
      | Register |        | Alex    | Sauza    |       | Test1234 | Test1234         |

  @TestCase06
  Scenario Outline: Negative Register Test-Ohne Password
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich Ohne Password nicht registeren und bekommt Fehlercode
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com |          | Test1234         |

  @TestCase07
  Scenario Outline: Negative Register Test-Ohne ConfirmPassword geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich Ohne Confirm Password nicht registeren und bekommt Fehlercode
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com | Test1234 |                  |

  @TestCase08
  Scenario Outline: Negative Register Test-Password und ConfirmPassword unterschiedlich geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich unterscheidliche  Password und Confirm Password nicht registeren und bekommt Fehlercode
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com | Test1234 | Test123452       |

  @TestCase09
  Scenario Outline: Negative Register Test-Password 5 Karakkter eingeben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Benutzer kann sich nicht registeren. Passwort sollte mindestens 6 Stelleg sein
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com | Test| Test    |

    #Für Emailadresse andere negative Test schreiben bitte