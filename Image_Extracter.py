from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time
import requests
import os

'''
Snake Plant (Sansevieria trifasciata)
Peace Lily (Spathiphyllum spp.)
Ficus/Weeping Fig (Ficus benjamina)
Aloe Vera (Aloe barbadensis miller)
Devil's Ivy/Golden Pothos (Epipremnum aureum)
Rubber Plant (Ficus elastica)
African Violet (Saintpaulia spp.)
Boston Fern (Nephrolepis exaltata)
ZZ Plant (Zamioculcas zamiifolia)

'''

plants = [["ZZ Plant (Zamioculcas zamiifolia)", "zz"]]



# Open Google Images and search for "Peace Lily (Spathiphyllum spp.)"

for name in plants:
    # Set up Chrome WebDriver
    chrome_path = "/path/to/chromedriver"  # Path to chromedriver executable
    service = Service(chrome_path)
    driver = webdriver.Chrome()
    driver.get("https://www.google.com/imghp")
    search_box = driver.find_element(By.NAME, "q")
    search_box.send_keys(name[0])
    search_box.send_keys(Keys.RETURN)
    time.sleep(2)  # Allow time for images to load

    # Scroll down to load more images
    for _ in range(30):
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        time.sleep(3)  # Wait for images to load

    # Find and extract image URLs
    image_elements = driver.find_elements(By.TAG_NAME, "img")
    image_urls = [element.get_attribute("src") for element in image_elements]

    # Create directory to save images
    os.makedirs(name[1], exist_ok=True)

    # Download and save images
    print ("The Length: %d", len(image_urls))
    for i, url in enumerate(image_urls[:len(image_urls)]):
        try:
            image_data = requests.get(url).content
            with open(f"{name[1]}/image_{i+1}.jpg", "wb") as f:
                f.write(image_data)
            print(f"Image {i+1} of {len(image_urls)} downloaded successfully")
        except Exception as e:
            print(f"Error downloading image {i+1} of {len(image_urls)}: {e}")

    # Close the WebDriver
    driver.quit()


