DROP DATABASE IF EXISTS menu;

CREATE DATABASE menu;

USE menu;

CREATE TABLE restaurants (
  ID int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (ID)
);

CREATE TABLE sections (
  ID int NOT NULL AUTO_INCREMENT,
  FOREIGN KEY (PageID) REFERENCES restaurants(ID),
  Name varchar(255) NOT NULL,
  Category varchar(255) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE food (
  FOREIGN KEY (SectionID) REFERENCES sections(ID),
  DishName varchar(255) NOT NULL,
  Ingredients varchar(255) NOT NULL,
  Price int NOT NULL
);

CREATE TABLE specials (
  FOREIGN KEY (PageID) REFERENCES restaurants(ID),
  Blurb varchar(255) NOT NULL
);

DECLARE @Counter INT;
DECLARE @SectionCounter INT;
SET @Counter = 0;
SET @SectionCounter = 0;
WHILE @Counter <= 100;
  BEGIN;
    insert into restaurants () values ();
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "To Share or Not?", "Brunch");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Eggs", "Brunch");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Brunch Cocktails", "Brunch");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Specialty Cocktails", "Brunch");
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Roasted Beet Salad", "arugula, endive, feta, walnut, mustard vinaigrette", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Gol Guppa", "puri bulb, white pea, cucumber, cilantro stem, jalapeno (water: cilantro- habanero & orange-tamarind water)", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Palak Chaat", "baby spinach, chickpea, tamarind, yogurt", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Artichoke Chaat", "artichoke heart, avocado, tamarind, chaat masala", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Spicy Indian Slider", "potato, tamarind, pomegranate, chickpea vermicelli", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Arancini", "rice, lentil, cheddar cheese, dill crema", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Avocado Naan", "jalapeno, scallion, chaat masala, sunflower seed, cherry tomato", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pulled Pork Kulcha", "braised pork, ginger, chili, cilantro, red wine jus", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Mushroom & Cheese Kulcha", "sauteed mushroom, ginger, chili, cilantro, red wine jus", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Goat Cheese Naan", "pine nut, microgreen, pomegranate dust", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "French Toast", "buttermilk, banana, rum, cinamon, butterscotch", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Asparagus Uttapam", "rice, lentil, mustard seed, turmeric, coconut chutney", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Poori Aloo", "potato stew, fried lentil bread, english pea, crispy onion, raita", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Seasonal Veggie Appam", "mustard seed, curry leaf, coconut, fermented rice", 1600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Gulf Shrimp Appam", "mustard seed, curry leaf, coconut, fermented rice", 1800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Mushroom Khushka", "soy, vinegar, ginger, red wine jus, chili, egg julienne", 1800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pork Belly Khushka", "soy, vinegar, ginger, red wine jus, chili, egg julienne", 1800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Tandoori Fried Chicken & Waffle", "spinach & cilantro waffle, chicken wings, chili maple syrup", 1700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Fish & Chips", "atlantic cod, chickpea, turmeric, cumin, corriander, chili aioli", 1800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Bison Keema", "ground bison, caramelized onion, bacon, quail egg", 2500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Curry Benedict & Lamb Chapli", "spinach naan, ground lamb patty, curried hollandaise, spiced potato", 1700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Masala Cheese Omelette", "cilantro, green chili, tomato, onion, sourdough toast", 1600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Curry Benedict & Smoked Salmon", "spinach naan, smoked salmon, curried hollandaise, spiced potato", 1700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Choice of Eggs with Toast & Spiced Potatoes", "sunny side up / fried / scrambled or poached", 1500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Haute Coffee", "cold brew, brandy, sherry, cocoa, cardamom, cold coconut foam", 1300);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "M.G. Road", "gin, coconut, egg white, rose sharbat, orgeat", 1300);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pink City", "nolet's gin, rhubarb, ginger, prickly pear, prosecco", 1300);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Banana Pancake", "rum, banana, hazelnut, walnut, pineapple, citrus", 1300);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Patiala Peg", "bourbon, kala khatta, spices, ardbeg", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Moneypenny G & T", "gin, yellow chartreuse, pomegranate, sage, combier rose, tonic", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "J.R.D. Tata Sour", "vodka, lemon, violette, mango", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "ABCD", "golden chai gin, antica formula, pomegranate, lemon", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Holi Cow", "turmeric gin, yellow chartreuse, black pepper, lemon, ginger", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Star of Bombay", "vodka, rose, blueberry, lemongrass, basil, citrus", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Crazy Jutt", "scotch, honey, apple cider vinegar, cardamom bitters, soda water", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Peacock Bay", "clarified rum, batavia arrack, ginger, lime, bitters", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "The Jaipur Emerald", "tequila blanco, khus, cilantro, green chili, toasted coconut", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Glamping", "graham cracker bourbon, cocoa nib, toasted marshmallow", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Dragon Glass", "grand marnier, activated charcoal, coconut milk, orange zest, meyer lemon, egg white", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Rose of Sharon", "mezcal, smoked chiles, hibiscus, cocoa", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Bengali Sour", "rye, genepy, blood orange, kumquat, fennel, egg white, bitters", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Love Potion", "champagne, gold cordial, manzanilla, green chartreuse, oleo-saccharum", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "New Delhi Lotus", "gin, yuzu, pineau de charentes, aperol, basil", 1500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Coffee", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Masala Chai / Seasonal Teas", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Mint Lemonade", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Mango Lassi", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Coke", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Diet Coke", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Sprite", "", 500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Ninkasi, Helles Belles Lager 5.3 ABV", "", 700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 'Fort Point "Animal" IPA 7.4 ABV', "", 900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Allagash, Belgian Style White 5.1 ABV", "", 800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Headlands, Hawk Hill Jeff 4.7 ABV", "", 900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Taj Mahal, Premium Lager 4.5 ABV", "", 700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Calicraft, Oaktown Brown Ale 6.7 ABV", "", 900)
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "ACE, Pineapple Cider", "", 800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Clausthaler, Non-Alcoholic 0.45 ABV", "", 700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 'Rodenbach "Gran Cru" Sour Ale 6.0 ABV', "", 800);
    SET @SectionCounter += 1;

    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Small", "Dinner Menu Winter 2020");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Mains", "Dinner Menu Winter 2020");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Sides/ Condiments", "Dinner Menu Winter 2020");
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Apple Walnut Salad", "butter lettuce, jaggery walnut, mango, parmesan", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Gol Guppa", "wheat shell, white pea, cucumber, cilantro stem, jalapeno (water: cilantro-habanero, tamarind-blood orange water)", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Taco Chaat", "cauliflower, mango, chaat masala, spinach tortilla", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Buffalo Cauliflower", "paprika, deggi mirch, madras curry, chickpea, sesame", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Paneer Kebab", "chipotle chili, liquid smoke, bhel crumble", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Palak Chaat", "baby spinach, chickpea, tamarind, yogurt", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Scallop", "rasam, star anise, tellicherry peppercorn, black rice", 1600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lamb Soup", "black cardamom, bayleaf, chickpea", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Chicken Kebab", "red chili, achiote, grilled pineapple", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lamb Seekh Kebab", "black cardamom, coriander seed, fennel, cilantro", 1600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Bison Leema", "ground bison, caramelized onion, bacon, quail egg", 1800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Tandoori Citrus Prawns", "kaffir lime, thai chili, green garlic", 1600);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Potato & Fig Kofta", "mission fig, cashew, melon seed, green chili, mace", 2500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Spinach & Paneer", "white cheddar, fenugreek, tomato, cashew", 2500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Vegetable Ratatouille", "eggplant, pimento, squash, nigella, fennel, cumin", 2500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lamb Chop 2pcs", "pistachio dust, charred carrot & broccolini, beet jelly", 2800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pork Chop", "fermented soy, tamarind, jaggery, fingerling potato", 2800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lamb Shank", "deggi mirch, bay leaf, clove, fennel, lentil", 2800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Five Spice Duck Leg", "spaghetti squash, curry leaf, nigella, fennel, five spice jus", 2800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pink Trout", "green mango, curry leaf, mustard seed, herb crust", 2800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Halibut", "blood orange foam, buckwheat, kafir lime", 3200);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Bread Sampler", "masala & pea naan, spinach & cheese naan, lachha paratha", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "House Daal", "", 800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Charred Baby Carrot & Broccolini", "", 800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Saffron Rice", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Bread (Select One)", "masala & pea naan, spinach & cheese naan, or lachha paratha", 400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pineapple Raita", "", 600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "House Chutney Sampler", "", 600);
    SET @SectionCounter += 1;

    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Our Classics", "Drinks");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Flights", "Drinks");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Beers", "Drinks");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Mocktails (Non-Alcoholic)", "Drinks");
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Spice Garden", "bourbon, banana, cardamom, spiced jaggery, saline", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Moneypenny G & T", "gin, green chartreuse, apricot, mediterranean tonic", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "ABCD", "golden chai gin, antica formula, pomegranate, lemon", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Holi Cow", "turmeric gin, yellow chartreuse, black pepper, lemon, ginger", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Star of Bombay", "vodka, rose, blueberry, lemongrass, basil, citrus", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Peacock Bay", "rum, batavia arrack, celyon tea, ginger, bitters, milk, citrus", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Glamping", "graham cracker bourbon, cocoa nib, toasted marshmallow", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "The Jaipur Emerald", "tequila blanco, khus, cilantro, green chili, toasted coconut", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Rose of Sharon", "mezcal, smoked chiles, hibiscus, cocoa", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "JRD Tata", "gin, verjus, creme de violette, herb de provence", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Bengali Sour", "rye, genepy, passion fruit, vanilla, egg white", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Knock Out", "feni, aperol, jackfruit, grapefruit, meyer lemon", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Falling Fast", "creme sherry, calvados, paul john peated, orange bitters", 1500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Agave Flight", "5 sentidos mezcal, ocho reposado, san matias extra anejo", 2900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Maharaja Flight", "amrut aatma, amrut portonova, paul john christmas", 6000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Patiala Flight", "1oz each of india's finest; paul john peated, amrut cask strength, amrut madeira finish", 3900);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Ninkasi, Helles Belles Lager (5.3 ABV)", "", 700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 'Fort Point "Animal" IPA (7.4 ABV)', "", 900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Allagash, Belgian Styler White (5.1 ABV)", "", 800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Golden State 'Mighty' Dry Cider (6.3 ABV)", "", 900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Taj Mahal, Premium Lager (4.5 ABV)", "", 700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Calicraft, Oaktown Brown Ale (6.7 ABV)", "", 900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Clausthaler, Non-Alcoholic (0.45 ABV)", "", 700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 'Rodenbach "Gran Cru" Sour Ale (6.0 ABV)', "", 800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Ace Cider, Pineapple Cider (5.0 ABV)", "", 800);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Funky Bunny", "carrot, cardamom, mustard, ginger, honey", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Peachy Keen", "white peach, masala, balsamic", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Spicy Gold", "turmeric, ginger, black pepper, citrus", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Blue Berry Hill", "blueberry, lemongrass, basil citrus", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "French Connection", "verjus, herbs de provence, bitter lemon", 1000);
    SET @SectionCounter += 1;

    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Desserts", "Desserts");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Dessert Wines", "Desserts");
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Ghevar", "Flour honeycomb, rabdi foam, pomegranate. Suggested Pairing: Lustau Cream Sherry", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Fig Kulfi", "Honey, jaggery, citrus pop rocks, vermicelli noodles. Suggested Pairing: Rosenhof Riesling", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Chocolate Lava Cake", "Five spice, mascarpone ice cream. Suggested Pairing: Glamping", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lemongrass Panna Cotta", "Cream, kafir lime, java plum jelly. Suggested Pairing: Amrut Naarangi", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Toffee Pudding", "Sticky fig cake, caramel, brandy snap. Suggested Pairing: Noval Tawny Port", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Coconut Flan", "Coconut milk, jaggery, cardamom, clove, mace. Suggested Pairing: Aurora Amontillado Sherry", 1000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Carrot Halwa", "Dairy free cream, saffron, almond, raisin. Suggested Pairing: Aurora Amontillado Sherry", 1000);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "2012 Rosenhof, Welschriesling Tba, Riesling, Neusiedlersee, Austria", "", 1300);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lustau, East India, Solera, Cream, Sherry, Jerez, Spain", "", 1300);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Aurora, Bodegas Yuste, Amontillado, Sherry, Jerez, Spain", "", 1300);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Noval 10 Year Old Tawny, Port, Portugal", "", 1300);
    SET @SectionCounter += 1;

    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Salads", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Wraps", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Bowls", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Extras", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Sides", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Chef's Signature Dishes", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Small Plates", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Mains", "Lunch Menu");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Desserts", "Lunch Menu");
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Shrimp Salad", "citrus, fox nut, tikka masala dressing", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Tandoori Chicken Salad", "butter lettuce, jaggery walnut, mango, parmesan", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Sweet Potato", "coconut cheese, kale, cilantro, chickpea dressing", 1400);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lamb Chapli", "ground lamb patty, fattoush coleslaw, chilli aioli", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Chicken Tikka", "arugula frisee, endive, yogurt, chilli aioli", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Tandoori Spiced Shrimp", "fattoush coleslaw, chili aioli, garam masala, ginger, onion", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Tandoori Paneer", "fattoush coleslaw, chili aioli, garam masala, ginger, onion", 1400);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Tandoori Chicken", "mary's chicken, cream cheese, cardamom, cashew", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pork Belly", "pickled chilli, coconut, clove, cumin", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Paneer Tikka", "kashmiri chilli, yogurt, mint, cashew, cinnamon", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Sweet Potato", "coconut milk, curry leaf, mustard seed, turmeric", 1500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Chicken", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Tandoori", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Cocunut Cheese", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pork", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Paneer", "", 500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "House Daal", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Saffron Rice", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Naan", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Lotus Root Chips + Tamarind Chutney", "", 500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "House Chutneys", "", 500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Special: 3 courses. Select 1 from each course & entire table must participate", "", 3500);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Palak Chaat", "baby spinach, chickpea, tamarind, yogurt", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Gol Guppa", "wheat shell, potato, cucumber, cilantro stem, jalapeno (water: cilantro-habanero and tamarind-blood orange water)", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Chicken Kebab", "red chili, achiote, grilled pineapple", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Buffalo Cauliflower", "paprika, deggi mirch, madras curry, chickpea, sesame", 0);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Bison Keema", "ground bison, caramelized onion, bacon, quail egg", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Braised Duck Leg", "spaghetti squash, fenugreek seed, nigella, fennel", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Halibut", "blood orange foam, buckwheat, kafir lime", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Porato & Fig Kofta", "mace, cashew, melon seed, green chili", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Spinach & Paneet", "white cheddar, fenugreek, melon seed, tomato, cashew", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Vegetable Ratatouille", "eggplant, pimento, squash, nigella, fennel, cumin", 0);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Seasonal Kulfi", "orange, cardamom, clove", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Toffee Pudding", "sticky date, caramel, brandy snap", 0);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Carrot Halwa", "dairy free cream, saffron, almond, raisin", 0);
    SET @SectionCounter += 1;

    INSERT into sections (PageID, Blurb) VALUES (@Counter, "Celebrate Valentine's day with us whether you're dining solo, as a duo, or with a group of friends! We will be offering a $95 (plus service fee & tax) per person luxe tasting menu paired with some of our favorite wines for $45. Vegetarian options will be available.");
    SET @Counter += 1;


    insert into restaurants () values ();
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Cicchetti", "Lunch & Dinner");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Zuppe e Insalate", "Lunch & Dinner");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Primi", "Lunch & Dinner");
    INSERT into sections (PageID, Name, Category) VALUES (@Counter, "Secondi", "Lunch & Dinner");
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Cavolfiore", "lightly breaded cauliflower, orange segments, capers, lemon mousse, carrot aioli", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Polpette al Forno", "baked meatballs, sicilian marinara, parmigiano", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Crostini Fichi", "grilled fig toast, citrus ricotta, rosemary roasted figs, honey drizzle", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Cavoletti di Bruxelles", "lightly breaded brussels sprouts, pancetta, gorgonzola, balsamic glaze", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Carpaccio di Polpo", "thinly sliced octopus, cucumber, tomato, red onion, chickpea purée, lemon olive oil", 1900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Polenta con Funghi", "creamy polenta, mushroom ragout, shaved asiago cheese, caramelized onions", 1500);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Baccalà Mantecato", "grandmother's venetian whipped cod crostini, truffle oil, parsley", 1900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Carpaccio di Bue", "thinly sliced filet mignon, dijon aioli, arugula, capers, parmigiano wafer", 1800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Mozzarella al Forno", "baked prosciutto wrapped mozzarella, balsamic glaze, herbed couscous, micro greens", 1600);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Minestrone", "classic italian vegetable soup, pasta and fava beans", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Barbabietole", "burrata beets, crispy polenta, micro greens, red wine vinaigrette", 1700);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Misti Canza", "mixed organic greens, candied walnuts, gorgonzola, balsamic vinaigrette", 1200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Cesare", "hearts of romaine, grana padano, garlic croutons, classic caesar dressing", 1400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Arugula e Finocchio", "burrata arugula fennel, pine nuts, strawberry dijon shallot vinaigrette", 1700);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Fragola Ravioli", "citrus ricotta ravioli, strawberry marinara, micro greens", 2400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Orecchiette", "puglia little ear pasta, italian sausage, broccoli rabe, butter, cumin, calabrian chili", 2600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Spaghettini con Polpette", "spaghetti baked meatballs, basil, sicilian garlic marinara", 2400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Fettuccine alla Zingara", "prawn fettuccine, seared scallop, garlic, white wine, lemon, caper, calabrian chili", 3000);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Rigatoni con Salsiccia", "herbed ground sausage rigatoni, green peas, roasted tomato cream, grana padano", 2600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Pappardelle della Nonna", "grandmother's short rib pappardelle, smoked tomatoe, mushroom ragout, asiago", 2800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Agnolotti", "crab ricotta agnolotti, roasted sundried tomato sauce, corn, fava beans", 3400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Risotto di Zucca", "roasted butternut squash risotto, gorgonzola, kale chips", 2400);
    SET @SectionCounter += 1;
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Zuppa di Pesce", "rustic seafood stew, garlic marinara, prawns, scallops, clams, calamari", 3400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Salmone", "pan seared salmon, vegetable ragout, caper, white wine rosetta, basil oil", 3400);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Capesante in Padella", "seared jumbo scallops, roasted red golden beets, carrots, zucchini squash, lemon thyme jus", 3800);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Risotto di Mare", "crustacean fumé saffron risotto, prawns, scallops, calamari, shrimp, clams, salmon, vegetables", 3900);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Filetto di Vitello", "grilled veal steak, bacon, white wine cream, gnocchi, fava beans, grapes, brown butter sage", 4200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Ossobuco di Cinghiale", "braised wild boar, barolo demi glace, mushroom risotto, white truffle oil", 3600);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Costolette D'agnello", "herbed grilled lamb chops, brandied gorgonzola sauce, rosemary roasted potato, seasonal greens", 4200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Filetto al Gorgonzola", "grilled filet mignon, red wine demi glace, gorgonzola butter, braised greens, garlic potato purée", 4200);
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, "Involtini di Pollo", "baked chicken breast, feta, spinach, sundried tomatoes, lemon sauce, brussels sprouts, crispy polenta", 3400);
    SET @SectionCounter += 1;

    INSERT into sections (PageID, Blurb) VALUES (@Counter, "Cupid suggests making it nice. Indulge at our Ristorante with a three-course menù prezzo fisso, featuring a glass of champagne and long stem rose for $90 per person. Credit card required to hold all reservations. Cancellations within seven days are non-refundable. We look forward to serving you.");
    SET @Counter += 1;


    /*
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter,
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter,
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter,
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter,
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 
    INSERT into food (SectionID, DishName, Ingredients, Price) VALUES (@SectionCounter, 


    SET @SectionCounter += 1;

    SET @Counter += 1;

    SET @Counter += 1;
    SET @Counter += 1;
    SET @Counter += 1;
    SET @Counter += 1;*/
  END;
