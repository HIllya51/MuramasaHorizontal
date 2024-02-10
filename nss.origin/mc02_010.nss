//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_010.nss_MAIN
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
	#bg028_横浜ＧＨＱ基地_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_ウォルフ=true;

	$PreGameName = $GameName;

	$GameName = "mc02_011.nss";

}

scene mc02_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_009.nss"


//◆空
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	
	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	
	WaitKey(1000);
//◆昼→夕→夜
	CreateTextureSP("絵背景11", 9, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	FadeDelete("絵背景10",1000,true);
	WaitKey(1000);
	CreateTextureSP("絵背景12", 8, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	FadeDelete("絵背景11",1000,true);
	WaitKey(1000);
//◆横浜基地
	CreateTextureSP("絵背景13", 7, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	FadeDelete("絵背景12",1000,true);
//◆ウォルフ
	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fwウォルフ_通常.png");

	#voice_on_ウォルフ=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100010a13">
「哎呀……这里也没有……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100020a13">
「到底去哪里了呀。
　真是个爱给人添麻烦的“少女”。」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100030a13">
「等我抓到她，得脱下她的内裤，
给她剃阴毛……」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100040a07">
「别剃别剃。
　虽然我不知道你说的是谁。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	StL(1000, @-50, @0, "cg/st/st茶々丸_通常_私服.png");
	Move("@StL*", 300, @50, @0, Dxl1, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100050a13">
「哎呀哎呀。
我正在寻找“少女”，
没想到竟巧遇另一位少女了。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100060a13">
「你总是神出鬼没呀。
　把内裤脱掉吧？」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100070a07">
「做梦。」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100080a13">
「又来了……人类这种生物总是如此。
　他们坚信只有自己是正确的，坚信
其他所有人都是愚蠢的，怀疑神明、嘲笑真理……
而且还不脱内裤。这是为什么!?」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100090a07">
「不。我说。
　既然你那么想脱，就脱自己的呗。」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100100a13">
「一个邋遢男脱掉内裤有什么意思。
　你是笨蛋吗？」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100110a07">
「哇……你在这种奇怪的地方就表现得很正常嘛。
　说句实话，真想让你去死三次，
不过现在还是算了。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100120a07">
「我是来通知你的啦。
“公主”将在五天后醒来。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100130a13">
「……噢？」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100140a13">
「你确定吗？」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100150a07">
「以我的眼力，顶多也就会看错
一八〇度左右。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100160a13">
「那就没问题了。」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100170a07">
「……这家伙居然对别人的装傻视而不见……
　明明屡次让别人吐他的槽……」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100180a13">
「你说谁把阴茎插进你的性器官里了？」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100190a07">
「我才没这么说！」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100200a07">
「哇啊……不小心吐了个毫无特色
的槽——!!」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100210a13">
「吵死了。你白痴吗。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150,0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100220a07">
「……我被欺负了……？
　我被欺负了吧？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100230a13">
「那，到时，“公主”会被带进
普陀乐城吧？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100240a07">
「嗯。
　这方面我已经安排好了。」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100250a13">
「这很难重头来过。
　希望你别出现失误。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100260a13">
「你确定吗？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100270a07">
「我确定。」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100280a13">
「内裤呢？ 」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100290a07">
「穿着。」


{	FwC("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100300a13">
「脱了它！」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100310a07">
「不！」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100320a13">
「我想看少女纯洁的下半身！」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100330a07">
「闭嘴!!」


//◆Is someone there?
{	NwC("cg/fw/nw警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100340e119">
「……有谁在那里！」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100350a07">
「————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ひゅん。茶々丸消え。
	OnSE("se人体_動作_跳躍01", 1000);
	DrawDelete("@StL*", 300, 100, "slide_01_01_0", false);

	WaitKey(1000);

	OnSE("se人体_足音_走る01_L", 1000);
	WaitKey(2000);

//◆入れ替わりにＧＨＱ兵士
	StL(1000, @60, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	Move("@StL*", 300, @-60, @0, Dxl2, false);
	FadeStL(300, true);
	SetVolume("@OnSE*", 1000, 0, null);

//◆横書き

	SetFwH("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100360a13">
「啊，失礼。
　我只是想欣赏一会儿星星而已。
妨碍到你工作了吗？」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100370e119">
「啊……万，万分抱歉！
　原来是教授啊。」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100380a13">
「没事没事没事。
　别在意，回到岗位上吧。」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100390e119">
「是！」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100400a13">
「啊，等等……」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100410e119">
「什么事？」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100420a13">
「你有没有脱掉内裤的少女？
　我现在手头紧缺。」


{	NwH("cg/fw/ny警備兵.png");}
//【ｅｔｃ／巡回兵士】
<voice name="ｅｔｃ／巡回兵士" class="その他男声" src="voice/mc02/0100430e119">
「不，没有……对不起。
　我告辞了。」


</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//―――――――――――――――――――――――――――――

//◆去る
	DeleteStL(300, false);
	OnSE("se人体_足音_歩く01_L", 1000);
	WaitKey(2000);
	SetVolume("@OnSE*", 1000, 0, null);

//◆縦書き
	StL(1000, @0, @40, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	Move("@StL*", 300, @0, @-40, DxlAuto, true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100440a07">
「……呼……」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100450a13">
「都怪你愚蠢的失态，害我陷入了小危机。
　你给我注意着点哦？」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100460a07">
「我也懒得生你的气了……」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100470a07">
「话说回来，你英语说得真好啊。大和语也
挺不错。
　你真的是德国人吗？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100480a13">
「德国的确是我的故乡，但周游世界的时间
远比在那里生活的时间要长。
　祖国就是个摆设。」


{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100490a13">
「要我说的话，脱掉内裤的少女所居住的国家才是
我的祖国——」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100500a07">
「地球上没有你的立足之地哦。」


{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100510a13">
「不过考虑到当今的国际形式和我的专业，
轻易就能就明白，熟练掌握英语与大和语，
是在情理之中的。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100520a07">
「这样啊。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100530a13">
「不过你的能力还真方便。
　能自由自在地突然出现，
猛然消失。」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100540a13">
「我也去修行一下，是不是也能收到一些成效？」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100550a07">
「天知道？　也许能吧？
　总之先做一万个俯卧撑吧。」


{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100560a13">
「你当真！　我真做了哦!?
　如果没能就此学会，我就脱了你内裤!!」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100570a07">
「呜哇……对不起！　我撒谎了！
　你估计会说做就做，而且我大概也无法抵抗，
所以请你放过我吧！」


{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100580a13">
「啧，真拿你没辙。
　这次就止步于视奸好了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――


	Shake("@StL*", 500, 5, 0, 0, 0, 300, null, true);

	SetFwC("cg/fw/fw茶々丸_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100590a07">
「呜呜，不要啦。
　被粘人的视线缠着，很恶心啦。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150,0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100600a13">
「呼，满足了。
　计划已经完善好了吧？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100610a07">
「我才想问呢。
　你已经准备好<RUBY text="··">降落</RUBY>了吗？」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100620a13">
「不必担心。
　卡农中佐会行动的。也就是说维罗
少将也会参加，ＧＨＱ也是一份子。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100630a07">
「这一环套一环的组织真是太棒了。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100640a13">
「为我伟大的友人——卡农君喝彩。
　我可以为了他，动手脱内裤吧？」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100650a07">
「你还是要脱吗!?」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100660a13">
「……开玩笑的，你多少理解一下好吗？
　所以我才说大和人太无趣。」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100670a07">
「……对不起，诸位国民……
　我们被这种变态看扁了。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100680a13">
「我会将“和平实现装置”在预定好的时刻
发送出去。
　它与“公主”的邂逅会开辟出我们
所追求的道路吧。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100690a07">
「……嗯。」


{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0100700a13">
「谨为黄金的黎明。
　同志茶茶丸。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc02/0100710a07">
「谨为黄金的黎明。
　同志沃尔夫。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc02_011.nss"