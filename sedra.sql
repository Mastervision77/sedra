-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2025 at 02:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sedra`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_home` varchar(255) NOT NULL,
  `content_home` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `vision` text NOT NULL,
  `mission` text NOT NULL,
  `offer` text NOT NULL,
  `whychoose` text NOT NULL,
  `homeimage` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title_home`, `content_home`, `title`, `content`, `image`, `vision`, `mission`, `offer`, `whychoose`, `homeimage`, `created_at`, `updated_at`) VALUES
(2, ' About Sedra', 'Sedra Travel Agency has been crafting extraordinary travel experiences for over 15 years. We believe that every journey should be as unique as the traveler embarking on it.\n\nOur team of expert travel consultants works tirelessly to curate personalized itineraries that exceed expectations. From luxury escapes to cultural adventures, we handle every detail with precision and care.', 'Welcome to Sedra Travel, your trusted partner for Umrah and Hajj journeys.', 'We specialize exclusively in providing seamless, spiritually enriching pilgrimage experiences for Muslims seeking to fulfill these sacred obligations.\n\nAt Sedra Travel, we understand the profound importance of your journey to the House of Allah. That’s why we are committed to offering a personalized and hassle-free experience, allowing you to focus solely on your worship and connection to your Creator.\n\nOur services include visa processing, comfortable accommodations, reliable transportation, and on-ground assistance, ensuring your journey is smooth, memorable, and deeply fulfilling.\n\nWhether it’s Umrah or Hajj, Sedra Travel is dedicated to making your spiritual journey one of peace, ease, and devotion.', '[\"01KCEDGKCXK4MZA92TVYP9FEP2.png\"]', 'To be the leading provider of Umrah and Hajj services in the USA, known for excellence, reliability, and personalized care — helping every pilgrim connect with their faith and create lasting memories.', 'To deliver seamless pilgrimage experiences by offering trustworthy guidance, comfort, and reliable support throughout the sacred journey.', '[{\"item\":\"Comprehensive Umrah and Hajj packages tailored to suit every budget\"},{\"item\":\"Visa processing, flights, accommodations, and ground transportation\"}]', '[{\"item\":\"Personalized Service: Every pilgrimage is unique \\u2014 we tailor our services to your needs.\"},{\"item\":\"Convenience: We handle everything so you focus only on worship.\"}]', '01KCEDGKCR8DQW6W01BN0CNQ8W.png', '2025-12-14 10:31:36', '2025-12-14 10:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryblog_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `content` text DEFAULT NULL,
  `innerimage` text DEFAULT NULL,
  `outerimage` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `categoryblog_id`, `title`, `slug`, `subtitle`, `author`, `date`, `content`, `innerimage`, `outerimage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Top 10 Hidden Gems in Europe', 'top-10-hidden-gems-in-europe', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(3, 1, 'Top 5 Hidden Gems in Europe', 'top-5-hidden-gems-in-europe', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(4, 1, 'Top 10 Hidden Gems in Egy', 'top-10-hidden-gems-in-egy', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(5, 1, 'Top 5 Hidden Gems ', 'top-5-hidden-gems', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(6, 1, 'The Ultimate Guide to Modern Web Development', 'The-Ultimate-Guide-to-Modern-Web-Development', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(7, 1, '10 Things You Should Know Before Starting a Blog', '10-Things-You-Should-Know-Before-Starting-a-Blog', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(8, 1, 'How Technology Is Changing the Way We Live', 'How-Technology-Is-Changing-the-Way-We-Live', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(9, 1, 'The Future of Digital Content Creation', 'The-Future-of-Digital-Content-Creation', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(10, 1, 'A Beginner’s Guide to Building Scalable Applications', 'A-Beginner’s-Guide-to-Building-Scalable-Applications', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42'),
(11, 1, 'A Beginner’s-Guide', 'A-Beginner’', 'Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.', ' Sarah Johnson', '2025-12-16', '<p>Europe is home to countless iconic destinations, but beyond the well-trodden paths of Paris, Rome, and London lie extraordinary places that remain relatively undiscovered by mainstream tourism.</p><h2>1. Kotor, Montenegro</h2><p>Nestled between dramatic mountains and the Adriatic Sea, Kotor\'s medieval old town is a UNESCO World Heritage site that rivals Dubrovnik\'s charm without the crowds. The fortified city walls offer breathtaking views, and the nearby Bay of Kotor provides stunning scenery at every turn.</p><h2>2. Sintra, Portugal</h2><p>Just a short train ride from Lisbon, Sintra feels like a fairy tale come to life. The colorful Pena Palace, mysterious Quinta da Regaleira, and lush mountain landscapes make this one of Europe\'s most enchanting destinations.</p><h2>3. Český Krumlov, Czech Republic</h2><p>This perfectly preserved medieval town in southern Bohemia is like stepping into a storybook. The Renaissance castle, winding cobblestone streets, and the Vltava River create an atmosphere that\'s both romantic and timeless.</p><h2>4. Ronda, Spain</h2><p>Perched dramatically atop a deep gorge in Andalusia, Ronda offers spectacular views and rich history. The iconic Puente Nuevo bridge connects the old and new towns, and the surrounding countryside is dotted with white villages and vineyards.</p><h2>5. Hallstatt, Austria</h2><p>Often called the most beautiful lakeside village in the world, Hallstatt sits on the shores of Lake Hallstatt surrounded by towering mountains. The charming 16th-century Alpine houses and stunning natural scenery make it a photographer\'s paradise.</p><h2>Planning Your Visit</h2><p>The best time to visit these hidden gems is during shoulder seasons (April-May or September-October) when the weather is pleasant and crowds are minimal. Consider renting a car to access more remote locations, and don\'t be afraid to venture off the beaten path.</p><h2>Sustainable Tourism</h2><p>As these destinations gain popularity, it\'s crucial to travel responsibly. Support local businesses, respect cultural sites, and follow Leave No Trace principles to help preserve these beautiful places for future generations.</p>', '01KCKWYSNVVHW91M0PKC73MCJ3.jpg', '01KCKWYSP449THY9BH75HKHKAQ.jpg', '2025-12-16 13:37:42', '2025-12-16 13:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:3;', 1765966097),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1765966097;', 1765966097);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_blogs`
--

CREATE TABLE `category_blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_blogs`
--

INSERT INTO `category_blogs` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Traveling', 'traveling', '2025-12-16 13:22:53', '2025-12-16 13:22:53'),
(2, 'Traveling2', 'traveling2', '2025-12-16 13:23:42', '2025-12-16 13:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `map` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `phone`, `email`, `whatsapp`, `location`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Have questions? We\'re here to help you plan your perfect journey', '+1 (626) 353-4268', 'Sedratravelinc@gmail.com', '+1 (626) 353-4268', '[{\"title\":\" Headquarters\",\"location\":\"123 Travel Street New York, NY 10001 USA\"},{\"title\":\"European Office\",\"location\":\"45 Avenue des Champs-\\u00c9lys\\u00e9es Paris 75008 France\"},{\"title\":\"Asian Office\",\"location\":\"88 Orchard Road Singapore 238864 Singapore\"}]', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d182011.76113766857!2d-73.73851333678392!3d40.67925203132099!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2z2YbZitmI2YrZiNix2YPYjCDYp9mE2YjZhNin2YrYp9iqINin2YTZhdiq2K3Yr9ip!5e1!3m2!1sar!2seg!4v1765798083344!5m2!1sar!2seg', '2025-12-15 08:28:41', '2025-12-15 09:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `primaryPhone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `name`, `primaryPhone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Desirae Noel', '82', 'buduh@mailinator.com', 'Aut dignissimos reru', '2025-12-15 09:40:01', '2025-12-15 09:40:01'),
(2, 'Eslam Salah Ahmed', '1110731633', 'eslamsalah20003000@gmail.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2025-12-16 06:56:06', '2025-12-16 06:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `outerimage` text DEFAULT NULL,
  `innerimage` text DEFAULT NULL,
  `gallaryimages` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `title`, `slug`, `subtitle`, `location`, `content`, `outerimage`, `innerimage`, `gallaryimages`, `created_at`, `updated_at`) VALUES
(1, 'Cairo Best Egypt Tours 2026', 'Cairo-Best-Egypt-Tours-2026', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Cairo', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><p><br><br></p><h2><strong>Highlights &amp; Attractions</strong></h2><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br><br></p><p><br></p>', '01KCH4HZMDCPTG1N1CPVW7EZSF.webp', '01KCH4HZMJQRKQKVRVN16WN0QT.webp', '[\"01KCH4HZMM69Y00VEF91K1K3E4.webp\",\"01KCH4HZMQHFMDQ9P6YEYPZMT5.webp\",\"01KCH4HZMSNS7KT7XQW5NWHMCD.webp\",\"01KCHBJDHJ7424KNMVR5RK37F1.webp\"]', '2025-12-15 11:52:47', '2025-12-15 13:55:22'),
(2, 'Egypt Classic Tours: Best Egypt Trips', 'Egypt-Classic-Tours-Best-Egypt-Trips', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Luxury ', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><h3>Highlights &amp; Attractions</h3><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br></p>', '01KCH5BZB0E1AV1G3WF2R36D0Z.webp', '01KCH5BZB5WVQVR4CSKBDVWNBA.webp', '[\"01KCH5BZB8PKT9WB9DGGDAPSBC.webp\",\"01KCH5BZBBJQCFRD0G7BGXM958.webp\",\"01KCH5BZBDZT6126E346YA0NVT.webp\"]', '2025-12-15 12:06:59', '2025-12-15 12:06:59'),
(3, 'Discover the World’s Most Beautiful Destinations', 'Discover-the-World’s-Most-Beautiful-Destinations', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Cairo', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><p><br><br></p><h2><strong>Highlights &amp; Attractions</strong></h2><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br><br></p><p><br></p>', '01KCH4HZMDCPTG1N1CPVW7EZSF.webp', '01KCH4HZMJQRKQKVRVN16WN0QT.webp', '[\"01KCH4HZMM69Y00VEF91K1K3E4.webp\",\"01KCH4HZMQHFMDQ9P6YEYPZMT5.webp\",\"01KCH4HZMSNS7KT7XQW5NWHMCD.webp\",\"01KCHBJDHJ7424KNMVR5RK37F1.webp\"]', '2025-12-15 11:52:47', '2025-12-15 13:55:22'),
(4, 'Top Travel Destinations You Should Visit This Year', 'Top-Travel-Destinations-You-Should-Visit-This-Year', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Luxury ', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><h3>Highlights &amp; Attractions</h3><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br></p>', '01KCH5BZB0E1AV1G3WF2R36D0Z.webp', '01KCH5BZB5WVQVR4CSKBDVWNBA.webp', '[\"01KCH5BZB8PKT9WB9DGGDAPSBC.webp\",\"01KCH5BZBBJQCFRD0G7BGXM958.webp\",\"01KCH5BZBDZT6126E346YA0NVT.webp\"]', '2025-12-15 12:06:59', '2025-12-15 12:06:59'),
(5, 'Explore Breathtaking Destinations Around the Globe', 'Explore-Breathtaking-Destinations-Around-the-Globe', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Cairo', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><p><br><br></p><h2><strong>Highlights &amp; Attractions</strong></h2><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br><br></p><p><br></p>', '01KCH4HZMDCPTG1N1CPVW7EZSF.webp', '01KCH4HZMJQRKQKVRVN16WN0QT.webp', '[\"01KCH4HZMM69Y00VEF91K1K3E4.webp\",\"01KCH4HZMQHFMDQ9P6YEYPZMT5.webp\",\"01KCH4HZMSNS7KT7XQW5NWHMCD.webp\",\"01KCHBJDHJ7424KNMVR5RK37F1.webp\"]', '2025-12-15 11:52:47', '2025-12-15 13:55:22'),
(6, 'Must-Visit Destinations for Every Traveler', 'Must-Visit-Destinations-for-Every-Traveler', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Luxury ', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><h3>Highlights &amp; Attractions</h3><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br></p>', '01KCH5BZB0E1AV1G3WF2R36D0Z.webp', '01KCH5BZB5WVQVR4CSKBDVWNBA.webp', '[\"01KCH5BZB8PKT9WB9DGGDAPSBC.webp\",\"01KCH5BZBBJQCFRD0G7BGXM958.webp\",\"01KCH5BZBDZT6126E346YA0NVT.webp\"]', '2025-12-15 12:06:59', '2025-12-15 12:06:59'),
(7, 'Your Ultimate Guide to the World’s Best Destinations', 'Your-Ultimate-Guide-to-the-World’s-Best-Destinations', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Cairo', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><p><br><br></p><h2><strong>Highlights &amp; Attractions</strong></h2><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br><br></p><p><br></p>', '01KCH4HZMDCPTG1N1CPVW7EZSF.webp', '01KCH4HZMJQRKQKVRVN16WN0QT.webp', '[\"01KCH4HZMM69Y00VEF91K1K3E4.webp\",\"01KCH4HZMQHFMDQ9P6YEYPZMT5.webp\",\"01KCH4HZMSNS7KT7XQW5NWHMCD.webp\",\"01KCHBJDHJ7424KNMVR5RK37F1.webp\"]', '2025-12-15 11:52:47', '2025-12-15 13:55:22'),
(8, 'Top Tropical Destinations for a Perfect Beach Holiday', 'Top-Tropical-Destinations-for-a-Perfect-Beach-Holiday', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Luxury ', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><h3>Highlights &amp; Attractions</h3><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br></p>', '01KCH5BZB0E1AV1G3WF2R36D0Z.webp', '01KCH5BZB5WVQVR4CSKBDVWNBA.webp', '[\"01KCH5BZB8PKT9WB9DGGDAPSBC.webp\",\"01KCH5BZBBJQCFRD0G7BGXM958.webp\",\"01KCH5BZBDZT6126E346YA0NVT.webp\"]', '2025-12-15 12:06:59', '2025-12-15 12:06:59'),
(9, 'Hidden Beach Destinations You Need to Visit', 'Hidden-Beach-Destinations-You-Need-to-Visit', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Cairo', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><p><br><br></p><h2><strong>Highlights &amp; Attractions</strong></h2><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br><br></p><p><br></p>', '01KCH4HZMDCPTG1N1CPVW7EZSF.webp', '01KCH4HZMJQRKQKVRVN16WN0QT.webp', '[\"01KCH4HZMM69Y00VEF91K1K3E4.webp\",\"01KCH4HZMQHFMDQ9P6YEYPZMT5.webp\",\"01KCH4HZMSNS7KT7XQW5NWHMCD.webp\",\"01KCHBJDHJ7424KNMVR5RK37F1.webp\"]', '2025-12-15 11:52:47', '2025-12-15 13:55:22'),
(10, 'Best Island Destinations for Relaxation & Adventure', 'Best-Island-Destinations-for-Relaxation--Adventure', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours,', 'Luxury ', '<h2>About Egypt</h2><p>Explore the land of pharaohs and timeless wonders with our carefully selected collection of the best Egypt tours. Whether you\'re drawn to the ancient Pyramids of Giza, the majestic temples of Luxor and Karnak, or the serene beauty of a Nile River cruise, our expertly crafted Egypt tours offer something for every kind of traveler. Step back in time as you visit legendary sites like the Sphinx, Luxor and Karnak Temples, the Valley of the Kings, and Abu Simbel. Wander through bustling local markets, explore historic mosques and Coptic churches, and experience the vibrant culture and warm hospitality that make tours to Egypt truly unforgettable. Our Egypt tours combine history, adventure, and relaxation, with flexible options to suit your style, whether you\'re looking for a small group tour, a private guided trip, or a luxury escape. With comfortable accommodations, expert Egyptologist guides, and seamless travel logistics, every detail is taken care of so you can focus on the experience. From cruising the Nile in style to discovering hidden gems off the beaten path, our best Egypt tours promise a journey filled with unforgettable moments. Let us help you uncover the magic of Egypt with personalized service and unforgettable itineraries tailored to your travel dreams. Start planning your adventure today with one of our top-rated tours to Egypt, and let history come to life before your eyes.</p><h3>Highlights &amp; Attractions</h3><ul><li>•Visit the iconic blue-domed churches of Oia</li><li>•Watch unforgettable sunsets from Oia Castle</li><li>•Explore the archaeological site of Akrotiri</li><li>•Relax on volcanic black sand beaches</li><li>•Taste world-class wines</li></ul><p><br></p>', '01KCH5BZB0E1AV1G3WF2R36D0Z.webp', '01KCH5BZB5WVQVR4CSKBDVWNBA.webp', '[\"01KCH5BZB8PKT9WB9DGGDAPSBC.webp\",\"01KCH5BZBBJQCFRD0G7BGXM958.webp\",\"01KCH5BZBDZT6126E346YA0NVT.webp\"]', '2025-12-15 12:06:59', '2025-12-15 12:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `faq_home` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `faq` text DEFAULT NULL,
  `page_type` enum('home','faqpage') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `faq_home`, `title`, `faq`, `page_type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Booking & Payments', '[{\"faq_title\":\"How do I book a travel package?\",\"answer\":\"You can book directly through our website by selecting your desired package and filling out the booking form, or contact our sales team for personalized assistance. We\'ll guide you through every step of the process.\"},{\"faq_title\":\"What payment methods do you accept?\",\"answer\":\"We accept all major credit cards (Visa, Mastercard, American Express), bank transfers, and PayPal. A deposit is required at booking, with the balance due 60 days before departure.\"},{\"faq_title\":\"What is your cancellation policy?\",\"answer\":\"Cancellations made 90+ days before departure receive a full refund. 60-89 days: 50% refund. 30-59 days: 25% refund. Less than 30 days: no refund. We strongly recommend purchasing travel insurance.\"}]', 'faqpage', '2025-12-14 07:58:51', '2025-12-14 07:58:51'),
(2, NULL, 'Travel Requirements', '[{\"faq_title\":\"Do I need travel insurance?\",\"answer\":\"While not mandatory, we strongly recommend comprehensive travel insurance covering trip cancellation, medical emergencies, and lost luggage. We can recommend trusted insurance providers.\"},{\"faq_title\":\"What documents do I need?\",\"answer\":\"Requirements vary by destination. Generally, you\'ll need a valid passport (valid for at least 6 months beyond your return date) and any required visas. We provide detailed document checklists for each package.\"},{\"faq_title\":\"Are vaccinations required?\",\"answer\":\"Vaccination requirements depend on your destination. We provide health advisories with your booking confirmation, but always consult your doctor or a travel health clinic well in advance.\"}]', 'faqpage', '2025-12-14 08:01:19', '2025-12-14 08:01:19'),
(3, NULL, 'During Your Trip', '[{\"faq_title\":\"What\'s included in the package price?\",\"answer\":\"Each package varies, but typically includes accommodation, specified meals, transportation between destinations, guided tours, entrance fees, and airport transfers. Specific inclusions are detailed on each package page.\"},{\"faq_title\":\"Will I have a tour guide?\",\"answer\":\"Most of our group tours include an experienced, English-speaking guide throughout your journey. Private tours include a dedicated guide. Some packages offer a mix of guided and independent exploration time.\"},{\"faq_title\":\"What if I have an emergency?\",\"answer\":\"We provide 24\\/7 emergency support. You\'ll receive emergency contact numbers before departure. Our team is always available to assist with any urgent matters during your trip.\"}]', 'faqpage', '2025-12-14 08:03:31', '2025-12-14 08:03:31'),
(4, NULL, 'Group Tours', '[{\"faq_title\":\"What are the typical group sizes?\",\"answer\":\"Our group tours typically range from 8 to 16 travelers, ensuring a personal experience while maintaining the social aspect of group travel. Maximum group sizes are specified for each package.\"},{\"faq_title\":\"Can solo travelers join group tours?\",\"answer\":\"Yes! Many of our travelers are solo adventurers. We can arrange shared accommodation to reduce costs, or you can opt for a single supplement for private accommodation.\"}]', 'faqpage', '2025-12-14 08:07:28', '2025-12-14 08:07:28'),
(5, '[{\"faq_title\":\"How do I book a travel package with Sedra?\",\"answer\":\"Booking with Sedra is simple! Browse our packages, contact us through our website or phone, and our travel consultants will guide you through the entire process. We\'ll customize the package to your preferences and handle all arrangements.\"},{\"faq_title\":\"What is included in your travel packages?\",\"answer\":\"Our packages typically include accommodation, transportation, guided tours, and select meals. Specific inclusions vary by package. We provide detailed itineraries outlining everything included, and we can customize packages to add or remove services based on your preferences.\"}]', NULL, NULL, 'home', '2025-12-14 08:10:12', '2025-12-14 08:10:12'),
(6, '[{\"faq_title\":\"Do you offer travel insurance?\",\"answer\":\"Yes, we strongly recommend travel insurance and can help arrange comprehensive coverage for your trip. This includes medical emergencies, trip cancellations, lost luggage, and more. Our team will explain all available options during the booking process.\"},{\"faq_title\":\"Can I customize an existing package?\",\"answer\":\"Absolutely! All our packages are fully customizable. Whether you want to extend your stay, add activities, upgrade accommodations, or modify the itinerary, our consultants will work with you to create your perfect journey.\"}]', NULL, NULL, 'home', '2025-12-14 08:11:04', '2025-12-14 08:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `disk` varchar(255) NOT NULL,
  `conversions_disk` varchar(255) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`generated_conversions`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2025_12_07_143010_create_abouts_table', 2),
(7, '2025_12_07_143040_create_contacts_table', 2),
(8, '2025_12_07_143101_create_destinations_table', 2),
(10, '2025_12_09_130944_create_media_table', 2),
(11, '2025_12_09_131344_create_reviews_table', 2),
(14, '2025_12_07_143002_create_faqs_table', 3),
(15, '2025_12_14_101803_create_top_homme_sections_table', 4),
(16, '2025_04_28_073850_create_contact_forms_table', 5),
(17, '2025_12_07_143207_create_packages_table', 6),
(18, '2024_09_17_155710_create_trip_bookings_table', 7),
(19, '2025_12_06_150131_create_category_blogs_table', 8),
(20, '2025_12_07_143023_create_blogs_table', 9),
(21, '2024_09_11_142659_create_settings_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `outerimage` varchar(255) DEFAULT NULL,
  `innerimage` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `people_number` varchar(255) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `itinerary` text DEFAULT NULL,
  `includes` text DEFAULT NULL,
  `pricing` text DEFAULT NULL,
  `payterm` text DEFAULT NULL,
  `notincludes` text DEFAULT NULL,
  `payterms` text DEFAULT NULL,
  `gallary` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `destination_id`, `title`, `slug`, `subtitle`, `price`, `outerimage`, `innerimage`, `duration`, `people_number`, `overview`, `itinerary`, `includes`, `pricing`, `payterm`, `notincludes`, `payterms`, `gallary`, `created_at`, `updated_at`) VALUES
(1, 1, 'Trip to Egypt: Pyramids & Nile by Air', 'Trip-to-Egypt-Pyramids--Nile-by-Air', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(2, 1, 'Trip to Egypt: Pyramids ', 'Trip-to-Egypt-Pyramids', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(3, 1, 'Top City Destinations for Culture & Nightlife', 'Top-City-Destinations-for-Culture--Nightlife', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(4, 1, 'Best City Break Destinations in Europe', 'Best-City-Break-Destinations-in-Europe', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(5, 1, 'Iconic Cities Every Traveler Should Visit', 'Iconic-Cities-Every-Traveler-Should-Visit', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(6, 1, 'Cultural Destinations You’ll Fall in Love With', 'Cultural-Destinations-You’ll-Fall-in-Love-With', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(7, 1, 'The Ultimate City Travel Guide', 'The-Ultimate-City-Travel-Guide', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(8, 1, 'Best Travel Destinations to Visit in 2025', 'Best-Travel-Destinations-to-Visit-in-2025', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33'),
(9, 1, 'Cheap Travel Destinations for Budget Travelers', 'Cheap-Travel-Destinations-for-Budget-Travelers', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33');
INSERT INTO `packages` (`id`, `destination_id`, `title`, `slug`, `subtitle`, `price`, `outerimage`, `innerimage`, `duration`, `people_number`, `overview`, `itinerary`, `includes`, `pricing`, `payterm`, `notincludes`, `payterms`, `gallary`, `created_at`, `updated_at`) VALUES
(10, 1, 'Best Honeymoon Destinations Around the World', 'Best-Honeymoon-Destinations-Around-the-World', 'Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. ', '2,499', '01KCKHE9VT30NRWFE4BJ17CCXM.webp', '01KCKHE9WY3CYBC404HCR8VWRJ.webp', '10 Days / 9 Nights', '12-16 ', '<p>Step into a world of elegance with our carefully designed Egypt Luxury Tours, created for discerning travelers who seek comfort and exclusivity. From Cairo’s legendary Pyramids of Giza and the treasures of the Grand Egyptian Museum to the serene beauty of a deluxe Nile cruise, each journey blends history with sophistication. Stay in handpicked 5-star hotels, enjoy private guided tours, and experience Egypt’s most iconic sites at a pace tailored to you. Whether exploring Luxor’s grand temples, sailing between Aswan’s scenic landscapes, or strolling through the vibrant streets of Cairo, every detail of your tour is designed for an unforgettable luxury travel experience. Pick your tour from our collection and experience the pinnacle of Egyptian travel with our Egypt luxury tours, meticulously crafted for sophisticated travelers who demand excellence.</p>', '[{\"day\":\"D1\",\"title\":\"Arrival in Cairo\",\"content\":\"<p>Welcome to the mystical lands of Egypt, where the Pharaohs ruled for thousands of years. Upon your arrival at Cairo International Airport, your tour manager will meet and assist you and ease the process by helping you to get the entry visa. You will then be escorted through the bustling streets of Cairo in an exclusive air-conditioned vehicle. Once you reach your chosen hotel according to your accommodation plan whether it will be overlooking the Great Pyramids of Giza like Hilton Pyramids Golf Hotel or in Khan El Khalili, like Le Riad Luxury Boutique Hotel, your tour manager will assist you with your check-in and double-check your itinerary with you to establish and confirm all the pick-up times for all your activities during your trip. Overnight in Cairo. Welcome drink included.<\\/p>\"},{\"day\":\"D2\",\"title\":\"Pyramids and GEM\",\"content\":\"<p>After enjoying a delicious wholesome breakfast at your hotel, your personal guide will take you to the Giza Plateau to start your journey by marveling at one of the Seven Wonders of the World, the Great Pyramids of Giza. Visit the iconic Sphinx and Valley Temple. After your pyramid visit, you\\u2019ll go for lunch at an authentic Egyptian restaurant and then head over to the New Grand Egyptian Museum, also known as the Giza Museum, which is an archaeological museum in Giza, Egypt, about 2 kilometers (1.2 miles) from the Giza pyramid complex. Return back to your hotel. Overnight in Cairo. Meals: Breakfast, Lunch. Visits: Great Pyramids of Giza, Sphinx, Valley Temple, Grand Egyptian Museum (GEM).<\\/p>\"},{\"day\":\"D3\",\"title\":\"Fly to Luxor - East Bank Sightseeing\",\"content\":\"<p>Today, you will be leaving Cairo and head out to the shining city of Luxor. You will meet your tour manager early in the morning at your hotel where he will accompany you to Cairo International Airport for your trip to Luxor. Upon landing in Luxor, you will be assisted and whisked away in an exclusive air-conditioned vehicle to board your luxurious Nile cruise, Salacia, that will offer you a unique experience cruising on the Nile with high-quality service, gastronomy, and accommodation during your stay. Enjoy a delicious lunch on board before heading out to your first stop in Upper Egypt which is visiting Karnak Temple and Luxor Temple at the East Bank. Return back to your cruise and enjoy a warm and hand-crafted dinner. Overnight aboard your cruise in Luxor. Meals: Breakfast, Lunch, Dinner. Visits: Karnak Temple, Luxor Temple.<\\/p>\"}]', '[{\"item\":\"Meet and greet service by our representatives upon your airport arrival\"},{\"item\":\"All transfers via private air-conditioned vehicle\"},{\"item\":\"Domestic flight tickets from Cairo to Luxor and Aswan to Cairo\"},{\"item\":\"Accommodation for 3 nights in Cairo, including daily breakfast\"},{\"item\":\"Accommodation for 4 nights on a 5-star superior Nile Cruise ship, full board\"},{\"item\":\" Airport transfers\"}]', '[{\"title\":\"Per Person (Double Occupancy)\",\"price\":\"$2,499\"},{\"title\":\"Single Supplement\",\"price\":\"+$699\"},{\"title\":\"Child (6-12 years)\",\"price\":\"$1,899\"}]', NULL, '[{\"item\":\"International Airfare\"},{\"item\":\"Entry visa to Egypt\"},{\"item\":\"Any optional tours\"},{\"item\":\"Personal spending\"},{\"item\":\"Tipping\"}]', '[{\"item\":\" Deposit: $500 per person at booking\"},{\"item\":\"Balance: Due 60 days before departure\"},{\"item\":\" Cancellation: Full refund if cancelled 90+ days before departure\"},{\"item\":\" Payment methods: Credit card, bank transfer, or PayPal\"}]', '[\"01KCKHE9X0VBTPKM7PD3FFEPXQ.webp\",\"01KCKHE9X3CBDM3BA60WKFFPHS.webp\",\"01KCKHE9X5GNS7R445NNYH99HQ.webp\"]', '2025-12-16 09:02:06', '2025-12-16 11:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review` enum('text','video') DEFAULT NULL,
  `rateing` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `rateing`, `content`, `name`, `address`, `url`, `image`, `created_at`, `updated_at`) VALUES
(2, 'text', 4, '\"Sedra made our honeymoon in the Maldives absolutely perfect! Every detail was\nthoughtfully planned, from the overwater villa to the private dinner on the beach.\nCouldn\'t have asked for a better experience.\"', 'Sarah Johnson', 'New York, USA', NULL, 'reviews/01KCEHSB599RTMT65J5Z77HGEE.jpg', '2025-12-14 11:46:17', '2025-12-14 11:46:17'),
(3, 'text', 3, '\"Sedra made our honeymoon in the Maldives absolutely perfect! Every detail was\nthoughtfully planned, from the overwater villa to the private dinner on the beach.\nCouldn\'t have asked for a better experience.\"', 'Eslam Salah', 'New York, USA', NULL, 'reviews/01KCEHTWRW4GZKRVQE25VYA91K.jpg', '2025-12-14 11:47:07', '2025-12-14 11:47:07'),
(4, 'text', 5, '\"Sedra made our honeymoon in the Maldives absolutely perfect! Every detail was\nthoughtfully planned, from the overwater villa to the private dinner on the beach.\nCouldn\'t have asked for a better experience.\"', 'Test ', 'New York, USA', NULL, 'reviews/01KCEND9Q6Z3JHGMCEV1MXXDRT.jpg', '2025-12-14 12:49:36', '2025-12-14 12:49:36'),
(5, 'text', 5, '\"Sedra made our honeymoon in the Maldives absolutely perfect! Every detail was\nthoughtfully planned, from the overwater villa to the private dinner on the beach.\nCouldn\'t have asked for a better experience.\"', 'Test ', 'New York, USA', NULL, 'reviews/01KCENEJBBFN9S7684EP4FTZED.jpg', '2025-12-14 12:50:18', '2025-12-14 12:50:18'),
(6, 'video', NULL, NULL, NULL, NULL, 'https://youtu.be/r3jVixHmW2Q?si=ElGiyOhSsvftMOdN', NULL, '2025-12-14 12:52:43', '2025-12-14 13:31:55'),
(7, 'video', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=AEyHBmvgHfs', NULL, '2025-12-14 13:33:05', '2025-12-14 13:33:05'),
(8, 'video', NULL, NULL, NULL, NULL, 'https://www.youtube.com/watch?v=TYyF0blnOOU', NULL, '2025-12-14 13:33:45', '2025-12-14 13:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('vksJg8VcsjWs4AMWypsfwyDTKfbVY9bMmOFnFJBG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiV0Y5Y2w5SlZsQjltTmxibVVMYzhSTExsTGNEaTdyaW5CeG5xdmFwOSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJEhGRGVoS1pLazdOZU4uSG50RS44QnVMcmNwYmYzWEhETC9JT1ZyYTc4Yml3UnlxcWdiTEYyIjtzOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1765976348);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `footerlogo` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `descriptionfooter` text DEFAULT NULL,
  `social_midea` text DEFAULT NULL,
  `mail` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `title_contactus_in_home` text DEFAULT NULL,
  `sub_title_contact_in_home` text DEFAULT NULL,
  `title_media_center_home` text DEFAULT NULL,
  `sub_title_media_center_home` text DEFAULT NULL,
  `title_faq_home` text DEFAULT NULL,
  `sub_title_faq_home` text DEFAULT NULL,
  `title_reviews_home` text DEFAULT NULL,
  `sub_title_reviews_home` text DEFAULT NULL,
  `title_destination_home` text DEFAULT NULL,
  `sub_title_destination_home` text DEFAULT NULL,
  `title_destination_page` text DEFAULT NULL,
  `sub_title_destination_page` text DEFAULT NULL,
  `title_packages_home` text DEFAULT NULL,
  `sub_title_packages_home` text DEFAULT NULL,
  `title_packages_page` text DEFAULT NULL,
  `sub_title_packages_page` text DEFAULT NULL,
  `title_sticky_destination_page` text DEFAULT NULL,
  `sub_title_sticky_destination_page` text DEFAULT NULL,
  `title_blog_page` text DEFAULT NULL,
  `sub_title_blog_page` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sitename`, `logo`, `footerlogo`, `favicon`, `descriptionfooter`, `social_midea`, `mail`, `phone`, `title_contactus_in_home`, `sub_title_contact_in_home`, `title_media_center_home`, `sub_title_media_center_home`, `title_faq_home`, `sub_title_faq_home`, `title_reviews_home`, `sub_title_reviews_home`, `title_destination_home`, `sub_title_destination_home`, `title_destination_page`, `sub_title_destination_page`, `title_packages_home`, `sub_title_packages_home`, `title_packages_page`, `sub_title_packages_page`, `title_sticky_destination_page`, `sub_title_sticky_destination_page`, `title_blog_page`, `sub_title_blog_page`, `created_at`, `updated_at`) VALUES
(1, 'Sedra', 'Logo/01KCNX617511CDASTYG98RF5ZZ.png', 'footerlogo/01KCNX618F0AMPWVRWA5KDDHE0.png', 'Favicon/01KCNX618BVDMKWE7RMV52RTKM.png', 'At Sedra Travel, our mission is to be the most trusted and reliable partner for Muslims in the USA embarking on their sacred journeys of Umrah and Hajj. We aim to inspire and support our community by providing seamless, spiritually enriching, and unforgettable travel experiences that honor the significance of these holy pilgrimages.', '[{\"url\":\"https:\\/\\/www.instagram.com\\/sedratravelinc\\/profilecard\\/\",\"platform\":\"fa-brands fa-instagram\"},{\"url\":\"https:\\/\\/www.facebook.com\\/sedratravelinc\",\"platform\":\"fa-brands fa-facebook\"},{\"url\":\"https:\\/\\/www.tiktok.com\\/@sedratravelinc?_t=ZP-8s0Y4iuHXo6\",\"platform\":\"fa-brands fa-tiktok\"}]', 'Sedratravelinc@gmail.com', '+1 (626) 353-4268', 'Ready to Start Your Adventure?', 'Send us a quick message and our travel experts will reach out to you shortly!', 'Follow Our Journey', 'Get inspired by our travelers\' adventures on Instagram', 'Frequently Asked Questions', 'Everything you need to know about traveling with Sedra', 'What Our Travelers Say', 'Real experiences from real travelers who chose Sedra', 'Top Destinations', 'Discover the world\'s most sought-after locations', 'Travel Destinations', 'Discover breathtaking locations around the world, each offering unique experiences and unforgettable memories', 'Luxury Travel Packages', 'Curated experiences designed for unforgettable memories', 'Travel Packages', 'Carefully curated travel experiences designed to create unforgettable memories', 'Plan Your Visit', 'Ready to experience Santorini? Contact us to customize your perfect trip.', 'Travel Blog & Articles', 'Expert advice, inspiring stories, and practical tips for your next adventure', '2025-12-17 08:20:08', '2025-12-17 08:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `top_homme_sections`
--

CREATE TABLE `top_homme_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_homme_sections`
--

INSERT INTO `top_homme_sections` (`id`, `title`, `subtitle`, `video`, `created_at`, `updated_at`) VALUES
(2, 'Discover Your Dream Destination', 'Experience the world\'s most extraordinary places with personalized luxury travel packages crafted just for you', '01KCE71PFB750PRPNG7MPHCQDK.mp4', '2025-12-14 08:38:36', '2025-12-14 08:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `trip_bookings`
--

CREATE TABLE `trip_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `tripname` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_bookings`
--

INSERT INTO `trip_bookings` (`id`, `name`, `phone`, `tripname`, `created_at`, `updated_at`) VALUES
(1, 'Eslam Salah Ahmed', '01116161569', 'Trip to Egypt: Pyramids', '2025-12-16 12:30:49', '2025-12-16 12:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Eslam Salah', 'eslamsalah@gmail.com', NULL, '$2y$12$HFDehKZKk7NeN.HntE.8BuLrcpbf3XHDL/IOVra78biwRyqqgbLF2', '2Asu3JRzgk69GQcyWfb5XWFIOrSx7CG71iHQ8mQd3bxwxAOZjL78n0KCJycv', '2025-12-07 07:13:19', '2025-12-07 07:13:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_categoryblog_id_foreign` (`categoryblog_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `category_blogs`
--
ALTER TABLE `category_blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_blogs_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `destinations_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`),
  ADD KEY `packages_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_homme_sections`
--
ALTER TABLE `top_homme_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_bookings`
--
ALTER TABLE `trip_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_blogs`
--
ALTER TABLE `category_blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `top_homme_sections`
--
ALTER TABLE `top_homme_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trip_bookings`
--
ALTER TABLE `trip_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_categoryblog_id_foreign` FOREIGN KEY (`categoryblog_id`) REFERENCES `category_blogs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `packages_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
