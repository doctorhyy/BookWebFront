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

INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2001', N'������Ȫ', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2002', N'�ɿڵ�����', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2003', N'��ֻ�Ǹ���ѽ', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2004', N'��ɨ����', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2005', N'׿����', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2006', N'�Ҹ�������', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2007', N'�Թ�����', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2008', N'����200��', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2009', N'������', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2010', N'��ħ��', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2011', N'����ҹ.CS', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2012', N'��һ����', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2013', N'������', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2014', N'����۶�Ӵ�', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2015', N'��������', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2016', N'��ü��Ŀ', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2017', N'������', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2018', N'��ɮ����ȱ', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2019', N'����С��', NULL)
GO
INSERT [dbo].[Author] ([AuthorCode], [AuthorName], [Telephone]) VALUES (N'2020', N'����', NULL)
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1001', N'�Ӱγ�ʯ�н���ʼ', N'2001', CAST(0x0000ACDE00000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1025587263/180', N'����ת��ƽ�����磬�˵�Ѫ����ʥ��ǿ��Ϊ�𣬶��������Ŵ��Ƶ۹������������ղ���۹���ͳ��֮�¡�
����������ʱ����С���ٻ����ղ��������������ʯ�н���
��Сʱ�󣬻��ҳ���������������ֽ�ָ�����������ˣ�ҪôȢ��Ϊ�ޣ�Ҫô�ղ����������ս��
��������
һ���º󣬰�������ǧ�����ĵ���ħŮ�͡�������õ���Ů���Լ����������챦�����˹��������������˽�˷ɻ�����ͧ���ܳ��ȵ����ֻ��˵һ�仰��
���㣡', 100, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/0702dac86fe0cef06660a4f3d300a54b.jpg', N'https://book.qidian.com/info/1025587263', N'6666')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1002', N'����һ��Ұ������԰', N'2002', CAST(0x0000ACDF00000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1024303716/180', N'���G�G��԰�����ˣ�����ǻ��
�𡭡����ŽоȻ������ȷ���������
��Ұ��ҹ����Ϸ�����������Լ������һ�����䶯��԰��԰����
��˳���ԵĶ��������ױ�������������ϲ���������Ļ��ǡ���
���Ŷ���԰�ķ�չ�����������Ķ��������ȫ������ο�ǰ���ιۡ�
��Ϊʲô���ﶼϲ���ң������С�����Ǻ����׷�ʣ���Ұ̧ͷ45�����죬�����������أ�����Ҫ��һ���������������˵�𡭡���', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/d25371ade907bbed36530b74cdbc1496.jpg', N'https://book.qidian.com/info/1024303716', N'3889')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1003', N'�Ӱ��ȿ��ൽ�����ִ�', N'2003', CAST(0x0000ACE000000000 AS DateTime), N'����ͬ��', N'https://bookcover.yuewen.com/qdbimg/349573/1024627913/180', N'�����ִĵ��Ĵ�ѧԺһ������������ǳ�ʶ��
��������һ���־��ڰ��ȿ��ಢû��ʲô����ֵģ��԰ɣ�
��������
���������������ۺ󲻾ã��ͷ����Լ������˰��ȿ��ࡣ
������һ�������ɶٸ�˹�����ѳ����󲻾ã�
������ֵ�����ͷ����ˣ�
����һ�����ص���Ƹ��ͻȻ�ٿ��ˡ�
������ʲô�������ִ����ս��ڣ���
�����������ȿ��ࣿ��
��������ħ�����������ڣ���', 98, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/a9bcf91edd0fe200cd184430bb512a60.jpg', N'https://book.qidian.com/info/1024627913', N'4432')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1004', N'����Сʦ��', N'2004', CAST(0x0000ACE100000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1024617405/180', N'�����ڣ������ȶ�λ�߲�ͻȻ���䣬���������˻��ҡ�
Ϊ�˻ָ����������⸲������֮�£�ֻ����һֱ�ڽ���������Сʦ���ɽ��
��λСʦ�壬ֻ��18�꣬���ң�������һ����Ϊ��û�У����������˾���֮ʱ��ͻȻ���֣�������һ������½����ǿ�ߣ����ֵ���ס��������������Ʒ��ʦ����Ը��Ϊ���ӣ����־��ˣ����������伮���ܼ��صľ���ҽ������
�˿̣����ǲ����ף���λ������һ����Ϊ��û�е�Сʦ�壬��Ȼ��һλ����Ͽɵ�ʥ�ˣ�
��������͵�������ô����', 94, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/d9d63115f6842b89f869bdd5816dac33.jpg', N'https://book.qidian.com/info/1024617405', N'2666')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1005', N'�ϱ��¾�', N'2005', CAST(0x0000ACE200000000 AS DateTime), N'��ʵ', N'https://bookcover.yuewen.com/qdbimg/349573/1026161931/180', N'��������ʱ�����˾�װ��
��δ�������ܳ�Ϊ���쾹�����˾�����
�¶����������߾����ع��ţ�ȴ�ֱ��������ϼҡ�
���˾�����ô����ҿ���꿴�����̵��������ľ���������', 97, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/4f37fc88f46fe9b63f90ce820dcaaf9d.jpg', N'https://book.qidian.com/info/1026161931', N'4235')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1006', N'��������', N'2006', CAST(0x0000ACE300000000 AS DateTime), N'��ʷ', N'https://bookcover.yuewen.com/qdbimg/349573/1024357144/180', N'��̫���Կ�ط���ԣ����������ö����ˡ���
�򵥵�˵�����Ǻ���ѧ�ӹ�������Ĺ��¡�', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/8234382547347331c22ee886d96a3ed2.jpg', N'https://book.qidian.com/info/1024357144', N'3778')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1007', N'�������̫������ ', N'2007', CAST(0x0000ACE400000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1021635590/180', N'����֮�����ȼ緲�ˣ�
�������ɣ�ɽ��޶��
���������飩
��߾���������޾�����
�˵��಻�ף�ɽ��������', 95, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/86a2e6e7fad58fb734ba3baa0fe7bd8c.jpg', N'https://book.qidian.com/info/1021635590', N'2677')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1008', N'�ҵ�ʦ��ÿ�����޲�ͻ��', N'2008', CAST(0x0000ACE500000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1024522101/180', N'��ʦ������ͽ�����ܣ�����û���ڴ�������֮ǰͻ�ơ���
��ͽ�����ģ���ʦ���������ˡ����췲���ű�ʹ������ͽ��Ц��˵����
����ͽ�����ܣ�û��Ϊʦ����Ū������������Ҫ��Ȼ.........�����ڵ��ϵ������콾������޵���һʱ�侹�鲻������
�췲���εĿ����Լ��Ĵ���ӣ��ó�һ�������������������
��ʱ����ؼ���ɫ����֡�', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/8235cd44c792b84203d22a7f70b37771.jpg', N'https://book.qidian.com/info/1024522101', N'3828')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1009', N'��ƽ̸�', N'2009', CAST(0x0000ACE600000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1023904022/180', N'һ�����Сҽ������ϵͳ���У����������������֮·��', 97, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/b33e99f83deedb593ec2e5da885e6093.jpg', N'https://book.qidian.com/info/1023904022', N'4022')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1010', N'ľҶ֮����һֻ��˹��', N'2010', CAST(0x0000ACE700000000 AS DateTime), N'����ͬ��', N'https://bookcover.yuewen.com/qdbimg/349573/1026044539/180', N'��Խ����Ӱ����֪�����ݷ����Լ�������һֻ�����ޱȵĸ�˹����
����������ββ�ޣ�������ൽ���ˣ����ˣ���Ҳ�ǡ�
�������β�����£���û��β�����£������ҵ����и�˹�����¡�
����β����ֲܿ���һ����ȥ���ܴݻ�һ��ɽ��˻���ŵ����ݸϽ�����
�������˶ݡ�ԭ����Ϣ����
�������������˶ݡ�����ԭ����Ϣ������
���������ݻ�Ϊ������̬����ȫ���˹����һ�Ѿͽ���β�����ڵ��ϵ�ʱ��
��������β���������̫ǿ�ˣ���Ҫ������������
������β������������
�������㵽����ʲô����������', 98, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/1995063bd070e48515fba16bfa2b1db5.jpg', N'https://book.qidian.com/info/1026044539', N'4559')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1011', N'����֮������ʦ', N'2011', CAST(0x0000ACE800000000 AS DateTime), N'��Ϸ', N'https://bookcover.yuewen.com/qdbimg/349573/1022508948/180', N'ʮ���������ʶ��һ����������֪��
����������£��Ժ��������񼶽�����
�߽������������һֱ�����Ұ��������ôȥ��·����
���ȣ��������뵽������˭����˵���Ȳ��У���
���������ѰѸ����������á��������ƴ�Ұ���ң����㣡��
�ɿƣ�����û�ж�����Ҳû������������ֶֶ�~~~��
���գ��������ǹھ����������ǹھ����������ǹھ�����
è�ʣ����Ҹо���ʱ�򸴳�һ������ھ�Ƥ���ˡ���
���ޣ����ҿ�����ʲô�����������������У���', 99, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/adf467781081d3e74f93ebb08ac159dc.jpg', N'https://book.qidian.com/info/1022508948', N'5667')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1012', N'����֮����û�뵱����', N'2012', CAST(0x0000ACE900000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1025806689/180', N'��ʮ������������»ص����Լ�ʮ�����ʱ��
������һ��2010�ꡣ
�����ػ�һ����������û��̫�������׳־����ֻ������ƽƽ���������׬һ��СǮ��̸һ��������ֻ���������ܰ�����Ц...', 96, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/cf4f3d571e405d83b5d0a9c3018ed475.jpg', N'https://book.qidian.com/info/1025806689', N'3444')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1013', N'��ͥǩ�������ڵ��������칬', N'2013', CAST(0x0000ACEA00000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1026564129/180', N'ǰ����Ҫ�����β��֣��ܶ࿴�Ʋ�������趨�ͷ��ʣ������ں���һһչ�֣������Ʒ����
����
�����鴩Խ��Ϊ��ͥ��Ѳ����������ǩ��ϵͳ��
����Ϊ���ɰ�����Ӿ�Ҫ���ˣ�ȴ���ִ����칬��û��ʼ��
Ϊ�˲���Ϊ�ڻң���������һ��������������������ͥ�Ĵ�ǩ����
���ʹ�ǩ������þ�ת�𵤣�
���԰ǩ����������������
��������ǩ������û����쾭��
����
���ڣ��ȵ����ӳ����ˣ�
���������ӣ�Ҫ��Ҫ��һ�����μǣ�������������ں�����ǰ��', 97, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/a77e68b6e1f87e25c8824aec078333bb.jpg', N'https://book.qidian.com/info/1026564129', N'4122')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1014', N'���ڶ����鿨��ħ', N'2014', CAST(0x0000ACEB00000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1025493892/180', N'����𷢣������׹�Χ�ƵĽ�������ŭ���ѣ�����Ϊʲô׷�ң���
�ϴ������������ۣ�Ƥ�����ࡣ
��ߵ�ͷ­���ŭ�ݣ�������������һ�۾Ϳ����㲻���ˡ���
�ұߵ�ͷ­����ȱ�������ʩ���������С���
�м��ͷ­¶�����εı��飬�������ž������������������һ�����������塤�콵���塤����֮Ϣ����ǧ���硤����Ϣն��������������
������������
ϵͳ���������������յ������磬����봽����������ž�������', 92, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/3543fb75ad5e815ac644b5268cdcf254.jpg', N'https://book.qidian.com/info/1025493892', N'2567')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1015', N'�Ҷ���ƴ��', N'2015', CAST(0x0000ACF400000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1026085339/180', N'���������Ķ��������˴�����ǿ�ߣ����Ÿ�����ɽ�����ױ���ʤ��ԭ��������Ϊ������������������
����
�ش����֣�ֻҪ�������£������ܱ�ǿ��
���ǣ����ڿӶ��ӵ�·��һȥ����������
����
���ӣ�����������޵У���������ɣ�', 91, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/64518a5932f80cd8dac1df83bc650433.jpg', N'https://book.qidian.com/info/1026085339', N'2345')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1016', N'�����ӵ����뾣�ݿ�ʼ', N'2016', CAST(0x0000ACE900000000 AS DateTime), N'��ʷ', N'https://bookcover.yuewen.com/qdbimg/349573/1025257005/180', N'�����ӵ�������ı����������������Ȯ������
��ƽԪ�꣬���ܲٳ�Ϊ����������վ���˳ǵĴ����⣬�������������߽��˾��ݡ�
��β�����Ȯ����
�ö��Ӿ�Ҫ�游�׳е����ѡ�
�������˳ǽ�����壬̫Σ�գ����游��ȥ��
�Ը������⻼�ľ��ݣ�̫�������Ұ︸��Ū��
�ύ��Ȩ���ɷ��ˡ������������̫���ˣ����������ɣ�', 91, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/2d8fd8a359f829b0695ee273d8975451.jpg', N'https://book.qidian.com/info/1025257005', N'2333')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1017', N'���ѡ���������� ', N'2017', CAST(0x0000ACE900000000 AS DateTime), N'��Ϸ', N'https://bookcover.yuewen.com/qdbimg/349573/1026108617/180', N'ǰ���ڵ��Ӿ�������ʧ����������������ص�S4������
��һ�꣬WE������������������һ�š�
��һ�꣬����˫�۲��룬ֱָ����ھ�ϯλ��
��һ�꣬���ڶ�Ҿ��ֲ���ʼ������Ԯ����Ԯ��ʱ��������
��һ�꣬EDG�ڹ��������緢��������ǿ�����ס�
�������ˡ�
������һ�꣬��һ���ˡ�
������¼����ȫ�����ѡ�ֶ������־壬�һ��������������ء�', 88, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/2fb9645421dc0f29095603d049533c5e.jpg', N'https://book.qidian.com/info/1026108617', N'1155')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1018', N'�ӵ�����ʼ', N'2018', CAST(0x0000ACF400000000 AS DateTime), N'��Ϸ', N'https://bookcover.yuewen.com/qdbimg/349573/1017480723/180', N'��������¼����򳵻�������������Խ���������磬��������Ϸ���������������
����һ�дӡ���������ʼ.....
��������', 89, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/ed3de3460a28936b25bae129499be61e.jpg', N'https://book.qidian.com/info/1017480723', N'1333')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1019', N'����������', N'2019', CAST(0x0000ACE400000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1021030060/180', N'�۹�սʿ�ն���˼��뱴�ɾ�����ʮ���ؼײ����Ų��ڻ�ɳλ��������꣬���ֳ�Ӫ��һ�δ�ɨս����ʱ�����һλ�����ˣ�����������һЩ�ˣ����Ǹ��ưͣ��ն���˽��������˾�Ӫ����ǽ����ľ���������������������˵Ĺ��¡���', 89, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/45ed46b1c5110f363edd4d22e67810f6.jpg', N'https://book.qidian.com/info/1021030060', N'1234')
GO
INSERT [dbo].[Book] ([BookCode], [BookName], [AuthorCode], [PublishTime], [BookSort], [BookPicture], [ContentIntro], [HotDegree], [BookTitlePicture], [bookLink], [NumOfRead]) VALUES (N'1020', N'��ס����', N'2020', CAST(0x0000ACF400000000 AS DateTime), N'����', N'https://bookcover.yuewen.com/qdbimg/349573/1025325411/180', N'���ô��ȣ�������Ա��
�������ԣ��������˼䵱����ѽ����', 87, N'https://bossaudioandcomic-1252317822.image.myqcloud.com/activity/document/2ebe320e1521c7a9ccdfd985b1a4fb1a.jpg', N'https://book.qidian.com/info/1025325411', N'1125')
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10000', N'�Գ���', N'��', N'18821143497', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10001', N'С��', N'��', N'17727278393', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10002', N'С��', N'��', N'17727278392', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'10003', N'С��', N'��', N'17727278311', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'3001', N'С��', N'��', N'15565577777', N'123456', 1)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'3002', N'С��', N'��', N'17768686899', N'123456', 0)
GO
INSERT [dbo].[user] ([userCode], [Name], [Sex], [Telephone], [PassWord], [isManager]) VALUES (N'3003', N'С��', N'��', N'17711616882', N'123456', 0)
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
				   WHERE   (dbo.Book.BookSort = '����ͬ��')
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
				   WHERE   (dbo.Book.BookSort = '����')
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
				   WHERE   (dbo.Book.BookSort = '��Ϸ')
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
				   WHERE   (dbo.Book.BookSort = '��ʷ')
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
				   WHERE   (dbo.Book.BookSort = '����')
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
				   WHERE   (dbo.Book.BookSort = '�߼�')
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
				   WHERE   (dbo.Book.BookSort = '����')
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
				   WHERE   (dbo.Book.BookSort = '����')
GO