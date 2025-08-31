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
  Scenario Outline: Negative Register Test-Ohne Gender geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password | Message                     |
      | Register |        | Alex    | Sauza    | alexsauz4@gmail.com | Test1234 | Test1234         | Your registration completed |


  @TestCase04
  Scenario Outline: Negative Register Test-Ohne Vorname geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password | Message                     |
      | Register |        |         | Sauza    | alexsauz4@gmail.com | Test1234 | Test1234         | Your registration completed |

  @TestCase05
  Scenario Outline: Negative Register Test-Ohne Nahnahme geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password | Message                     |
      | Register |        | Alex    |          | alexsauz4@gmail.com | Test1234 | Test1234         | Your registration completed |

  @TestCase06
  Scenario Outline: Negative Register Test-Ohne emailadresse geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email | Password | Confirm Password | Message                     |
      | Register |        | Alex    | Sauza    |       | Test1234 | Test1234         | Your registration completed |

  @TestCase07
  Scenario Outline: Negative Register Test-Ohne Password
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password | Message                     |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com |          | Test1234         | Your registration completed |

  @TestCase08
  Scenario Outline: Negative Register Test-Ohne ConfirmPassword geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password | Message                     |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com | Test1234 |                  | Your registration completed |

  @TestCase09
  Scenario Outline: Negative Register Test-Password und ConfirmPassword unterschiedlich geben
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email               | Password | Confirm Password | Message                     |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com | Test1234 | Test123452       | Your registration completed |