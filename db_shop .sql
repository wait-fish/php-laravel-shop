-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-03-01 13:12:55
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `db_shop`
--

-- --------------------------------------------------------

--
-- 表的结构 `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- 表的结构 `tb_book`
--

CREATE TABLE `tb_book` (
  `bookid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `isbn` int(11) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `pubhouse` varchar(30) NOT NULL,
  `pubdate` varchar(12) NOT NULL,
  `bookprice` varchar(10) NOT NULL,
  `vipprice` varchar(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `introduction` varchar(1000) NOT NULL,
  `recommend` int(5) NOT NULL,
  `newbook` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_book`
--

INSERT INTO `tb_book` (`bookid`, `typeid`, `isbn`, `bookname`, `author`, `pubhouse`, `pubdate`, `bookprice`, `vipprice`, `photo`, `introduction`, `recommend`, `newbook`) VALUES
(6, 2, 2012002, '平凡的世界 ', '路遥', '北京十月文艺出版社', '1995-01-09', '59', '9', '20201019\\51970e0d4e6fe7119987aa41cfe33a4c.jpg', 'value=\"value=\"value=\"value=\"value=\"value=\"value=\"value=\"     在图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。 联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。 图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。 “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。 联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。 图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。 “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图   图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。 联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。 图书', 0, 0),
(5, 2, 2012001, '白鹿原', '陈忠实', '北京十月文艺出版社', '2012-01-01', '35', '7', 'upimages/shu12.jpg', '“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度,而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。 ', 1, 0),
(7, 6, 2012003, '生死疲劳', '莫言', '作家出版社', '2011', '28', '7', 'upimages/shu13.jpg', '“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度,而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。 ', 1, 0),
(8, 5, 2012004, '穆斯林的葬礼', '霍达', '人民文学出版社', '', '40', '8', 'upimages/shu14.jpg', 'value=\"“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度,而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。 \"', 0, 1),
(9, 4, 2012006, '偶发空缺', 'J.K.罗琳', '人民文学出版社', '2007', '30', '68', 'upimages/shu15.jpg', '“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度,而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。 “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄', 0, 1),
(10, 2, 20112007, '何谓文化', '余秋雨', '长江文艺出版社', '2011', '34', '9', 'upimages/tushu21.jpg', '“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度,而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。 ', 0, 1),
(11, 5, 20110008, '气场', '（美）菲尔', '重庆出版社', '1995', '78', '6', 'upimages/tushu22.jpg', '  图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。        图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。        “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图', 1, 0),
(12, 4, 20110009, '写给少年', '一草', '湖南文艺出版社', '1995-1-1', '45', '6', 'upimages/tushu23.jpg', '（1（1）分类目录 分类目录是按照文献内容所反映的学科体系。依据图书馆采用的图书分类法组织起来的目录。通过分类目录，读者可以按类求书，及能选择处最实用的文献，由掌握了许多相关文献。 我馆现有的分类目录由中外文图书分类目录和中外文期刊分类目录，分别存放在编目室及各阅览室、借书处的查目厅。中心校区图书馆的中文图书和日文图书采用《中国科学院图书馆图书分类法》，西文和俄文图书采用《中国图书馆图书分类法》，中外文期刊合订本采用本馆自编的图书分类表；医药分馆和师范分馆均采用《中国图书馆图书分类法》。 《中国科学院图书馆图书分类法》简称《科图法》，共分为五大部类25个基本大类，类目符号用阿拉伯数字表示，基本大类采用两位数，下位类用小数点加阿拉伯数字。排列顺序按数字大小排列。 （2）书（刊）名目录 书（刊）名目录是根据图书（期刊）名称组织起来的目录。利用这种目录可以查找已知书（刊）名的索书号，同时可以选者同一书名的不同版本或不同译著本。 本馆设有中外文书名目录、中外文刊名目录，其排列方法是：中文书（刊）名目录依据汉语拼音音节顺序排列，同一音节以音调四声先后为序；外文书（刊）名目录按不同文种书（刊）名的字母顺序排列；书（刊）名第一个字母相同再按第二个字母排列，依此类推。  （3）著者目录 著者目录十一著者（包括个人著者、团体著者、主要著者、编者、译者）排列起来的目录。利用这种目录可以从著者途径查找到所需图书，也可以查找同一著者的不同著作，了解其著述活动，我馆这类目录有中文图书著者目录、西文或俄文图书著者目录。中文图书著者目录是按著者姓名的汉语拼音音节顺序排列的，其排列方法与书名目录相同；外文图书著者目录，如西文或俄文是按这姓名的拉丁字母或俄文字母的顺序排列的。 此外，我馆还不定期编制专题目录、推荐书目等书本式目录，及时向读者揭示新到馆图书。）分类目录 分类目录是按照文献内容所反映的学科体系。依据图书馆采用的图书分类法组织起来的目录。通过分类目录，读者可以按类求书，及能选择处最实用的文献，由掌握了许多相关文献。 我馆现有的分类目录由中外文图书分类目录和中外文期刊分类目录，分别存放在编目室及各阅览室、借书处的查目厅。中心校区图书馆的中文图书和日文图书采用《中国科学院图书馆图书分类法》，西文和俄文图书采用《中国图书馆图书分类法》，中外文期刊合订本采用本馆自编的图书分类表；医药分馆和师范分馆', 1, 1),
(13, 4, 2012003, '似水流年1', '张强', '万卷出版公司', '2011-1-1', '34', '7', 'upimages/tushu24.jpg', '（1）分类目录 分类目录是按照文献内容所反映的学科体系。依据图书馆采用的图书分类法组织起来的目录。通过分类目录，读者可以按类求书，及能选择处最实用的文献，由掌握了许多相关文献。 我馆现有的分类目录由中外文图书分类目录和中外文期刊分类目录，分别存放在编目室及各阅览室、借书处的查目厅。中心校区图书馆的中文图书和日文图书采用《中国科学院图书馆图书分类法》，西文和俄文图书采用《中国图书馆图书分类法》，中外文期刊合订本采用本馆自编的图书分类表；医药分馆和师范分馆均采用《中国图书馆图书分类法》。 《中国科学院图书馆图书分类法》简称《科图法》，共分为五大部类25个基本大类，类目符号用阿拉伯数字表示，基本大类采用两位数，下位类用小数点加阿拉伯数字。排列顺序按数字大小排列。 （2）书（刊）名目录 书（刊）名目录是根据图书（期刊）名称组织起来的目录。利用这种目录可以查找已知书（刊）名的索书号，同时可以选者同一书名的不同版本或不同译著本。 本馆设有中外文书名目录、中外文刊名目录，其排列方法是：中文书（刊）名目录依据汉语拼音音节顺序排列，同一音节以音调四声先后为序；外文书（刊）名目录按不同文种书（刊）名的字母顺序排列；书（刊）名第一个字母相同再按第二个字母排列，依此类推。  （3）著者目录 著者目录十一著者（包括个人著者、团体著者、主要著者、编者、译者）排列起来的目录。利用这种目录可以从著者途径查找到所需图书，也可以查找同一著者的不同著作，了解其著述活动，我馆这类目录有中文图书著者目录、西文或俄文图书著者目录。中文图书著者目录是按著者姓名的汉语拼音音节顺序排列的，其排列方法与书名目录相同；外文图书著者目录，如西文或俄文是按这姓名的拉丁字母或俄文字母的顺序排列的。 此外，我馆还不定期编制专题目录、推荐书目等书本式目录，及时向读者揭示新到馆图书。', 0, 1),
(14, 6, 2001214, '当代北京足球', '金山', '当代中国出版社', '1995-1-1', '35', '4', 'upimages/tushu25.jpg', '  （1）分类目录 分类目录是按照文献内容所反映的学科体系。依据图书馆采用的图书分类法组织起来的目录。通过分类目录，读者可以按类求书，及能选择处最实用的文献，由掌握了许多相关文献。 我馆现有的分类目录由中外文图书分类目录和中外文期刊分类目录，分别存放在编目室及各阅览室、借书处的查目厅。中心校区图书馆的中文图书和日文图书采用《中国科学院图书馆图书分类法》，西文和俄文图书采用《中国图书馆图书分类法》，中外文期刊合订本采用本馆自编的图书分类表；医药分馆和师范分馆均采用《中国图书馆图书分类法》。 《中国科学院图书馆图书分类法》简称《科图法》，共分为五大部类25个基本大类，类目符号用阿拉伯数字表示，基本大类采用两位数，下位类用小数点加阿拉伯数字。排列顺序按数字大小排列。 （2）书（刊）名目录 书（刊）名目录是根据图书（期刊）名称组织起来的目录。利用这种目录可以查找已知书（刊）名的索书号，同时可以选者同一书名的不同版本或不同译著本。 本馆设有中外文书名目录、中外文刊名目录，其排列方法是：中文书（刊）名目录依据汉语拼音音节顺序排列，同一音节以音调四声先后为序；外文书（刊）名目录按不同文种书（刊）名的字母顺序排列；书（刊）名第一个字母相同再按第二个字母排列，依此类推。  （3）著者目录 著者目录十一著者（包括个人著者、团体著者、主要著者、编者、译者）排列起来的目录。利用这种目录可以从著者途径查找到所需图书，也可以查找同一著者的不同著作，了解其著述活动，我馆这类目录有中文图书著者目录、西文或俄文图书著者目录。中文图书著者目录是按著者姓名的汉语拼音音节顺序排列的，其排列方法与书名目录相同；外文图书著者目录，如西文或俄文是按这姓名的拉丁字母或俄文字母的顺序排列的。 此外，我馆还不定期编制专题目录、推荐书目等书本式目录，及时向读者揭示新到馆图书。', 1, 1),
(15, 4, 2147483647, '资本主义大', '马列光', '中国经济出版社', '1995-1-1', '43', '8', 'upimages/tushu26.jpg', '      图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。        图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。        “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说', 1, 1),
(16, 1, 23425234, ' 细说PHP', '高洛峰', '电子工业出版社', '1995-1-1', '65', '4', 'upimages/tushu27.jpg', '     图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        ', 1, 0),
(2, 1, 1, ' php和mysql1111', '（澳）威利', '机械工业出版社', '2011-1-1', '34', '6', 'upimages/tushu28.jpg', '      图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。        图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。        “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图', 0, 0),
(1, 1, 0, ' PHP精粹', '彭冲，胡琳', '机械工业出版社', '1995-1-1', '75', '6', 'upimages/tushu29.jpg', '     图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。        图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。        “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图', 1, 1),
(20, 1, 12312312, '程序员的数学', '管 杰 译', '人民邮电出版社', '2007-4-24', '78', '9', 'upimages/shu2.jpg', '　  图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。        图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。        “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的', 1, 0),
(21, 7, 123123, '卓越程序员密码', '张家为', '人民邮电出版社', '2010-4-27', '21', '5', 'upimages/shu3.jpg', '  图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。        图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。        “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图', 1, 1),
(22, 2, 3422222, 'html+css网页设计与布局', '温谦', '人民邮电出版社', '2011-5-23', '34', '3', 'upimages/shu4.jpg', '图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。 联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。 图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。 “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图', 1, 0),
(23, 6, 123123, '第一次养花就成功', '蒋青海', '电子工业出版社', '1995-1-1', '22', '4', 'upimages/shu5.jpg', '  图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图书。        图书是以传播知识为目的，用文字或其它信息符号记录于一定形式的材料之上的著作物；图书是人类社会实践的产物，是一种特定的不断发展着的知识传播工具。        “图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图', 1, 1),
(24, 7, 3434234, '家庭园艺手册', '龚婷，谢祥', '天津教育出版社', '1995-1-1', '23', '3', 'upimages/shu6.jpg', '“图书”一词最早出现（1）分类目录 分类目录是按照文献内容所反映的学科体系。依据图书馆采用的图书分类法组织起来的目录。通过分类目录，读者可以按类求书，及能选择处最实用的文献，由掌握了许多相关文献。 我馆现有的分类目录由中外文图书分类目录和中外文期刊分类目录，分别存放在编目室及各阅览室、借书处的查目厅。中心校区图书馆的中文图书和日文图书采用《中国科学院图书馆图书分类法》，西文和俄文图书采用《中国图书馆图书分类法》，中外文期刊合订本采用本馆自编的图书分类表；医药分馆和师范分馆均采用《中国图书馆图书分类法》。 《中国科学院图书馆图书分类法》简称《科图法》，共分为五大部类25个基本大类，类目符号用阿拉伯数字表示，基本大类采用两位数，下位类用小数点加阿拉伯数字。排列顺序按数字大小排列。 （2）书（刊）名目录 书（刊）名目录是根据图书（期刊）名称组织起来的目录。利用这种目录可以查找已知书（刊）名的索书号，同时可以选者同一书名的不同版本或不同译著本。 本馆设有中外文书名目录、中外文刊名目录，其排列方法是：中文书（刊）名目录依据汉语拼音音节顺序排列，同一音节以音调四声先后为序；外文书（刊）名目录按不同文种书（刊）名的字母顺序排列；书（刊）名第一个字母相同再按第二个字母排列，依此类推。  （3）著者目录 著者目录十一著者（包括个人著者、团体著者、主要著者、编者、译者）排列起来的目录。利用这种目录可以从著者途径查找到所需图书，也可以查找同一著者的不同著作，了解其著述活动，我馆这类目录有中文图书著者目录、西文或俄文图书著者目录。中文图书著者目录是按著者姓名的汉语拼音音节顺序排列的，其排列方法与书名目录相同；外文图书著者目录，如西文或俄文是按这姓名的拉丁字母或俄文字母的顺序排列的。 此外，我馆还不定期编制专题目录、推荐书目等书本式目录，及时向读者揭示新到馆图书。于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实', 1, 0),
(25, 6, 2342342, '家庭水培花卉手册  ', '孙艺嘉', '吉林科学技术出版社', '2006-4-24', '34', '3', 'upimages/shu7.jpg', '“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度,而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。 水培花卉是一种新型的花卉栽培方式，即用清水代替土壤，在具有一定透明度的玻璃或塑料等器皿中栽培花卉。它相对于传统的土壤栽培有许多优点：一是不仅可以观看花卉的花茎叶，还可以观赏植物的根系；二是可  图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保护的出版物称为图', 1, 1),
(26, 3, 123312, '《花开半季 情暖三生》', '白落梅', '北京联合出版公司', '2008-5-24', '43', '5', 'upimages/shu8.jpg', '“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相。…汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”“书“字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度,而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。 《花开半季 情暖三生》――白落梅淡品唐诗的风雅（白落梅解读最有意境的唐诗） 　　《相思莫相负》――白落梅静守宋词的清韵（每一篇解读里都有白落梅的心意） 　　唐诗一首低吟出谁人的梦呓，素纸留香缥缈了何处     图书是通过一定的方法与手段将知识内容以一定的形式和符号（文字、图画、电子文件等），按照一定的体例，系统地记录于一定形态的材料之上，用于表达思想、积累经验、保存知识与传播知识的工具。        联合国教科文组织对图书的定义是：凡由出版社（商）出版的不包括封面和封底在内49页以上的印刷品，具有特定的书名和著者名，编有国际标准书号，有定价并取得版权保', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tb_dingdan`
--

CREATE TABLE `tb_dingdan` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `spc` varchar(100) DEFAULT NULL,
  `slc` varchar(100) DEFAULT NULL,
  `shouhuoren` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `youbian` varchar(10) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `shff` varchar(30) DEFAULT NULL,
  `orderdate` varchar(11) DEFAULT NULL,
  `xiadanren` varchar(30) NOT NULL,
  `zt` varchar(50) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_dingdan`
--

INSERT INTO `tb_dingdan` (`orderid`, `userid`, `spc`, `slc`, `shouhuoren`, `sex`, `address`, `youbian`, `tel`, `email`, `shff`, `orderdate`, `xiadanren`, `zt`, `total`) VALUES
(77, 59, '平凡的世界 @写给少年@生死疲劳@', '4@55@6@', 'asdf', '女', 'asdf', '234234', '234', '2342', '普通快递', '2019-03-31', 'asdf', '未处理', '2879'),
(74, 0, '笑嘴狗狗@穆斯林的葬礼@', '1@1@', 'e', '男', 'e', 'e', 'e', 'e@ff.c', '普通快递', '2013-01-04', 'e', '未处理', '28.00'),
(75, 4, '程序员的数学@何谓文化@', '5@1@', '1', '女', '1', '1', '1', '12312@q2.cn', '平邮', '2013-01-06', '1', '未处理', '381.60'),
(52, 57, '平凡的世界 @生死疲劳@ PHP精粹@', '2@1@2@1@1@1@', '刘姚', '女', '邢台', ' 054000 ', '13722789664', '789321@qq.com', '普通快递', '2012-12-08', '刘姚', '已收货', '111.8'),
(49, 57, ' 细说PHP', '1', '张三', '男', '保定市新市区', '07100', '18931378698', '9876@163.com', '特快专递', '2012-12-08', '张三', '已发货', ''),
(73, 57, ' 细说PHP@似水流年唤风华@', '', 'sd', '男', 'sd', 'sdf', 'sdf', 'sdf', '平邮', '2012-12-08', 'sdf', '已收货', '49.8'),
(71, 57, '平凡的世界 ', '1', '刘辉', '男', '保定市高开区', '07100', '18931388967', '986170658@qq.com', '特快专递', '2012-12-08', '刘辉', '已收款', ''),
(72, 57, '气场@似水流年唤风华@', '1@2@', '郑和', '男', '陕西', '01500', '1893128976', '192878@163.com', '特快专递', '2012-12-08', '郑和', '已发货', '70.6'),
(76, 59, '生死疲劳@写给少年@当代北京足球@', '11@7@8888@', '而且二无', '女', '去玩儿群 ', '去玩儿群', '123123', '是打发斯蒂芬', '普通快递', '2018-05-02', '阿法士大夫', '未处理', '311703');

-- --------------------------------------------------------

--
-- 表的结构 `tb_gonggao`
--

CREATE TABLE `tb_gonggao` (
  `id` int(4) NOT NULL COMMENT '公告id',
  `title` varchar(200) NOT NULL COMMENT '公告标题',
  `content` text NOT NULL COMMENT '公告内容',
  `ggdate` varchar(20) NOT NULL COMMENT '公告时间'
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_gonggao`
--

INSERT INTO `tb_gonggao` (`id`, `title`, `content`, `ggdate`) VALUES
(1, '从图书的内容方面出', '公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...', '2013-01_06'),
(3, '公交车图书馆 ', '公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...\r\n公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...\r\n公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...\r\n公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...\r\n公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...公交车图书馆 	从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著...   ', '2012-11-11'),
(5, '外国文学名著文库 4.3折起', '陈忠实的长篇小说《白鹿原》，以陕西关中平原上素有“仁义村”之称的白鹿村为背景，细腻地反映出白姓和鹿姓两大家族祖孙三代的恩怨纷争。全书浓缩着深沉的民族历史内涵，有令人震撼的真实感和厚重的史诗风格。1993年6月出版后，其畅销和广受海内外读者赞赏欢迎的程度为中国当代文学作品所罕见。1997年荣获中国长篇小说最高荣誉???第四届茅盾文学奖。后被改编成同名话剧、电影等多种形式。\\r\\n\\r\\n陈忠实的长篇小说《白鹿原》，以陕西关中平原上素有“仁义村”之称的白鹿村为背景，细腻地反映出白姓和鹿姓两大家族祖孙三代的恩怨纷争。全书浓缩着深沉的民族历史内涵，有令人震撼的真实感和厚重的史诗风格。1993年6月出版后，其畅销和广受海内外读者赞赏欢迎的程度为中国当代文学作品所罕见。1997年荣获中国长篇小说最高荣誉???第四届茅盾文学奖。后被改编成同名话剧、电影等多种形式。\\r\\n\\r\\n陈忠实的长篇小说《白鹿原》，以陕西关中平原上素有“仁义村”之称的白鹿村为背景，细腻地反映出白姓和鹿姓两大家族祖孙三代的恩怨纷争。全书浓缩着深沉的民族历史内涵，有令人震撼的真实感和厚重的史诗风格。1993年6月出版后，其畅销和广受海内外读者赞赏欢迎的程度为中国当代文学作品所罕见。1997年荣获中国长篇小说最高荣誉???第四届茅盾文学奖。后被改编成同名话剧、电影等多种形式。\', \'2012-12-02\'),\r\n(3, \'天天书店绘本馆开业了！\', \'1、这里是可借阅回家的原版童书及绘本图书馆（超过1万种原版绘本，主要是英语图书，包括但不限于西班牙语、法语、意大利语、德语等小语种图书，每月有大量新品更新）。每次每个家庭最多可借30本，藏书覆盖年龄1-99岁！\\r\\n2、浸入式英语图书馆（小朋友进入本馆阅读，老师带领，使用英语沟通。相当于不限次数，不需预约的口语教室！） \\r\\n3、馆内每月举行各种儿童读书互动、儿童科学小实验、趣味竞赛、亲子讲座、沙龙活动等。 \\r\\n4、所有原版图书可借阅也可购买。 \\r\\n5、面向全国家庭提供服务（提供全国快递借阅服务）。每次同样可借30本，借期为一个月内。\\r\\n6、会员可以折扣价格优先报名七楼绘本馆的零基础儿童美术班。 ', ''),
(7, '图书是人类用来纪录', '图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。图书是人类用来纪录一切成就的主要工具，也是人类交融感情，取得知识，传承经验的重要媒介，对人类文明的开展，贡献至钜。所以，无论古今中外，对于图书，人们总给予最高的肯定与特别的关怀。 手工精制的纸特别适合中国书画之用，分生宣和熟宣两种。', ''),
(8, '“图书”起源', '“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相……汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”，“书”字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度，而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。“图书”一词最早出现于《史记?萧相围世家》，刘邦攻入咸阳时，“何独先入收秦丞相御史律令图书藏之。沛公为汉王，以何为丞相……汉王所以具知天下厄塞，户口多少，强弱之处，民所疾苦者，以何具得秦图书也”。这里的“图书”指的是地图和文书档案，它和我们今天所说的图书是有区别。进一步探求“图书”一词的渊源，可追溯到《周易?上系辞》记载的“河出图、洛出书”这个典故上来，它反映了图画和文字的密切关系。虽然是神话传说，但却说明了这样一个事实：文字起源于图画。图画和文字确实是紧密相连的。古人称各种文字形态为“书体”，写字的方法为“书法”，“书”字还被作为动词，当“写”讲，如“罄竹难书”、“奋笔疾书”、“大书特书”等等。以后，“书”便进一步被引申为一切文字记录。如“书信”、“文书”“刑书”、“诏书”、“盟书”等等。随着历史的发展，人们对于图书的认识也在不断地发生变化。到了今天，人们已经不再把一创文字记录都称作“书”了。例如文书、书信、诏书、盟书，虽然都带有“书”字，但已不包括在图书的范围之内。古文记载，其内容多是记事性质的，如甲骨卜辞、青铜器铭文等，都是属于这一类的，其作用主要是为帮助记忆，以便需要时检查参考，其性质相当于后世的档案。以后人们从实践中认识到，这些记录的材料可以改变成总结经验、传授知识的工具。于是便出现了专为传授知识、供人阅读的著作。这样，图书一词便取得了较新而又较窄的意义。到后来，凡不以传播经验、传授知识、供人阅读为目的的文字记录就不算图书了；随着生产力的发展和社会的进步，人们开始有意识她运用文字来宣传思想，传播知识，同时也逐步地形成了一套书籍制度，而处理日常事务的文件又形成了一套文书制度。于是，图书与档案就逐渐被区分开了。\'', ''),
(10, '公交车图书馆', '从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著于竹帛谓之书”（《说文解字?  图书\\r\\n序》）。显然，这些定义是时代的产物，是就当时的实际情况而言的，不可能对以后的发展作全面的概括。但上述定义已经正确地揭示了当时书籍的内容和形式特征，并且把“书”看作是一种特指概念，把它与原始的文字记录区别开来。经过了长达数千年演变，作为图书内容的知识范围扩大了，记述和表达的方法增多了，使用的物质载体和生产制作的方法发生了多次的变化；因而也就产生了图书的各种类型、著作方式、载体、书籍制度以及各种生产方式。 所有这些，便促使人们对图书有了较系统而明确的概念。 　　直到今天，图书仍有广义和狭义之分。在实际生活中，我们常常会迟到这样一些有趣的现象：对于“图书馆”和“图书情报工作”等概念来说，“图书”是广义的，泛指各种类型的读物，既包括甲骨文、金石拓片、手抄卷轴，又包括当代出版的书刊、报纸，甚至包括声像资料、缩徽胶片(卷)及机读目录等新技术产品；而在图书馆和情报所的实际工作中，人们又要把图书同期刊、报纸、科技报告、技术标准、视听资料、缩微制品等既相提并论，又有所区别。在前者与后者有所区别的时候，图书所包括的范围就大大缩小了，这是狭义的“图书”。　在中国古代，人们曾对图书下过不同的定义。例如：从图书的内容方面出发的就有：“百氏六家，总曰书也”（《尚书?序疏》）。从图书形式上出发的则认为：“著于竹帛谓之书”（《说文解字?  图书\\r\\n序》）。显然，这些定义是时代的产物，是就当时的实际情况而言的，不可能对以后的发展作全面的概括。但上述定义已经正确地揭示了当时书籍的内容和形式特征，并且把“书”看作是一种特指概念，把它与原始的文字记录区别开来。经过了长达数千年演变，作为图书内容的知识范围扩大了，记述和表达的方法增多了，使用的物质载体和生产制作的方法发生了多次的变化；因而也就产生了图书的各种类型、著作方式、载体、书籍制度以及各种生产方式。 所有这些，便促使人们对图书有了较系统而明确的概念。 　　直到今天，图书仍有广义和狭义之分。在实际生活中，我们常常会迟到这样一些有趣的现象：对于“图书馆”和“图书情报工作”等概念来说，“图书”是广义的，泛指各种类型的读物，既包括甲骨文、金石拓片、手抄卷轴，又包括当代出版的书刊、报纸，甚至包括声像资料、缩徽胶片(卷)及机读目录等新技术产品；而在图书馆和情报所的实际工作中，人们又要把图书同期刊、报纸、科技报告、技术标准、视听资料、缩微制品等既相提并论，又有所区别。在前者与后者有所区别的时候，图书所包括的范围就大大缩小了，这是狭义的“图书”。\', \'2012-12-04\'),\r\n(9, \'台北公交图书馆上路 借书还书全凭良心 \', \'　中新网12月3日电 据台湾“中央社”报道，台湾台北市即日起推出台湾首创的公交车图书馆服务，乘客搭车时就可在公交车上借书，带回家阅读，不需任何手续，相当简便。将先试办3个月再检视成效，评估未来是否扩大办理。\\r\\n\\r\\n　　台北市长郝龙斌表示，台北民众爱阅读，12月首周也是“世界图书馆周”，台北市今天起推出公交车图书馆服务，公交车开到哪，书香知识就到哪。民众在部分公交车上可使用这项免费服务。\\r\\n\\r\\n　　据报道，民众借阅办法是采荣誉制，一次限借1本，随车可还书。\\r\\n\\r\\n　　郝龙斌说，他有高度信心，传递书香及知识在台北市是行得通的，希望公交车将来不仅是交通工具，也是推广书香平台；同时欢迎民众捐出不用的二手书，让公交车图书馆更丰富。\\r\\n\\r\\n　　台北市图书馆馆长长洪世昌表示，每辆车平均配书30至40本，初期先准备6500册，初步排除标示限制级书类，各类别书籍都有提供借阅，包括漫画书等。若活动成效佳，未来不排除举办大型募书活动，让“公交车图书馆”可以永续。\\r\\n', ''),
(2, '图书是人类用来纪录', '图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...', '2012-4-1'),
(6, '图书是人类用来纪录', '图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是\r\n\r\n\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n\r\n\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n\r\n\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n\r\n\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n\r\n\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...\r\n\r\n\r\n\r\n\r\n\r\n图书是人类用来纪录 	图书是人类用来纪录一切成就的主要工具\', \'图书是人类用来纪录一切成就的主要工具，也是人类交融感情，...人类用来纪录一切成就的主要工具，也是人类交融感情，...', '2011-1-14');

-- --------------------------------------------------------

--
-- 表的结构 `tb_type`
--

CREATE TABLE `tb_type` (
  `typeid` int(11) NOT NULL,
  `typename` varchar(30) DEFAULT NULL,
  `typedes` text
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_type`
--

INSERT INTO `tb_type` (`typeid`, `typename`, `typedes`) VALUES
(1, '科技类', '目前书店最热销的是科技类书籍，其中计算机、医学、机械、金融等热门业务书籍销售最好。'),
(2, '教育类', '教育观察,教育交流,教学研究,校园建设,教育科研 \r\n'),
(3, '文艺类', '诗词,纪实,散文随笔,喜剧,民间文学,各类国内外文学图书齐上线,庆祝开业,促销多! \r\n'),
(4, '青春类', '校园,武侠,玄幻,穿越,悬疑,爱情,架空,各类青春小说类图书齐上线,庆祝开业,促销多! \r\n'),
(5, '励志类', '成功励志,修养心灵,人际交往,职场必备,各类图书齐上线,庆祝开业,促销多! \r\n'),
(6, '生活类', '让你爱生活更爱自己!所有生活窍门类图书中内容最丰富!版式最精美!最让你爱不释手! ');

-- --------------------------------------------------------

--
-- 表的结构 `tb_user`
--

CREATE TABLE `tb_user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `regdate` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `tb_user`
--

INSERT INTO `tb_user` (`userid`, `username`, `password`, `email`, `address`, `telephone`, `regdate`) VALUES
(70, 'wyh', 'e10adc3949ba59abbe56e057f20f883e', '12313', '1231', '12312312', '2019-04-28');

--
-- 转储表的索引
--

--
-- 表的索引 `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tb_book`
--
ALTER TABLE `tb_book`
  ADD PRIMARY KEY (`bookid`);

--
-- 表的索引 `tb_dingdan`
--
ALTER TABLE `tb_dingdan`
  ADD PRIMARY KEY (`orderid`);

--
-- 表的索引 `tb_gonggao`
--
ALTER TABLE `tb_gonggao`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `tb_type`
--
ALTER TABLE `tb_type`
  ADD PRIMARY KEY (`typeid`);

--
-- 表的索引 `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`userid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `tb_book`
--
ALTER TABLE `tb_book`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用表AUTO_INCREMENT `tb_dingdan`
--
ALTER TABLE `tb_dingdan`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- 使用表AUTO_INCREMENT `tb_gonggao`
--
ALTER TABLE `tb_gonggao`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告id', AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `tb_type`
--
ALTER TABLE `tb_type`
  MODIFY `typeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
