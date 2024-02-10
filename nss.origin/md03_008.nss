//<continuation number="920">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_008.nss_MAIN
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
	#bg001_空c_03=true;
	#bg088_高級ホテルのホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_009.nss";

}

scene md03_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_007.nss"


//◆夜


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg001_空c_03.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　日落之后，茶茶丸带我来到城外。
　她自己开着车，穿过市区，朝海岸驶去。

　车最终停在了鎌仓近郊相当有名的
高级宾馆的停车场中。
　虽然现在的我和茶茶丸都是私服出行，但这种地方，
或许穿着军装反而更没有违和感。

　当然，避免穿着一眼就能看出地位姓名的军装——
尤其是茶茶丸——是有理由的。

　从无人使用的后门进入，乘上电梯。

　电梯上升——去往最高层。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ギー。大きな扉が重々しく開く感じ
//◆最上階ホール
//◆ウォルフ

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg088_高級ホテルのホール_01b.jpg");
	FadeBG(1000, true);
	OnSE("se日常_建物_扉開く09", 1000);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, true);

//	OnSE("se擬音_コミカル_爆発01", 1000);

/*
	CreateVOICE("ウォルフ","md03/0080010a13");
	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	MusicStart("ウォルフ",0,1000,0,1000,null,false);
	CreateText("voice01",30411,Center,inherit,auto,auto,"「パンツ!!」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @0, @10, null, false);

	SetBacklog("「パンツ!!」", "voice/md03/0080010a13", ウォルフ);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fwウォルフ_絶叫.png");

	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg088_高級ホテルのホール_01b.jpg");

	Move("絵st200", 0, @0, @0, AxlDxl, false);

	Shake("絵st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("絵背景100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("顔01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);
*/

	SetFwC("cg/fw/fwウォルフ_絶叫.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆大フォントで
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080010a13">
<FONT size=40>「内裤!!」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆蹴り。どが。ウォルフ消去

	OnSE("se戦闘_攻撃_キック04", 1000);
	CreateTextureSP("蹴り", 15000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	DeleteStR(300,false);
	FadeDelete("蹴り",300,true);

	CreatePlainEX("絵板写", 16000);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 300, 0, 30, 0, 0, 1000, DxlAuto, false);

	FadeDelete("絵板写", 500, false);

	StCR(1000, @0, @0,"cg/st/st景明汚染_通常_私服.png");


	SetFwC("cg/fw/fwウォルフ_絶叫.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080020a13">
「唧唧咕!?」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080030a07">
「……这家伙是……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080040a00">
「茶茶丸。」

{	FadeStCR(300,false);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080050a00">
「你想让我见的人该不会是<RUBY text="···">这家伙</RUBY>吧。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080060a07">
「呃、呃……那个……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080070a00">
「……要真是这样，就太可悲了……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080080a00">
「不是我，而是对你来说。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆指ぽきぽき
	Move("@StMR*", 6000, 220, @0, null, false);
	DeleteStCR(2000,false);

	OnSE("se人体_体_指を鳴らす", 1000);

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080090a07">
「等等等等等等～～～!!
　Ｎｏ　ｍｏｒｅ制裁!!
　Ｎｏ　ｍｏｒｅ私刑!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080100a07">
「不是啦！　这家伙虽然是个白痴！
　却不光是个白痴!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080110a00">
「哦……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080120a07">
「第一印象恐怕是能想象到的范围里
最差劲的了，但是请忘掉！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080130a00">
「好吧。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080140a00">
「这男人若不是白痴他是什么，
　你就直说吧。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080150a07">
「变态！」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080160a00">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01", 1000);

	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我从茶茶丸背后伸出双臂绕着她的脖子，
锁住她的下颚。
　这是错颈骨的姿势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080170a07">
「呀～～～～～～～!!
　我说得太直白了～～～!!」

{	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, false);
	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080180a13">
「你在做什么呢。
　刚一出场性命就陷入危机了。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080190a07">
「你以为是谁害的!?」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080200a13">
「大概是因为愚蠢的你做了愚蠢的事吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080210a00">
「正是如此。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080220a13">
「呵，果然啊。
　她虽然是我的良友，不过有个缺点，就是经
常没有正当理由就责怪他人。」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080230a13">
「也不脱内裤……」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080240a00">
「缺点还是改正的好。
　内裤就算了。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080250a13">
「我觉得这是身为朋友的义务。
　我想热忱地守望着她，不断对她忠告。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080260a00">
「嗯。正确的应对方法。」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080270a00">
「有朋友照顾真好啊，茶茶丸。」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080280a13">
「就是啊，茶茶丸君。」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080290a07">
「呜……呜呜……嘤呜呜呜……」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080300a13">
「你怎么真哭了？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080310a07">
「因为我打心底想哭!!
　可恶，最近总觉得全世界都和我
过不去～～～!!」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080320a13">
「哎呀哎呀……
　真是个让人担心的不脱内裤少女。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080330a00">
「我同意。
　话说回来，内裤变态男。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080340a13">
「什么事？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080350a00">
「这里接下来有什么集会吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我把茶茶丸丢在一边，向那男人询问。
　最终在问出详情之前就到这里来了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080360a00">
「我相信应该不会是讨论穿不穿
内裤与健康的关系的集会吧——」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080370a13">
「嗯～
　虽不中亦不远矣……吧。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080380a00">
「…………」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080390a07">
「才不是！　既不对也不接近！
　所以拜托了请不要用那种杀意满满的
眼神瞅着我呀哥哥!!」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080400a13">
「如果有一群人在讨论脱内裤时先脱右腿还是
左腿的话，你会觉得滑稽吗？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080410a00">
「会。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080420a13">
「如果有基督教徒激烈地争论画十字时该以什么
顺序画的话，你还是会觉得滑稽吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080430a00">
「……」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080440a13">
「很滑稽哦。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080450a13">
「将本不存在的价值……
　作为存在之物而尊崇，甚至赌上其正当性
与他人相争。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080460a13">
「很滑稽。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080470a13">
「……但是啊。
　这才正是学术性活动哦？」

{	FwC("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080480a13">
「除了智慧之外还有什么能做到如此……？」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080490a13">
「无论是谁都能追随真实……就算是毫无智慧
的野兽。
　但是赋予虚构等同于真实的价值并对其俯首
叩拜，野兽做得到吗？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080500a00">
「这是宗教论吗？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080510a13">
「没错。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080520a13">
「也有人说宗教愚民，这都是误解。
　宗教才是最高的智慧活动的产物。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080530a13">
「宗教可以说是人类史上
最有人类风格的发明。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080540a00">
「原来如此。
　宗教是智慧游戏……吗？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080550a00">
「真滑稽。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080560a13">
「确实如此。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080570a00">
「但是，这样想来也不错。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080580a13">
「是吧？」

//◆微笑
{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080590a00">
「呵……」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080600a13">
「哈哈哈！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080610a07">
「……为什么你们能谈得来？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080620a00">
「那么，这里是在进行宗教争论还是
别的什么？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080630a13">
「这个啊。不是争论。
　已经得出结论了……」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080640a13">
「是商议如何在基于该结论而行动。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080650a00">
「什么结论？」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080660a13">
「亵渎神。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080670a13">
「将身为至尊的虚构、不可侵犯的希望而存在
的神……引至地上。
　让祂<RUBY text="·····">像怪物一样</RUBY>实际存在。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080680a13">
「凑斗景明同志。
　招呼打晚了……我会将今日遇到你
作为一生的幸事。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080690a00">
「…………
　还没请教你姓名。」

{	FwC("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080700a13">
「沃尔夫。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080710a00">
「沃尔夫……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　<RUBY text="ＷＯＬＦ">沃尔夫</RUBY>。
　这名字最近在哪看到过————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080720a13">
「你也可以叫我教授。
　……哦，这不是巴尔特罗米欧吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆常闇
	StCL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStCL(1000, true);

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080730b37">
「今晚真是良宵啊。
　沃尔夫教授。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080740b37">
「欢迎凑斗大人光临此地。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0080750a00">
「……巴尔特罗米欧？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080760b37">
「是教名。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　<RUBY text="Ｃｈｒｉｓｔｉａｎ　Ｎａｍｅ">教名</RUBY>？
　六波罗理应已将基督教列为禁教了啊……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080770a13">
「你来了就说明差不多该开始了吧。」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080780b37">
「是。
　诸位，集会即将开始。」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080790a13">
「是吗是吗。
　那么……那边的女士是？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　刚刚见面的沃尔夫教授看着今天中午才刚认识的柳生
常暗斋——的背后，这样问道。
　我也在意同样的问题。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆桜子

	StL(1000, @100, @0, "cg/st/st桜子_通常_私服a.png");
	FadeStL(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　那是位看来是二十岁左右的女性。
　容貌清秀……却给人忧郁的印象。

　瞳眸很阴郁。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【桜子】
<voice name="桜子" class="桜子" src="voice/md03/0080800b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一副心不在焉的模样。
　无论对我还是对教授，都没有半点关注。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080810b37">
「这是本次新参加的成员。
　和凑斗大人一样。」

{	FwC("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080820a13">
「哦。
　那么今天是迎来了两名新同伴吗？」

{	FwC("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md03/0080830a13">
「多辉煌的日子啊！」

{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/md03/0080840b28">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080850a07">
「啊，常暗。你来了。
　太好了。我有话要说。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080860b37">
「什么事？　堀越中将大人。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080870a07">
「白天见你之后，
　马上就从堀越传来消息——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　茶茶丸走到常暗斋身边，低语了几句话。

　柳生默默地听完。
　片刻之后，他点点头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080880b37">
「……是这样吗。
　放任不管的确危险。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080890a07">
「我明天必须去篠川。
　所以就想拜托你……」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080900b37">
「请放心交给我。
　我会选出可信之人，派去调查的。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0080910a07">
「帮大忙了。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0080920b37">
「区区小事何足挂齿。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　就在常暗斋微笑之时——
　灯光熄灭了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se日常_機械_スイッチON", 1000);
	SetVolume("@mbgm*", 1000, 0, null);


//◆光量低下。薄暗く

	DeleteStA(1000,false);
	CreateColorEX("黒", 5000, "BLACK");
	Fade("黒", 1000, 700, null, true);

}

..//ジャンプ指定
//次ファイル　"md03_009.nss"