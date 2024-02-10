//<continuation number="590">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_002.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb02_002.nss","IchijyouMonzetsu",true);
	Conquest("nss/mb02_002.nss","IchijyouMonzetsuSet",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg050_普陀楽城宿舎前_01=true;
	#bg063_普陀楽城内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_003.nss";

}

scene mb02_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_001.nss"


//◆官舎
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵演震", 500, Center, Middle, "cg/bg/bg050_普陀楽城宿舎前_01.jpg");
	OnBG(100,"bg050_普陀楽城宿舎前_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020010b20">
「二位请用这一栋。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020020a02">
「哎？
　这一整栋房子吗？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020030b20">
「不久之前还是卫兵的事务室。
　用来居住稍显狭窄，或许会你们带来些许
不便。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020040a00">
「已经够用了。
　只要和其他公馆保持距离就够了。」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020050b20">
「对。我正是考虑到这一点，才准备了这套房
子。
　在这里所说的话不会被旁人听去。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020060b20">
「但还是不要大意为好。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020070a00">
「我明白。
　另外……」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020080b20">
「请讲。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020090a00">
「今后若想联络您，该怎样做？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020100b20">
「只要到政所说找寄人岩田就好。
　因为你们二位是作为我的部下，因此无需
避人耳目。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020110a00">
「明白。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020120b20">
「还有问题吗？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020130a02">
「那、那个……」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020140b20">
「什么事？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020150a02">
「我和凑斗先生一起住在这里，那个，没问题
吗？
　旁人看来或许会觉得很可疑……」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020160b20">
「？　没问题的。
　已对外宣称你们二位是夫妻关系了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆どがん
	CreateSE("SE01","se擬音_コミカル_頭ぶつける");
	CreateSE("SE02","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	MusicStart("SE02",0,1000,0,1200,null,false);
	Fade("絵演震", 0, 750, null, true);
	Shake("絵演震", 600, 6, 0, 0, 0, 1000, DxlAuto, false);

	Wait(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020170b20">
「……由于宿舍并不如外城墙或瞭望楼般坚
固，所以请不要施与柱子猛烈的头部撞击等
动作。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020180a00">
「是这么说的，一条。」


{	SetComic(@0,@0,17);
	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020190a02">
「但、但、但是！
　夫妻!?」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020200a00">
「你不知道吗？」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020210a02">
「根本没听说过！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020220a00">
「我们化名的姓都一样的吧？」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020230a02">
「那、那个……我还以为是兄妹呢。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020240a00">
「如果不伪装成夫妻的话，就不能住在一起了
吧。
　那样很不方便。」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020250a02">
「话是没错！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020260a00">
「你讨厌吗？」


{	SetComic(@0,@0,17);
	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020270a02">
「哎……诶？」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020280a00">
「讨厌和我假扮夫妻吗？」


{	SetComic(@0,@0,13);
	FwC("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020290a02">
「那、那个……
　这……」


{	DeleteComic();
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020300a00">
「我讨厌。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずがーん
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,750,null,false);
	Fade("絵演震", 0, 750, null, true);
	Shake("絵演震", 600, 0, 10, 0, 0, 1000, DxlAuto, false);

	Wait(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020310b20">
「也请不要空翻踢。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020320a00">
「是这么说的，一条。」


{	FwC("cg/fw/fw一条_涙.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020330a02">
「呜，呜呜……可是……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020340a00">
「婚姻是应在神前发誓的。
　为行事方便而冒充让我觉得不满。」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020350a02">
「……唉。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020360a00">
「但是，撇开这点不谈。
　作为一个男性来说，能和你这样美丽的少女
共处一室，我很开心。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずどーん
//◆ごろごろごろ
//◆どぎゃーん
//◆ひひーん
//◆ぱからっぱからっ
	IchijyouMonzetsu();

	Wait(500);

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020370b20">
「你是故意的吧？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020380a00">
「您指什么？」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020390a02">
「唔……唔哇——!!
  马，马！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


//◆※以下、全てＳＥ扱い
//◆景明と岩田の会話のバックで流しておく


//◆ＳＥ：ひひーん。馬数頭？
	CreateSE("SE02","se擬音_コミカル_馬鳴き声");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateVOICE("一条","mb02/0020400a02");
	MusicStart("一条",0,800,0,1000,null,false);

/*
	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020400a02">
「唔哇，住手，停下来……呀！ 别舔！ 别咬！
别、别把奇怪的东西蹭我身上——！  凑斗先生——！
喂，马，马袭击我……噫——！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/
//◆ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020410a00">
「总之，我们先行动吧。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020420b20">
「首先打算怎么做？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020430a00">
「收集情报。
　用自己的眼睛和耳朵确认城内的人与物。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020440a00">
「然后再制定计划。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020450b20">
「是啊。这样不错。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020460a00">
「我想先了解目标的真实情况。
　能帮我安排吗？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020470b20">
「马上就能为你安排。借口办理业务妥善安排
你们见面吧。
　在此期间，请先洗个澡。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020480a00">
「原来如此……
　是个对仪容很挑剔的人吗？」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0020490b20">
「没错。
　我觉得如果来送公文的是个浑身马粪臭气的
少女，他会生气的。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ひひーん
	CreateSE("SE02","se擬音_コミカル_馬鳴き声");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateVOICE("一条","mb02/0020500a02");
	MusicStart("一条",0,1000,0,1000,null,false);

	$残時間=RemainTime("一条");
	WaitKey($残時間);

	ClearWaitAll(2000, 2000);

/*
//◆ボイスのみ。テキスト出さず
	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020500a02">
「啊——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

//◆本丸廊下
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　浑身马粪臭气的少女沐浴后，从岩田女士那里拿了文
件，进入普陀乐主堡。
　文件只不过是定期报告罢了。但需要提交给掌权人并
让其盖章。

　再好不过的材料。那个密探的工作真是相当麻利、得
体。
　这样就能极其自然地会一会现在的幕府掌权人——唯
一留在城内的公方，游佐童心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020510a02">
「游佐童心是个怎样的人呢？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020520a00">
「我们正是为了多少了解一点而去见他。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　确认四周。
　幸运的是，不见半个人影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020530a00">
（注意措辞。和宿舍不一样，不知道会被谁听
去。
　言行举止要符合一个六波罗新来的小官）


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020540a02">
（啊，是。
　对不起）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　小声提醒注意后，我们继续交谈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020550a00">
「游佐惟盛入道童心……是关东四公方中最年
长者，也是前大将领护氏殿下的心腹。
　军政两道皆前途光明。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020560a00">
「而且，他本人还非常喜欢文化艺术，不仅
维护大批艺术家，自己也赏玩其中。
　因其展现出不墨守陈规，喜爱尝试新事物、
接受前卫挑战的姿态，以及……」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020570a00">
「公务中也屡屡打破常规的作为——人称：婆
娑罗公方。
　我所知道的就这些了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　一般常识范畴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0020580a02">
「我也只知道这些。
　因为六波罗的那群家伙……各位大人的私生
活和真实形象，几乎不怎么出现在报纸和杂志
上。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0020590a00">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　相对于世界各国的王侯贵族来说也是比较少的。
　大概是因为他们内心觉得——现在是统治大和
这一<RUBY text="····">军事行动</RUBY>的关键时刻。

　作为和平时期上流阶层的义务，为大众提供茶余饭后的
谈资，这种行为，要等到一切都结束后……
　是成功成为大和唯一的、绝对的统治者之后的事了。

　众多流血牺牲换来的结果。或者流血<RUBY text="····">仍在继续</RUBY>。
　……为了阻止这个结局，我和一条来到这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆転換
	SetVolume("@mbgm*", 2000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	ClearWaitAll(1000, 0);

}

..//ジャンプ指定
//次ファイル　"mb02_003.nss"



.//プロセス用======================================================

function IchijyouMonzetsu()
{
	CreateProcess("Ｐ一条悶絶", 5000, 0, 0, "IchijyouMonzetsuSet");
	SetAlias("Ｐ一条悶絶","Ｐ一条悶絶");
	Request("Ｐ一条悶絶", Start);
	Request("Ｐ一条悶絶", Disused);

}

function IchijyouMonzetsuSet()
{
//◆ずどーん
	CreateSound("PSE01a", SE, "sound/se/se人体_衝撃_瓦礫ぶつかる01");
	SetVolume("PSE01a", 0, 0, NULL);
	SetAlias("PSE01a", "PSE01a");
	Request("PSE01a", "Play");
	SetVolume("PSE01a", 0, 1000, null);
	Request("PSE01a", Disused);
	Shake("@絵演震", 600, 20, 0, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//◆ごろごろごろ
	CreateSound("PSE01b", SE, "sound/se/se戦闘_攻撃_人投げ込む");
	SetVolume("PSE01b", 0, 0, NULL);
	SetAlias("PSE01b", "PSE01b");
	Request("PSE01b", "Play");
	SetVolume("PSE01b", 0, 1000, null);
	Request("PSE01b", Disused);
	Shake("@絵演震", 600, 0, 20, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//◆どぎゃーん
	CreateSound("PSE01c", SE, "sound/se/se擬音_コミカル_爆発01");
	SetVolume("PSE01c", 0, 0, NULL);
	SetAlias("PSE01c", "PSE01c");
	Request("PSE01c", "Play");
	SetVolume("PSE01c", 0, 1000, null);
	Request("PSE01c", Disused);
	Shake("@絵演震", 600, 40, 40, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//◆ひひーん
	CreateSound("PSE01d", SE, "sound/se/se擬音_コミカル_馬鳴き声");
	SetVolume("PSE01d", 0, 0, NULL);
	SetAlias("PSE01d", "PSE01d");
	Request("PSE01d", "Play");
	SetVolume("PSE01d", 0, 1000, null);
	Request("PSE01d", Disused);
	Wait(1000);

//◆ぱからっぱからっ
	CreateSound("PSE01e", SE, "sound/se/se擬音_コミカル_馬蹄");
	SetVolume("PSE01e", 0, 0, NULL);
	SetAlias("PSE01e", "PSE01e");
	Request("PSE01e", "Play");
	SetVolume("PSE01e", 0, 1000, null);
	Request("PSE01e", Disused);

	WaitPlay("PSE01*", null);

}