package com.demo_web_Shop.pages;

import com.demo_web_Shop.utilities.BrowserUtils;
import com.demo_web_Shop.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class RegisterPage extends BasePage {
    @FindBy(css = "[id='FirstName']")
    public WebElement Vorname_we;

    @FindBy(css = "[id='LastName']")
    public WebElement NachName_we;
    @FindBy(css = "[id='Email']")
    public WebElement Email_we;
    @FindBy(css = "[id='Password']")
    public WebElement Password_we;
    @FindBy(css = "[id='ConfirmPassword']")
    public WebElement ConfirmPassword_we;
    @FindBy(id ="register-button" )
    public WebElement RegisterBtn_we;
    @FindBy(xpath = "//*[normalize-space(text())='Your registration completed']")
    public WebElement registrationSuccessMessage;

    @FindBy(xpath = "//*[text()='First name is required.']")
    public WebElement FirstNameWrongMessage;

    public void registerListAusfüllen(String gender, String Vorname, String NachName, String email, String Passwort, String ConfirmPassword) {
        WebElement gender_we = Driver.get().findElement(By.xpath("//input[@value='" + gender + "']"));
        BrowserUtils.waitFor(5);
        BrowserUtils.clickWithJS(gender_we);
        Vorname_we.sendKeys(Vorname);
        BrowserUtils.waitFor(10);
        NachName_we.sendKeys(NachName);
        BrowserUtils.waitFor(10);
        Email_we.sendKeys(email);
        BrowserUtils.waitFor(10);
        Password_we.sendKeys(Passwort);
        BrowserUtils.waitFor(10);
        ConfirmPassword_we.sendKeys(ConfirmPassword);
        BrowserUtils.waitFor(10);
        BrowserUtils.clickWithJS(RegisterBtn_we);


    }


}

