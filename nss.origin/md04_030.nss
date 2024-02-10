//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_030.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;
	#bg033_普陀楽城宿舎_01=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_031.nss";

}

scene md04_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_029.nss"


//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFont("@黑体", 30, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("字幕01",30411,Center,inherit,auto,auto,"一二月四日");
	Fade("字幕01", 0, 0, null, true);
	Request("字幕01",NoLog);
	Request("字幕01",PushText);
	Rotate("字幕01", 0, @0, @0, 90, null, false);
	Move("字幕01", 0, @300, @10, null, false);
	SetBacklog("一二月四日", null, null);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg103_普陀楽城外郭藤沢方面_01l.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 800, 800, null, true);

	Move("絵背景100", 8000, @100, @50, null, false);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(500);

	Fade("字幕*", 300, 1000, null, true);
	WaitKey(3000);
	Fade("字幕*", 300, 0, null, true);


//おがみ：↓前スクリプトから移動
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
　　　　　　　　　一二月四日

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

*/
	FadeDelete("絵背景100", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　最后的清晨到来了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の部屋。bg033b_昼
	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　走了无数遍，见惯了的房间。
　但，这是最后一次了。

　绝对，不可能再到这里来。
　无论今天会以怎样的形式终结。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆病床の光。覚醒中
	CreateTextureEX("光", 15000, @0, @0, "cg/ev/ev128_病床の光_g01.jpg");
	Fade("光", 1000, 1000, null, true);
	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　光睡着——
　不，她醒着。

　今天是原来的、真正的光。
　拥有逐渐腐朽的肉体，以及比肉体更早崩溃的精神
——我最后的家人。

　她终于睡着了。
　心深深地下沉，落到梦的底部，显露出另一个自己。

　银星号。

　最强的凑斗光。
　最纯粹的凑斗光。

　凑斗光愿望的结晶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300010a00">
（愿望）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　————我的愿望关乎光的性命。

　怎样的形式也好，怎样的手段也好。
　不想让她死去。

　不管怎样，不想让她死去。
　想让她活在这个世界上。

　无论牺牲任何东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300020a00">
（神吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　引出地底的“神”，让其与光结合。

　我仍然半信半疑。
　不，一信九疑才对。

　但既然只有如此细微的一丝可能性能够推翻光死亡
的命运的话，我会毫不犹豫地赌上一切。
　赌上我自己的一切。赌上全世界。

　无论谁抗拒，谁否定。
　我都会竭尽全力去夺过来，放上赌盘。

　集齐必要的筹码，转动召唤神的轮盘。

　这是不可饶恕的事吧。
　为了自己的欲望而剥夺他人的命运……并非人类
应有的行为。

　人类的话，是无法办到的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300030a00">
（并非人类）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　现在的我只不过是一把剑。

　带着唯一的使命，
　没有其他阻碍的不纯之物。

　并非人类，只是把剑。
　也可庆幸。

　今日之事，无论多么无情……
　我都无需迷惑。

　无需叹息。
　无需悲伤。

　一切迷惑叹息以及悲伤皆已抛弃。
　那“卵”，村正二世的污染波使我如此。

　我是剑。

　是魔剑。

　以对凑斗光的爱为名的——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ

	EfRecoIn1(18000,600);
	Delete("光");
	CreateColorSP("絵回想0", 2001, "BLACK");
	CreateTextureSPadd("絵回想1", 2002, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureSPadd("絵回想2", 2003, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw署長_哀愁.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【署長】
<voice name="署長" class="署長" src="voice/md04/0300040a11">
「那……不是爱……」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0300050a11">
「————是诅咒————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	
	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　甩开瞬间的晕眩。

　杂念？
　不，错觉吧。

　因为现在的我没有不纯之物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300060a00">
（走吧……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　开始吧。

　朝着直路前进吧。
　毫不迷惘。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆廊下

	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300070e247">
「中佐大人！
　原来您到这里来了……」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300080e247">
「军议即将开始。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300090a00">
「是吗？
　……你先去吧。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300100e247">
「您去哪？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0300110a00">
「去厨房。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0300120e247">
「……厨房？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_031.nss"