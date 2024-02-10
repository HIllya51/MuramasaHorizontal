//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_005.nss_MAIN
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
	#bg066_普陀楽城内のどか_03=true;
	#ev926_野太刀全容=true;
	#ev237_空に昇った金神_c=true;
	#bg106_富士山遠望a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_006.nss";

}

scene md05_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_004end.nss"


//●クリア
//◆元の場所


	PrintBG("上背景", 30000);
	CreateColorSPadd("白", 15000, "WHITE");

	OnBG(100, "bg066_普陀楽城内のどか_03.jpg");
	FadeBG(0, true);
	OnSE("se特殊_鎧_装着03", 1000);

	StR(1000, @0, @250, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);


	Delete("上背景");
	FadeDelete("白", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050010a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050020a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——回来了。
　
　不，原本从最开始我们的身体就
丝毫未动吧。

　总之，平安无事。
　我保持住了自我，村正装甲的白银色
也渐渐褪去。

　然后……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050030a01">
《主君，这个！》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050040a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆野太刀（後期）
//◆現実の虎徹を元にデザイン。特に刃紋。資料有り。

	CreateTextureEX("のだち", 4000, @0, @0, "cg/ev/ev926_野太刀全容.jpg");
	Fade("のだち", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那里有一把巨大的太刀。

　是野太刀。
　遗失已久的，村正的野太刀！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("のだち",1000,true);

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050050a00">
「终于回到我们手里了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050060a01">
《嗯！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050070a01">
《……？但是，好像有些奇怪……？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050080a00">
「奇怪？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050090a01">
《这个，和之前的有些许不同吧？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　听她如此一说，也有种形状似乎改变了的感觉。
　那是一种能够明确感知到的差异。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050100a01">
《是什么呢？
　是因为混有银星号的力量的缘故吗……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050110a01">
《不，是除此之外的其他什么——》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050120a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050130a00">
「对了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我拿起野太刀。
　视线在弯月形的刀身上游走。

　朴素的念珠状的刀刃纹路，
不知为何令人想起了某人的容貌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050140a00">
「这不是弱体化了吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050150a01">
《那个……嗯。
　倒不如说正相反。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050160a00">
「那就好。
　别过于担心了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050170a01">
《……既然主君那样说了……》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050180a00">
「先不说那个，我们来给它命名吧。
　因为它也算是转世重生了嘛。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0050190a01">
《名字……？
　主君有何想法？》

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050200a00">
「嗯。
　若是你无所谓的话——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一个名字于心中涌现。
　就那样自然而然地吐露出口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0050210a00">
「虎彻。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 2000, 0, null);
	ClearWaitAll(2000, 2000);


//◆謎天体、動く。降下
//◆富士山遠望·夜
//◆ホワイトアウト
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 16000, "#000000");
	Delete("上背景");

	CreateSE("ゴゴゴ", "se特殊_その他_渦巻く力");
	MusicStart("ゴゴゴ", 0, 1000, 0, 1000, null,true);


	CreateTextureEX("謎天体", 15000, @0, @0, "cg/ev/ev237_空に昇った金神_c.jpg");
	Fade("謎天体", 0, 1000, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");

	WaitKey(1500);


	OnBG(100, "bg106_富士山遠望a_03.jpg");
	FadeBG(0, true);
	
	FadeDelete("謎天体",1000,true);

	WaitKey(1500);

	OnSE("se戦闘_破壊_爆発04", 1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

	SetVolume("SE*", 3000, 0, null);
	SetVolume("ゴゴゴ", 3000, 0, null);
	Wait(3000);

}

..//ジャンプ指定
//次ファイル　"md05_006.nss"