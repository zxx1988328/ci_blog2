/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : ci_blog

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-09-12 20:56:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tag` varchar(100) CHARACTER SET utf8 NOT NULL,
  `published_at` datetime NOT NULL,
  `pv` int(50) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'PHP Markdown', 'PHP Markdown\r\n============\r\n\r\nPHP Markdown Lib 1.6.0 - 23 Dec 2015\r\n\r\nby Michel Fortin  \r\n<https://michelf.ca/>\r\n\r\nbased on Markdown by John Gruber  \r\n<https://daringfireball.net/>\r\n\r\n\r\nIntroduction\r\n------------\r\n\r\nThis is a library package that includes the PHP Markdown parser and its \r\nsibling PHP Markdown Extra with additional features.\r\n\r\nMarkdown is a text-to-HTML conversion tool for web writers. Markdown\r\nallows you to write using an easy-to-read, easy-to-write plain text\r\nformat, then convert it to structurally valid XHTML (or HTML).\r\n\r\n\"Markdown\" is actually two things: a plain text markup syntax, and a \r\nsoftware tool, originally written in Perl, that converts the plain text \r\nmarkup to HTML. PHP Markdown is a port to PHP of the original Markdown \r\nprogram by John Gruber.\r\n\r\n*	[Full documentation of the Markdown syntax](<https://daringfireball.net/projects/markdown/>)  \r\n	— Daring Fireball (John Gruber)\r\n*	[Markdown Extra syntax additions](<https://michelf.ca/projects/php-markdown/extra/>)  \r\n	— Michel Fortin\r\n\r\n\r\nRequirement\r\n-----------\r\n\r\nThis library package requires PHP 5.3 or later.\r\n\r\nNote: The older plugin/library hybrid package for PHP Markdown and\r\nPHP Markdown Extra is still maintained and will work with PHP 4.0.5 and later.\r\n\r\nBefore PHP 5.3.7, pcre.backtrack_limit defaults to 100 000, which is too small\r\nin many situations. You might need to set it to higher values. Later PHP \r\nreleases defaults to 1 000 000, which is usually fine.\r\n\r\n\r\nUsage\r\n-----\r\n> 1111', '1', 'php,python,linux,laravel,CI', '2016-01-01 00:00:00', '2');
INSERT INTO `articles` VALUES ('2', '数据库常见面试题总结', '原文地址：\r\n<a href=\"http://blog.csdn.net/jxh_123/article/details/40263829\" target=\"_blank\">click</a>\r\n\r\n### 1.SQL的表连接方式有哪些？\r\n\r\nSQL中连接按结果集分为：内连接，外连接，交叉连接\r\n\r\n    >内连接：inner join on，两表都满足的组合。内连接分为等值连接，不等连接，自然连接。\r\n    \r\n    >等值连接：两表中相同的列都会出现在结果集中。\r\n    \r\n    >自然连接：两表中具体相同列表的列会合并为同一列出现在结果集中。\r\n    \r\n    外连接：分为左（外）连接，右（外）连接，全连接\r\n    \r\n    左（外）连接：A left (outer) join B,以A表为基础，A表的全部数据，B表有的组合，没有的为null。\r\n    \r\n    右（外）连接：A right(outer) join B,以B表为基础，B表的全部数据，A表有的组合，没有的位null。\r\n    \r\n    全连接：A full (outer) join 两表相同的组合在一起，A表有，B表没有的数据（显示为null），同样B表有，A表没有的显示为null。\r\n\r\n    交叉连接：cross join,就是笛卡尔乘积。\r\n\r\n### 2.三范式\r\n\r\n    1NF:表中的字段都是单一属性，不再可分。\r\n    \r\n    2NF：在1NF的基础上，表中所有的非主属性都必须完全依赖于任意一组候选键，不能仅依赖于候选键中的某个属性。\r\n    \r\n    3NF：在2NF的基础上，表中所有的属性都不依赖其他非主属性。\r\n\r\n简单的说就是：1NF表示每个属性不可分割，2NF表示非主属性不存在对主键的部分依赖，3NF表示不存在非主属性对主键的依赖传递。\r\n\r\n### 3.表的操作\r\n\r\n    表的创建：create table 表名 (列名1 类型 约束，列2 类型 约束…)\r\n    \r\n    表的删除：drop table 表名\r\n    \r\n    表的更改（结构的更改，不是记录的更新）：alter table 表名 add|drop 列名|约束名\r\n    \r\n    插入记录：insert into 表名…values…\r\n    \r\n    更新记录：update 表名 set 列名=值 where 条件\r\n    \r\n    删除记录：delete from 表名 where 条件\r\n\r\n### 4.数据的完整性\r\n\r\n数据完整性指的是存储在数据库中的数据的一致性和准确性。\r\n\r\n完整性分类：\r\n\r\n    （1）实体完整性：主键值必须唯一且非空。（主键约束）\r\n    \r\n    （2）引用完整性（也叫参照完整性）：外键要么为空，要么引用主表中存在的记录。（外键约束）。\r\n    \r\n    （3）用户自定义完整性：针对某一具体关系数据库中的约束条件。\r\n\r\n### 5.SQL的查询优化\r\n\r\n    （1）从表连接的角度优化：尽量使用内连接，因为内连接是两表都满足的行的组合，而外连接是以其中一个表的全部为基准。\r\n    \r\n    （2）尽量使用存储过程代替临时写SQL语句：因为存储过程是预先编译好的SQL语句的集合，这样可以减少编译时间。\r\n    \r\n    （3）从索引的角度优化：对那些常用的查询字段简历索引，这样查询时值进行索引扫描，不读取数据块。\r\n    \r\n    （4）还有一些常用的select优化技巧：\r\n    \r\n    （5）A.只查询那些需要访问的字段，来代替select*\r\n\r\n    B．将过滤记录越多的where语句向前移：在一个SQL语句中，如果一个where条件过滤的数据库记录越多，\r\n    定位越准确，则该where条件越应该前移。\r\n\r\n### 6.索引的作用，聚集索引与非聚集索引的区别\r\n\r\n索引是一个数据库对象，使用索引，可以是数据库程序无须对整个数据进行扫描，就可以在其中找到目标数据，从而提高查找效率。索引的底层采用的是B树。\r\n\r\n    聚集索引：根据记录的key再表中排序数据行。\r\n    \r\n    非聚集索引：独立于记录的结构，非聚集所以包含的key，且每个键值项都有指向该简直的数据行的指针。\r\n\r\n  聚集索引与非聚集索引的区别：\r\n\r\n    （1）聚集索引的物理存储按索引排序，非聚集所以的物理存储不按索引排序。\r\n    \r\n    （2）聚集索引插入，更新数据的速度比非聚集索引慢，单查询速度更快。\r\n    \r\n    \r\n    （3）聚集索引的叶级结点保存的是时间的数据项，而非聚集结点的叶级结点保存的是指向数据项的指针。\r\n    \r\n    （4）一个表只能有一个聚集索引（因为只有一种排序方式），但可以有多个非聚集索引。\r\n\r\n### 7.存储过程与函数的区别\r\n\r\n    （1）函数有返回值，存储过程没有返回值。\r\n    \r\n    （2）因为存储过程没有返回值，所以不能将存储过程的执行结果赋值给变量；函数有返回值类型，调用函数时，\r\n    可以将函数的执行结果赋值给变量。也就是说，函数可以在select语句中使用，而存储过程则不能。', '1', 'php,python,linux', '2016-03-04 00:00:00', '3');
INSERT INTO `articles` VALUES ('3', '欢迎使用 Cmd Markdown 编辑阅读器', '# 欢迎使用 Cmd Markdown 编辑阅读器\r\n\r\n------\r\n\r\n我们理解您需要更便捷更高效的工具记录思想，整理笔记、知识，并将其中承载的价值传播给他人，**Cmd Markdown** 是我们给出的答案 —— 我们为记录思想和分享知识提供更专业的工具。 您可以使用 Cmd Markdown：\r\n\r\n> * 整理知识，学习笔记\r\n> * 发布日记，杂文，所见所想\r\n> * 撰写发布技术文稿（代码支持）\r\n> * 撰写发布学术论文（LaTeX 公式支持）\r\n\r\n![cmd-markdown-logo](https://www.zybuluo.com/static/img/logo.png)\r\n\r\n除了您现在看到的这个 Cmd Markdown 在线版本，您还可以前往以下网址下载：\r\n\r\n### [Windows/Mac/Linux 全平台客户端](https://www.zybuluo.com/cmd/)\r\n\r\n> 请保留此份 Cmd Markdown 的欢迎稿兼使用说明，如需撰写新稿件，点击顶部工具栏右侧的 <i class=\"icon-file\"></i> **新文稿** 或者使用快捷键 `Ctrl+Alt+N`。\r\n\r\n------\r\n\r\n## 什么是 Markdown\r\n\r\nMarkdown 是一种方便记忆、书写的纯文本标记语言，用户可以使用这些标记符号以最小的输入代价生成极富表现力的文档：譬如您正在阅读的这份文档。它使用简单的符号标记不同的标题，分割不同的段落，**粗体** 或者 *斜体* 某些文字，更棒的是，它还可以\r\n\r\n### 1. 制作一份待办事宜 [Todo 列表](https://www.zybuluo.com/mdeditor?url=https://www.zybuluo.com/static/editor/md-help.markdown#13-待办事宜-todo-列表)\r\n\r\n- [ ] 支持以 PDF 格式导出文稿\r\n- [ ] 改进 Cmd 渲染算法，使用局部渲染技术提高渲染效率\r\n- [x] 新增 Todo 列表功能\r\n- [x] 修复 LaTex 公式渲染问题\r\n- [x] 新增 LaTex 公式编号功能\r\n\r\n### 2. 书写一个质能守恒公式[^LaTeX]\r\n\r\n$$E=mc^2$$\r\n\r\n### 3. 高亮一段代码[^code]\r\n\r\n```python\r\n@requires_authorization\r\nclass SomeClass:\r\n    pass\r\n\r\nif __name__ == \'__main__\':\r\n    # A comment\r\n    print \'hello world\'\r\n```\r\n\r\n### 4. 高效绘制 [流程图](https://www.zybuluo.com/mdeditor?url=https://www.zybuluo.com/static/editor/md-help.markdown#7-流程图)\r\n\r\n```flow\r\nst=>start: Start\r\nop=>operation: Your Operation\r\ncond=>condition: Yes or No?\r\ne=>end\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op\r\n```\r\n\r\n### 5. 高效绘制 [序列图](https://www.zybuluo.com/mdeditor?url=https://www.zybuluo.com/static/editor/md-help.markdown#8-序列图)\r\n\r\n```seq\r\nAlice->Bob: Hello Bob, how are you?\r\nNote right of Bob: Bob thinks\r\nBob-->Alice: I am good thanks!\r\n```\r\n\r\n### 6. 绘制表格\r\n\r\n| 项目        | 价格   |  数量  |\r\n| --------   | -----:  | :----:  |\r\n| 计算机     | \\$1600 |   5     |\r\n| 手机        |   \\$12   |   12   |\r\n| 管线        |    \\$1    |  234  |\r\n\r\n### 7. 更详细语法说明\r\n\r\n想要查看更详细的语法说明，可以参考我们准备的 [Cmd Markdown 简明语法手册][1]，进阶用户可以参考 [Cmd Markdown 高阶语法手册][2] 了解更多高级功能。\r\n\r\n总而言之，不同于其它 *所见即所得* 的编辑器：你只需使用键盘专注于书写文本内容，就可以生成印刷级的排版格式，省却在键盘和工具栏之间来回切换，调整内容和格式的麻烦。**Markdown 在流畅的书写和印刷级的阅读体验之间找到了平衡。** 目前它已经成为世界上最大的技术分享网站 GitHub 和 技术问答网站 StackOverFlow 的御用书写格式。\r\n\r\n---\r\n\r\n## 什么是 Cmd Markdown\r\n\r\n您可以使用很多工具书写 Markdown，但是 Cmd Markdown 是这个星球上我们已知的、最好的 Markdown 工具——没有之一 ：）因为深信文字的力量，所以我们和你一样，对流畅书写，分享思想和知识，以及阅读体验有极致的追求，我们把对于这些诉求的回应整合在 Cmd Markdown，并且一次，两次，三次，乃至无数次地提升这个工具的体验，最终将它演化成一个 **编辑/发布/阅读** Markdown 的在线平台——您可以在任何地方，任何系统/设备上管理这里的文字。\r\n\r\n### 1. 实时同步预览\r\n\r\n我们将 Cmd Markdown 的主界面一分为二，左边为**编辑区**，右边为**预览区**，在编辑区的操作会实时地渲染到预览区方便查看最终的版面效果，并且如果你在其中一个区拖动滚动条，我们有一个巧妙的算法把另一个区的滚动条同步到等价的位置，超酷！\r\n\r\n### 2. 编辑工具栏\r\n\r\n也许您还是一个 Markdown 语法的新手，在您完全熟悉它之前，我们在 **编辑区** 的顶部放置了一个如下图所示的工具栏，您可以使用鼠标在工具栏上调整格式，不过我们仍旧鼓励你使用键盘标记格式，提高书写的流畅度。\r\n\r\n![tool-editor](https://www.zybuluo.com/static/img/toolbar-editor.png)\r\n\r\n### 3. 编辑模式\r\n\r\n完全心无旁骛的方式编辑文字：点击 **编辑工具栏** 最右测的拉伸按钮或者按下 `Ctrl + M`，将 Cmd Markdown 切换到独立的编辑模式，这是一个极度简洁的写作环境，所有可能会引起分心的元素都已经被挪除，超清爽！\r\n\r\n### 4. 实时的云端文稿\r\n\r\n为了保障数据安全，Cmd Markdown 会将您每一次击键的内容保存至云端，同时在 **编辑工具栏** 的最右侧提示 `已保存` 的字样。无需担心浏览器崩溃，机器掉电或者地震，海啸——在编辑的过程中随时关闭浏览器或者机器，下一次回到 Cmd Markdown 的时候继续写作。\r\n\r\n### 5. 离线模式\r\n\r\n在网络环境不稳定的情况下记录文字一样很安全！在您写作的时候，如果电脑突然失去网络连接，Cmd Markdown 会智能切换至离线模式，将您后续键入的文字保存在本地，直到网络恢复再将他们传送至云端，即使在网络恢复前关闭浏览器或者电脑，一样没有问题，等到下次开启 Cmd Markdown 的时候，她会提醒您将离线保存的文字传送至云端。简而言之，我们尽最大的努力保障您文字的安全。\r\n\r\n### 6. 管理工具栏\r\n\r\n为了便于管理您的文稿，在 **预览区** 的顶部放置了如下所示的 **管理工具栏**：\r\n\r\n![tool-manager](https://www.zybuluo.com/static/img/toolbar-manager.jpg)\r\n\r\n通过管理工具栏可以：\r\n\r\n<i class=\"icon-share\"></i> 发布：将当前的文稿生成固定链接，在网络上发布，分享\r\n<i class=\"icon-file\"></i> 新建：开始撰写一篇新的文稿\r\n<i class=\"icon-trash\"></i> 删除：删除当前的文稿\r\n<i class=\"icon-cloud\"></i> 导出：将当前的文稿转化为 Markdown 文本或者 Html 格式，并导出到本地\r\n<i class=\"icon-reorder\"></i> 列表：所有新增和过往的文稿都可以在这里查看、操作\r\n<i class=\"icon-pencil\"></i> 模式：切换 普通/Vim/Emacs 编辑模式\r\n\r\n### 7. 阅读工具栏\r\n\r\n![tool-manager](https://www.zybuluo.com/static/img/toolbar-reader.jpg)\r\n\r\n通过 **预览区** 右上角的 **阅读工具栏**，可以查看当前文稿的目录并增强阅读体验。\r\n\r\n工具栏上的五个图标依次为：\r\n\r\n<i class=\"icon-list\"></i> 目录：快速导航当前文稿的目录结构以跳转到感兴趣的段落\r\n<i class=\"icon-chevron-sign-left\"></i> 视图：互换左边编辑区和右边预览区的位置\r\n<i class=\"icon-adjust\"></i> 主题：内置了黑白两种模式的主题，试试 **黑色主题**，超炫！\r\n<i class=\"icon-desktop\"></i> 阅读：心无旁骛的阅读模式提供超一流的阅读体验\r\n<i class=\"icon-fullscreen\"></i> 全屏：简洁，简洁，再简洁，一个完全沉浸式的写作和阅读环境\r\n\r\n### 8. 阅读模式\r\n\r\n在 **阅读工具栏** 点击 <i class=\"icon-desktop\"></i> 或者按下 `Ctrl+Alt+M` 随即进入独立的阅读模式界面，我们在版面渲染上的每一个细节：字体，字号，行间距，前背景色都倾注了大量的时间，努力提升阅读的体验和品质。\r\n\r\n### 9. 标签、分类和搜索\r\n\r\n在编辑区任意行首位置输入以下格式的文字可以标签当前文档：\r\n\r\n标签： 未分类\r\n\r\n标签以后的文稿在【文件列表】（Ctrl+Alt+F）里会按照标签分类，用户可以同时使用键盘或者鼠标浏览查看，或者在【文件列表】的搜索文本框内搜索标题关键字过滤文稿，如下图所示：\r\n\r\n![file-list](https://www.zybuluo.com/static/img/file-list.png)\r\n\r\n### 10. 文稿发布和分享\r\n\r\n在您使用 Cmd Markdown 记录，创作，整理，阅读文稿的同时，我们不仅希望它是一个有力的工具，更希望您的思想和知识通过这个平台，连同优质的阅读体验，将他们分享给有相同志趣的人，进而鼓励更多的人来到这里记录分享他们的思想和知识，尝试点击 <i class=\"icon-share\"></i> (Ctrl+Alt+P) 发布这份文档给好友吧！\r\n\r\n------\r\n\r\n再一次感谢您花费时间阅读这份欢迎稿，点击 <i class=\"icon-file\"></i> (Ctrl+Alt+N) 开始撰写新的文稿吧！祝您在这里记录、阅读、分享愉快！\r\n\r\n作者 [@ghosert][3]     \r\n2015 年 06月 15日    \r\n\r\n[^LaTeX]: 支持 **LaTeX** 编辑显示支持，例如：$\\sum_{i=1}^n a_i=0$， 访问 [MathJax][4] 参考更多使用方法。\r\n\r\n[^code]: 代码高亮功能支持包括 Java, Python, JavaScript 在内的，**四十一**种主流编程语言。\r\n\r\n[1]: https://www.zybuluo.com/mdeditor?url=https://www.zybuluo.com/static/editor/md-help.markdown\r\n[2]: https://www.zybuluo.com/mdeditor?url=https://www.zybuluo.com/static/editor/md-help.markdown#cmd-markdown-高阶语法手册\r\n[3]: http://weibo.com/ghosert\r\n[4]: http://meta.math.stackexchange.com/questions/5020/mathjax-basic-tutorial-and-quick-reference\r\n', '2', 'php', '2016-03-04 00:00:00', '3');
INSERT INTO `articles` VALUES ('7', 'YII2如何接收ajax过来的json/xml数据', '接收json或者xml数据\r\n>yii2用ajax以post方式传递json格式的数据，需要使用下面的插件\r\n\r\n><font color=\"red\"><a href=\"https://packagist.org/packages/bobchengbin/yii2-xml-request-parser\" target=\"_blank\">bobchengbin/yii2-xml-request-parser</font>\r\n</a>\r\n\r\n- 下载插件 composer.json文件require部分添加\r\n```php\r\nadd \"bobchengbin/yii2-xml-request-parser\": \"*\"\r\n```\r\n\r\n- 执行命令\r\n```\r\ncomposer update\r\n```\r\n\r\n- 配置\r\n```php\r\n\'components\' => [\r\n            \'request\' => \r\n                \'cookieValidationKey\' => \'arsenal\',\r\n                \'parsers\' => [\r\n                    \'text/xml\' => \'bobchengbin\\Yii2XmlRequestParser\\XmlRequestParser\',\r\n                    \'application/xml\' => \'bobchengbin\\Yii2XmlRequestParser\\XmlRequestParser\',\r\n                    \'application/json\' => \'yii\\web\\JsonParser\',\r\n                    \'text/json\' => \'yii\\web\\JsonParser\',\r\n                ],\r\n            ],\r\n    ...\r\n    ]\r\n```', '1', 'json;', '2016-09-12 00:00:00', '2');

-- ----------------------------
-- Table structure for `article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `article_tag`;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(50) unsigned NOT NULL,
  `tag_id` int(50) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of article_tag
-- ----------------------------
INSERT INTO `article_tag` VALUES ('1', '1', '1');
INSERT INTO `article_tag` VALUES ('2', '1', '3');
INSERT INTO `article_tag` VALUES ('4', '1', '2');
INSERT INTO `article_tag` VALUES ('5', '1', '4');
INSERT INTO `article_tag` VALUES ('6', '2', '1');
INSERT INTO `article_tag` VALUES ('7', '2', '2');
INSERT INTO `article_tag` VALUES ('8', '2', '3');
INSERT INTO `article_tag` VALUES ('9', '3', '1');
INSERT INTO `article_tag` VALUES ('10', '1', '6');
INSERT INTO `article_tag` VALUES ('12', '7', '8');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(50) CHARACTER SET utf8 NOT NULL,
  `category_order` int(50) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '技术', '1');
INSERT INTO `category` VALUES ('2', '音乐', '2');
INSERT INTO `category` VALUES ('3', '生活', '3');

-- ----------------------------
-- Table structure for `tag`
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tag_button_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('1', 'php', 'primary');
INSERT INTO `tag` VALUES ('2', 'python', 'success');
INSERT INTO `tag` VALUES ('3', 'linux', 'info');
INSERT INTO `tag` VALUES ('4', 'laravel', 'warning');
INSERT INTO `tag` VALUES ('6', 'CI', 'danger');
INSERT INTO `tag` VALUES ('7', 'json;yii2', 'danger');
INSERT INTO `tag` VALUES ('8', 'json;', 'success');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'root', 'b9be11166d72e9e3ae7fd407165e4bd2');
