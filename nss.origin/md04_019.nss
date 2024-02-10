//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_019.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg007_若宮大路a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_020.nss";

}

scene md04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_018.nss"


//◆鎌倉


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm26", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

//◆村正
	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　果然还是没能接近普陀乐城。

　要在攻城的军队中见缝插针绝非易事。
　在不被守城军发现的情况下翻越城墙更是难于登天。

　趁着夜色潜入也是不可能的。
　且不说平时怎样，如今正当战乱之时，因为要警戒敌人
夜袭，城里守备比白天还要森严。

　说实话，实在束手无策。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0190010a01">
（……明明不是说丧气话的时候）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　以前祖父和母亲曾带着自己去过几次战场。
　所以多少明白战况。

　这座城即将被攻陷。

　趁着陷落之时的混乱应该能侵入城里吧。
　……只是侵入的话，自然很简单。

　但是，在战火中寻找特定的某个人肯定办不到。
　这无异于在狂涛翻腾的大海中捞针。

　必须在城池陷落之前想好对策。
　进城找到景明的对策。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
//◆進駐軍兵

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStL(0,true);

	OnBG(100, "bg007_若宮大路a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(500);

	StR(1000, @-50, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	StCR(1000, @150, @0, "cg/st/stＧＨＱ兵士_通常_制服.png");
	FadeStR(300, false);
	FadeStCR(300, true);

	SetNwC("cg/fw/nwＧＨＱ兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆「hey,dwarf! Let's play together」
//【ｅｔｃ／巡回兵Ａ】
<voice name="ｅｔｃ／巡回兵Ａ" class="その他男声" src="voice/md04/0190020e117">
「哟，虾夷大姐。
　跟我玩玩吧！」

{	NwC("cg/fw/nwＧＨＱ兵士Ｂ.png");}
//【ｅｔｃ／巡回兵Ｂ】
<voice name="ｅｔｃ／巡回兵Ｂ" class="その他男声" src="voice/md04/0190030e118">
「哈哈哈哈哈哈！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆兵士消す

	DeleteStCR(300,false);
	DeleteStR(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　外出管制已经没那么严了。
　允许回到自宅。如果有特别理由要外出的人必须向巡
逻的士兵说明情况，获得证明书……刚才的广播是这样
说的。

　这和他们正逐渐胜利不无关系。
　总之多亏了这点，城中行动也变得容易多了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0190040a01">
（感觉他们忘乎所以了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　回想方才擦肩而过的士兵。
　虽然完全听不懂他说的话，但从表情和语气上
可以明白大致的意思。

　大概是觉得胜利就在眼前，所以放松警惕了吧。
　没空管他们了。

　必须设法接近城堡——

　我在镰仓的街道上不停地奔跑着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0,true);

}

..//ジャンプ指定
//次ファイル　"md04_020.nss"