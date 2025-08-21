@Demo_Web-1
Feature: Als Benutzer sollte ich mich auf der Website registrieren können.

  Scenario Outline: Positive Register Test
    Given Der Benutzer ist auf dem Homepage
    And Der Benutzer navigiert zur Registrierungsseite mit "<menuName>"
    When Der Benutzer registiert sic mit "<Gender>" und "<Vorname>" und "<Nachname>" und "<Email>" und "<Password>" und "<Confirm Password>"
    Then Der Bentzer kann "<Message>" Message sehen.
    Examples:
      | menuName | Gender | Vorname | Nachname | Email              | Password | Confirm Password | Message                     |
      | Register | M      | Alex    | Sauza    | alexsauz4@gmail.com | Test1234 | Test1234         | Your registration completed |

