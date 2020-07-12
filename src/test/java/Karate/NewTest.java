package Karate;

import org.testng.annotations.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class NewTest {
  @Test
  public void testflightbook() throws InterruptedException {
	  
	    System.setProperty("webdriver.chrome.driver", "chromedriver.exe");
		WebDriver driver=new ChromeDriver();
		driver.get("https://www.jetblue.com");
		driver.manage().window().maximize();
		
		
        driver.findElement(By.id("city-selector_9t1et2c43")).sendKeys("New York City area (NYC)");
        driver.findElement(By.id("city-selector_9t1et2c43")).sendKeys("Austin, TX (AUS)");
		driver.findElement(By.id("departure-date_nfm1khnsm")).sendKeys("Sun Jul 12");
		driver.findElement(By.id("return-date_g2emai3sa")).sendKeys("Mon Jul 13");
		driver.findElement(By.name("traveler-selector_2uy289xrt")).sendKeys("1 Adult");
		
		driver.findElement(By.xpath("/html/body/jb-app/jb-basic-template/div/div/jb-section-header-container/div/div/div[1]/div/jb-section-container/div/div/jb-book-trip-container/jb-pattern-block/div/div[2]/div/jb-booker-tabs-container/div/jb-tabs/section/div[1]/jb-tab-panel/jb-booker-tabs-wrapper/div/jb-booker-air-wrapper/div/div/jb-booker-air-submit/button")).click();
  }
  

}
