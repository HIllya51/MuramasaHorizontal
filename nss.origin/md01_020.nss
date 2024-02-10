//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_020.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg033_署長宅景明私室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_021.nss";

}

scene md01_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_019.nss"

//◆署長宅
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我向牧村女士打了招呼，便敲响了署长家的门。
　和平常一样，玄关被这个勤劳而优秀的家仆
用手打扫得一尘不染。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆部屋
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我走进分配给自己的一间房，随意坐下，
立刻将从八幡宫拿来的纸展开。
　然后开始默默思考。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200010a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200020a01">
《暂且先在这边安家吧。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200030a00">
「村正……
　嗯，就这样吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
	CreateSE("SE01","se特殊_鎧_駆動音01");
	StR(1000, @30, -300,"cg/st/3d村正蜘蛛_俯瞰.png");
	Zoom("@StR*", 0, 800, 800, null, true);
	Rotate("@StR*", 0, @180, @0, @0, null,true);
	Request("@StR*", Smoothing);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @30, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200040a01">
《宫大人拜托你做什么了？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200050a00">
「也就那样。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200060a01">
《哼。》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200070a00">
「…………
　该如何说明呢。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200080a01">
《……不用勉强说出来。
　不管知道与否，我要做的
都不会改变。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200090a01">
《将你所需要的力量全部准备好。
　这就是我唯一的使命。》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200100a00">
「是吗……
　果然，还是告诉你吧。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0200110a00">
「我也想要借助你的智慧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200120a01">
《是会让人烦恼的事情？》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200130a00">
「有点呢。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200140a01">
《……到底要你做什么？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200150a00">
「嗯……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200160a00">
「绕点圈子来说的话。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200170a01">
《你故意的吧。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0200180a00">
「据说作为武家栋梁的鹤冈八幡宫是鬼门之地。
　……要是<RUBY text="··">两次</RUBY>的话，声价也会长存不朽吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200190a01">
《……………………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0200200a01">
《……那么。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"md01_021.nss"