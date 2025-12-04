Use EShop;
GO
UPDATE Categories SET Name = 'Blush', CreatedDate = GETDATE(), Avatar = 'Blush_1.png'
WHERE Name = 'Blush';

UPDATE Categories SET Name = 'Concealer', CreatedDate = GETDATE(), Avatar = 'Concealer_1.png'
WHERE Name = 'Conditioner';

UPDATE Categories SET Name = 'Eyebrow Pencil', CreatedDate = GETDATE(), Avatar = 'Eyebrown_1.png'
WHERE Name = 'Hair Oil';

UPDATE Categories SET Name = 'Eyeliner', CreatedDate = GETDATE(), Avatar = 'Eyeliner_2.png'
WHERE Name = 'Hair Mask';

UPDATE Categories SET Name = 'Foundation Cushion BB', CreatedDate = GETDATE(), Avatar = 'Cushion_3.png'
WHERE Name = 'Hair Color';

UPDATE Categories SET Name = 'Foundation Lock Spray', CreatedDate = GETDATE(), Avatar = 'FoundationLockSpray_1.png'
WHERE Name = 'Hair Spray';

UPDATE Categories SET Name = 'Lipstick', CreatedDate = GETDATE(), Avatar = 'Lipstick_16.png'
WHERE Name = 'Hair Gel';

UPDATE Categories SET Name = 'Mascara Eye', CreatedDate = GETDATE(), Avatar = 'Mascara_1.png'
WHERE Name = 'Hair Brush';

UPDATE Categories SET Name = 'Powder', CreatedDate = GETDATE(), Avatar = 'Powder_1.png'
WHERE Name = 'Hair Dryer';

UPDATE Categories SET Name = 'Primer', CreatedDate = GETDATE(), Avatar = 'primer2.png'
WHERE Name = 'Hair Accessories';

INSERT INTO Categories (Name, CreatedDate, Avatar)
VALUES ('Eye Shadow', GETDATE(), 'Eyeshadow_1.png');


UPDATE Brands
SET Name = 'Peripera',
    Description = 'Korean trendy makeup brand',
    Logo = 'peripera_logo.jpg'
WHERE Name = 'L Oréal';

UPDATE Brands
SET Name = 'Rom&nd',
    Description = 'Korean cosmetic brand famous for lip products',
    Logo = 'romand_logo.jpg'
WHERE Name = 'Pantene';

UPDATE Brands
SET Name = 'Judydoll',
    Description = 'Chinese makeup brand known for colorful palettes',
    Logo = 'judydoll_logo.jpg'
WHERE Name = 'OGX';

UPDATE Brands
SET Name = '3CE',
    Description = 'Korean stylish makeup brand from Stylenanda',
    Logo = '3ce_logo.jpg'
WHERE Name = 'Moroccanoil';

UPDATE Brands
SET Name = 'CLIO',
    Description = 'Korean brand popular for eyeliners and foundations',
    Logo = 'clio_logo.jpg'
WHERE Name = 'Schwarzkopf';

UPDATE Brands
SET Name = 'Dasique',
    Description = 'Korean makeup brand with soft pastel aesthetics',
    Logo = 'dasique_logo.jpg'
WHERE Name = 'Tresemmé';

UPDATE Brands
SET Name = 'NARS',
    Description = 'High-end luxury makeup from the US',
    Logo = 'nars_logo.jpg'
WHERE Name = 'Dove';

UPDATE Brands
SET Name = 'Dior',
    Description = 'Luxury French beauty and fashion brand',
    Logo = 'dior_logo.jpg'
WHERE Name = 'Herbal Essences';

UPDATE Brands
SET Name = 'YSL',
    Description = 'High-end French brand famous for lipsticks',
    Logo = 'ysl_logo.jpg'
WHERE Name = 'Garnier';

UPDATE Brands
SET Name = 'Anastasia Beverly Hills',
    Description = 'Famous for eyebrow products and palettes',
    Logo = 'abh_logo.jpg'
WHERE Name = 'Revlon';



INSERT INTO Brands (Name, Description, Logo) VALUES
('Espoir', 'Korean professional makeup brand', 'espoir_logo.jpg'),
('Hourglass', 'Luxury beauty brand focusing on innovation', 'hourglass_logo.jpg'),
('OHUI', 'High-end Korean skincare and cosmetics brand', 'ohui_logo.jpg'),
('Bobbi Brown', 'American brand known for natural beauty style', 'bobbibrown_logo.jpg'),
('CHANEL', 'Luxury French fashion & beauty brand', 'chanel_logo.jpg'),
('MERZY', 'Korean budget-friendly makeup brand', 'merzy_logo.jpg'),
('Lilybyred', 'Cute Korean makeup brand focused on lip products', 'lilybyred_logo.jpg'),
('Maybelline', 'Drugstore American makeup brand', 'maybelline_logo.jpg'),
('Estée Lauder', 'Luxury American cosmetics and skincare brand', 'estee_lauder_logo.jpg'),
('Charlotte Tilbury', 'High-end UK makeup artist brand', 'ct_logo.jpg'),
('So’Natural', 'Korean skincare & makeup brand', 'sonatural_logo.jpg'),
('Dazzle Me', 'Affordable Asian beauty brand', 'dazzleme_logo.jpg'),
('Urban Decay', 'US brand famous for eye palettes', 'urbandecay_logo.jpg'),
('Colorgram', 'Korean cute and colorful makeup brand', 'colorgram_logo.jpg'),
('Amuse', 'Eco-friendly Korean makeup brand', 'amuse_logo.jpg'),
('MAC', 'Professional makeup brand from Canada', 'mac_logo.jpg'),
('Kylie Cosmetics', 'Beauty brand founded by Kylie Jenner', 'kylie_logo.jpg'),
('Browit by Nong Chat', 'Thai brand specializing in eyebrow products', 'browit_logo.jpg'),
('Canmake', 'Japanese affordable cute-style brand', 'canmake_logo.jpg'),
('Flower Knows', 'Chinese fairytale-style makeup brand', 'flowerknows_logo.jpg'),
('Guerlain', 'Luxury French beauty house', 'guerlain_logo.jpg'),
('MAKE UP FOR EVER', 'Professional makeup brand for artists', 'mufe_logo.jpg'),
('Mude', 'Korean brand known for soft natural makeup', 'mude_logo.jpg'),
('Etude House', 'Popular Korean cute-style makeup brand', 'etude_logo.jpg'),
('ColourPop', 'Affordable US makeup brand', 'colourpop_logo.jpg'),
('Innisfree', 'A Korean beauty brand known for its naturally derived ingredients from Jeju Island, offering gentle and eco-friendly skincare', 'innisfree_logo.jpg'),
('Dior', 'A luxury French brand delivering premium cosmetics and fragrances with exceptional quality and elegant design', 'dior_logo.jpg'),
('Espoir', 'A Korean makeup brand focused on professional-quality products, featuring trendy colors and artist-level performance', 'espoir_logo.jpg'),
('Laneige', 'A Korean skincare brand famous for its Water Science™ technology, providing deep hydration for a supple, radiant complexion', 'laneige_logo.jpg');

UPDATE Products
SET Name = 'Peripera Pure Blushed Sunshine Cheek',
    Description = 'A soft, fine powder blush that blends naturally onto the skin. Lightweight, buildable color with a smooth matte finish and long-lasting wear.',
    BarCode = '111111111111',
    CategoryId = 1,
    BrandId = 1,
    Price = 9.00,
    Quantity = 100,
    ImageUrl = 'Blush_1.png',
    CreatedDate = GETDATE()
WHERE Name = 'Repair Shampoo';

UPDATE Products
SET Name = 'rom&nd Better Than Cheek',
    Description = 'A silky micro-fine powder blush with a soft-focus finish. Adds natural-looking flush, buildable color, and smooth blending for a fresh Korean makeup look.',
    BarCode = '111111111112',
    CategoryId = 1,
    BrandId = 2,
    Price = 12.50,
    Quantity = 100,
    ImageUrl = 'Blush_2.png',
    CreatedDate = GETDATE()
WHERE Name = 'Smooth Conditioner';

UPDATE Products
SET Name = 'Judydoll Pretty Blush Powder',
    Description = 'Ultra-fine powder blush that blends easily, offering natural and youthful color. Smooth texture suitable for daily wear, available in various shades.',
    BarCode = '111111111113',
    CategoryId = 1,
    BrandId = 3,
    Price = 10.99,
    Quantity = 100,
    ImageUrl = 'Blush_3.png',
    CreatedDate = GETDATE()
WHERE Name = 'Argan Oil';

UPDATE Products
SET Name = '3CE Blushlighter',
    Description = 'A 2-in-1 blush and highlighter. Soft, blendable powder that adds natural color with a subtle glow for a radiant finish.',
    BarCode = '111111111114',
    CategoryId = 1,
    BrandId = 4,
    Price = 16.32,
    Quantity = 100,
    ImageUrl = 'Blush_4.png',
    CreatedDate = GETDATE()
WHERE Name = 'Hydrating Mask';

UPDATE Products
SET Name = 'CLIO Air Blur Whip Blush',
    Description = 'Whipped cream-texture blush with a smooth, semi-matte finish. Easy to blend, lightweight, and long-lasting. Creates a soft blurred cheek effect.',
    BarCode = '111111111115',
    CategoryId = 1,
    BrandId = 5,
    Price = 21.99,
    Quantity = 100,
    ImageUrl = 'Blush_5.png',
    CreatedDate = GETDATE()
WHERE Name = 'Permanent Hair Color';

UPDATE Products
SET Name = 'Dasique Blending Mood Cheek (Violet Knit)',
    Description = 'A 4-shade blush palette inspired by violet knit tones. Fine, blendable powders that layer smoothly for a soft, cool-toned flush.',
    BarCode = '111111111116',
    CategoryId = 1,
    BrandId = 6,
    Price = 19.90,
    Quantity = 100,
    ImageUrl = 'Blush_6.png',
    CreatedDate = GETDATE()
WHERE Name = 'Strong Hold Spray';

UPDATE Products
SET Name = 'Dasique Blending Mood Cheek (Berry Smoothie)',
    Description = 'A 4-shade blush palette with berry-pink tones. Soft, airy powder that blends effortlessly to create a lively and fresh blush look.',
    BarCode = '111111111117',
    CategoryId = 1,
    BrandId = 6,
    Price = 19.90,
    Quantity = 100,
    ImageUrl = 'Blush_6.png',
    CreatedDate = GETDATE()
WHERE Name = 'Defining Gel';

UPDATE Products
SET Name = 'NARS Orgasm Blush',
    Description = 'Iconic peach-pink blush with golden shimmer. Buildable powder formula that gives a healthy glowing flush and blends seamlessly into the skin.',
    BarCode = '111111111118',
    CategoryId = 1,
    BrandId = 7,
    Price = 36.00,
    Quantity = 100,
    ImageUrl = 'Blush_8.png',
    CreatedDate = GETDATE()
WHERE Name = 'Boar Bristle Brush';

UPDATE Products
SET Name = 'Dior Rouge Blush',
    Description = 'High-pigment, long-lasting powder blush made with up to 90% natural-origin ingredients. Offers vibrant color and smooth application with multiple finishes.',
    BarCode = '111111111119',
    CategoryId = 1,
    BrandId = 8,
    Price = 42.00,
    Quantity = 100,
    ImageUrl = 'Blush_9.png',
    CreatedDate = GETDATE()
WHERE Name = 'Ionic Hair Dryer';

UPDATE Products
SET Name = 'YSL Make Me Blush Bold Blurring Cheek Color',
    Description = 'Luxurious powder blush with a soft-blur finish. Smooth, highly pigmented, and buildable for a refined and elegant cheek look.',
    BarCode = '111111111120',
    CategoryId = 1,
    BrandId = 9,
    Price = 46.00,
    Quantity = 100,
    ImageUrl = 'Blush_10.png',
    CreatedDate = GETDATE()
WHERE Name = 'Silk Hair Scrunchies';



-- Concealer
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Radiant Creamy Concealer','A bestselling creamy concealer that provides buildable medium-to-full coverage. Brightens, corrects, and smooths the skin with a radiant natural finish. Suitable for all skin types.','200000000011',2,7,34.00,100,'Concealer_1.png',GETDATE()),
('Pro Concealer Palette','A 9-shade cream concealer palette used for color correcting, contouring, and concealing. Blendable texture ideal for professional or everyday makeup.','200000000012',2,10,24.00,100,'Concealer_2.png',GETDATE()),
('Kill Cover Founwear Conceal Mini Palette','A compact concealer palette with multiple correcting shades to cover redness, dark circles, and blemishes. Lightweight, high-coverage, long-lasting formula.','200000000013',2,5,20.70,100,'Concealer_3.png',GETDATE()),
('Second Skin Cover Concealer','A lightweight liquid concealer with high coverage. Blends seamlessly to cover dark circles, acne marks, and discoloration with a natural skin-like finish.','200000000014',2,11,19.00,100,'Concealer_4.png',GETDATE()),
('Vanish Airbrush Concealer','A full-coverage, weightless concealer with a soft-focus, airbrushed finish. Long-wearing, waterproof formula ideal for smooth and flawless complexion correction.','200000000015',2,12,38.00,100,'Concealer_5.png',GETDATE());

-- Eyebrow Pencil
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Dessin Des Sourcils Eyebrow Pencil','A dual-ended eyebrow pencil with a precision tip on one side and a spoolie brush on the other. Designed to shape, shade, and define brows with a smooth, velvety formula enriched with coconut oil.','200000000016',3,9,33.29,100,'Eyebrown_1.png',GETDATE()),
('Arch Brow Sculpting Pencil','A mechanical brow pencil with a triangular tip that combines powder, pencil, and wax benefits. Easily fills and defines brows, and includes a spoolie to groom and blend for a natural finish.','200000000017',3,12,37.00,100,'Eyebrown_2.png',GETDATE()),
('Auto Eyebrow Pencil','An oval-tipped, flat eyebrow pencil that allows easy application, ideal for beginners. Creates precise, natural-looking brows with smooth control.','200000000018',3,13,7.00,100,'Eyebrown_3.png',GETDATE()),
('Natural Brown Eyebrow Pencil','A dual-ended eyebrow pencil with a shaping pencil tip and a grooming brush. Helps adjust brow shape and color for a polished, defined look.','200000000019',3,14,19.00,100,'Eyebrown_4.png',GETDATE()),
('Perfectly Defined Long-Wear Brow Pencil','A long-wearing eyebrow pencil with a slanted, chiseled tip for both soft filling and bold definition. Waterproof, sweat-resistant, and includes a spoolie to blend color and groom brows.','200000000020',3,15,34.50,100,'Eyebrown_5.png',GETDATE()),
('Stylo Sourcils Waterproof Defining Longwear Eyebrow Pencil','A dual-ended twist-up eyebrow pencil with a defining tip and a spoolie brush. Waterproof, long-wearing formula using wax and pigments for buildable, precise, and neat brows.','200000000021',3,16,43.00,100,'Eyebrown_6.png',GETDATE());

-- Eyeliner
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('MERZY The First Pen Eyeliner','A slim-tip liquid pen eyeliner from MERZY that delivers precise, sharp lines. Features a fine brush tip to draw thin to bold strokes, high pigment, long wear, and smudge-resistant finish.','200000000022',4,17,7.99,100,'Eyeliner_1.png',GETDATE()),
('Dior Diorshow 24H Stylo Waterproof Eyeliner','A waterproof retractable pencil eyeliner with a built-in smudger and sharpener. Delivers intense colour, 24-hour wear and transfer-proof finish. Ideal for defining and contouring the eyes or for a smoky effect.','200000000023',4,8,34.50,100,'Eyeliner_2.png',GETDATE()),
('Lilybyred am9 to pm9 Survival Penliner Natural','A Korean liquid eyeliner with an ultra-fine 0.1 mm tip for precision application. Provides long-lasting wear, smudge-proof finish, and trendy soft and smoky tones for subtle natural looks.','200000000024',4,18,14.00,100,'Eyeliner_3.png',GETDATE()),
('OHUI Real Color Brush Eyeliner','A brush-tip liquid eyeliner by OHUI, featuring a fine flexible tip for detailed lines, high pigmentation, strong adhesion and long wear with water-resistance.','200000000025',4,14,25.00,100,'Eyeliner_4.png',GETDATE()),
('Maybelline Tattoo Liner Play','A playful coloured liquid eyeliner offering up to 48 hours of waterproof and smudge-proof wear. Comes in multiple bold colours and vegan formula, ideal for creative eye looks.','200000000026',4,19,14.99,100,'Eyeliner_5.png',GETDATE());

-- Foundation Cushion BB
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Espoir Be Glow Volume Cushion','A 5th?generation vegan cushion with Glow Volume Technology, delivering luminous, radiant coverage while hydrating the skin. SPF 42 PA+++ ensures UV protection.','200000000027',5,11,33.60,100,'Cushion_1.png',GETDATE()),
('Laneige Neo Cushion Glow','A cushion foundation that creates a bright, dewy glow, even for dull skin; offers long-wear, hydrating finish and high radiance with “liquid diamond” reflection and niacinamide brightening.','200000000028',5,20,35.00,100,'Cushion_2.png',GETDATE()),
('CLIO Kill Cover Mesh Glow Cushion','A long-wear cushion with dense mesh texture to cover blemishes and fine lines; delivers a glow finish, lightweight yet high coverage, enriched with hydrating ingredients.','200000000029',5,5,42.00,100,'Cushion_3.png',GETDATE()),
('Yves Saint Laurent Touche Éclat Glow-Pact','High-coverage glow mesh cushion from YSL featuring silky-thin fabric for all-day wear, delivering natural healthy glow and high comfort in a compact format.','200000000030',5,9,56.90,100,'Cushion_4.png',GETDATE()),
('Maybelline Fit Me Fresh Tint with SPF 50 & Vitamin C','Skin-tint foundation infused with Vitamin C, offers light coverage, brightens complexion, protects with SPF 50. Lightweight and natural finish.','200000000031',5,19,10.76,100,'Foundation_1.png',GETDATE()),
('Estée Lauder Double Wear Stay-in-Place Foundation','A high-performance oil-free foundation that offers up to 24 hours of wear, flawless matte finish, sweat- and humidity-resistant for all skin types.','200000000032',5,20,52.00,100,'Foundation_2.png',GETDATE()),
('Maybelline Super Stay Lumi-Matte Foundation','A buildable coverage foundation with up to 30-hour wear, light-as-air texture infused with amino acids, delivers luminous-matte finish that’s sweat- and transfer-resistant.','200000000033',5,19,14.00,100,'Foundation_3.png',GETDATE());

-- Foundation Lock Spray
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Full Day Setting Fixer','A fine-mist setting spray that helps keep makeup fresh and long-lasting; formulated with tree-bark extract, xylitol, vitamin C, and herbal extracts to soothe skin and provide oil control without stickiness.','200000000034',6,11,28.00,100,'FoundationLockSpray_1.png',GETDATE()),
('Airbrush Flawless Setting Spray','A lightweight, oil-free and alcohol-free setting spray that primes and sets makeup for up to 16 hours. Creates a weightless veil of hydration and helps makeup look flawless all day.','200000000035',6,21,49.00,100,'FoundationLockSpray_2.png',GETDATE()),
('All Day Tight Make Up Setting Fixx','A setting spray designed to keep makeup in place all day with refreshing extracts like lemon, tea tree and centella; provides a matte, budge-proof finish.','200000000036',6,22,19.00,100,'FoundationLockSpray_3.png',GETDATE()),
('Get a Grip! Makeup Setting Spray Matte Fix','A setting spray in matte finish that forms a film to lock makeup for up to 24 hours; helps with oil control, sweat resistance, and keeps makeup crisp and sharp.','200000000037',6,23,15.50,100,'FoundationLockSpray_4.png',GETDATE()),
('All Nighter Long-Lasting Makeup Setting Spray','A waterproof, smudge-proof, transfer-proof setting spray that locks makeup in place for up to 16 hours; features temperature-control technology and fine mist application.','200000000038',6,24,34.00,100,'FoundationLockSpray_5.png',GETDATE());

-- Lipstick (ch? li?t kê 10 ví d? ??u, t??ng t? b?n có th? m? r?ng)
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Colorgram Fruity Glass Tint #07 Shy Guava','A glossy lip tint that delivers a glass-like shine, with a buildable, non-sticky texture and long-lasting color in a soft pink shade.','200000000039',7,25,10.01,100,'Lipstick_1.png',GETDATE()),
('Colorgram Fruity Glass Gloss #04 Farewell Guava','A clear gloss with fruit-inspired tint, providing high shine and subtle color, ideal for layering over lip tint or worn alone for a glossy finish.','200000000040',7,25,16.00,100,'Lipstick_2.png',GETDATE()),
('Rom&nd Juicy Lasting Tint #25 Bare Grape','A high-pigment lip tint with a glossy finish that stains the lips with colour while maintaining comfort. Popular “Bare Grape” shade for everyday neutral looks.','200000000041',7,2,14.00,100,'Lipstick_3.png',GETDATE()),
('Rom&nd Juicy Lasting Tint #25 Bare Grape','A glossy, high-pigment lip tint with a juicy shine and a soft grape-nude shade for everyday wear.','200000000042',7,2,11.50,100,'Lipstick_4.png',GETDATE()),
('Glasting Water Tint #03 Brick River','A long-lasting watery-gloss tint with a smooth texture and a deep brick-red color for a modern look.','200000000043',7,2,13.00,100,'Lipstick_5.png',GETDATE());


-- Lipstick (ti?p theo)
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Glasting Color Gloss #01 Peony Ballet','A high-shine non-sticky lip gloss in a soft nude-pink tone that adds a plump, glossy finish.','200000000044',7,2,14.99,100,'Lipstick_6.png',GETDATE()),
('Romand The Juicy Lasting Tint New #02 Nucadamia','A glossy lip tint with a smooth syrupy texture and a warm nude-brown shade for a natural everyday look.','200000000045',7,2,12.00,100,'Lipstick_7.png',GETDATE()),
('Glasting Water Gloss #00 Meteor Track','A clear high-shine lip gloss with subtle shimmering particles that give a sparkling, plump effect on the lips.','200000000046',7,2,13.00,100,'Lipstick_8.png',GETDATE()),
('Glasting Water Gloss #01 Sanho Crush','A translucent pink gloss with high shine that adds a fresh, youthful glow while keeping lips smooth and hydrated.','200000000047',7,2,13.00,100,'Lipstick_9.png',GETDATE()),
('Dewyful Water Tint #13 Custard Mauve','A lightweight water-tint with a dewy finish, offering a soft mauve shade that delivers hydrating colour while feeling weightless.','200000000048',7,2,11.00,100,'Lipstick_10.png',GETDATE()),
('Jel-Fit Tint #03 Nupink','A creamy lip tint that combines lip balm comfort with stain-like staying power, in a soft rosy pink shade.','200000000049',7,26,14.00,100,'Lipstick_11.png',GETDATE()),
('Jel-Fit Tint #04 Rose Milk','A nourishing lip tint with a silky texture that glides on like a balm and fades into a durable rose-milk stain.','200000000050',7,26,14.00,100,'Lipstick_12.png',GETDATE()),
('Loveshine Lip Oil Stick 44 Nude Lavalliere','A high-shine lip oil-stick that melts onto the lips, giving sheer colour with deep hydration and a glossy, luminous finish.','200000000051',7,9,39.00,100,'Lipstick_13.png',GETDATE()),
('Rouge Dior Couture Colour #100 Nude Look','A long-wear satin lipstick in an iconic neutral nude shade, offering high pigment, comfort, and a smooth, elegant finish.','200000000052',7,8,49.00,100,'Lipstick_14.png',GETDATE()),
('Rouge Dior Couture Colour #220 Beige Couture','A creamy, high-pigment lipstick delivering a refined beige nude tone with a comfortable, long-lasting satin finish.','200000000053',7,8,49.00,100,'Lipstick_15.png',GETDATE()),
('Retro Matte Lipstick Ruby Woo','A legendary ultra-matte red lipstick with intense pigmentation and long-lasting, smudge-resistant wear.','200000000054',7,24,23.00,100,'Lipstick_16.png',GETDATE()),
('Powder Kiss Lipstick #930 Brickthrough','A soft-matte, lightweight lipstick that delivers blurred, diffused colour in a warm brick-rose shade.','200000000055',7,24,25.00,100,'Lipstick_17.png',GETDATE()),
('MAC Frost Lipstick Angel','A soft pink frost-finish lipstick with luminous shine, offering creamy texture and comfortable everyday wear.','200000000056',7,24,23.00,100,'Lipstick_18.png',GETDATE());

-- Mascara
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Bobbi Brown Smokey Eye Mascara','A volumizing mascara that delivers dramatic, smoke-black lashes with a creamy, buildable formula designed to lift, thicken, and separate without clumping.','200000000057',8,15,36.00,100,'Mascara_1.png',GETDATE()),
('Wisp Lash Mascara','A lengthening and defining mascara with a lightweight formula and flexible brush designed to create separated, wispy, natural-looking lashes.','200000000058',8,25,18.00,100,'Mascara_2.png',GETDATE()),
('Dior Diorshow Iconic Overcurl Mascara','A curling, lifting mascara with an oversized curved brush that adds intense volume and long-lasting curl while strengthening lashes.','200000000059',8,8,32.00,100,'Mascara_3.png',GETDATE()),
('Lash Sensational Washable Mascara','A fan-favorite mascara with a 10-layer bristle brush that reveals layers of lashes for full volume and separated definition. Washable formula.','200000000060',8,19,13.00,100,'Mascara_4.png',GETDATE()),
('Browit My Everyday Mascara','A natural-look mascara with a slim brush designed for precise coating, enhancing length and separation while staying lightweight for daily wear.','200000000061',8,27,9.00,100,'Mascara_5.png',GETDATE());

-- Powder
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Canmake Marshmallow Finish Powder','This face powder is designed to create a flawless, matte finish that feels soft and light. It contains shine-preventing powder that absorbs sebum to prevent shininess, stickiness, and makeup from fading.','200000000062',9,28,15.00,100,'Powder_1.png',GETDATE()),
('Strawberry Cupid Pressed Powder','The pressed powder melts seamlessly into your skin, providing a smooth, flawless finish. It is a lightweight, fine powder that blurs imperfections and pores for a matte look.','200000000063',9,29,20.00,100,'Powder_2.png',GETDATE()),
('Guerlain Météorites Light-Revealing Pearls of Powder','Météorites pearls of powder combine the benefits of powders in one product, setting, correcting, and illuminating the complexion. The light-revealing pearl complex transforms invisible light into a pure glow, providing an even-toned complexion with a natural finish.','200000000064',9,30,72.00,100,'Powder_3.png',GETDATE()),
('Ultra HD Setting Powder','An air-light powder that sets makeup for up to 24 hours while providing a matte, shine-free finish for 12 hours. The formula is designed to be undetectable, even under HD and 4K cameras, and is suitable for oily skin.','200000000065',9,31,40.00,100,'Powder_4.png',GETDATE()),
('Dior Forever Natural Bronze Powder Bronzer','The bronzing powder gives the complexion a sun-kissed glow with a natural, long-wear finish. Made with 95% mineral-origin pigments and wild pansy extract, the lightweight texture blends seamlessly into the skin for comfort throughout the day.','200000000066',9,8,48.00,100,'Powder_5.png',GETDATE()),
('Chanel Poudre Universelle Libre Natural Finish Loose Powder','Helps even skin tone, sets makeup, and reduces the appearance of imperfections.','200000000067',9,16,58.00,100,'Powder_6.png',GETDATE());

-- Primer
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Shell''s Jewel Radiance Primer','Say goodbye to unwanted redness with this minty green primer. Green pigments visibly tone down acne marks and red capillaries for a flawless, even finish.','200000000068',10,29,30.00,100,'primer1.png',GETDATE()),
('rom&nd Back Me Tone Up Cream (50ml)','Featuring rice extracts and niacinamide to brighten and improve skin tone. Highly moisturizing creamy base that leaves the skin soft, hydrated and prepped for makeup.','200000000069',10,2,12.00,100,'primer2.png',GETDATE()),
('Radiance Primer SPF 35','Oil-free primer with Radiance Boosting Complex that revitalizes dull skin and provides long-lasting radiance. Enriched with encapsulated sunscreen pearls.','200000000070',10,7,16.40,100,'primer3.png',GETDATE()),
('Dior Backstage Face & Body Primer','Universal Dior primer with a radiant blurring effect. Non-greasy texture that blends seamlessly with the skin for flawless hold and long-wearing makeup.','200000000071',10,8,50.20,100,'primer4.png',GETDATE()),
('Vitamin Enriched Face Base Moisturizer & Prime (50)','Hydrating primer that nourishes, plumps, and preps skin to improve the look of foundation. Combines primer performance with moisturizer comfort.','200000000072',10,15,66.40,100,'primer5.png',GETDATE());

-- Eye Shadow
INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('Dasique Shadow Palette','Palette with perfect shades for every step of eye makeup, from base to pearl finishes.','200000000073',11,6,35.00,100,'Eyeshadow_1.png',GETDATE()),
('Clio Make Pro Eye Palette Air','12-shade eyeshadow palette with shimmering powders and silky mattes. Versatile formula to highlight, define, and illuminate.','200000000074',11,5,39.38,100,'Eyeshadow_2.png',GETDATE()),
('All Take Mood Like Palette Night Peri Friends Edition','Cool-tone palette with matte, shimmery, and glittery shades functioning as eyeshadow, blush, and highlighter.','200000000075',11,1,30.00,100,'Eyeshadow_3.png',GETDATE()),
('Mood Keyboard Eyeshadow Palette K-beauty','Inspired by aesthetic keyboards, with jelly soft texture and vivid watercolour shades. 10 shades of matte and glitter.','200000000076',11,18,24.99,100,'Eyeshadow_4.png',GETDATE()),
('CANMAKE Lamé Mania','Glitter eyeshadow with dazzling silver-coated pearls and multi-coloured shine.','200000000077',11,28,26.00,100,'Eyeshadow_5.png',GETDATE()),
('Dasique Ice Cream Shadow Palette','Pastel-toned palette with silky matte and shimmer textures inspired by ice cream colours.','200000000078',11,6,34.00,100,'Eyeshadow_6.png',GETDATE()),
('Eyeshadow Palette 18 Berry Smoothie','18-pan palette featuring berry-themed pinks, mauves, and plums in matte, shimmer, and glitter textures.','200000000079',11,32,28.00,100,'Eyeshadow_7.png',GETDATE()),
('Mude Shawl Moment Eyeshadow Palette #04 Lilac Moment','Cool-toned lilac palette with soft mattes and luminous shimmers for airy, romantic looks.','200000000080',11,33,25.00,100,'Eyeshadow_8.png',GETDATE()),
('ColourPop Plum Szn Pressed Powder Palette','Plum-themed palette with matte, metallic, and glitter finishes. Highly pigmented and smooth formula.','200000000081',11,34,14.00,100,'Eyeshadow_9.png',GETDATE());

INSERT INTO Products (Name, Description, BarCode, CategoryId, BrandId, Price, Quantity, ImageUrl, CreatedDate) VALUES
('ColourPop Pretty Please Pressed Powder Palette','A neutral-pink palette with wearable mattes and sparkly metallics, offering versatile day-to-night looks with ColourPop’s signature smooth formula.','200000000082',11,34,14.00,100,'Eyeshadow_10.png',GETDATE());

Use EShop;
UPDATE od
SET od.UnitPrice = p.Price
FROM OrderDetails od
INNER JOIN Products p
    ON od.ProductId = p.ProductId;

UPDATE o
SET o.TotalAmount = calc.TotalAmount
FROM Orders o
INNER JOIN (
    SELECT OrderId,
           SUM(quantity * UnitPrice) AS TotalAmount
    FROM OrderDetails
    GROUP BY OrderId
) calc
ON o.OrderId = calc.OrderId;