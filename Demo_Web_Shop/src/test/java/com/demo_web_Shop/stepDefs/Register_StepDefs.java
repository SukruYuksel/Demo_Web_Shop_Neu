package com.demo_web_Shop.stepDefs;

import com.demo_web_Shop.pages.RegisterPage;
import com.demo_web_Shop.utilities.BrowserUtils;
import com.demo_web_Shop.utilities.ConfigurationReader;
import com.demo_web_Shop.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Register_StepDefs {
    RegisterPage registerPage = new RegisterPage();

    @Given("Der Benutzer ist auf dem Homepage")
    public void der_benutzer_ist_auf_dem_homepage() {
        Driver.get().get(ConfigurationReader.get("url"));

    }

    @Given("Der Benutzer navigiert zur Registrierungsseite mit {string}")
    public void der_benutzer_navigiert_zur_registrierungsseite_mit(String menuName) {
        registerPage.navigateMenu(menuName);

    }

    @When("Der Benutzer registiert sic mit {string} und {string} und {string} und {string} und {string} und {string}")
    public void der_benutzer_registiert_sic_mit_und_und_und_und_und(String gender, String VorName, String NachName, String email, String Password, String ConfirmPassword) {
        registerPage.registerListAusfüllen(gender, VorName, NachName, email, Password, ConfirmPassword);
    }

    @Then("Der Bentzer kann {string} Message sehen.")
    public void der_bentzer_kann_message_sehen(String RegisterBestatigungsMEssage) {
        BrowserUtils.waitFor(5);
        Assert.assertTrue(registerPage.registrationSuccessMessage.isDisplayed());
        String actualBestatigungsText = registerPage.registrationSuccessMessage.getText();
        BrowserUtils.waitFor(5);
        Assert.assertEquals(RegisterBestatigungsMEssage, actualBestatigungsText);

    }

    @Then("Der Benutzer kann sich nicht anmelden und nimmt zuständige {string}")
    public void der_benutzer_kann_sich_nicht_anmelden_und_nimmt_zuständige(String WrongMEssage) {
        String firstNameActurlWrongMessage = registerPage.FirstNameWrongMessage.getText();
        Assert.assertEquals(WrongMEssage, firstNameActurlWrongMessage);

    }

    @Then("Der Benutzer kann sich Ohne Vorname  nicht registieren und bekommt Fehlercode")
    public void der_benutzer_kann_sich_ohne_vorname_nicht_registieren_und_bekommt_fehlercode() {
        String expectedWrongmessage = "First name is required.";
        String firstNameActurlWrongMessage = registerPage.FirstNameWrongMessage.getText();
        System.out.println(firstNameActurlWrongMessage);
        Assert.assertEquals(expectedWrongmessage, firstNameActurlWrongMessage);
    }

    @Then("Der Benutzer kann sich Ohne Nachname  nicht registieren und bekommt Fehlercode")
    public void der_benutzer_kann_sich_ohne_nachname_nicht_registieren_und_bekommt_fehlercode() {
        String expectedNachnameWrongMessage = "Last name is required.";
        String actuallastNameWrongmessage = registerPage.LastNameWrongMessage.getText();
        System.out.println(actuallastNameWrongmessage);
        Assert.assertEquals(expectedNachnameWrongMessage, actuallastNameWrongmessage);

    }

    @Then("Der Benutzer kann sich Ohne Email  nicht registieren und bekommt Fehlercode")
    public void der_benutzer_kann_sich_ohne_email_nicht_registieren_und_bekommt_fehlercode() {
        String expectedEmailWrongmessage = "Email is required.";
        String actualEmailWrongmessage = registerPage.emailWrongMessage.getText();
        System.out.println(actualEmailWrongmessage);
        Assert.assertEquals(expectedEmailWrongmessage, actualEmailWrongmessage);

    }

    @Then("Der Benutzer kann sich Ohne Password nicht registeren und bekommt Fehlercode")
    public void der_benutzer_kann_sich_ohne_password_nicht_registeren_und_bekommt_fehlercode() {
        String expectedPasswordWrongMessage = "Password is required.";
        String actualPasswordWrongMessage = registerPage.passwordWrongMessage.getText();
        System.out.println(actualPasswordWrongMessage);
        Assert.assertEquals(expectedPasswordWrongMessage, actualPasswordWrongMessage);

    }

    @Then("Der Benutzer kann sich Ohne Confirm Password nicht registeren und bekommt Fehlercode")
    public void der_benutzer_kann_sich_ohne_confirm_password_nicht_registeren_und_bekommt_fehlercode() {
        String expectedConfirmPasswordWrongmessage = "Password is required.";
        String actuallConfirmWrongMEssage = registerPage.confirmPasswordWrongMessage.getText();
        System.out.println(actuallConfirmWrongMEssage);
        Assert.assertEquals(expectedConfirmPasswordWrongmessage, actuallConfirmWrongMEssage);
    }

    @Then("Der Benutzer kann sich unterscheidliche  Password und Confirm Password nicht registeren und bekommt Fehlercode")
    public void der_benutzer_kann_sich_unterscheidliche_password_und_confirm_password_nicht_registeren_und_bekommt_fehlercode() {

        String expectedConfirmPasswordPasswordWrongmessage = "The password and confirmation password do not match.";
        String actuallConfirmPassworPasswordWrongMEssage = registerPage.confirmPasswordWrongMessage.getText();
        System.out.println(expectedConfirmPasswordPasswordWrongmessage);
        Assert.assertEquals(expectedConfirmPasswordPasswordWrongmessage, actuallConfirmPassworPasswordWrongMEssage);

    }

    @Then("Der Benutzer kann sich nicht registeren. Passwort sollte mindestens {int} Stelleg sein")
    public void der_benutzer_kann_sich_nicht_registeren_passwort_sollte_mindestens_stelleg_sein(Integer int1) {
        //NAch Anfoderungen solte Passwort mindestens 6 Stellig sein. Über Buchtabieren und Chrakter gibt keine Information.
        String expectedpasswordUnterBesttimmteZahlWrongMessage = "The password should have at least 6 characters.";
        String actualpasswordUnterBesttimmteZahlWrongMessage = registerPage.confirmPasswordWrongMessage.getText();
        System.out.println(expectedpasswordUnterBesttimmteZahlWrongMessage);
        Assert.assertEquals(expectedpasswordUnterBesttimmteZahlWrongMessage, actualpasswordUnterBesttimmteZahlWrongMessage);
    }
}
