create database BookWeb
go

use BookWeb
go

create table Author(
	AuthorCode nvarchar(10) primary key,
	AuthorName nvarchar(20) not null,
	Telephone char(11)
)
create table [user](
	userCode nvarchar(10) primary key,
	Name nvarchar(50) not null,
	Sex char(2) not null,
	Telephone char(11) not null,
	[PassWord] nvarchar(20) not null,
	isManager bit not null
)

create table Book(
	BookCode char(4) primary key,
	BookName nvarchar(20) not null,
	AuthorCode nvarchar(10) foreign key references Author(AuthorCode)  on  update cascade,
	PublishTime datetime,
	BookSort nvarchar(20),
	BookPicture nvarchar(100),
	hotDegree int,
	ContentIntro nvarchar(300),
	bookTitlePicture nvarchar(200),
	bookLink nvarchar(50),
	NumOfRead nvarchar(10)
)

create table [Read](
	userCode nvarchar(10) foreign key references [user](userCode) on  update cascade,
	bookCode char(4)  foreign key references book(bookcode) on update cascade,
	LastReadTime datetime,
	LastReadChapter int,
	primary key(userCode,bookCode)
)

create table manageTable(
	userCode nvarchar(10) foreign key references [user](userCode) on  update cascade,
	BookCode char(4) foreign key references book(bookcode) on update cascade,
	primary key(userCode,BookCode),
	LastManageTime dateTime
)

INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2001', N'饮马流泉', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2002', N'可口的橘子', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2003', N'我只是鸽子呀', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2004', N'横扫天涯', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2005', N'卓牧闲', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2006', N'幸福来敲门', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2007', N'言归正传', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2008', N'猪肉200斤', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2009', N'海与夏', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2010', N'大魔灵', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2011', N'胧月夜.CS', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2012', N'周一口鸟', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2013', N'岳不懂', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2014', N'火锅粉多加醋', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2015', N'东土大茄', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2016', N'臊眉耷目', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2017', N'初四兮', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2018', N'妖僧花无缺', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2019', N'海逸小猪', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2020', N'跳舞', NULL)
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1001', N'从拔出石中剑开始', N'2001', CAST(0x0000ACDE00000000 AS DateTime), N'玄幻', N'https://bookcover.yuewen.com/qdbimg/349573/1025587263/180', N'艾力转生平行世界，此地血脉显圣，强者为尊，东方屹立着大唐帝国，西方则处于日不落帝国的统治之下。
他出国旅游时，不小心召唤出日不落镇国神器——石中剑。
半小时后，皇室长公主从天而降，持剑指向艾力：东方人，要么娶我为妻，要么日不落向大唐宣战！
————
一个月后，艾力看着千娇百媚的魅魔女仆、人鱼姐妹等侍女，以及各种奇珍异宝、大豪斯、大牧场，还有私人飞机、游艇、跑车等等礼物，只想说一句话：
真香！', 100, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/0702dac86fe0cef06660a4f3d300a54b.jpg', N'https://book.qidian.com/info/1025587263', N'6666')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1002', N'我有一座野生动物园', N'2002', CAST(0x0000ACDF00000000 AS DateTime), N'都市', N'https://bookcover.yuewen.com/qdbimg/349573/1024303716/180', N'呼欸欸，园长倒了！（哭腔）
别……别急着叫救护车，先扶我起来！
方野熬夜玩游戏醒来，发现自己变成了一家破落动物园的园长。
温顺灵性的东北虎、凶暴傲娇的银狐、喜欢撒狗粮的灰狼……
随着动物园的发展，各具魅力的动物，吸引了全世界的游客前来参观。
“为什么动物都喜欢我？”面对小朋友们好奇的追问，方野抬头45度望天，语气高深神秘，“还要从一个风和日丽的晚上说起……”', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/d25371ade907bbed36530b74cdbc1496.jpg', N'https://book.qidian.com/info/1024303716', N'3889')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1003', N'从阿兹卡班到霍格沃茨', N'2003', CAST(0x0000ACE000000000 AS DateTime), N'衍生同人', N'https://bookcover.yuewen.com/qdbimg/349573/1024627913/180', N'霍格沃茨的四大学院一共有五个，这是常识。
　　所以一开局就在阿兹卡班并没有什么好奇怪的，对吧？
　　——
　　当威廉睁开眼后不久，就发现自己待在了阿兹卡班。
　　在一个名叫蒙顿格斯的狱友出狱后不久，
　　奇怪的事情就发生了，
　　一场独特的招聘会突然召开了。
　　“什么，霍格沃茨招收教授？”
　　“来阿兹卡班？”
　　“黑魔法防御术教授？”', 98, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/a9bcf91edd0fe200cd184430bb512a60.jpg', N'https://book.qidian.com/info/1024627913', N'4432')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1004', N'有请小师叔', N'2004', CAST(0x0000ACE100000000 AS DateTime), N'玄幻', N'https://bookcover.yuewen.com/qdbimg/349573/1024617405/180', N'镇仙宗，宗主等多位高层突然陨落，门派陷入了混乱。
为了恢复安定，避免覆灭，无奈之下，只好请一直在禁地修炼的小师叔出山。
这位小师叔，只有18岁，而且，看起来一点修为都没有，就在所有人绝望之时，突然发现，他随手一剑，大陆最顶尖的强者，都抵挡不住；随手炼丹，九品丹师，甘愿成为弟子；随手救人，都是无数典籍不能记载的绝世医术……
此刻，他们才明白，这位看起来一点修为都没有的小师叔，竟然是一位天地认可的圣人！
苏隐：想低调，就这么难吗？', 94, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/d9d63115f6842b89f869bdd5816dac33.jpg', N'https://book.qidian.com/info/1024617405', N'2666')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1005', N'老兵新警', N'2005', CAST(0x0000ACE200000000 AS DateTime), N'现实', N'https://bookcover.yuewen.com/qdbimg/349573/1026161931/180', N'不想退役时脱下了军装。
从未奢望过能成为警察竟穿上了警服。
下定决心扎根边境坚守国门，却又被调回了老家。
命运就是这么奇妙，且看韩昕从橄榄绿到藏青蓝的精彩人生！', 97, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/4f37fc88f46fe9b63f90ce820dcaaf9d.jpg', N'https://book.qidian.com/info/1026161931', N'4235')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1006', N'寒门宰相', N'2006', CAST(0x0000ACE300000000 AS DateTime), N'历史', N'https://bookcover.yuewen.com/qdbimg/349573/1024357144/180', N'宋太祖赵匡胤曾言：“宰相须用读书人。”
简单的说，这是寒门学子官至宰相的故事。', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/8234382547347331c22ee886d96a3ed2.jpg', N'https://book.qidian.com/info/1024357144', N'3778')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1007', N'这个人仙太过正经 ', N'2007', CAST(0x0000ACE400000000 AS DateTime), N'仙侠', N'https://bookcover.yuewen.com/qdbimg/349573/1021635590/180', N'半神之躯，比肩凡人！
正经人仙，山海薅神！
（正经版简介）
天高九万里，地有无尽国。
人道多不易，山海尽荒泽。', 95, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/86a2e6e7fad58fb734ba3baa0fe7bd8c.jpg', N'https://book.qidian.com/info/1021635590', N'2677')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1008', N'我的师傅每到大限才突破', N'2008', CAST(0x0000ACE500000000 AS DateTime), N'仙侠', N'https://bookcover.yuewen.com/qdbimg/349573/1024522101/180', N'“师父，是徒儿无能，让您没能在大限来临之前突破。”
“徒儿放心，你师父我死不了。”徐凡看着悲痛欲绝的徒弟笑着说道。
“是徒儿无能，没能为师父多弄几颗筑基丹，要不然.........”跪在地上的宗门天骄嚎啕大哭道，一时间竟涕不成声。
徐凡无奈的看着自己的大弟子，拿出一颗筑基丹随意塞在嘴里。
霎时，天地间五色神光现。', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/8235cd44c792b84203d22a7f70b37771.jpg', N'https://book.qidian.com/info/1024522101', N'3828')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1009', N'外科教父', N'2009', CAST(0x0000ACE600000000 AS DateTime), N'都市', N'https://bookcover.yuewen.com/qdbimg/349573/1023904022/180', N'一个外科小医生，被系统砸中，开启了奇异的人生之路。', 97, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/b33e99f83deedb593ec2e5da885e6093.jpg', N'https://book.qidian.com/info/1023904022', N'4022')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1010', N'木叶之体内一只哥斯拉', N'2010', CAST(0x0000ACE700000000 AS DateTime), N'衍生同人', N'https://bookcover.yuewen.com/qdbimg/349573/1026044539/180', N'穿越到火影，不知火玄逸发现自己体内有一只可怕无比的哥斯拉。
　　你是无尾尾兽，查克拉多到惊人？巧了，我也是。
　　你会尾兽外衣？我没有尾兽外衣，不过我倒是有哥斯拉外衣。
　　尾兽玉很恐怖，一发下去就能摧毁一座山？嘶，吓得玄逸赶紧开大。
　　“核遁·原子吐息！”
　　“红莲·核遁·闪光原子吐息！！”
　　当玄逸化为红莲形态的完全体哥斯拉，一把就将九尾给按在地上的时候。
　　“九尾，你的力量太强了，需要被爆炒……”
　　九尾：“？？？”
　　“你到底是什么人柱力？”', 98, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/1995063bd070e48515fba16bfa2b1db5.jpg', N'https://book.qidian.com/info/1026044539', N'4559')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1011', N'联盟之卧龙军师', N'2011', CAST(0x0000ACE800000000 AS DateTime), N'游戏', N'https://bookcover.yuewen.com/qdbimg/349573/1022508948/180', N'十年课堂无人识，一朝饭堂天下知。
复姓诸葛名谅，自号卧龙，神级教练。
七酱：“对面教练一直算计我野区，我怎么去下路？”
乌兹：“若能请到卧龙，谁还敢说乌兹不行？”
零王：“把把给我整个猪妹、扎克弱势打野，我，真香！”
飞科：“我没有恩静，也没有诸葛先生，吨吨吨~~~”
米勒：“我们是冠军！我们又是冠军！卧龙总是冠军！”
猫皇：“我感觉是时候复出一波混个冠军皮肤了。”
娃娃：“我看到了什么，主教练正在热身中？”', 99, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/adf467781081d3e74f93ebb08ac159dc.jpg', N'https://book.qidian.com/info/1022508948', N'5667')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1012', N'重生之我真没想当男神', N'2012', CAST(0x0000ACE900000000 AS DateTime), N'都市', N'https://bookcover.yuewen.com/qdbimg/349573/1025806689/180', N'三十岁的周煜文重新回到了自己十八岁的时候。
　　这一年2010年。
　　重活一世，周煜文没有太多的雄心壮志，他只不过想平平淡淡的生活，赚一点小钱，谈一场恋爱，只不过命运总爱开玩笑...', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/cf4f3d571e405d83b5d0a9c3018ed475.jpg', N'https://book.qidian.com/info/1025806689', N'3444')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1013', N'天庭签到，终于等来大闹天宫', N'2013', CAST(0x0000ACEA00000000 AS DateTime), N'仙侠', N'https://bookcover.yuewen.com/qdbimg/349573/1026564129/180', N'前面主要是西游布局，很多看似不合理的设定和伏笔，都会在后面一一展现，请放心品尝！
……
姬九虚穿越成为天庭的巡逻天兵，获得签到系统，
本以为神仙般的日子就要来了，却发现大闹天宫还没开始，
为了不成为炮灰，不被猴子一棒子砸死，姬九虚在天庭四处签到，
兜率宫签到，获得九转金丹；
蟠桃园签到，获得蟠桃树根；
凌霄宝殿签到，获得混沌天经。
……
终于，等到猴子出世了，
“来，猴子，要不要看一手西游记？”姬九虚出现在猴子面前。', 97, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/a77e68b6e1f87e25c8824aec078333bb.jpg', N'https://book.qidian.com/info/1026564129', N'4122')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1014', N'人在东京抽卡降魔', N'2014', CAST(0x0000ACEB00000000 AS DateTime), N'悬疑', N'https://bookcover.yuewen.com/qdbimg/349573/1025493892/180', N'赤身火发，四面雷鼓围绕的建御雷神惊怒不已，“你为什么追我？”
上川悠仁三首六臂，皮肤靛青。
左边的头颅面带怒容，“大胆妖孽，我一眼就看出你不是人。”
右边的头颅面带慈悲，“请施主助我修行。“
中间的头颅露出无奈的表情，“事情大概就是这样，阁下请吃我一招六刀流奥义·天降正义·万物之息·大千世界·狂风绝息斩，以验明正身。“
······
系统卡牌流，灵气复苏的神话世界，别人氪金我氪命，大概就是这样', 92, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/3543fb75ad5e815ac644b5268cdcf254.jpg', N'https://book.qidian.com/info/1025493892', N'2567')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1015', N'我儿快拼爹', N'2015', CAST(0x0000ACF400000000 AS DateTime), N'玄幻', N'https://bookcover.yuewen.com/qdbimg/349573/1026085339/180', N'“叮！您的儿子惹上了纯阳境强者，本着父爱如山、父亲必须胜的原则，您的修为将提升到纯阳境。”
……
秦川发现，只要儿子惹事，他就能变强。
于是，他在坑儿子的路上一去不复返……
……
儿子，你爹我天下无敌，随便造作吧！', 91, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/64518a5932f80cd8dac1df83bc650433.jpg', N'https://book.qidian.com/info/1026085339', N'2345')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1016', N'三国从单骑入荆州开始', N'2016', CAST(0x0000ACE900000000 AS DateTime), N'历史', N'https://bookcover.yuewen.com/qdbimg/349573/1025257005/180', N'“生子当如孙仲谋，刘景升儿子若豚犬尔。”
初平元年，被曹操称为猪狗儿的刘琦站在宜城的大门外，替他父亲刘表走进了荆州。
如何不当豚犬儿？
好儿子就要替父亲承担困难。
单骑入宜城解决宗族，太危险，我替父亲去。
对付内忧外患的荆州，太繁琐，我帮父亲弄。
结交诸权贵纳夫人……父亲您年纪太大了，还是我来吧！', 91, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/2d8fd8a359f829b0695ee273d8975451.jpg', N'https://book.qidian.com/info/1025257005', N'2333')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1017', N'这个选手罪孽深重 ', N'2017', CAST(0x0000ACE900000000 AS DateTime), N'游戏', N'https://bookcover.yuewen.com/qdbimg/349573/1026108617/180', N'前世在电子竞技领域失意的李念意外重生回到S4赛季。
这一年，WE距离世界赛仅差临门一脚。
这一年，三星双雄并齐，直指世界冠军席位。
这一年，国内多家俱乐部开始招揽韩援，韩援初时代开启。
这一年，EDG在国内意气风发，明凯还强的离谱。
李念来了。
所以这一年，不一样了。
李念语录：让全世界的选手都心生恐惧，我还真是罪孽深重呢。', 88, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/2fb9645421dc0f29095603d049533c5e.jpg', N'https://book.qidian.com/info/1026108617', N'1155')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1018', N'从道果开始', N'2018', CAST(0x0000ACF400000000 AS DateTime), N'游戏', N'https://bookcover.yuewen.com/qdbimg/349573/1017480723/180', N'地球青年陈季川因车祸意外死亡，穿越到仙侠世界，并获得无上法术：【道果】。
　　一切从‘道果’开始.....
　　……', 89, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/ed3de3460a28936b25bae129499be61e.jpg', N'https://book.qidian.com/info/1017480723', N'1333')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1019', N'海兰萨领主', N'2019', CAST(0x0000ACE400000000 AS DateTime), N'玄幻', N'https://bookcover.yuewen.com/qdbimg/349573/1021030060/180', N'帝国战士苏尔达克加入贝纳军团五十七重甲步兵团并在华沙位面服役四年，在林场营地一次打扫战场的时候救了一位年轻人，年轻人受了一些伤，还是个哑巴，苏尔达克将他带进了军营里，我们讲述的就是这个来历不明的年轻人的故事……', 89, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/45ed46b1c5110f363edd4d22e67810f6.jpg', N'https://book.qidian.com/info/1021030060', N'1234')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1020', N'稳住别浪', N'2020', CAST(0x0000ACF400000000 AS DateTime), N'都市', N'https://bookcover.yuewen.com/qdbimg/349573/1025325411/180', N'天堂打烊，地狱满员。
　　所以，我留在人间当祸害呀……', 87, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/2ebe320e1521c7a9ccdfd985b1a4fb1a.jpg', N'https://book.qidian.com/info/1025325411', N'1125')
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10000', N'赵晨暐', N'男', N'18821143497', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10001', N'小关', N'男', N'17727278393', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10002', N'小刚', N'男', N'17727278392', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10003', N'小胡', N'男', N'17727278311', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'3001', N'小天', N'男', N'15565577777', N'123456', 1)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'3002', N'小光', N'男', N'17768686899', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'3003', N'小结', N'男', N'17711616882', N'123456', 0)
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1001', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1002', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1003', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1004', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1005', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1006', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1007', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1008', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1009', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1010', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1011', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1012', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1013', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1014', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1015', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1016', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1017', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1018', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1019', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[manageTable] ([userCode], [BookCode], [LastManageTime]) VALUES (N'3001', N'1020', CAST(0x0000AD4E00000000 AS DateTime))
GO
INSERT [dbo].[Read] ([userCode], [bookCode], [LastReadTime], [LastReadChapter]) VALUES (N'3002', N'1001', CAST(0x0000AD4E00000000 AS DateTime), 0)
GO
INSERT [dbo].[Read] ([userCode], [bookCode], [LastReadTime], [LastReadChapter]) VALUES (N'3002', N'1003', CAST(0x0000AD4E00000000 AS DateTime), 0)
GO
INSERT [dbo].[Read] ([userCode], [bookCode], [LastReadTime], [LastReadChapter]) VALUES (N'3002', N'1004', CAST(0x0000AD4E00000000 AS DateTime), 1)
GO
INSERT [dbo].[Read] ([userCode], [bookCode], [LastReadTime], [LastReadChapter]) VALUES (N'3002', N'1005', CAST(0x0000AD4E00000000 AS DateTime), 1)
GO
INSERT [dbo].[Read] ([userCode], [bookCode], [LastReadTime], [LastReadChapter]) VALUES (N'3002', N'1006', CAST(0x0000AD4E00000000 AS DateTime), 1)
GO
INSERT [dbo].[Read] ([userCode], [bookCode], [LastReadTime], [LastReadChapter]) VALUES (N'3002', N'1009', CAST(0x0000AD4E00000000 AS DateTime), 0)
GO
INSERT [dbo].[Read] ([userCode], [bookCode], [LastReadTime], [LastReadChapter]) VALUES (N'3003', N'1002', CAST(0x0000AD4E00000000 AS DateTime), 0)
GO
CREATE VIEW [dbo].[allWorksView]
AS
SELECT  dbo.Author.AuthorName, dbo.Book.BookName, dbo.Book.PublishTime, dbo.Book.bookLink, dbo.Book.ContentIntro, 
                   dbo.Book.BookTitlePicture
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode

GO
/****** Object:  View [dbo].[Derive_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Derive_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '衍生同人')
GO
/****** Object:  View [dbo].[fansty_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[fansty_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '玄幻')
GO
/****** Object:  View [dbo].[Game_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Game_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '游戏')
GO
/****** Object:  View [dbo].[headRecommend]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[headRecommend]
as
SELECT TOP 4
       [BookName]
	  ,bookLink
  FROM [BookWeb].[dbo].[Book]
GO
/****** Object:  View [dbo].[history_List]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[history_List] as
SELECT  TOP (3) dbo.Book.BookName, dbo.[Read].userCode, dbo.[Read].LastReadChapter
FROM      dbo.[Read] INNER JOIN
                   dbo.Book ON dbo.[Read].bookCode = dbo.Book.BookCode
		order by LastReadChapter desc
GO
/****** Object:  View [dbo].[history_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[history_View]
AS
SELECT  dbo.Book.BookPicture, dbo.Book.BookName, dbo.[Read].LastReadTime, dbo.[Read].LastReadChapter, 
                   dbo.[Read].userCode
FROM      dbo.Book INNER JOIN
                   dbo.[Read] ON dbo.Book.BookCode = dbo.[Read].bookCode

GO
/****** Object:  View [dbo].[HistoryRecode_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[HistoryRecode_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '历史')
GO
/****** Object:  View [dbo].[hotRecommend]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[hotRecommend]
as
SELECT TOP 10
       [BookName]    
      ,[BookTitlePicture]
	  ,[BookSort]
	  ,bookLink
      ,[NumOfRead]
  FROM [BookWeb].[dbo].[Book]
GO
/****** Object:  View [dbo].[ImmortalHero_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[ImmortalHero_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '仙侠')
GO
/****** Object:  View [dbo].[Logic_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Logic_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '逻辑')
GO
/****** Object:  View [dbo].[Metropolitan_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Metropolitan_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '都市')
GO
/****** Object:  View [dbo].[rankView]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[rankView]
AS
SELECT  TOP (100) PERCENT dbo.Book.BookName, dbo.Book.BookSort, dbo.Book.BookPicture, dbo.Author.AuthorName, 
                   dbo.Book.HotDegree
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode

GO
/****** Object:  View [dbo].[Suspense_View]    Script Date: 2021/6/23 15:03:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Suspense_View]
as
SELECT  dbo.Book.BookName, dbo.Book.ContentIntro, dbo.Book.PublishTime, dbo.Author.AuthorName,BookPicture,bookLink
FROM      dbo.Book INNER JOIN
                   dbo.Author ON dbo.Book.AuthorCode = dbo.Author.AuthorCode
				   WHERE   (dbo.Book.BookSort = '悬疑')
GO