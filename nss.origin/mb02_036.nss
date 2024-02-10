//<continuation number="180">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_036.nss_MAIN
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
	#bg072_火災で倒壊した和風建築_03=true;
	#bg002_空b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_001.nss";

}

scene mb02_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_035.nss"

//◆景明サイド
//◆騎航
//◆着陸
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵演震", 500, Center, Middle, "cg/bg/bg072_火災で倒壊した和風建築_03.jpg");
	Fade("絵演震", 0, 750, null, true);
	OnBG(100,"bg072_火災で倒壊した和風建築_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 600, null, true);
	Wait(100);
	FadeDelete("絵色白", 600, true);

	CreateSE("SE01b","se戦闘_動作_鎧_着地01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Wait(1400);
	Shake("絵演震", 300, 0, 4, 0, 0, 1000, DxlAuto, true);
	Delete("絵演震");

	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　化为灰烬的沿边小城中心。
　可燃物燃尽后火炎渐退，在那之中——看到了她。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360010a00">
「一条！」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0360020a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,750,null,false);

	SoundPlay("@mbgm32",3000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　抱起瘫倒的少女。
　看了她一眼……我不由自主地移开了视线。

　惨烈——
　岂止惨烈。

　几乎全身<RUBY text="··">炭化</RUBY>。
　不管怎么看，都觉得她已经死了。

　但是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360030a00">
「一条……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360040a00">
「一条!!」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0360050a02">
「……啊……」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0360060a02">
「凑斗，先生……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　透过面甲可以看到她微睁双眼。
　昭示着仍然残留的生命力，尽管虚弱无比。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360070a00">
「发生了什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　一条的手指微动。
　带着痉挛。

　她指着什么。
　
　…………铁屑？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0360080a02">
「……和游佐童心，
　战斗。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360090a00">
「什么？」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0360100a02">
「……把他杀了……」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360110a00">
「……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0360120a02">
「是我，杀了他。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　说到这里，
　便没有了声音。

　手指再次无力地垂下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360130a00">
「一条！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0360140a01">
《没事。
　剑胄维系着生命……应该不会死。》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360150a00">
「……是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　得到了最低限度的安心，呼出一口气。
　然后，看向身旁。

　铁屑，除了这个词再无别的可以形容。
　……古河公方游佐童心——这就是他的末路吗。

　仔细观察的确可以看出，这是一堆剑胄的残骸。
　还有肉——人的骨肉也混于其中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360160a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/0360170a01">
《主君。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0360180a00">
「啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 2000, Center, Middle, "cg/bg/bg002_空b_03.jpg");
	Fade("絵演背景", 2000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　听到催促，我站起了身。
　我用完好的右手抱起了奄奄一息的一条，半毁的剑胄
包裹着她的身体。

　这里是敌阵。必须争分夺秒逃脱，直至安全之地。
　
　但是……我浪费了珍贵的时间，自食其果。

　面对火炎映衬下赤红一片的天空，叹息。

　——事态不容乐观。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




//◆Ｂパート完
//◆カットインぽくロゴ？

/*
//あきゅん「演出：超仮仮」
	ClearWaitAll(2000, 3000);
	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/sys/Telop/lg_村正.jpg");
	CreateColorSP("絵色黒地", 100, "#000000");

	Wait(100);

	FadeDelete("絵色白", 1000, true);

	WaitKey(2000);

	ClearWaitAll(3000, 3000);
*/

	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,1);

	ClearWaitAll(3000, 2000);

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mb03_001.nss"