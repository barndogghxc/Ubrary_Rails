
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO "schema_migrations" VALUES('20180403213703');
INSERT INTO "schema_migrations" VALUES('20180404044949');
INSERT INTO "schema_migrations" VALUES('20180404052822');
INSERT INTO "schema_migrations" VALUES('20180404062950');
INSERT INTO "schema_migrations" VALUES('20180404063216');
INSERT INTO "schema_migrations" VALUES('20180405010137');
INSERT INTO "schema_migrations" VALUES('20180405210517');
INSERT INTO "schema_migrations" VALUES('20180405212737');
INSERT INTO "schema_migrations" VALUES('20180405213535');
INSERT INTO "schema_migrations" VALUES('20180405213555');
INSERT INTO "schema_migrations" VALUES('20180405214503');
INSERT INTO "schema_migrations" VALUES('20180406070737');
INSERT INTO "schema_migrations" VALUES('20180406074606');
INSERT INTO "schema_migrations" VALUES('20180406130826');
INSERT INTO "schema_migrations" VALUES('20180406132012');
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "ar_internal_metadata" VALUES('environment','development','2018-04-03 21:39:20.744166','2018-04-03 21:39:20.744166');
CREATE TABLE "books" ("id" SERIAL PRIMARY KEY NOT NULL, "title" varchar, "synopsis" text, "author" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "user_id" integer, "genre_id" integer, "book_img_file_name" varchar, "book_img_content_type" varchar, "book_img_file_size" integer, "book_img_updated_at" timestamp);
INSERT INTO "books" VALUES(1,'The Rise and Fall of the Third Reich: A History of Nazi Germany','Hitler boasted that The Third Reich would last a thousand years. It lasted only 12. But those 12 years contained some of the most catastrophic events Western civilization has ever known.No other powerful empire ever bequeathed such mountains of evidence about its birth and destruction as the Third Reich. When the bitter war was over, and before the Nazis could destroy their files, the Allied demand for unconditional surrender produced an almost hour-by-hour record of the nightmare empire built by Adolph Hitler. This record included the testimony of Nazi leaders and of concentration camp inmates, the diaries of officials, transcripts of secret conferences, army orders, private letters—all the vast paperwork behind Hitler''s drive to conquer the world.The famed foreign correspondent and historian William L. Shirer, who had watched and reported on the Nazis since 1925, spent five and a half years sifting through this massive documentation. The result is a monumental study that has been widely acclaimed as the definitive record of one of the most frightening chapters in the history of mankind.This worldwide bestseller has been acclaimed as the definitive book on Nazi Germany; it is a classic work.The accounts of how the United States got involved and how Hitler used Mussolini and Japan are astonishing, and the coverage of the war-from Germany''s early successes to her eventual defeat-is must reading','William L. Shirer','2018-04-04 03:30:13.184618','2018-04-05 02:00:51.566594',1,1,'reich.jpg','image/jpeg',18799,'2018-04-05 02:00:51.378898');
INSERT INTO "books" VALUES(2,'Europe','From the Ice Age to the Cold War, from Reykjavik to the Volga, from Minos to Margaret Thatcher, Norman Davies here tells the entire story of Europe in a single volume. It is the most ambitious history of the continent ever undertaken.','Norman Davies','2018-04-04 03:42:58.804592','2018-04-05 02:07:04.605303',1,1,'europe.jpg','image/jpeg',21707,'2018-04-05 02:07:04.439692');
INSERT INTO "books" VALUES(3,'The Stand','This is the way the world ends: with a nanosecond of computer error in a Defense Department laboratory and a million casual contacts that form the links in a chain letter of death. And here is the bleak new world of the day after: a world stripped of its institutions and emptied of 99 percent of its people. A world in which a handful of panicky survivors choose sides -- or are chosen. ','Stephen King','2018-04-04 03:46:17.310717','2018-04-05 02:08:43.900617',1,4,'stand.jpg','image/jpeg',32771,'2018-04-05 02:08:43.763547');
INSERT INTO "books" VALUES(4,'Infinite Jest','A gargantuan, mind-altering comedy about the Pursuit of Happiness in America. Set in an addicts'' halfway house and a tennis academy, and featuring the most endearingly screwed-up family to come along in recent fiction, Infinite Jest explores essential questions about what entertainment is and why it has come to so dominate our lives; about how our desire for entertainment affects our need to connect with other people; and about what the pleasures we choose say about who we are. Equal parts philosophical quest and screwball comedy, Infinite Jest bends every rule of fiction without sacrificing for a moment its own entertainment value. It is an exuberant, uniquely American exploration of the passions that make us human—and one of those rare books that renew the idea of what a novel can do. ','David Foster Wallace','2018-04-04 03:51:54.356638','2018-04-05 02:09:38.666555',1,5,'jest.jpg','image/jpeg',33548,'2018-04-05 02:09:38.486265');
INSERT INTO "books" VALUES(5,'Jonathan Strange & Mr Norrell','Sophisticated, witty, and ingeniously convincing, Susanna Clarke''s magisterial novel weaves magic into a flawlessly detailed vision of historical England. She has created a world so thoroughly enchanting that eight hundred pages leave readers longing for more.English magicians were once the wonder of the known world, with fairy servants at their beck and call; they could command winds, mountains, and woods. But by the early 1800s they have long since lost the ability to perform magic. They can only write long, dull papers about it, while fairy servants are nothing but a fading memory.But at Hurtfew Abbey in Yorkshire, the rich, reclusive Mr Norrell has assembled a wonderful library of lost and forgotten books from England''s magical past and regained some of the powers of England''s magicians. He goes to London and raises a beautiful young woman from the dead. Soon he is lending his help to the government in the war against Napoleon Bonaparte, creating ghostly fleets of rain-ships to confuse and alarm the French.All goes well until a rival magician appears. Jonathan Strange is handsome, charming, and talkative-the very opposite of Mr Norrell. Strange thinks nothing of enduring the rigors of campaigning with Wellington''s army and doing magic on battlefields. Astonished to find another practicing magician, Mr Norrell accepts Strange as a pupil. But it soon becomes clear that their ideas of what English magic ought to be are very different. For Mr Norrell, their power is something to be cautiously controlled, while Jonathan Strange will always be attracted to the wildest, most perilous forms of magic. He becomes fascinated by the ancient, shadowy figure of the Raven King, a child taken by fairies who became king of both England and Faerie, and the most legendary magician of all. Eventually Strange''s heedless pursuit of long-forgotten magic threatens to destroy not only his partnership with Norrell, but everything that he holds dear. ','Susanna Clarke','2018-04-04 03:53:10.220330','2018-04-05 02:10:00.358754',1,6,'strange.jpg','image/jpeg',15429,'2018-04-05 02:10:00.207490');
INSERT INTO "books" VALUES(6,'Fall of Giants','It is 1911. The Coronation Day of King George V. The Williams, a Welsh coal-mining family is linked by romance and enmity to the Fitzherberts, aristocratic coal-mine owners. Lady Maud Fitzherbert falls in love with Walter von Ulrich, a spy at the German Embassy in London. Their destiny is entangled with that of an ambitious young aide to U.S. President Woodrow Wilson and to two orphaned Russian brothers, whose plans to emigrate to America fall foul of war, conscription and revolution. In a plot of unfolding drama and intriguing complexity, "Fall Of Giants" moves seamlessly from Washington to St Petersburg, from the dirt and danger of a coal mine to the glittering chandeliers of a palace, from the corridors of power to the bedrooms of the mighty.English magicians were once the wonder of the known world, with fairy servants at their beck and call; they could command winds, mountains, and woods. But by the early 1800s they have long since lost the ability to perform magic. They can only write long, dull papers about it, while fairy servants are nothing but a fading memoryBut at Hurtfew Abbey in Yorkshire, the rich, reclusive Mr Norrell has assembled a wonderful library of lost and forgotten books from England''s magical past and regained some of the powers of England''s magicians. He goes to London and raises a beautiful young woman from the dead. Soon he is lending his help to the government in the war against Napoleon Bonaparte, creating ghostly fleets of rain-ships to confuse and alarm the FrenchAll goes well until a rival magician appears. Jonathan Strange is handsome, charming, and talkative-the very opposite of Mr Norrell. Strange thinks nothing of enduring the rigors of campaigning with Wellington''s army and doing magic on battlefields. Astonished to find another practicing magician, Mr Norrell accepts Strange as a pupil. But it soon becomes clear that their ideas of what English magic ought to be are very different. For Mr Norrell, their power is something to be cautiously controlled, while Jonathan Strange will always be attracted to the wildest, most perilous forms of magic. He becomes fascinated by the ancient, shadowy figure of the Raven King, a child taken by fairies who became king of both England and Faerie, and the most legendary magician of all. Eventually Strange''s heedless pursuit of long-forgotten magic threatens to destroy not only his partnership with Norrell, but everything that he holds dear. ','Ken Follett','2018-04-04 03:54:32.531318','2018-04-05 02:10:37.111500',1,6,'fall.jpg','image/jpeg',218832,'2018-04-05 02:10:36.884925');
INSERT INTO "books" VALUES(7,'The Rise of Theodore Roosevelt','Described by the Chicago Tribune as "a classic," The Rise of Theodore Roosevelt stands as one of the greatest biographies of our time. The publication of The Rise of Theodore Roosevelt on September 14th, 2001 marks the 100th anniversary of Theodore Roosevelt becoming president.','Edmund Morris','2018-04-04 03:55:53.763181','2018-04-05 02:09:20.225174',1,8,'teddy.jpg','image/jpeg',22929,'2018-04-05 02:09:20.049818');
INSERT INTO "books" VALUES(8,'A Game of Thrones (A Song of Ice and Fire #1)','Long ago, in a time forgotten, a preternatural event threw the seasons out of balance. In a land where summers can last decades and winters a lifetime, trouble is brewing. The cold is returning, and in the frozen wastes to the north of Winterfell, sinister and supernatural forces are massing beyond the kingdom’s protective Wall. At the center of the conflict lie the Starks of Winterfell, a family as harsh and unyielding as the land they were born to. Sweeping from a land of brutal cold to a distant summertime kingdom of epicurean plenty, here is a tale of lords and ladies, soldiers and sorcerers, assassins and bastards, who come together in a time of grim omensHere an enigmatic band of warriors bear swords of no human metal; a tribe of fierce wildlings carry men off into madness; a cruel young dragon prince barters his sister to win back his throne; and a determined woman undertakes the most treacherous of journeys. Amid plots and counterplots, tragedy and betrayal, victory and terror, the fate of the Starks, their allies, and their enemies hangs perilously in the balance, as each endeavors to win that deadliest of conflicts: the game of thrones.','George R.R. Martin','2018-04-04 05:42:28.685958','2018-04-05 02:09:05.722833',1,7,'got.jpg','image/jpeg',37136,'2018-04-05 02:09:05.536013');
INSERT INTO "books" VALUES(9,'Titan: The Life of John D. Rockefeller, Sr.','John D. Rockefeller, Sr.--history''s first billionaire and the patriarch of America''s most famous dynasty--is an icon whose true nature has eluded three generations of historians. Now Ron Chernow, the National Book Award-winning biographer of the Morgan and Warburg banking families, gives us a history of the mogul "etched with uncommon objectivity and literary grace . . . as detailed, balanced, and psychologically insightful a portrait of the tycoon as we may ever have" (Kirkus Reviews). Titan is the first full-length biography based on unrestricted access to Rockefeller''s exceptionally rich trove of papers. A landmark publication full of startling revelations, the book will indelibly alter our image of this most enigmatic capitalist        Born the son of a flamboyant, bigamous snake-oil salesman and a pious, straitlaced mother, Rockefeller rose from rustic origins to become the world''s richest man by creating America''s most powerful and feared monopoly, Standard Oil. Branded "the Octopus" by legions of muckrakers, the trust refined and marketed nearly 90 percent of the oil produced in America        Rockefeller was likely the most controversial businessman in our nation''s history. Critics charged that his empire was built on unscrupulous tactics: grand-scale collusion with the railroads, predatory pricing, industrial espionage, and wholesale bribery of political officials. The titan spent more than thirty years dodging investigations until Teddy Roosevelt and his trustbusters embarked on a marathon crusade to bring Standard Oil to bay        While providing abundant new evidence of Rockefeller''s misdeeds, Chernow discards the stereotype of the cold-blooded monster to sketch an unforgettably human portrait of a quirky, eccentric original. A devout Baptist and temperance advocate, Rockefeller gave money more generously--his chosen philanthropies included the Rockefeller Foundation, the University of Chicago, and what is today Rockefeller University--than anyone before him. Titan presents a finely nuanced portrait of a fascinating, complex man, synthesizing his public and private lives and disclosing numerous family scandals, tragedies, and misfortunes that have never before come to light        John D. Rockefeller''s story captures a pivotal moment in American history, documenting the dramatic post-Civil War shift from small business to the rise of giant corporations that irrevocably transformed the nation. With cameos by Joseph Pulitzer, William Randolph Hearst, Jay Gould, William Vanderbilt, Ida Tarbell, Andrew Carnegie, Carl Jung, J. Pierpont Morgan, William James, Henry Clay Frick, Mark Twain, and Will Rogers, Titan turns Rockefeller''s life into a vivid tapestry of American society in the late nineteenth and early twentieth centuries. It is Ron Chernow''s signal triumph that he narrates this monumental saga with all the sweep, drama, and insight that this giant subject deserves.','Ron Chernow','2018-04-04 05:43:40.834376','2018-04-05 02:11:02.027980',1,8,'titan.jpg','image/jpeg',31655,'2018-04-05 02:11:01.857104');
INSERT INTO "books" VALUES(10,'The Better Angels of Our Nature: Why Violence Has Declined','Believe it or not, today we may be living in the most peaceful moment in our species'' existence. In his gripping and controversial new work, New York Times bestselling author Steven Pinker shows that despite the ceaseless news about war, crime, and terrorism, violence has actually been in decline over long stretches of history. Exploding myths about humankind''s inherent violence and the curse of modernity, this ambitious book continues Pinker''s exploration of the essence of human nature, mixing psychology and history to provide a remarkable picture of an increasingly enlightened world.','Steven Pinker','2018-04-04 05:45:58.290049','2018-04-05 02:11:24.327456',1,2,'violence.jpg','image/jpeg',76640,'2018-04-05 02:11:24.137961');
INSERT INTO "books" VALUES(11,'The Great Sea: A Human History of the Mediterranean','For over three thousand years, the Mediterranean Sea has been one of the great centres of civilization. David Abulafia''s The Great Sea is the first complete history of the Mediterranean, from the erection of temples on Malta around 3500 BC to modern tourism. Ranging across time and the whole extraordinary space of the Mediterranean from Gibraltar to Jaffa, Genoa to Tunis, and bringing to life pilgrims, pirates, sultans and naval commanders, this is the story of the sea that has shaped much of world history.','David Abulafia','2018-04-04 05:47:23.756770','2018-04-05 02:10:18.957023',1,1,'sea.jpg','image/jpeg',33321,'2018-04-05 02:10:18.780264');
INSERT INTO "books" VALUES(12,'A History of the World in 100 Objects','Neil MacGregor''s A History of the World in 100 Objects takes a bold, original approach to human history, exploring past civilizations through the objects that defined them. Encompassing a grand sweep of human history, A History of the World in 100 Objects begins with one of the earliest surviving objects made by human hands, a chopping tool from the Olduvai gorge in Africa, and ends with objects which characterise the world we live in today. Seen through MacGregor''s eyes, history is a kaleidoscope - shifting, interconnected, constantly surprising, and shaping our world today in ways that most of us have never imagined. A stone pillar tells us about a great Indian emperor preaching tolerance to his people; Spanish pieces of eight tell us about the beginning of a global currency; and an early Victorian tea-set speaks to us about the impact of empire. An intellectual and visual feast, this is one of the most engrossing and unusual history books published in years. ''Brilliant, engagingly written, deeply researched'' Mary Beard, Guardian ''A triumph: hugely popular, and rightly lauded as one of the most effective and intellectually ambitious initiatives in the making of ''public history'' for many decades'' Sunday Telegraph ''Highly intelligent, delightfully written and utterly absorbing '' Timothy Clifford, Spectator ''This is a story book, vivid and witty, shining with insights, connections, shocks and delights'' Gillian Reynolds Daily Telegraph','Neil MacGregor','2018-04-04 05:49:32.056924','2018-04-05 02:12:25.302070',1,1,'object.jpg','image/jpeg',16565,'2018-04-05 02:12:25.149315');
INSERT INTO "books" VALUES(13,'Legacy of Ashes: The History of the CIA','For the last sixty years, the CIA has managed to maintain a formidable reputation in spite of its terrible record, burying its blunders in top-secret archives. Its mission was to know the world. When it did not succeed, it set out to change the world. Its failures have handed us, in the words of President Eisenhower, “a legacy of ashes.Now Pulitzer Prize–winning author Tim Weiner offers the first definitive history of the CIA—and everything is on the record. LEGACY OF ASHES is based on more than 50,000 documents, primarily from the archives of the CIA itself, and hundreds of interviews with CIA veterans, including ten Directors of Central Intelligence. It takes the CIA from its creation after World War II, through its battles in the cold war and the war on terror, to its near-collapse after September 11th, 2001Tim Weiner’s past work on the CIA and American intelligence was hailed as “impressively reported” and “immensely entertaining” in The New York Times.The Wall Street Journal called it “truly extraordinary . . . the best book ever written on a case of espionage.” Here is the hidden history of the CIA: why eleven presidents and three generations of CIA officers have been unable to understand the world; why nearly every CIA director has left the agency in worse shape than he found it; and how these failures have profoundly jeopardized our national security. ','Tim Weiner','2018-04-04 05:53:59.789080','2018-04-05 02:12:53.926679',1,2,'cia.jpg','image/jpeg',36390,'2018-04-05 02:12:53.749648');
INSERT INTO "books" VALUES(14,'Helter Skelter: The True Story of the Manson Murders','Prosecuting attorney in the Manson trial, Vincent Bugliosi held a unique insider''s position in one of the most baffling and horrifying cases of the twentieth century: the cold-blooded Tate-LaBianca murders carried out by Charles Manson and four of his followers. What motivated Manson in his seemingly mindless selection of victims, and what was his hold over the young women who obeyed his orders? Here is the gripping story of this famous and haunting crime. 50 pages of b/w photographs. ','Vincent Bugliosi, Curt Gentry','2018-04-04 05:56:32.389031','2018-04-05 02:12:07.587535',1,2,'manson.jpg','image/jpeg',26537,'2018-04-05 02:12:07.417996');
INSERT INTO "books" VALUES(15,'The Fatal Shore: The Epic of Australia''s Founding','The history of the birth of Australia which came out of the suffering and brutality of England''s infamous convict transportation system. With 16 pages of illustrations and 3 maps.','Robert Hughes','2018-04-04 06:11:56.199230','2018-04-05 02:28:40.350392',2,1,'aussie.jpg','image/jpeg',55395,'2018-04-05 02:28:40.178461');
CREATE TABLE "users" ("id" SERIAL PRIMARY KEY NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" timestamp, "remember_created_at" timestamp, "sign_in_count" integer DEFAULT 0 NOT NULL, "current_sign_in_at" timestamp, "last_sign_in_at" timestamp, "current_sign_in_ip" varchar, "last_sign_in_ip" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "users" VALUES(1,'barndogghxc@yahoo.com','$2a$11$dCLu.NMCQUXaaxrb7p81CO7BQcCBgtTT6hcTrxMRtMQprwYIUzo8.',NULL,NULL,NULL,8,'2018-04-06 07:28:00.241817','2018-04-06 01:23:53.112531','127.0.0.1','127.0.0.1','2018-04-04 05:21:12.024390','2018-04-06 07:28:00.243452');
INSERT INTO "users" VALUES(2,'b@g.com','$2a$11$s8U86gJ84vHrphZBEQ/k2.kECTIJIIE8Fcabip9AOZZHMZRKmtOLO',NULL,NULL,NULL,1,'2018-04-04 06:10:21.692492','2018-04-04 06:10:21.692492','127.0.0.1','127.0.0.1','2018-04-04 06:10:21.687814','2018-04-04 06:10:21.693103');
CREATE TABLE "genres" ("id" SERIAL PRIMARY KEY NOT NULL, "name" varchar, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
INSERT INTO "genres" VALUES(1,'History','2018-04-04 07:19:39.287539','2018-04-04 07:19:39.287539');
INSERT INTO "genres" VALUES(2,'Nonfiction','2018-04-04 07:19:58.089676','2018-04-04 07:19:58.089676');
INSERT INTO "genres" VALUES(3,'War','2018-04-04 07:20:06.235982','2018-04-04 07:20:06.235982');
INSERT INTO "genres" VALUES(4,'Horror','2018-04-04 07:20:18.023794','2018-04-04 07:20:18.023794');
INSERT INTO "genres" VALUES(5,'Fiction','2018-04-04 07:20:30.328736','2018-04-04 07:20:30.328736');
INSERT INTO "genres" VALUES(6,'Historical Fiction','2018-04-04 07:20:41.882729','2018-04-04 07:20:41.882729');
INSERT INTO "genres" VALUES(7,'Fantasy','2018-04-04 07:20:58.533070','2018-04-04 07:20:58.533070');
INSERT INTO "genres" VALUES(8,'Biography','2018-04-04 07:21:12.287823','2018-04-04 07:21:12.287823');
INSERT INTO "genres" VALUES(9,'Crime','2018-04-04 07:21:21.164730','2018-04-04 07:21:21.164730');
CREATE TABLE "reviews" ("id" SERIAL PRIMARY KEY NOT NULL, "rating" integer, "review" text, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, "user_id" integer, "book_id" integer);
INSERT INTO "reviews" VALUES(2,5,'I was doing ayahuasca in the hills of Bogota, Colombia with Native Southern Americans while listening to this on audiobook. A airplane flew right above my nose and I saw Jesus Christ in Tetris form. Than i pet a cabybara','2018-04-05 22:54:09.406135','2018-04-05 22:54:09.406135',1,8);
INSERT INTO "reviews" VALUES(3,3,'The second time i took ayahuasca was with the same Native Southern Americans but this time they''re were no hills, just a Native Southern American chasing me with a palm leaf and purple lightning and my watch stopped working','2018-04-06 00:09:48.988314','2018-04-06 00:09:48.988314',1,8);
CREATE TABLE "favorite_books" ("id" SERIAL PRIMARY KEY NOT NULL, "book_id" integer, "user_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL);
CREATE TABLE "favorites" ("id" SERIAL PRIMARY KEY NOT NULL, "user_id" integer, "favorited_type" varchar, "favorited_id" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL, CONSTRAINT "fk_rails_d15744e438"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE INDEX "index_favorites_on_user_id" ON "favorites" ("user_id");
CREATE INDEX "index_favorites_on_favorited_type_and_favorited_id" ON "favorites" ("favorited_type", "favorited_id");
COMMIT;