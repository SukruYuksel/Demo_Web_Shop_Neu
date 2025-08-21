package com.demo_web_Shop.stepDefs;

import com.demo_web_Shop.pages.BasePage;
import com.demo_web_Shop.pages.RegisterPage;
import com.demo_web_Shop.utilities.ConfigurationReader;
import com.demo_web_Shop.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.checkerframework.checker.units.qual.N;
import org.junit.Assert;

public class Register_StepDefs {
   RegisterPage registerPage=new RegisterPage();

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
registerPage.registerListAusfüllen(gender,VorName, NachName,email,Password,ConfirmPassword);
    }
    @Then("Der Bentzer kann {string} Message sehen.")
    public void der_bentzer_kann_message_sehen(String RegisterBestatigungsMEssage) {
        Assert.assertTrue(registerPage.registrationSuccessMessage.isDisplayed());
        String actualBestatigungsText=registerPage.registrationSuccessMessage.getText();
        Assert.assertEquals(RegisterBestatigungsMEssage,actualBestatigungsText);

    }


}
