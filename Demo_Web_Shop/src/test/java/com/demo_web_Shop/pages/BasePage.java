package com.demo_web_Shop.pages;

import com.demo_web_Shop.utilities.BrowserUtils;
import com.demo_web_Shop.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public abstract class BasePage {

    public BasePage() {
        PageFactory.initElements(Driver.get(), this);
    }




    public void navigateMenu(String MenuName){
         WebElement ObenMenu = Driver.get().findElement(By.xpath("//a[text()='" + MenuName + "']"));
        JavascriptExecutor jse;
        BrowserUtils.clickWithJS(ObenMenu);


    }
}
