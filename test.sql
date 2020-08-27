-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 27 août 2020 à 13:40
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `user_id`, `createdAt`) VALUES
(1, 'Chapitre 1', '<p>J&rsquo;entrais dans la pi&egrave;ce et vis le bordel que j&rsquo;y avais laiss&eacute; en partant, la derni&egrave;re fois. Plusieurs excuses sont possibles : soit un lieu de vie a beaucoup de surface, et quand on est seul, il est difficile de l&rsquo;entretenir, de le maintenir dans des normes socialement convenables (au cas o&ugrave; on aurait une vie sociale). Soit il ne mesure pas grand-chose, et alors le moindre d&eacute;sordre se trouve maximis&eacute;. Bordel d&rsquo;apparence inexpugnable, de toute fa&ccedil;on. Sauf qu&rsquo;il me fallait bien r&eacute;gler le probl&egrave;me, car cette esp&egrave;ce de chambre-studio allait &ecirc;tre occup&eacute;e par quelqu&rsquo;un d&rsquo;autre &agrave; une date bien d&eacute;finie, et proche, pour ne pas dire imminente. J&rsquo;avais d&eacute;j&agrave; enlev&eacute; pas mal de saloperies, pr&eacute;c&eacute;demment. C&rsquo;est que j&rsquo;accumule tout (entre autres les paquets de c&eacute;r&eacute;ales vides), et l&agrave;, donc, ce n&rsquo;&eacute;tait pas grand. &Ccedil;a sentait la fatigue des occupants, surtout la mienne, en fait, malgr&eacute; mes absences r&eacute;p&eacute;t&eacute;es de plusieurs semaines ou mois. Quelques m&egrave;tres carr&eacute;s, des &eacute;tag&egrave;res contre un mur, une moquette us&eacute;e couleur de flore roussie, une petite baie vitr&eacute;e (ou alors une grande fen&ecirc;tre) d&rsquo;une d&eacute;coupe parfaite pour laisser passer, au moment o&ugrave; j&rsquo;y p&eacute;n&eacute;trai, une lumi&egrave;re jaune crade. Cette lumi&egrave;re, comment dire, se connectait &agrave; la sempiternelle poussi&egrave;re ambiante et rance, aux m&eacute;andres soudain survolt&eacute;s par mes d&eacute;placements. Les &eacute;tag&egrave;res avaient &eacute;t&eacute; le premier gros morceau, &agrave; cause des livres. En fait, je ferais mieux de le dire comme ceci : les livres D&eacute;barras de Paul Sunderland D&Eacute;BARRAS Paul Sunderland 3 avaient &eacute;t&eacute; le premier gros morceau, et pas seulement dans leur espace de rangement officiel. J&rsquo;avais fini par en accumuler absolument partout. Ils n&rsquo;avaient donc pas &eacute;t&eacute; difficiles &agrave; r&eacute;cup&eacute;rer; ce qui avait pos&eacute; probl&egrave;me &eacute;tait leur quantit&eacute; invraisemblable pour un si petit volume. Je ne peux m&ecirc;me pas dire &laquo; espace &raquo;, terme limit&eacute; au regard des empilements qui, pour certains, touchaient presque le plafond, en un incontestable d&eacute;fi aux lois de l&rsquo;&eacute;quilibre. Mon soulagement, aujourd&rsquo;hui, c&rsquo;est que, sans pour autant renier l&rsquo;imprimerie classique, je suis pass&eacute; &agrave; un autre type de lecture et que j&rsquo;ai r&eacute;solu, ce faisant, le probl&egrave;me de la place. N&rsquo;emp&ecirc;che que jusque-l&agrave;, les bouquins, il a fallu que je les retire un par un, que je les trie, et que j&rsquo;achemine en plusieurs voyages la s&eacute;lection r&eacute;siduelle jusqu&rsquo;&agrave; ma base secr&egrave;te (qui est vraiment secr&egrave;te ; les autres avaient &eacute;t&eacute; revendus ou donn&eacute;s), situ&eacute;e &agrave; plusieurs centaines de kilom&egrave;tres de l&agrave;. Il en restait un certain nombre, mais j&rsquo;y suis parvenu. Dans la foul&eacute;e, j&rsquo;ai pris avec moi deux ou trois autres bricoles que j&rsquo;ai r&eacute;ussi &agrave; entasser dans mes bagages. Apr&egrave;s, je suis rest&eacute; &eacute;loign&eacute; de tout &ccedil;a pendant un certain temps, pour diff&eacute;rentes raisons. J&rsquo;ai eu &agrave; faire (ce n&rsquo;est pas termin&eacute;, d&rsquo;ailleurs) dans une autre r&eacute;gion. Un courrier, cela dit, a fini par se poser un jour sous mes yeux et &agrave; ne plus bouger. Il y &eacute;tait poliment indiqu&eacute; par le g&eacute;rant de la r&eacute;sidence que je devrais au plus tard lib&eacute;rer l&rsquo;habitacle et remettre les clefs pour la date du tant. La rentr&eacute;e approchant, une &eacute;tudiante se trouvait en effet sur la liste d&rsquo;attente juste apr&egrave;s mon nom. Une pr&eacute;cision importante, tout de m&ecirc;me : on y ajoutait que j&rsquo;aurais bien entendu la possibilit&eacute; de r&eacute;server un autre num&eacute;ro. Ce que je fis. Je n&rsquo;aime pas trop me retrouver &eacute;ject&eacute; comme &ccedil;a malgr&eacute; ma connaissance du calendrier des ann&eacute;es civile et universitaire. Comme ils avaient l&rsquo;habitude de me voir zoner dans le b&acirc;timent, ann&eacute;e apr&egrave;s ann&eacute;e en d&eacute;pit d&rsquo;absences plus ou moins prolong&eacute;es, et que je m&rsquo;&eacute;tais rendu aimable, je re&ccedil;us un des deux logements contigus. M&ecirc;me surface, m&ecirc;me disposition. Finalement, la migration de livres n&rsquo;avait peut &ecirc;tre pas &eacute;t&eacute; indispensable ; de toute fa&ccedil;on, cela m&rsquo;arrangeait pour transf&eacute;rer au plus vite les reliquats.</p>', 1, '2020-07-29 14:00:00'),
(2, 'Chapitre 2', '<p><span style=\"font-size: 12pt;\">Mais, l&agrave;-dedans,</span> il restait la t&ecirc;te. J&rsquo;avais essay&eacute; de ne pas y penser pendant mon trajet en train, et avant. Je pensais que le reste de 4 l&rsquo;appartement &eacute;tait prot&eacute;g&eacute; de sa pr&eacute;sence car je l&rsquo;avais mise dans un sac poubelle d&rsquo;une bonne capacit&eacute;. Le sac, la t&ecirc;te, &eacute;taient pos&eacute;s sur le si&egrave;ge &agrave; roulettes devant le bureau de merde Dauborama. Rien n&rsquo;avait boug&eacute;, bien entendu. En fait de bordel, c&rsquo;&eacute;tait surtout &ccedil;a qui retenait mon attention ; &agrave; droite, &agrave; gauche, j&rsquo;avais quand m&ecirc;me fait le gros du travail. &Eacute;tant donn&eacute; que l&rsquo;appariteur m&rsquo;avait d&eacute;j&agrave; remis la clef d&rsquo;&agrave; c&ocirc;t&eacute;, je ne me pr&eacute;voyais pas une grosse fatigue, cette fois-ci. J&rsquo;allai donc directement &agrave; la t&ecirc;te. Pourquoi je ne l&rsquo;avais pas &eacute;vacu&eacute;e la derni&egrave;re fois, je ne saurais le dire. Qu&rsquo;on se rende compte : je n&rsquo;avais m&ecirc;me pas pris la peine de fermer le sac. &Agrave; la verticale du si&egrave;ge, j&rsquo;ouvris un peu plus et regardai &agrave; l&rsquo;int&eacute;rieur. Je manquai tomber &agrave; la renverse. Je pensais qu&rsquo;elle aurait encore &eacute;t&eacute; reconnaissable, peut-&ecirc;tre m&ecirc;me identifiable. L&rsquo;identit&eacute; n&rsquo;&eacute;tait d&rsquo;ailleurs pas un probl&egrave;me puisqu&rsquo;elle avait &eacute;t&eacute; &eacute;tablie depuis longtemps. Disons que je m&rsquo;attendais &agrave; voir encore les yeux, certains traits du visage, les oreilles, les dents, un peu de chevelure, un reste de nez... Je m&rsquo;attendais &agrave; certaines teintes. Quant &agrave; l&rsquo;odeur, j&rsquo;avais atteint cette verticale en respirant d&eacute;lib&eacute;r&eacute;ment par la bouche. Elle avait gard&eacute; sa coh&eacute;sion et sa taille en tant que volume mais n&rsquo;&eacute;tait plus qu&rsquo;une boule enrob&eacute;e d&rsquo;une esp&egrave;ce de suint cireux, blanch&acirc;tre et, devinai-je gr&acirc;ce &agrave; l&rsquo;&eacute;clairage naturel, passablement adh&eacute;sif. Qu&rsquo;est-ce qui l&rsquo;avait mise dans cet &eacute;tat ? La lumi&egrave;re du jour, parce que j&rsquo;&eacute;tais parti en omettant (&laquo; omettant &raquo; et pas &laquo; oubliant &raquo; : encore un signe de branlette existentielle) aussi de baisser le volet ?... Je m&rsquo;aper&ccedil;us que je n&rsquo;avais pas ferm&eacute; la porte. Des gens passaient r&eacute;guli&egrave;rement dans le couloir. Vu la taille du b&acirc;timent, son usage, c&rsquo;&eacute;tait normal, mais je n&rsquo;avais pas du tout envie de devoir g&eacute;rer une visite inopin&eacute;e du concierge qui faisait de son mieux malgr&eacute; son emploi du temps surcharg&eacute;, ou de la locataire imminente, de son copain et du copain du copain venus apporter leurs affaires. Je fermai. Je regardai le dossier du si&egrave;ge (qui ne m&rsquo;appartenait pas, pas plus que le bureau) : fort heureusement, aucun beurre des morts ne s&rsquo;&eacute;tait &eacute;panch&eacute; &agrave; l&rsquo;ext&eacute;rieur du sac. Pas de coup d&rsquo;&eacute;ponge &agrave; donner 5 au d&eacute;sinfectant (il devait en rester quelque part) sur le tissu d&eacute;j&agrave; familier de tant de vieilles sueurs de vivants ; c&rsquo;&eacute;tait d&eacute;j&agrave; &ccedil;a. La lumi&egrave;re, oui, cela pouvait l&rsquo;avoir alt&eacute;r&eacute;e. J&rsquo;allai d&eacute;nicher un autre sac poubelle dans la partie cuisine ; j&rsquo;y enfournai le premier sac et, cette fois, je nouai aussi herm&eacute;tiquement que possible. Maintenant, qu&rsquo;allais-je faire de cette t&ecirc;te ? Le temps d&rsquo;une seconde, je fr&eacute;mis de savoir cette chose sectionn&eacute;e en ma possession. Cette impression de culpabilit&eacute;, pourtant, ne se justifiait pas : on me l&rsquo;avait remise en bonne et due forme pour examen. J&rsquo;en avais tir&eacute; tout ce que j&rsquo;avais pu, en l&rsquo;occurrence pas grand-chose, mais, d&egrave;s le d&eacute;part, on m&rsquo;avait inform&eacute; (documents &agrave; l&rsquo;appui) que le corps sur lequel la t&ecirc;te avait repos&eacute; avait re&ccedil;u des obs&egrave;ques tout &agrave; fait dignes. Incapable de trancher (si je puis dire) sur le moment, je d&eacute;cidai de m&rsquo;accorder un r&eacute;pit. En fait, j&rsquo;ex&eacute;cutai m&ecirc;me carr&eacute;ment un remarquable l&acirc;cher-prise mental (j&rsquo;y arrivais moins bien, quand j&rsquo;&eacute;tais plus jeune). Je ressortis du studio, verrouillai et d&eacute;guerpis calmement dans le couloir, comme un chacal apr&egrave;s son attentat. Au premier embranchement, je pris &agrave; droite, marchai une centaine de m&egrave;tres et atteignis un ascenseur bien sp&eacute;cifique.</p>', 1, '2020-07-30 15:00:00'),
(3, 'Chapitre 3', '<p><span style=\"font-size: 12pt;\">Vinchenzo</span> s&rsquo;est point&eacute; l&rsquo;air exalt&eacute;. Je voyais bien qu&rsquo;il n&rsquo;&eacute;tait pas dans son &eacute;tat normal. D&eacute;j&agrave; ? j&rsquo;ai pens&eacute;. Il n&rsquo;&eacute;tait que cinq heures et demie de l&rsquo;apr&egrave;s-midi. Ou du soir, allez savoir. Le soleil allait bient&ocirc;t se coucher au-del&agrave; des montagnes du Ruwenzori. La nuit allait s&rsquo;emparer subitement de Kampala et du reste du pays au pire dans une heure. J&rsquo;&eacute;tais habitu&eacute;, depuis presque deux ans que j&rsquo;&eacute;tais l&agrave;. C&rsquo;&eacute;tait plut&ocirc;t Vince qui &eacute;tait mon sujet de pr&eacute;occupation. Il n&rsquo;avait pas l&rsquo;habitude de surgir &agrave; cette heure avec le sourire, l&rsquo;air jovial et excit&eacute;. D&rsquo;habitude, c&rsquo;&eacute;taient plut&ocirc;t des grognements en signe de bonjour, ou des merde, chier, putain, le tout en trainant des pieds ou en shootant dans des bo&icirc;tes de conserve imaginaires. J&rsquo;&eacute;tais en train de lire le Newsweek de la semaine pr&eacute;c&eacute;dente. J&rsquo;&eacute;tais loin de l&rsquo;Occident, g&eacute;ographiquement et dans ma t&ecirc;te mais j&rsquo;essayais malgr&eacute; tout de me tenir au courant, de garder le contact avec le reste du monde. J&rsquo;ai repos&eacute; le magazine sachant que, pour terminer l&rsquo;article sur la chute finale imminente de l&rsquo;empire sovi&eacute;tique que je venais de commencer &agrave; lire, c&rsquo;&eacute;tait r&acirc;p&eacute;. J&rsquo;ai regard&eacute; mon coloc l&rsquo;air intrigu&eacute;. Je savais que pour le faire parler, le mieux &eacute;tait de garder le silence. &mdash; T&rsquo;as d&eacute;j&agrave; go&ucirc;t&eacute; &agrave; la coke ? il a demand&eacute;. Je n&rsquo;ai pas r&eacute;pondu dans la seconde. Mais je savais de quoi il parlait, pas besoin de me faire un dessin. J&rsquo;avais aussi d&eacute;j&agrave; compris comment la conversation allait tourner. J&rsquo;ai jou&eacute; le jeu The Uganda Railway d&rsquo;Henri Ansbert The Uganda Railway Henri Ansbert8 et j&rsquo;ai compt&eacute; mentalement jusqu&rsquo;&agrave; trois puis j&rsquo;ai r&eacute;pondu &agrave; sa question en lui renvoyant la balle. &mdash; Nan, et toi ? Lui non plus n&rsquo;en avait jamais eu l&rsquo;occasion, qu&rsquo;il disait. A vrai dire, on &eacute;tait d&eacute;j&agrave; assez heureux comme &ccedil;a dans le pays avec l&rsquo;alcool ferment&eacute; ou distill&eacute;, local ou import&eacute;, les comprim&eacute;s de Valium ou de Mandrax qu&rsquo;on trouvait dans les dispensaires ou sous le manteau, et surtout la weed made in Uganda et m&ecirc;me du hash, du Lebanese Red qui avait transit&eacute; par Mombasa. Le tout pour une poign&eacute;e de Ugandan shillings. &mdash; &Ccedil;a te dirait d&rsquo;essayer ? il a repris. &mdash; Donc, t&rsquo;en as, j&rsquo;ai affirm&eacute;. &mdash; Hein ? Je m&rsquo;avan&ccedil;ais peut-&ecirc;tre mais je connaissais bien Vince. Je n&rsquo;aurais pas d&ucirc; le couper dans son &eacute;lan. J&rsquo;aurais d&ucirc; lui donner une r&eacute;ponse claire. J&rsquo;ai fait amende honorable, je l&rsquo;ai d&eacute;gripp&eacute;. &mdash; Rien, j&rsquo;ai dit, continue. &mdash; J&rsquo;en ai un demi gramme sur moi, tu veux go&ucirc;ter ? &mdash; Tu veux dire maintenant ? &mdash; Ouais. Tiens, mate ! Vince a sorti un carr&eacute; de papier de sa poche de chemise. Il l&rsquo;a brandi un court instant et l&rsquo;a balanc&eacute; sur la table du salon en m&rsquo;informant qu&rsquo;il s&rsquo;agissait d&rsquo;un simple &eacute;chantillon gratuit. Mon cerveau faisait des vagues. Je r&eacute;alisais que &ccedil;a y &eacute;tait, qu&rsquo;il me fallait choisir. Je m&rsquo;&eacute;tais toujours promis de ne jamais toucher aux drogues dites dures, mais c&rsquo;&eacute;tait tentant. Le matos &eacute;tait juste devant moi et il n&rsquo;y avait qu&rsquo;&agrave; tendre le bras pour le saisir. J&rsquo;ai regard&eacute; la minuscule enveloppe puis Vince puis &agrave; nouveau l&rsquo;enveloppe. J&rsquo;&eacute;tais en plein dilemme. On m&rsquo;avait serin&eacute; que si je mettais un doigt dans l&rsquo;engrenage, la coke &ndash; ou l&rsquo;h&eacute;ro &ndash; me boufferait le reste du bras. Tout &ccedil;a tournait dans ma t&ecirc;te. Tant que je n&rsquo;avais pas mis le nez dedans, je pouvais toujours reculer. J&rsquo;ai regard&eacute; Vince s&rsquo;affairer. Deux minutes plus tard, mon pote &eacute;tait lanc&eacute;. Il s&eacute;parait les cristaux avec une lame de rasoir rouill&eacute;e sur un petit miroir de voyage sorti de je ne sais o&ugrave;. Il a confectionn&eacute; quatre rails puis est parti chercher quelque chose dans sa chambre. Il est revenu avecle sourire et un billet de US$ 100 flambant neuf. 9 Tu comprends, il a expliqu&eacute;, on n&rsquo;allait pas se fourrer ce truc dans le pif avec un de ces billets ougandais d&eacute;gueulasses et s&ucirc;rement pleins de miasmes. &mdash; Mouais, j&rsquo;ai fait. Mais ma t&ecirc;te &eacute;tait ailleurs Je n&rsquo;avais toujours pas tranch&eacute;, j&rsquo;h&eacute;sitais encore. Puis j&rsquo;ai vu Vince rouler le billet pour en faire une paille, se le fourrer dans une narine, se pencher vers le miroir de poche et aspirer un grand coup. Un des rails a disparu. J&rsquo;observais mon comparse, je voulais savoir quel effet le truc avait sur lui. &mdash; YEEEAAAAH MAAAAAAN ! Manifestement, c&rsquo;&eacute;tait de la bonne. Mon fr&egrave;re de d&eacute;fonce avait les yeux qui brillaient, et m&ecirc;me qui &eacute;mettaient de la lumi&egrave;re, je l&rsquo;aurais jur&eacute;. &Agrave; voir son air aussi &eacute;panoui et lumineux, mes barri&egrave;res morales ont saut&eacute;. J&rsquo;ai attrap&eacute; le billet, je l&rsquo;ai fourr&eacute; dans mon pif et j&rsquo;ai aspir&eacute; un grand coup. Un deuxi&egrave;me rail a disparu. &mdash; WOAW, BORDEL ! C&rsquo;est D&Eacute;MENT ! j&rsquo;ai lanc&eacute;, aussi exalt&eacute; que Vince et sans que ce soit vraiment volontaire, en tout cas calcul&eacute;.</p>', 1, '2020-07-31 16:00:00'),
(4, 'Chapitre 4', '<p><span style=\"font-size: 12pt;\">G&eacute;n&eacute;ralement, on utilise un texte en faux latin (le texte ne veut rien dire, il a &eacute;t&eacute; modifi&eacute;), le Lorem ipsum ou Lipsum, qui permet donc de faire office de texte d\'attente. L\'avantage de le mettre en latin est que l\'op&eacute;rateur sait au premier coup d\'oeil que la page contenant ces lignes n\'est pas valide, et surtout l\'attention du client n\'est pas d&eacute;rang&eacute;e par le contenu, il demeure concentr&eacute; seulement sur l\'aspect graphique.Ce texte a pour autre avantage d\'utiliser des mots de longueur variable, essayant de simuler une occupation normale. La m&eacute;thode simpliste consistant &agrave; copier-coller un court texte plusieurs fois (&laquo; ceci est un faux-texte ceci est un faux-texte ceci est un faux-texte ceci est un faux-texte ceci est un faux-texte &raquo;) a l\'inconv&eacute;nient de ne pas permettre une juste appr&eacute;ciation typographique du r&eacute;sultat final.</span></p>', 1, '2020-08-19 19:26:18');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `flag` tinyint(1) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `pseudo`, `content`, `createdAt`, `flag`, `article_id`) VALUES
(29, 'rachidou', 'Bonjour tout le monde je veux laisser un caractete e e ddde   eeeee ', '2020-08-20 16:58:19', 0, 4),
(24, 'rachid', 'coucou', '2020-08-17 20:14:58', 0, 17),
(21, 'rachidou', 'un nouveau commentaire sur cette article', '2020-08-13 14:24:52', 0, 18),
(20, 'rachidou', 'hello', '2020-08-13 14:19:31', 0, 18),
(22, 'tutu', 'Je viens de dévorer le premier chapitre', '2020-08-14 15:45:26', 0, 18),
(25, 'moche', 'kikou', '2020-08-18 16:19:31', 0, 16),
(13, 'rachid', 'fre', '2020-07-30 15:33:47', 0, 16),
(16, 'rachid', 'Très beau chapitre', '2020-08-07 15:12:58', 1, 18),
(17, 'moche', 'Cette lecture m\'a laissé sur ma fin...', '2020-08-07 15:13:37', 0, 17),
(31, 'rachid', 'Bonjour tout le monde j\'ai adoré ce nouveau chapitre', '2020-08-23 10:49:06', 0, 4),
(32, 'rachid', 'coucou tout le monde nouveau chapitre tres interessant', '2020-08-23 11:11:14', 1, 4);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `createdAt` datetime NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `password`, `createdAt`, `role_id`) VALUES
(1, 'Jean Forteroche ', '$2y$10$8vpUNCPCMUpRnq/HiMcLXeEaD.IH4cb31KWZslx5QHX3lX97bscka', '2020-08-26 11:40:25', 1),
(8, 'rachidou', '$2y$10$bhj4htN0zDkQbU6CAGcJ8Oyq.wBOGm2zHBaqc/Sh20eSU/c7lJ.tK', '2020-08-27 12:01:55', 2),
(10, 'tutu', '$2y$10$SsWNJ6kyZRz1dTW4XvksGOcOXRwm0SLreyg7oefHGpMAhLIDnmle2', '2020-08-27 14:41:20', 2),
(11, 'titi', '$2y$10$qztANy16ODvsSWHvH6/SHODRRoxcp7DihefnJiiI0uMRK8K8jolNm', '2020-08-27 15:10:16', 2);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
