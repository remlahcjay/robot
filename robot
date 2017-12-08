
package main;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class robot {
	// Fight player with more than 50% winning chance.
	public void fighter() {
		WebDriver driver = new ChromeDriver();
		//	WebDriver driver = new RemoteWebDriver(DesiredCapabilities.chrome());
		driver.manage().window().maximize();
		// Login
		driver.get("https://www.coinbrawl.com/users/sign_in");
		// INSERT USERNAME AND PASSWORD DRI
		driver.findElement(By.name("commit")).click();
		
//		Integer tokenCount = 0;
//		try {
//			String token = driver.findElement(By.xpath("//*[@id=\"quick-stats\"]/div/div/ul/li[7]/span[2]/span[2]")).getText();
//			Integer trimNum = 0;
//			if(token.length()%2==0)
//				trimNum = (token.length())/2;
//			else 	trimNum = (token.length()-1)/2;
//			token = token.substring(0, token.length() - (trimNum + 1));
//			System.out.println("Token : " + token);
//			
//			tokenCount = Integer.valueOf(token);
//		}catch (Exception e) {
//			e.printStackTrace();
//		}
		int t =0;
//		long lastTokenChanged = System.currentTimeMillis(); 
		String lastPName = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[1]/td[1]/div/div[2]/a/div[1]")).getText();
		int inc = 1;
		
			while(t == 0) {
				try {
					String curPName = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[1]/td[1]/div/div[2]/a/div[1]")).getText();
					if(lastPName.equals(curPName)) {
						inc+=1;
						if(inc>1500) {
							inc=0;
							driver.get("https://www.coinbrawl.com/arena");
						}						
					}else {
						lastPName=curPName;
						inc=0;
					}
						
					String P1 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[1]/td[3]/div")).getText();
					Integer P1_chance = Integer.valueOf(P1.replaceAll("%", ""));
					System.out.println("P1:" + P1_chance);
					if(P1_chance>50) {
						driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[1]/td[5]/a")).click();
					}else {
						String P2 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[2]/td[3]/div")).getText();
						Integer P2_chance = Integer.valueOf(P2.replaceAll("%", ""));
						System.out.println("P2:" + P2_chance);
						if(P2_chance>50) {
							driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[2]/td[5]/a")).click();
						}else {
							String P3 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[3]/td[3]/div")).getText();
							Integer P3_chance = Integer.valueOf(P3.replaceAll("%", ""));
							System.out.println("P3:" + P3_chance);
							if(P3_chance>50) {
								driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[3]/td[5]/a")).click();
							}else {
								String P4 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[4]/td[3]/div")).getText();
								Integer P4_chance = Integer.valueOf(P4.replaceAll("%", ""));
								System.out.println("P4:" + P4_chance);
								if(P4_chance>50) {
									driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[4]/td[5]/a")).click();
								}else {
									String P5 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[5]/td[3]/div")).getText();
									Integer P5_chance = Integer.valueOf(P5.replaceAll("%", ""));
									System.out.println("P5:" + P5_chance);
									if(P5_chance>50) {
										driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[5]/td[5]/a")).click();
									}
								}	
							}
						}
					}
				}catch(Exception ex) {
					
				}
				
			}
	}
	
	// Fight player with more than 50% winning chance.
	public void fighter2() {
		WebDriver driver = new ChromeDriver();
		//	WebDriver driver = new RemoteWebDriver(DesiredCapabilities.chrome());
		driver.manage().window().maximize();
		// Login
		driver.get("https://www.coinbrawl.com/users/sign_in");
		driver.findElement(By.id("user_email")).sendKeys("chalmer.jamero@gmail.com");
		driver.findElement(By.id("user_password")).sendKeys("12181991");
		driver.findElement(By.name("commit")).click();
	
		int t =0;
//		long lastTokenChanged = System.currentTimeMillis(); 
		
			while(t == 0) {
				try {
						
					String P1 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[5]/td[3]/div")).getText();
					Integer P1_chance = Integer.valueOf(P1.replaceAll("%", ""));
					System.out.println("P1:" + P1_chance);
					if(P1_chance>50) {
						driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[5]/td[5]/a")).click();
					}else {
						String P2 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[4]/td[3]/div")).getText();
						Integer P2_chance = Integer.valueOf(P2.replaceAll("%", ""));
						System.out.println("P2:" + P2_chance);
						if(P2_chance>50) {
							driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[4]/td[5]/a")).click();
						}else {
							String P3 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[3]/td[3]/div")).getText();
							Integer P3_chance = Integer.valueOf(P3.replaceAll("%", ""));
							System.out.println("P3:" + P3_chance);
							if(P3_chance>50) {
								driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[3]/td[5]/a")).click();
							}else {
								String P4 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[2]/td[3]/div")).getText();
								Integer P4_chance = Integer.valueOf(P4.replaceAll("%", ""));
								System.out.println("P4:" + P4_chance);
								if(P4_chance>50) {
									driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[2]/td[5]/a")).click();
								}else {
									String P5 = driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[1]/td[3]/div")).getText();
									Integer P5_chance = Integer.valueOf(P5.replaceAll("%", ""));
									System.out.println("P5:" + P5_chance);
									if(P5_chance>50) {
										driver.findElement(By.xpath("//*[@id=\"battle-table\"]/div/table/tbody/tr[1]/td[5]/a")).click();
									}
								}	
							}
						}
					}
				}catch(Exception ex) {
					
				}
				
			}
	}
	
	
	public void trainer() {
		WebDriver driver = new ChromeDriver();
		//	WebDriver driver = new RemoteWebDriver(DesiredCapabilities.chrome());
		driver.manage().window().maximize();
		// Login
		driver.get("https://www.coinbrawl.com/users/sign_in");
    // INSERT USERNAME AND PASSWORD DRI
		driver.findElement(By.name("commit")).click();
		

		// selecting character page.
		driver.findElement(By.linkText("Character")).click();
		// Getting more stamina.
		driver.findElement(By.linkText("Get more stamina!")).click();
		driver.findElement(By.xpath("//*[@id=\"regenerate-stamina-modal\"]/div/div/form/div[3]/input")).click();
		
		// Goto Arena.
		driver.findElement(By.linkText("The Arena")).click();
		for(int x = 0; x<100;x++) {
		// Amateur swordman, increase stamina for fighting.
		// driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[3]/td[5]/a[2]/i")).click();
		// Wandering wizard, increase stamina for fighting
		// driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[4]/td[5]/a[2]/i")).click();
		// Black Knight, increase stamina for fighting.
		//driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[5]/td[5]/a[2]")).click();
		// Crystal Dragon, increase stamina for fighting.
		driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[6]/td[5]/a[2]")).click();
			if(x==99) {
				// Fight amateur sword man.
				//driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[3]/td[6]/a")).click();
				// Fight wandering wizard.
				// driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[4]/td[6]/a")).click();
				// Fight Black Knight
				// driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[5]/td[6]/a")).click();
				// Fight Crystal Dragon
				driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[6]/td[6]/a")).click();
				
				int y =1 ;
				while(y==1) {
					// Go back to character page.
					driver.get("https://www.coinbrawl.com/character");
					// ---------- UPGRADING MODE
					  try {
				            // thread to sleep for 15000 milliseconds
				            Thread.sleep(15000);
				         } catch (Exception e) {
				            
				         }

					// Try get more stamina.
					try {
						driver.findElement(By.linkText("Get more stamina!")).click();
						driver.findElement(By.xpath("//*[@id=\"regenerate-stamina-modal\"]/div/div/form/div[3]/input")).click();
						//driver.findElement(By.xpath("/html/body/div[2]/div/div/div/div/div[4]/div[2]/div/div/div[2]/table/tbody/tr[4]/td[3]/a[2]")).click();
					} catch (Exception e) {
						continue;
					}

					// Go back to Arena.
					driver.findElement(By.linkText("The Arena")).click();
					try {
						
						// Fight Amateur swordman.
						//driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[3]/td[6]/a")).click();
						// Fight wandering wizard.
						// driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[4]/td[6]/a")).click();
						// Fight Black knight
						// driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[5]/td[6]/a")).click();
						// Fight Crystal Dragon
						driver.findElement(By.xpath("//*[@id=\"npc-battle-table\"]/div/table/tbody/tr[6]/td[6]/a")).click();
					} catch (Exception e) {
						// TODO: handle exception
					}
				}
			}
		}
	}
	
	public void upgraderAttack() {		
		WebDriver driver = new ChromeDriver();
		//	WebDriver driver = new RemoteWebDriver(DesiredCapabilities.chrome());
		driver.manage().window().maximize();
		// Login
		driver.get("https://www.coinbrawl.com/users/sign_in");
		// INSERT USERNAME AND PASSWORD DRI
		driver.findElement(By.name("commit")).click();
		

		// selecting character page.
		driver.findElement(By.linkText("Character")).click();
		int y =0;
		while(y==0) {
			try {
				  try {
			            // thread to sleep for 15000 milliseconds
			            Thread.sleep(3000);
			         } catch (Exception e) {
			            
			         }
				driver.get("https://www.coinbrawl.com/upgrades/attack");
			}catch(Exception e){
			}
		}
	}
	public void upgraderDefense() {		
		WebDriver driver = new ChromeDriver();
		//	WebDriver driver = new RemoteWebDriver(DesiredCapabilities.chrome());
		driver.manage().window().maximize();
		// Login
		driver.get("https://www.coinbrawl.com/users/sign_in");
	// INSERT USERNAME AND PASSWORD DRI
		driver.findElement(By.name("commit")).click();
		

		// selecting character page.
		driver.findElement(By.linkText("Character")).click();
		int y =0;
		while(y==0) {
			try {
				driver.get("https://www.coinbrawl.com/upgrades/defense");
			}catch(Exception e){
			}
		}
	}
}
