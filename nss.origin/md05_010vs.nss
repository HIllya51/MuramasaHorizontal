//<continuation number="1380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md05_010vs.nss_MAIN
{

	

	//CP_AllSet("村正");

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
	#ev241_森で発光する金神_a=true;
	#ev241_森で発光する金神_b=true;
	#ev241_森で発光する金神_c=true;
	#bg204_横旋回背景_02=true;
	#bg202_旋回演出背景山_02=true;
	#ev242_金神激しく発光_b=true;
	#ev242_金神激しく発光_c=true;
	#ev242_金神激しく発光_e=true;
	#ev243_回避機動をとる村正_b=true;
	#bg001_空a_02=true;
	#bg204_横旋回背景_01=true;
	#ev929_村正重力増幅斬=true;
	#bg202_旋回演出背景山a_02=true;
	#ev241_森で発光する金神_d=true;
	#ev241_森で発光する金神_e=true;
	#bg107_富士山頂火口b_00=true;
	#bg201_旋回演出背景市街地_02=true;
	#ev924_銀星号飢餓虚空魔王星=true;
	#ev238_地球と太陽と月と金神_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_010vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_009.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆戦闘開始
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,716);
	CP_IHPChange(0,10,null,false);

	MyTr_Count(0,557);
	CP_SpeedChange(0,548,null,false);

	CP_PowerChange(0,1000,null,false);

	CP_HighChange(0,2981,null,false);
	CP_AziChange(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	//▼雲正面
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	FrameShake();
	CreateTextureSP("絵空背景", 110, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	MoveFFP1("@絵空背景",20000);

	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

//◆村正、騎航

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　后方，激战似乎已然展开。
　就连空气都在震颤，那震动甚至传到了已经装甲
化的我的皮肤。

　甩开附着的不明物，我冲向天空。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆富士山頂へ
	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);

	SetVolume("SEL*", 10000, 0, null);

	CreateTextureSP("絵空背景弐", 100, Center, InTop, "cg/bg/resize/bg106_富士山遠望b_00l.jpg");

	//▼雲消去
	CloudZoomFade(600,false);

	Move("絵空背景弐", 800, @0, @-100, DxlAuto, false);

	Fade("絵空背景", 300, 0, null, false);
	Move("絵空背景", 300, @0, @200, null, false);
	Wait(300);
	MoveFFP1stop();
	Delete("絵空背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　抵达山顶。
　至上方盘旋一圈，我将<RUBY text="··">它的</RUBY>全貌尽收眼底。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆金神
//◆水晶の立体森林？　畸形ジャングルジム？
//◆つーか工場萌えの人が喜ぶ工場っぽい絵図？
//◆村正との対比で神のでかさを示す
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",3000,750,0,500,null,true);

	CreateTextureEX("絵ＥＶ０", 18050, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("絵ＥＶ０", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureEX("絵ＥＶ", 18100, Center, InTop, "cg/ev/ev241_森で発光する金神_a.jpg");

	Fade("絵ＥＶ", 1000, 1000, null, true);
	Delete("絵ＥＶ０");

	WaitKey(1000);
	Cockpit_AllFade0();

	CreateTextureSP("絵ＥＶ２", 18000, Center, InTop, "cg/ev/ev241_森で発光する金神_b.jpg");
	Move("絵ＥＶ*", 3000, @0, -340, null, false);

	Wait(2800);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,500,0,1000,DxlAuto,false);
	FadeDelete("絵ＥＶ", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0010a01">
《……水晶森林……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　村正的低语，很接近眼前的现实。
　半透明的柱子错综复杂地排列形成的这个
立体——要说是森林也确实可以如此认为。

　但是并没有扎入地下的根系而是漂浮于空中这一点，
证明了这绝不是植被构成的森林。
　我想起了帆船模型。未完成之时，那剥离的模型骨架
与眼前的景象从某种程度来说很类似。

　然而，这只是光从形状上来说。
　倘若花点时间作进一步观察，会想到的东西
便截然不同了。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆発光。稼動音
	CreateSE("SE01","se特殊_その他_神起動開始_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateSE("SE01a","se特殊_その他_神再生");
	MusicStart("SE01a",0,1000,0,2000,null,false);

	CreateTextureSP("絵ＥＶ２", 17000, Center, InTop, "cg/ev/ev241_森で発光する金神_c.jpg");
	CreateTextureSPadd("絵ＥＶ２覆", 17010, Center, InTop, "cg/ev/ev241_森で発光する金神_c.jpg");
	SetVertex("絵ＥＶ２覆", 790, 160);
	Zoom("絵ＥＶ２覆", 1200, 1100, 1100, Dxl2, false);
	FadeDelete("絵色白", 600, true);
	Wait(300);
	FadeDelete("絵ＥＶ２覆", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……那是在<RUBY text="··">运转</RUBY>。

　听起来像是洞穴深处的野兽在磨牙般怪异的
重响。或者说是用铁锯在大理石上切割的声响。
　与那个声音步调一致，“森林”随之变动。

　枝条一分为二。
　其一再连接上另外的枝条。
　相连的枝条表面有瘤状物快速移动着。

　其他地方的枝条缩回。
　散开的几枝从末端开始收束成一体，
回到主干——却又伸展出另外的形状。

　那个形态使我联想到了巨大的机械，甚至是工厂。


　…………周围却未能发现类似银星号的踪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 5000, 500, null);
	SetVolume("SE01", 5000, 0, null);

	CreatePlainSP("絵板写", 19000);
	Wait(1);
	CreateTextureSP("絵演金", 17100, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	CreateTextureEXadd("絵演金覆", 17110, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("絵演金覆", 0, 500, null, true);
	FadeDelete("絵板写", 500, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0020a00">
「那就是“神”吗……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0030a01">
《……嗯……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0040a01">
《…………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0050a00">
「……？　村正，怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　对于村正肯定的回答我内心涌上复杂的感觉，
但我还是接下去问道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0060a01">
《……那个可能是<RUBY text="··">真神</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0070a01">
《我们的——》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0080a00">
「……你觉得是金神？
　是它吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　作为锻造之神而在以虾夷为中心
的地区拥有着广泛信仰的那个名字。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0090a01">
《嗯。
　虽然很难置信……
只不过茶茶丸的确是这么说过……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0100a01">
《不过如今亲眼一见，就再不存疑了。
　毫无疑问那就是……<RUBY text="··">原点</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0110a01">
《我们剑胄的。
　我们锻造师的……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
　茶茶丸——
　不，沃尔夫教授所述的推论。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒", 10000, "#000000");

	CreateTextureSP("絵演回想", 5000, Center, Middle, "cg/ev/ev238_地球と太陽と月と金神_b.jpg");
	SetTone("絵演回想", Monochrome);

	FadeDelete("上背景", 1000, true);
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110b]
　在遥远的过去，曾有金属生命飞来地球。
　它们深埋于地底，借助地下水将自身
要素送往地面，再结合人类科技，
使得被称为剑胄的继嗣诞生于世……

　如果他的论述作为“神”的发展简史来说
是正确的话——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateTextureSP("絵演金", 17100, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	CreateTextureEXadd("絵演金覆", 17110, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("絵演金覆", 0, 500, null, true);

	FadeDelete("上背景", 1000, true);
	SetVolume("SE*", 2000, 750, null);
	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0120a01">
《它身上极为微小的——比一粒沙子还要
微小的碎片，孕育出了心铁。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0130a01">
《那就是剑胄异能之源。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0140a00">
「……也就是说，是这样的意思啊。
　那东西<RUBY text="···········">等同于无数剑胄的集合体</RUBY>。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0150a00">
「即是数千倍、数万倍的——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0160a01">
《数亿……数兆……？
　不，无法计算。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0170a01">
《总而言之是拥有与剑胄同质的力量，以及剑胄
完全不能比拟的数量规模啊。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0180a00">
「…………
　理论上，有可能对抗吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0190a01">
《倒是有一句古人用来形容
　这般绝境的格言，要听听吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0200a00">
「嗯。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0210a01">
《敬鬼神而远之。》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0220a00">
「……的确如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　事态越发难以收拾了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0230a00">
「可是啊。
　……污染波的发射源是那个吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0240a01">
《正是。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0250a00">
「不破坏掉那个就不能阻止污染波的
蔓延吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0260a01">
《正是。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0270a00">
「……没有选择的余地了吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0280a01">
《正是！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、抜刀
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	Move("絵演村正", 0, @288, @0, null, true);
	Shake("絵演村正", 2160000, 1, 2, 0, 0, 1000, null, false);

	CreateTextureSP("絵演空背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	SetVertex("絵演空背景", right, middle);

	$背景倍角変数 = 2.50;
	$背景倍角組込変数 = $背景倍角変数 * 1000;

	$横移動計算基準値 = ImageHorizon("絵演空背景") * $背景倍角変数;
	$横移動計算調整値 =  $横移動計算基準値 -1124;
	$横移動計算補正値 =  $横移動計算調整値 * (1);

	Zoom("絵演空背景", 0, $背景倍角組込変数, 1000, null, true);
	Move("絵演空背景", 100000, @$横移動計算補正値, @0, null, false);

	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("SEL*", 600, 0, null);

	CreateSE("SEL10a","se戦闘_動作_空走行01_L");
	CreateSE("SEL10b","se戦闘_動作_空走行02_L");
	MusicStart("SEL10a",2000,750,0,1000,null,true);
	MusicStart("SEL10b",2000,750,0,1500,null,true);

	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0290a00">
「既如此，上吧。
　我本就不敬鬼神，又有何惧！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0300a01">
《了解！
　来一场华丽的弑神之战吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆進む
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,750,0,500,null,true);

	SetVolume("SEL1*", 300, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm08",0,1000,true);

	Move("絵演村正", 300, @-1500, @0, Axl2, false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");
	DrawTransition("絵色白", 150, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	WaitKey(500);

	Delete("絵演空背景*");
	Delete("絵演村正*");

	CreateTextureSP("絵演", 17000, Center, -30, "cg/ev/ev242_金神激しく発光_a.jpg");
	Request("絵演", Smoothing);
	CreateSurfaceEX("絵効果サフ", 10000,1000,"@絵演");
	Fade("絵効果サフ", 0, 1000, null, true);

	FadeDelete("絵色白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……然而。
　那“金神”虽然在动，却不像是要对
我们这边采取什么行动的样子。

　那是因为它没有意识到我的存在吧。
　啊，话说回来，它到底有没有具备
学习认知外部事物，再采取相对应的行动的机能啊？

　若它只是单纯的能量块，
就没什么可怕的了。
　虽然这种规模的破坏需要花费相当的工夫，
但只要毫不松懈采取谨慎的行动，多半还是能完成的。


</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0310a00">
「首先确认全貌。
　村正，从右手边迂回过去。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0320a01">
《了解。》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 1000, 2000, 2000, null, false);
	Wait(500);
	Move("絵演", 500, @-256, @0, null, false);
	Rotate("絵効果サフ", 600, @0, @0, @-10, null,true);

//◆突然、金神が光る
//◆ＳＥ：神の声
	SetVolume("SEL*", 500, 0, null);
	CreateSE("SE01","se特殊_その他_神の声01");
	MusicStart("SE01",0,1000,0,1200,null,true);
	CreateColorSPadd("絵色白", 30000, "#FFFFFF");
	Delete("絵演");
	Delete("絵効果サフ");
	FadeDelete("絵色白", 600, true);

//◆村正、ダウン
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(300,680);
	CP_IHPChange(0,10,null,false);

	MyTr_Count(0,500);
	CP_SpeedChange(0,500,null,false);

	CP_PowerChange(0,1000,null,false);

	CP_HighChange(0,2977,null,false);
	CP_AziChange(0,243,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	Delete("絵演*");

	CreateTextureSP("絵空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Shake("絵空背景", 800, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("@CP_Frame*", 800, 0, 30, 0, 0, 1000, Dxl2, false);

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0330a00">
「喝——」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆酷いノイズ
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0340a01">
《————————》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　这是……多次从茶茶丸那里听过的……<k>
　
　那个金神的声音！

　不妙。
　比之前增强了——<k>这，活生生的声音强烈至极——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆計器混乱
	CreateSE("SE01a","se特殊_コックピット_アラーム");
	CreateSE("SE01b","se特殊_コックピット_探索01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,true);

	MyLife_Count(300,999);
	CP_IHPChange(300,1,null,false);
	CP_PowerChange(300,500,null,false);

	MyTr_Count(300,999);
	CP_SpeedChange(300,0,null,false);

	CP_AziChange(300,360,null,false);
	CP_RollBarMove2(300,360,Dxl2,false);

//◆落下
	CP_HighChange(3000,300,null,false);
	CP_AltChange(1000,-90,null,false);
	Move("絵空背景", 3000, @0, @-1152, AxlDxl, false);
	Zoom("絵空背景", 3000, 2000, 2000, null, false);

//あきゅん「ＣＰ：方位計とロールバーいじるために待ちを細かく分断」
	//Wait(1700);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(300);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(300);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);

	CreateSE("SE01b","se特殊_コックピット_探索02");
	MusicStart("SE01b",0,1000,0,1000,null,true);

//あきゅん「ＣＰ：方位計とロールバーいじるために待ちを細かく分断」
	//Wait(1000);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);

//◆ＳＥ神の声、急に小さくなる
	SetVolume("SE01", 2000, 100, Axl2);

//あきゅん「ＣＰ：方位計とロールバーいじるために待ちを細かく分断」
	//Wait(2000);
		Wait(300);

	Zoom("絵空背景", 10000, 5000, 5000, null, false);

		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);
		Wait(500);
		CP_RollBarMove2(500,360,null,false);
		CP_AziChange(500,360,null,false);
		Wait(1000);
		CP_RollBarMove2(1000,-360,null,false);
		CP_AziChange(1000,-360,null,false);

//◆計器と姿勢、回復
	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01a","se特殊_コックピット_起動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorEXover("絵色機器", 5000, "#33FF00");
	Fade("絵色機器", 300, 1000, null, true);

	CreateSE("SE01b","se特殊_コックピット_起動音04");
	$残時間=RemainTime("SE01b");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：ここで数値を元に戻す」
	MyLife_Count(200,500);
	CP_IHPChange(200,10,Dxl2,false);
	CP_PowerChange(200,1000,Dxl2,false);

	MyTr_Count(200,500);
	CP_SpeedChange(200,500,Dxl2,false);
	CP_RollBarMove2(600,0,null,false);

	CP_AziChange(200,0,Dxl2,false);

	Fade("絵色機器", $残時間, 0, Axl2, false);
	DrawDelete("絵色機器", $残時間, 100, "slide_02_00_0", true);

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CP_AltChange(300,45,Dxl2,false);
	Move("絵空背景", 600, @0, @1728, AxlDxl, false);

	Wait(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵演*");
	CreateTextureSP("絵演空", 100, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	Move("絵演空", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0350a01">
《主君，坚持住！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0360a00">
「……村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　飘往另一个世界的意识骤然被拉回，
我有点混乱。

　金神的声音……远去了？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0370a00">
「你做了什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0380a01">
《只是让音波扩散而已。
　有别于茶茶丸的术，其指向性不强
所以总算成功了。》

//ムー：↓台詞のカッコ修正しました。
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0390a01">
//《……大概，可是……
//　刚才只不过是<RUBY text="··">反应</RUBY>不是吗？」
《……大概，可是……
　刚才只不过是<RUBY text="··">反应</RUBY>不是吗？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0400a00">
「反应？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0410a01">
《在因为开心的事欢呼雀跃之时
突然被猛地泼冷水的话就会发出哀鸣吧。
　与此同理……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　即是说金神<RUBY text="··">刚刚</RUBY>只不过是骚动不安？

　是对什么东西起了反应？<k>
　
　……是我们的接近吗？

　也就是说？<k>
　
　……我们的存在被它意识到了？

　如此一来会怎样？<k>
　
　……会怎样？

　只有那个“神”才知道的事情——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆金神、重力波準備
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureSPadd("絵演上", 3100, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	CreateTextureSP("絵演", 3000, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 3000, 1000, 1000, Dxl2, false);
	FadeDelete("絵演上", 3000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0420a01">
《————————那么。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0430a01">
《快逃啊啊啊啊啊!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0440a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆急回避
	CreateColorEX("絵色黒", 6000, "#000000");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

	CreateSE("S01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("S01",0,1000,0,1000,null,false);

	Delete("絵演*");

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("絵色白");

//◆重力波。要はグラビティブラスト。
//◆なんかすげーものがマクロの空を貫いていきました。
//◆※ここで神の強大さを一気にダイレクトに演出する
	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演１上", 3100, Center, Middle, "cg/ev/ev242_金神激しく発光_c.jpg");
	CreateTextureSP("絵演１", 3000, Center, Middle, "cg/ev/ev242_金神激しく発光_c.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);

	Delete("絵色黒");

	Zoom("絵演上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演上", 300, true);

	CreateTextureEXadd("絵演２上", 2910, -30, -260, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	CreateTextureSP("絵演２", 2900, -30, -260, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	SetBlur("絵演２", true, 3, 500, 30, false);
	Zoom("絵演２上", 0, 1500, 1500, null, false);
	Delete("絵演１*");

	Zoom("絵演２上", 300, 1000, 1000, Dxl2, false);
	Fade("絵演２上", 300, 800, null, true);
	Move("絵演２*", 300, -450, -115, Dxl2, true);
	FadeDelete("絵演２上", 1000, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0450a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0460a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 19000);

	Delete("絵演*");

	Cockpit_AllFade2();
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg001_空a_02.jpg");

	//▼雲正面
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	FrameShake();
	MoveFFP1("@絵空背景",20000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FadeDelete("絵板写", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　想要说些什么，却张不了口。
　觉得难以置信想要确认自己的身体状况，
我将太过分开的上下颚扳回合适的形状。

　用手把嘴巴合上，然后重新发言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0470a00">
「村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0480a01">
《……什么事？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0490a00">
「这不过是个人的推测，然而——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　我一边整理思路，一边慎重地选择言辞。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0500a00">
「假如刚才的波束直接击中，
会给我的健康带来显著的不良影响吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0510a01">
《当然会有不良影响了!!
　被打中的话，连一片指甲都别想留下!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　村正为什么生气呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0520a01">
《那是辰气的激流……就像河流一样。
　如果被吞掉就完了。会被击得粉碎，
然后连残渣也磨碎，消失得无影无踪。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0530a00">
「这里操纵辰气，
或许可以通过磁力来进行防御？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0540a01">
《那就如同在滚烫的石头上<RUBY text="·">滴</RUBY>水的程度。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　意料之中的回答。

　总而言之就是必须要用骑体运动这么一回事啊。
　
　然而……辰气，重力。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	EfRecoIn1(19000,600);
	CreateTextureSP("絵回想", 18990, Center, Middle, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星m.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
　引辰制御……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0550a00">
「那是<RUBY text="······">银星号的技能</RUBY>吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0560a01">
《……是啊。
　操纵辰气是<RUBY text="母亲">二世</RUBY>本身就具备的能力。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0570a00">
「果然那个“神”就是银星号吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0580a01">
《虽然污染波的确是从那里发出的
　……可是刚才的声音里，
并没有散发出<RUBY text="母亲">二世</RUBY>的气息……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0590a01">
《你怎么看？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0600a00">
「……那倒也是。
　我也不觉得是光的声音。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　倒不如说，我觉得它没有进行语言思考。
　那种声音就算说它来自于有意识的思维活动，
也是层次极低的原始性活动。

　这种想法也可能不过是把语言思考
看作理所当然的人类的自以为是罢了。
　姑且认为那个“神”内部存在着所谓
类似人脑却又不尽相同的东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0610a01">
《……是被捕获了么。
　被<RUBY text="··">捕食</RUBY>，被<RUBY text="··">消化</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0620a01">
《只有技能，被它利用……？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0630a00">
「————」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0640a00">
「假使……就算是这么回事。
　我们要做的事情也不会改变。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0650a01">
《……嗯，没错。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、再び接近
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	//▼雲消去
	CloudZoomFade(0,false);
	MoveFFP1stop();

	Cockpit_AllFade0();

//◆金神、重力波
//◆避けー。
	CreateSE("SE02","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演２上", 2910, Center, Middle, "cg/ev/ev243_回避機動をとる村正_c.jpg");
	CreateTextureSP("絵演２", 2900, Center, Middle, "cg/ev/ev243_回避機動をとる村正_c.jpg");
	Zoom("絵演２上", 0, 1500, 1500, null, false);

	Delete("絵色黒");

	Zoom("絵演２上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演２上", 300, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0660a00">
「……看起来毫无疑问是将我们
作为攻击对象来认知了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0670a01">
《好像是。
　虽然不知道它是怀有敌意，还是因为食欲，
或者仅仅是因为郁闷无聊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　总之，至少也要先逃离此地，
重力波的攻击才会停止。
　此外不用说，事到如今也决不能让它逃走。

　……要回避也不是什么难事。

　发射前的准备动作很明显，瞄准精度也不高。
也没有预测射击对象的空中运动轨迹就直接发射了。
　稍加注意的话就能轻松躲过。

　然而那种威力，从刚才的一击看来，实在非同一般。
　我已经做出会被旁人讥笑懦弱怕事的举动逃得远远的，
但穿越空间传过来的<RUBY text="··">余震</RUBY>还是激烈震荡全身。

　倘若被它击中会怎样。
　恐怕，先前村正所言完全无误吧。

　这或许是成功率九成的赌博，然而
那一成的风险出现的几率也很大。
　要尽可能快速、迅捷地把事情解决。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆接近
//◆野太刀一閃。ずどーん。
	CreateSE("SE01a","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE01b","se戦闘_衝撃_衝突01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1500,null,false);
	CreateColorSP("絵黒幕", 20000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演２");

	CreateTextureSPadd("絵演上", 3010, -55, -190, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//◆神の声（低）
	CreateSE("SE02","se特殊_その他_神の声02");
	MusicStart("SE02",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　……好。
　照计划瞄准——这种大小的靶子不可能出错
——野太刀一击即中金神。

　数根枝条碎裂四散。
　
“神”的哀鸣，的确听到了。

　能行！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0680a01">
《主君，快退下！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0690a00">
「嗯?!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆退避
//◆金神、反発。吹き飛ばされる村正
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演３上", 2910, Center, -30, "cg/ev/ev242_金神激しく発光_e.jpg");
	CreateTextureSP("絵演３", 2900, Center, -30, "cg/ev/ev242_金神激しく発光_e.jpg");
	Zoom("絵演３上", 0, 1500, 1500, null, false);

	Delete("絵演");

	Zoom("絵演３上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演３上", 300, true);

	Wait(300);

	CreateSE("SE03","se戦闘_破壊_爆発04");
	CreateSE("SE03a","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/bg/bg106_富士山遠望b_00.jpg");
	Wait(1);
	Delete("絵演３");
	CreatePlainSPadd("絵板写", 5000);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 1000, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0700a00">
「……
　村正，刚才是怎么回事？」

//おがみ：音声合わせ修正
//《瞄准目标从全身放出辰气波
//……这种技能也是有的。
//　不收缩范围，威力似乎就会分散，
//不过。》
{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0710a01">
《瞄准目标，从全身放出辰气波
……这种技能也是有的。
　不收缩范围，威力似乎就会分散，不过。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0720a01">
《极近距离下全身受其攻击，可能也很危险。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0730a00">
「就是说不能穷追猛打吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",2000,750,0,500,null,true);
	CreateTextureEX("絵演金", 5000, Center, Middle, "cg/ev/ev237_空に昇った金神_a.jpg");
	Fade("絵演金", 1000, 1000, null, true);
	Delete("絵演背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　必须使用<RUBY text="Ｈｉｔ·ａｎｄ·ａｗａｙ">一击脱战法</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0740a00">
「但是，我们也并不是
完全无法与它抗衡。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0750a01">
《嗯。
　金神的确是我们所崇拜的神明，
信仰或许就是以那个为基础，不过尽管如此，
<RUBY text="·····">那东西本身</RUBY>只是个纯粹的巨大生物而已。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0760a01">
《它既不是绝对无敌，也没有超越常理。
　受到破坏性打击还是会毁灭的！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　说的没错！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演*");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正最終_騎航_通常.png");
	Move("絵演立絵", 0, @316, @0, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 600000, -100, @0, null, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	Wait(2000);

	SetVolume("SEL*", 100, 0, null);

//◆金神、重力波
	CreateSE("SE02","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演１上", 3100, Center, -30, "cg/ev/ev242_金神激しく発光_c.jpg");
	CreateTextureSP("絵演１", 3000, Center, -30, "cg/ev/ev242_金神激しく発光_c.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);

	Delete("絵演背景");
	Delete("絵演立絵");

	Zoom("絵演上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演上", 300, true);

//◆避けて
	CreateSE("SE03","se戦闘_動作_空突進01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, InLeft, -134, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 60, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Move("絵窓/絵演立絵装甲", 400, -480, @0, Dxl2, false);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0770a00">
「村正，试一次看看！
　<RUBY text="····">运剑聚辰</RUBY>！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0780a01">
《——了解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、エネルギー上昇
	CreateSE("SE01","se特殊_陰義_レールガン穿_準備");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateWindow("絵窓甲", 19500, 636, 0, 340, 576, false);
	SetAlias("絵窓甲","絵窓甲");
	Zoom("絵窓甲", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓甲/絵演重力溜", 19510, -360, InTop, "cg/ev/resize/ev905_村正電磁撃刀_cm.jpg");
	Move("絵窓甲/絵演重力溜", 450, 265, @0, Dxl2, false);
	Zoom("絵窓甲", 300, 1000, 1000, Dxl2, true);

	WaitAction("絵窓甲/絵演重力溜", null);

	Move("絵窓甲/絵演重力溜", 3000, 265, -277, DxlAuto, false);

	WaitAction("絵窓甲/絵演重力溜", null);

	CreateSE("SE01a","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE01a",0,1000,0,2000,null,false);
	CreatePlainSPadd("絵窓甲/絵板写", 19900);
	Wait(150);
	FadeDelete("絵窓甲/絵板写", 300, true);

//◆重力増幅斬撃
	SetVolume("SE01", 100, 0, null);
	CreateSE("SE02","se戦闘_村正_重力増幅斬撃");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演上", 19550, Center, Middle, "cg/ev/ev929_村正重力増幅斬.jpg");
	CreateTextureSP("絵演", 19560, Center, Middle, "cg/ev/ev929_村正重力増幅斬.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演", 0, 1100, 1100, null, true);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(300);

//◆ずがどーん。
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19610, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 19600, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵窓*");
	Delete("絵色白");

	Zoom("絵演上", 500, 1250, 1250, Dxl1, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

//◆神の声（低）
	CreateSE("SE04","se特殊_その他_神の絶叫");
	MusicStart("SE04",0,1000,0,750,null,false);

//◆村正離脱、富士山上に着地
	PrintGO("上背景", 25000);
	CreateSE("SE05","se戦闘_動作_空突進02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 150, 100, "slide_02_01_1", true);

	CreateTextureSP("絵演背景", 100, Center, -4960, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	Move("絵演背景", 10000, @0, -2100, null, false);

	CreateTextureSP("絵演村正", 1000, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	Rotate("絵演村正", 0, @0, @0, @120, null,true);
	Move("絵演村正", 0, @0, @576, null, true);

	Move("絵演村正", 450, @0, @-1500, null, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//◆bg107の丘周辺アップ画で
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演村正");
	CreateTextureEX("絵演震用背景", 110, Center, Middle, "cg/bg/resize/bg107_富士山頂火口a_00l.jpg");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg107_富士山頂火口a_00l.jpg");

	Fade("絵演震用背景", 0, 500, null, true);
	Shake("絵演震用背景", 650, 0, 10, 0, 0, 1000, Dxl2, false);

	CreateSE("SE06","se戦闘_動作_鎧_着地02");
	MusicStart("SE06",0,1000,0,1000,null,false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0790a00">
「如何?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0800a01">
《效果充分！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　施以重力加速的斩击……
　应该有足以解决十骑武者那种程度的威力，
可是?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆金神
//◆神の声（低）
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,750,0,500,null,false);
	CreateSE("SE04","se特殊_その他_神の声02");
	MusicStart("SE04",0,750,0,500,null,true);
	CreateTextureEX("絵ＥＶ", 18100, Center, -30, "cg/ev/ev241_森で発光する金神_d.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　果然“神”的威仪有所损伤。
　水晶森林的一部分，呈现出遭受了恶劣林业者乱砍滥伐
之后的样貌。

　我想是已经给予了相当的痛击。
　现在“神”的哀鸣久久延续，若不是村正的抑制
我恐怕已经捂住双耳满地乱滚了吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆稼動音
//◆神の動き
	CreateSE("SEL01a","se特殊_その他_神起動開始_L");
	CreateSE("SE01","se特殊_その他_神再生");
	MusicStart("SEL01a",0,1000,0,1000,null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEXadd("絵ＥＶ２覆", 18010, Center, -30, "cg/ev/ev241_森で発光する金神_e.jpg");
	CreateTextureSP("絵ＥＶ２", 18000, Center, -30, "cg/ev/ev241_森で発光する金神_e.jpg");

	CreateColorEXadd("絵色白", 19900, "#FFFFFF");

	Fade("絵ＥＶ２覆", 1500, 1000, null, false);
	FadeDelete("絵ＥＶ", 1500, false);
	Fade("絵色白", 300, 1000, null, true);

	Wait(500);

	FadeDelete("絵色白", 500, true);
	FadeDelete("絵ＥＶ２覆", 5000, false);

	SetVolume("SEL01a", 2000, 0, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0810a01">
《可是……在重生。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0820a00">
「意料之中。
　非神却拥有神一般的力量之主，此种程度
都办不到才让人讶异吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0830a01">
《打算怎么做？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0840a00">
「一击必杀。
　这样便无法再重生，道理很简单。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0850a01">
《……非<RUBY text="··">这样</RUBY>不可？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0860a00">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/3d村正最終_立ち_抜刀.png");
	FadeStR(0,true);

	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　电磁拔刀。

　不是那个用太刀的招式。
　用取回的野太刀做的终焉一刀。

　虽然一次都未曾用过，不过我知道。
　就算对方是“神”也一定能毁灭。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0870a00">
「村正，准备——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆神、発光
//◆村正周囲。空間がぶれる
//◆※Ｎ２でラスタースクロール可能か？
	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	DrawEffect("絵演震用背景", 200, "LowWave", 0, 200, Axl2);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0880a01">
《————这个。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0890a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　<RUBY text="·····">视野在晃动</RUBY>……？

　是什么。

　预示着什么。

　……忽然。
　耳畔似乎听到有谁在呢喃。

　
　　　　　　　　　　要死掉了哟。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("@StR*", 200, @200, @0, Dxl2, false);
	DeleteStR(200,true);

//◆ずばーん。一瞬前までいた場所が圧壊する
//◆bg107a
	CreateSE("SE02","se特殊_その他_空間歪曲");
	CreateSE("SE02a","se戦闘_破壊_建物02");
	CreateTextureEX("絵演背景上", 19010, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");
	CreateTextureSP("絵演背景", 19000, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");

	CreateTextureEX("絵震用背景", 110, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Fade("絵演背景上", 0, 500, null, true);
	Shake("絵演背景上", 2000, 1, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵演背景上");
	Delete("絵演背景");
	Delete("絵演震用背景");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0900a00">
「啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　瞬间。
　眨眼之间，我的骑体所在的丘陵。

　已被<RUBY text="··">压碎</RUBY>。
　连影子也尚未得见就已然崩毁。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);

	CreateTextureEX("絵震用背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	FadeDelete("上背景", 300, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0910a00">
「发生了什么?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0920a01">
《——
　空间本身扭曲了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0930a01">
《被击溃了……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　空间扭曲?!

　这是由于重力干涉而引起的现象吗？
　
　……不对。其实是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：銀星号と飢餓虚空
	CreateTextureEX("絵演回想", 100, Center, Middle, "cg/ev/ev924_銀星号飢餓虚空魔王星.jpg");
	Fade("絵演回想", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　我想到了。
　银星号发动“辰气漩涡”之时，由于产生了
过强的重力，发生了空间扭曲的现象……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵演回想", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//嶋：修正（対抗）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0940a01">
《那种东西，不可能进行防御！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0950a00">
「与重力波攻击一样，逃跑才
是唯一对策吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　话虽如此，要面对的是<RUBY text="····">空间扭曲</RUBY>，
它的范围到底有多大呢。
　自认为已经逃脱，事实上却未能逃离攻击范围，
这样的情况也可能会发生。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆神、発光
//◆空間歪曲予兆。ぶれ
	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵震用背景", 200, 500, null, false);
	DrawEffect("絵震用背景", 200, "LowWave", 0, 200, Axl2);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵震用背景", 600, false);
	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0960a01">
《主君，还没完！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0970a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　怎么办？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：可能な限り遠くへ離脱／遮蔽物を探す

}

..//ジャンプ指定
//◆可能な限り遠くへ離脱　"md05_010vsb.nss"
//◆遮蔽物を探す　"md05_010vsa.nss"


//★選択肢シーン
scene md05_010vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("尽可能逃脱到远的地方","寻找遮挡物");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆可能な限り遠くへ離脱　"md05_010vsb.nss"
				$GameName = "md05_010vsb.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆遮蔽物を探す　"md05_010vsa.nss"
				$GameName = "md05_010vsa.nss";
		}
	}
}