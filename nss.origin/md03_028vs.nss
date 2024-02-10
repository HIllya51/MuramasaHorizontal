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

scene md03_028vs.nss_MAIN
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
	#bg056_建長寺三門前_03=true;
	#bg011_拘置所内_01a=true;
	#bg094_宮中庭_01=true;
	#ev226_景明ＶＳ黒瀬_a=true;
	#ev005_斬り割られた兜=true;
	#bg031_八幡宮境内_01=true;
	#bg052_湊斗家道場_01=true;
	#ev226_景明ＶＳ黒瀬_b=true;
	#bg058_曇空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_029vs.nss";

}

scene md03_028vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();




..//ジャンプ指定
//前ファイル　"md03_027vs.nss"

//◆景明

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm09", 0, 1000, true);
	CreateColorSP("黒幕１", 20000, "BLACK");
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	Delete("上背景");

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　另一边，茶茶丸似乎慌张起来了。
　我被突如其来的武者所压制，然后村正会趁机将我的
精神状态恢复到以前那样——在她看来现在我们似乎走
投无路了。

　这是无谓的担心。
　村正原本就不能操纵我的心。

　村正可以用同等的精神干涉能力消除银星号污染波造
成的心理影响——理论上是这样。
　然而实际上，村正不可能压制得住银星号的力量。没
有操纵者的当下就更不用说了。

　而且，银星号的精神污染明显具破坏性。
　将某物破坏得体无完肤和将被破坏的碎片恢复原状是
完全不同的——很明显后者的难度更高。

　村正一次也没能救下被银星号精神污染的人。
　不可能的。做不到的。

　当然，不知为何我所受污染较浅，以村正的干涉力或
许能使我复原。
　但——<k>果然还是不可能的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。拘置所内で

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg011_拘置所内_01a.jpg");

	EfRecoIn2(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　那时村正也没能成功。
　在拘留所，我向村正要求融和之时，村正拒绝了，并
宣言要凭借精神干涉能力将我变成道具——<k>但是没
能实行。

　因为是被禁止的。
　被无比沉重的勅命。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想。村正過去、帝との対面


	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg094_宮中庭_01.jpg");

	EfRecoIn2(300);

	SetNwC("cg/fw/nw帝.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md03/028vs0010b47">
「村正啊。朕命汝。
“波”之使用，以朕之名而禁。」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md03/028vs0020b47">
「无论有何理由，破此禁之时，汝已非朕之民，
而为逆贼也。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("絵回想100");
	EfRecoOut2(600,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　对于拥有中世纪价值观的人来说，君主的命令是绝对的。
　村正绝对无法使用被勅令严禁的精神干涉能力——这
就是结果。

　所以没必要担心我的心会有恢复原状的危险。
　村正只能尝试着恢复。无法做更进一步的事。

　不————
　
　就连尝试也是不可能的。

　因为，首先我是不会被他打倒的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆武者黒瀬

	StC(1000, @0, @0,"cg/st/3d黒瀬_立ち_抜刀.png");
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　——黑濑。
　装配着风格独特的优秀剑胄。本事也可说是一流。

　健壮、精锐、至强的武者。战场之王……
　以凡人肉体绝对赢不了的对手。

　就是说，我一定会输。
　这世间的道理就是如此。

　然而。<k>
　
　
　我为何如此不屑，认为自己不会输呢。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明ＶＳ黒瀬

//	Move("@StC*", 100, @-50, @0, Axl1, false);
	Fade("@StC*", 300, 0, null, true);

	CreateTextureSP("上敷き", 10000, Center, Middle, "cg/bg/bg056_建長寺三門前_03.jpg");
	CreateTextureSP("絵演大背景", 100, -300, -100, "cg/bg/bg056_建長寺三門前_03.jpg");
	CreateTextureSP("絵演大景明", 400, 300, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a2.png");
	CreateTextureSP("絵演大黒瀬", 600, 100, -300, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a1.png");
	CreateTextureSP("絵演大黒瀬ぼかし", 600, 100, -300, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a1.png");

	Request("絵演大背景", Smoothing);
	Request("絵演大景明", Smoothing);
	Request("絵演大黒瀬*", Smoothing);

//	Rotate("絵演大黒瀬*", 0, @0, @10, @0, null,true);
	Zoom("絵演大背景", 0, 1600, 1600, null, true);
	Zoom("絵演大景明", 0, 400, 400, null, true);
	Zoom("絵演大黒瀬*", 0, 1300, 1300, null, true);

	SetShade("絵演大背景", HEAVY);
	SetShade("絵演大黒瀬ぼかし", HEAVY);

	CreateMovie("煙動画", 6000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 3000, null, true);

//	Fade("絵演大景明", 1000, 1000, null, false);
//	Fade("絵演大黒瀬", 1000, 1000, null, false);
//	Fade("絵演大背景", 1000, 1000, null, false);

//	Rotate("絵演大黒瀬*", 7000, @0, @-10, @0, Axl2,false);
	Fade("絵演大黒瀬ぼかし", 7000, 0, Axl3, false);
	Zoom("絵演大景明", 7000, 450, 450, AxlDxl, false);
	Zoom("絵演大黒瀬*", 7000, 1100, 1100, AxlDxl, false);
	Move("絵演大景明", 7000, @450, @0, AxlDxl, false);
	Move("絵演大黒瀬*", 7000, @-500, @0, AxlDxl, false);
	Move("絵演大背景", 7000, @600, @0, AxlDxl, false);
	FadeDelete("上敷き", 2000, true);

	WaitKey(3000);
	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0030a00">
（呵……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵演", 1500, Center, Middle, "cg/ev/ev226_景明ＶＳ黒瀬_a.jpg");

	OnSE("se特殊_鎧_駆動音01", 1000);
	Zoom("絵演", 0, 1500, 1500, null, true);
	Fade("絵演", 400, 1000, null, false);
	Zoom("絵演", 1000, 1000, 1000, Dxl2, true);

	Wait(500);
	Delete("絵演大*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　将太刀高举至上段——不是武者式那种扛在肩上的上段。
而是要刺破苍穹般的大上段。
　只追求大威力的、单纯的太刀架势。

　以武者为对手，意味着什么呢。

　不管挥出多快的剑，都无法追上到神速的武者。
　不管挥出多强的剑，都无法击破比战车的正面
还强的武者装甲。

　这是令人一笑置之的幻想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明汚染_愉悦.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0040a00">
（呵呵呵）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　比如说兜割。
　将钢兜一刀<RUBY text="··">两断</RUBY>——

　做不到。
　做不到。
　做不到。

　不可能做到。
　绝对做不到。
　那种神技人类做不到。

　做不到!!
　不可能!!
　荒谬之极!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明汚染_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0050a00">
（哈——哈哈哈哈哈哈哈哈哈）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ
//◆割れた兜、明堯、光
//◆ＥＶ差分：黒瀬、突進
//◆唐竹割り一閃。しゅぱーん。

	SetVolume("@mbgm*", 300, 0, null);

	EfRecoIn1(18000,100);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/ev/ev005_斬り割られた兜.jpg");
	Delete("煙動画");
	EfRecoIn2(300);
	Wait(500);

	EfRecoIn1(18000,100);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("回想立ち絵", 1501, Center, InBottom, "cg/st/st署長_通常_制服.png");
	EfRecoIn2(300);
	Wait(500);

	EfRecoIn1(18000,100);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg052_湊斗家道場_01.jpg");
	CreateTextureSP("回想立ち絵", 1501, Center, InBottom, "cg/st/st光二年前_通常_私服.png");
	EfRecoIn2(300);
	Wait(500);

	EfRecoOut1(100);
	Delete("回想立ち絵");
	Delete("絵回想100");



//おがみ：カメラコマンド
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵演大背景", 100, 100, -100, "cg/bg/bg056_建長寺三門前_03.jpg");
	CreateTextureEX("カメラ１/絵演大景明", 400, 1100, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a2.png");
	CreateTextureEX("カメラ１/絵演大黒瀬", 600, -800, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_b1.png");
	CreateTextureEX("カメラ１/絵演大黒瀬２", 600, -400, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a1.png");
	CreateTextureEX("絵演", 1500, Center, Middle, "cg/ev/ev226_景明ＶＳ黒瀬_b.jpg");

	Request("カメラ１/絵演大背景", Smoothing);
	Request("カメラ１/絵演大景明", Smoothing);
	Request("カメラ１/絵演大黒瀬", Smoothing);

	Zoom("カメラ１/絵演大背景", 0, 2700, 2700, null, true);
	Zoom("カメラ１/絵演大景明", 0, 500, 500, null, true);

	SetShade("カメラ１/絵演大背景", HEAVY);
	SetBlur("カメラ１/絵演大黒瀬", true, 2, 500, 50, false);


	Zoom("絵演", 0, 2000, 2000, null, true);
	SetBlur("絵演", true, 2, 500, 100, false);

	CreateColorSPadd("絵色100", 1500, "WHITE");

	Fade("カメラ１/絵演大景明", 0, 1000, null, true);
	Fade("カメラ１/絵演大黒瀬２", 0, 1000, null, true);
	Fade("カメラ１/絵演大背景", 0, 1000, null, true);
	MoveCamera("@カメラ１", 0, 0, -200, @-150, null, true);


//おがみ：カメラ動き

	EfRecoOut2(100,true);

	Fade("絵色100", 100, 0, null, false);
	Wait(1000);

	OnSE("se戦闘_動作_空突進01",1000);

	Zoom("絵演", 800, 1000, 1000, Dxl2, false);
	Fade("絵演", 500, 1000, Axl2, false);

	Fade("カメラ１/絵演大黒瀬２", 200, 0., null, false);
	Fade("カメラ１/絵演大黒瀬", 150, 1000, null, false);
	Move("カメラ１/絵演大黒瀬", 500, @650, @150, Dxl1, false);
	Zoom("カメラ１/絵演大黒瀬", 500, 650, 650, Dxl1, false);
	MoveCamera("@カメラ１", 500, 500, -50, @100, Axl2, true);


	Delete("カメラ*");

//おがみ：カメラ動き終了

	CreateSE("SE01a","se擬音_回想_フラッシュバック01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEX("絵演覆", 20010, Center, Middle, "cg/ev/ev006_景明の狂相.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ev/ev006_景明の狂相.jpg");

	CreateColorSP("絵色黒", 150, "#000000");

	Zoom("絵演*", 0, 1100, 1100, null, true);
	Zoom("絵演覆", 2000, 2000, 2000, null, false);
	FadeFR3("絵演覆",0,500,200,@0,@0,30,null, false);
	Wait(50);
	FadeDelete("絵演覆", 150, false);
	FadeDelete("絵演", 300, true);

	Wait(1000);

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵色100", 0, 1000, null, true);
	DrawTransition("絵色100", 150, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	Delete("絵色黒");

	Delete("絵演");
	Wait(500);

//	SL_down(@0, @0,1000);
//	SL_downfade2(10);

	SetFwC("cg/fw/fw黒瀬武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0060b26">
「————」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0070b26">
「……啊……？」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0080b26">
「什——怎么可能!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血。ぶしゃー。

	SL_centerdam(@0,@0,1600);
	OnSE("se人体_血_血しぶき01",1000);
	CreateColorEX("赤幕１", 15000, "RED");
	Fade("赤幕１", 1500, 1000, null, false);
	SL_centerdamfade2(100);

	SetFwC("cg/fw/fw黒瀬武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0090b26">
「不——不。」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0100b26">
「不可能……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばた。
//◆bg056
	OnSE("se戦闘_衝撃_鎧転倒02",1000);

	WaitKey(1500);
	OnBG(100, "bg058_曇空a_01.jpg");
	FadeBG(0, true);
	FadeDelete("絵演",0,false);
	FadeDelete("赤幕１", 1000, true);

	SetFwC("cg/fw/fw景明汚染_愉悦.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0110a00">
「呵……
　呵呵，呵哈哈哈哈哈哈哈哈哈!!」

{	FwC("cg/fw/fw景明汚染_哄笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0120a00">
「哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　右腕自肘上被切断……
　如今反倒是自己失去了扬言要夺走的东西，武者黑濑
倒在了血泊中。

　可笑。
　不是黑濑。而是自己可笑。

　过去为了无心无我而烦闷不已的<RUBY text="我">景明</RUBY>实在很滑稽。
　
　啊啊——原来这么简单。

　消去杂念，将身魂尽数托付于一剑，容易至极！
　经由如此容易的工序，来完成<RUBY text="··">魔剑</RUBY>！

　仅仅这样就够了。
　啊啊没错。只是<RUBY text="··">这样</RUBY>就足够了。

　只保留对光的爱，其他一切全部忘记!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"md03_029vs.nss"