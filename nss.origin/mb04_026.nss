//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_026.nss_MAIN
{

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev166_英雄編ＥＤ１_a=true;
	#ev166_英雄編ＥＤ１_b=true;


	#ev102_大阪虐殺_b = true;
	#ev504_村正突進=true;
	#bg020_山脈_02=true;
	#ev165_最終正宗_c=true;
	#ev166_英雄編ＥＤ１_a=true;
	#ev166_英雄編ＥＤ１_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#英雄編終了 = true;

	$PreGameName = $GameName;

	$GameCircle=0;

}

scene mb04_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_025vs.nss"

//◆エピローグ
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景100", 100, 0, -100, "cg/ev/resize/ev102_大阪虐殺_bl.jpg");
	SetTone("絵背景100", Sepia);
	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　兴隆四四年，大和……
　那是一个战火纷飞血雨腥风，恶鬼罗刹跳梁跋扈的
黑暗世界。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒廃大和。大阪虐殺のＣＧ流用？
	Move("絵背景100", 120000, -1024, @0, null, false);
	FadeDelete("絵暗転", 2000, true);
	Wait(1000);
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　奉戴足利四郎邦氏、掌握着六波罗幕府政权的大鸟狮
子吼与联合国进驻军之间的战争，在双方都有可能掌握
决战先机的时候，突然陷入泥潭。
　这一局势于双方而言都格外可惜。

　他们都曾致力于战争的短期决战。
　他们这种希望并非是毫无缘由的。

　战局的变化先是从九州开始的。
　驻于大宰府的六波罗镇西军向镰仓中央举起造反大旗，
勾结京都朝廷席卷西日本。

　虽然幕府设有专门应对此类事态的机关——室町探题，
但将近在眼前的敌人与为应付进驻军而忙得不可开交的
远方同伴放到天平上权衡过之后，很轻易就选择了前者。

　于是，大鸟狮子吼的六波罗军不得不面对两方面的敌
人。
　这突如其来的戏剧性般的好转，令ＧＨＱ开始了愉快
的庆祝。

　他们丢开手中庆祝的酒杯时，已经是两周之后了。
　
　两块隔海相望的陆地，军事平衡发生了巨大的变化，
镇西军进攻本州，便是导致其变化的主因。

　由于设立大宰府的主要目的是防备来自大陆的威胁，
因此也可以说这是必然的结果。
　但在听到俄罗斯侵略<RUBY text="虾夷">北曾</RUBY>的报告时，进驻军的干部们
全都感到愕然。

　也许有人预料到了九州军事力量的衰退最终会导致俄
罗斯对整个大陆支配力的增强，但事实上，这一形势发
展之迅速，已经超乎了所有人的想像。
　……关于这一点的理由，稍后再讲。

　镇西军专心应对六波罗。
　另一方面，俄罗斯军队在一举占领北曾镇台，实现登
陆本州岛之后，其矛头首先指向了进驻军。

　在选择敌人这一点上，他们没有丝毫犹豫。
　仿佛事前早已决定好了一般。

　其真相大概也能在六波罗或进驻军被驱逐出大和后，
通过余下两种势力的关系上判明。……当然不管是六波
罗还是进驻军，应该都不愿意以这样的形式来知道事情
的真相。

　最终，他们决定以正统的手段来摆脱这无休止的正面
作战的困境。
　即，他们达成了暂时的休战协议。

　但这样一来，战乱泥潭的范围与程度也随之扩大了。
　如今，关东已沦为四军混战的战场，其战火丝毫没有
衰退的迹象。

　最后，甚至出现了为这混沌时代火上浇油的人。
　例如，趁战乱之机如雨后春笋般冒出的盗贼团体，比
如——<k>“绿龙会”。

　绿龙会的目的与本体皆不详。不知它究竟是犯罪结社
还是宗教团体。唯有它的名字像瘟疫般迅速地传播着。
　他们时而支持某一方军队。时而又跑去烧毁某个村落
——仿佛只是为引起混乱而行动一般。

　那令人恐惧的八魔女也与绿龙会的阴谋有着密切联系
……不少人都如此传言。
　自称银星号转世的“星片八剑姬”——的确，从其恶
意都无规律可循这一点来看两者都是相同的。

　实际上，当她们引发酷似银星号的大灾难时，不少曾
因白银魔王的消失而得到少许安慰的人，都再一次被推
入了绝望的深渊。
　大多数人甚至连反抗的意志都没有。

　自杀。暴力。掠夺……
　自暴自弃之人的下场，大致都是这几种。

　然而，挽救这些已荒芜致极的人心之人，却也并非完
全没有。
　被六波罗所消灭的冈部党，以残存势力为核心组成的
无名军队便是其中之一。

　他们高呼着救国护民的正义口号而战斗。
　虽然任何一个大和的军队都打着相同的旗号，但他们
却是真正的、为回应饱受战乱之苦之民众的需求而行动。

　有人甚至从他们英勇的身姿中看到了一缕希望之光。
　但他们终究只是一个小规模的志士集团而已，并不具
备于苦境中拯救整个大和民族的力量。

　他们称自己的主人为“正宗”，但并未有人亲眼见过
这样的一号人物。
　他们尊崇的大概是某个已为理想而献身了的指挥者吧
——至少在外人看来是如此。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);
	CreateColorEX("絵暗転", 15000, "#000000");

	Fade("絵暗転", 2000, 1000, null, true);
	Wait(1000);
//◆村正
	PrintBG("上背景", 30000);
	CreateTextureSP("絵演背景回想", 1000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateColorSP("絵色黒地", 1500, "#000000");
	SetTone("絵演背景回想", Sepia);
	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……除此之外，还有一部分人。
　赤色武者的存在。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm04",0,1000,true);
	FadeDelete("絵色黒地", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　与他们相关的传闻起源于很久以前，大约可追溯到数年
之前。
　他们是击退了六波罗暴虐兵士——亦算是凶恶罪犯——
的英雄武者。当时是如此传闻的。

　然而这光辉到不甚现实的好评，却在不知不觉间被添加
了令人作呕的佐料。
　赤武者追寻活祭。

　他们的确讨伐恶人。
　然而作为代价，他们会索取善者的性命——出现了这样
的传闻。

　兴隆四四年的现在。
　在正沦为地狱的大和。

　这一传闻被当做毋庸置疑的事实，
为越来越多的人所知……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、駆ける
//◆一閃
//◆血華
	SetVolume("@mbgm*", 2000, 0, null);
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	FadeDelete("絵演背景回想", 1000, true);

	OnSE("se戦闘_動作_空突進01",1000);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Delete("絵演背景");
	Wait(50);
	Fade("絵フラッシュ白", 1000, 0, null, false);
	DrawDelete("絵フラッシュ白", 300, 100, "slide_05_00_1", true);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	CreateSE("SE01b","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdamN(@0, @0,1000);
	SL_leftdamfadeN2(10);

	$残時間=RemainTime("SE01b");
	WaitKey($残時間);

//◆山賊陣地流用？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg055_アジト_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 3000, true);

	SoundPlay("@mbgm16",0,1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　身为刚强武者的男人死去了。
　成为了一滩浸在血泊里的肉块。

　深红的武者毫发无伤地、静静地站在那里。

　周围都是武者的同伴。
“无名军”的人。由于人数稀少，因此每一个都是精英。

　反观这个已经死去的武者——这个曾是这个要塞的贪
婪王者的男人，以掠夺来的财产集结起来的部下尽管人
数众多，却是仅从士气上看便难以称得上精锐了。
　一发觉己方处于劣势，马上就逃得不见踪影了。

　结局已定。
　深红武者与“无名军”取得了胜利，这样一来，为这强
盗堡垒所压榨的周边人民，也终于可以松一口气了。

　剩下的事情便只有高唱凯歌了。
　然而，却没有一个人表现出胜利的喜悦。

　非但没有兴致高昂，反而个个都冷冰冰地绷着脸。
  仿佛正在诉说悲剧尚未终结，而是正伊始。

　——实际上也的确如此。
　
　因为，不详的祭祀仪式即将开始。

　士兵们的队伍自动分开两列，从中走出了一个老者。
　他在看到要塞的主人的脸时，当场就跪倒在地，嚎啕
大哭了起来。

　在哭到泪眼干涸后，老者保持跪在地上的姿势，仰视
着深红武者，合掌。
　而后——谢谢您，谢谢您取走了这条性命。他如此说
道。

　武者点了点头。
　随即挥下太刀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬首
	OnSE("se戦闘_攻撃_刀刺さる03",1000);

	Wait(1500);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……老者已身首异处。

　在场的人，都像那个败德的武者一般，静静地注视着
滚落在地的人首。
　也有人不忍再看，背过脸去。

　他们都早已知道。
　老者的儿子被要塞的士兵杀害，未婚妻也被夺去，孙
子则通过黑市被卖到了大陆。

　在被复仇心蒙蔽之后，他遇到了深红武者，向他提出
了以自己的性命来换取要塞主人性命的要求。
　所有人都知晓整个事情的经过。

　然而，能够容忍眼前这般光景的，却没有一人。
　他们都知道，老者毕生所期盼的只是平和的生活。

　但为何会沦落到和罪名有如海边沙粒般不计其数的卑
劣之人一样暴尸于此的下场呢？
　他们无论如何都不明白为什么会这样。

　“无名军”陆续地从武者身边离去。
　虽然他们也在作战中受到了武者的协助，但却无一人
向武者致谢。

　甚至有几人对武者的行径格外唾弃。
　可恨的杀手。有人刻意用足以让人听到的音量说道。
　
　没有任何人留下来，向武者伸出友谊之手。

　仅留下生者远去的脚步声，与死者冷漠的视线。
　被空洞的冷风吹着，武者卸下了自己的钢铁铠甲。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	WaitPlay("@mbgm*", null);

//◆装甲解除
//◆村正と
//◆一条·三年後バージョン
	StC(1100, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStA(1000,true);

	Wait(2000);

	CreateSE("SE02","se特殊_鎧_装着03");
	CreateColorEXadd("絵フラ", 17500, "#FFFFFF");

	MusicStart("SE02",0,1000,0,1250,null,false);
	Fade("絵フラ", 600, 1000, null, true);

	DeleteStA(0,true);

	CreateWindow("絵演窓上", 6000, 150, Middle, 724, 576, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -1012, -344, "cg/bg/resize/bg020_山脈坑道_02_l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -160, -820, "cg/st/resize/st一条三年後_通常_私服l.png");
	Move("絵演窓上", 0, @0, @0, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵フラ", 1000, true);

	Move("絵演窓上/絵演背景", 15000, @0, @200, null, false);
	Move("絵演窓上/絵立絵", 15000, @0, @800, null, false);

	Fade("絵色100", 2000, 500, null, false);
	Fade("絵演窓上/絵演背景", 2000, 1000, null, false);
	Fade("絵演窓上/絵立絵", 2000, 1000, null, true);

	Wait(6000);

	FadeDelete("絵色100", 2000, false);
	FadeDelete("絵演窓*", 2000, true);

	Wait(1000);

	StL(1100, @0, @0,"cg/st/st一条三年後_通常_私服.png");
	FadeStA(500,true);

	Wait(1000);

	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　了无生气的要塞中，已不再是少女的她静静地伫立着。

　孤独地。
　剑胄在她身旁，散发着比装甲的温度更冰冷的气息，
从未温暖过自己的主人。

　这便是她选择的路。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·正宗究極体ＶＳ村正
	CreateTextureEX("絵演回想", 4000, Center, Middle, "cg/ev/ev165_最終正宗_c.jpg");
	SetTone("絵演回想", Monochrome);
	Fade("絵演回想", 2000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　——那场战役的结局。
　最后仅剩下了一人和一台装甲。

　男人和深蓝的剑胄都已消失远去。
　留下了少女和深红的剑胄。

　这无法说明任何一方的胜利。
　没有胜者没有败者。没有结论。

　因此，被留下的人便无法迎来结局。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵演回想", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　少女失去了战斗的力量，剑胄失去了战斗的身体。
　两方都怀揣着未达成的使命。

　两方毫无选择的，与曾经的敌人结为了伙伴。
　但深红的剑胄是诅咒之刃。

　少女原本难以接受。
　但她没有任何选择的余地。她在苦恼了许久之后，以
新的戒律为前提，接受了剑胄。

　尽可能不杀生。
　与非杀不可之人——即武者——战斗时，便事先决定
好要因诅咒而斩杀之人，得到那个人的允诺。若对方
不同意，则放弃战斗。

　说这是苦肉计也不为过。
　她时常在战斗时因没有把握好尺度而深受重伤。也常
因没有人愿意献身，就对凶贼的恶行视若无睹。

　除此以外的情况，则都会变成不断抠挖自己的旧伤。
　回应不惜性命也希望以正义断罪的人的愿望，斩下他
们的头颅，被迫回想起类似的、那仍旧历历在目的曾经。

　杀死了父亲的自己。
　杀死了<RUBY text="·">他</RUBY>的自己。
　每次杀人，她都会被迫直视过去。

　这便是她的生活。

　这早已不是她所期望的生活。
　
　她的正义，已经失去了足以打动人心的光芒。

　这亦不是他所期望的。

　即使被所有人背弃，她也仍未放弃向他们诉说自己的
正义。
　这既不是她所选择的生存方式。亦不是他所选择的生
存方式。
　不是其中的任何一种，而是两者的折中。

　她只有这一条路可以走。
　
　不……其实还有另一条。

　她还可以选择放弃前进，停下脚步。

　很多人都憎恨她。
　很多人都厌恶她的存在。

　那么是不是，该停下了呢？
　她想着。那场战斗之后，她便如此认为了。

　眼下这一时刻，也这样想着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0260010a01">
《——要停下吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(500);
	StR(1000, @10, @220,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　冰冷的传音，传入她的脑海。
　剑胄一步也未向她靠近。

　保持着绝对的距离，以一副远离的姿态。
　对这副剑胄而言，她决不是个合适的主人，她只是一
个代替品罢了。对她而言，这副剑胄亦是同样。

　许久未听到的声音格外冰冷。
　
　但，她却准确地明白了剑胄那冰冷话语的对象。

　剑胄的冰冷质问有一半是对着剑胄自身的。
　她知道，剑胄是对其因失去原本的主人而蒙受
创伤的心发问的。

　这是对自己的发问。
　
　但答案早已摆在那里。

　她清楚地明白这一点。
　因为在她内心深处早已有答案。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条三年後_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0260020a02">
「不。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0260030a01">
《……》

{	FwC("cg/fw/fw一条三年後_通常.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0260040a02">
「决不停下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　世间邪恶横行，这个世界需要能够铲除邪恶的正义。
　有人不惜将生命献给已化为被诅咒存在的她，也要寻
求正义。因为世间存在着不惜如此也应被斩杀的邪恶。

　而且。
　而且，最重要的————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条三年後_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0260050a02">
「而且不能停下吧……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0260060a01">
《……是啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　女人与剑胄有着同样的意志。
　有着同样的理由。

　有着必须前进的誓言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条三年後_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0260070a02">
「还没有找到答案。
　究竟是什么孕育了战争。
又究竟是什么孕育了和平。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0260080a02">
「是正义，
　还是邪恶呢？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0260090a01">
《嗯。
　还没有找到答案……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　——在找到答案之前，我不会停下脚步。
　幸存于那场战争的一人和一剑胄不得不这么做，所以
她们一同前行。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, NULL);

//◆ＥＶ：幻想。砂漠を歩く一条。
	CreateTextureEX("絵ＥＶＡ", 4000, -100, Middle, "cg/ev/ev166_英雄編ＥＤ１_a.jpg");

	Move("絵ＥＶＡ", 2000, 0, @0, Dxl1, false);
	Fade("絵ＥＶＡ", 2000, 1000, null, true);

	DeleteStA(0,true);

	Wait(500);

	SoundPlay("@mbgm33",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　她时常幻想。

　如果，自己没有杀死父亲的话——
　如果，他没有杀死母亲的话——

　如果是那样的话，她一定会留下深深的懊悔。对他而
言亦是如此。
　因为那是完成自己应做的事后，所招致的无可避免的
结果。

　若没有完成该完成的使命，必定会失去更多。
　——即便如此。那自己是否不会沦落到脱离世间框架
的生存之路上呢。

　是否能混在人群中，和众多人一同生活呢。
　她，和他都是。大概永远不会遇到彼此。

　那样的人生才是正确的吧。
　自己果然——犯下了决定性的错误吗？

　自己是不是怀抱着想要笔直前进的想法，却在不知不
觉间远远地偏离了轨道呢……
　
　这些想法，日益强烈。

　然而。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆イメージ絵：振り返る景明
	CreateTextureEX("絵ＥＶＢ", 4990, -924, Middle, "cg/ev/ev166_英雄編ＥＤ１_b.jpg");
	Move("絵ＥＶＢ", 2000, -1024, @0, Dxl1, false);
	Fade("絵ＥＶＢ", 2000, 1000, null, true);

//	FadeDelete("絵ＥＶＡ", 2000, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　每当被挫败，想要停下脚步的时候，
　她都能感觉到他在身后注视着她。

　回头就能看到他在那里。
　同样地背对着她，同样地一边前进，一边回头看着她。

　笔直地。

　
　　　　　　“我不认同你。”

　他的眼神如此诉说着。

　
　　　　　　“我与你所行走的道路是截然相反的。”

　如此宣告着。
　
　
　<RUBY text="····">截然相反</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆イメージ絵：振り返る景明
	CreateTextureEX("絵ＥＶＣ", 4990, 0, Middle, "cg/ev/ev166_英雄編ＥＤ１_b.jpg");
	Fade("絵ＥＶＣ", 1000, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0185]
　的确是截然相反的。无论何时，只要一回头，就能看到
他在她的身后。
　这是不可能的——如果她的道路真的偏离了的话。

　只要他与她没有在<RUBY text="····">同一直线</RUBY>上向截然相反的方向前进，
他们便永远不会有相背而行的机会。
　所以————她会找回前进的力量。

　
　　　　　　“我会一直与你战斗下去。”

　他说道。
　他以无尽的斗志告诉她，她一直在笔直前进。

　她是孤独的。
　没有朋友。

　但，她有一个敌人。
　一个理解她的一切、向她发起挑战的人。

　那个人的存在支撑着她。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条三年後_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0260100a02">
「……我绝不认输。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶＢ", 2000, false);
	FadeDelete("絵ＥＶＣ", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　重新起誓，曾经的少女再次迈出了脚步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＣＧ：灰燼の野をゆく村正と一条。後姿？
//あきゅん「演出：ここのＣＧカットされちまったぜ！　どうしようかな、とりあえず前の絵が引きだったなら最後は一条のアップかな。まあなんにしても前の絵とは逆パターンで」
//	CreateTextureSP("絵ＥＶＣ", 3980, Center, Middle, "cg/ev/ev166_英雄編ＥＤ１_b.jpg");
//	FadeDelete("絵ＥＶＢ", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　在荒凉的国土上永无止境地前进着。

　为了找到她所寻求的答案。
　为了找到他所寻求的答案。

　她与他。
　究竟谁是正确的。

　还是，两个人都错了。
　或者，两个人都是正确的————

　他们两人之间的战斗，会一直继续下去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆英雄編·完
	SetVolume("@mbgm*", 5000, 0, null);
	ClearWaitAll(5000, 3000);

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル