//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_022vs.nss_MAIN
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
	#bg087_大鳥邸玄関前a_02=true;
	#bg204_横旋回背景c_02=true;
	#bg204_横旋回背景b_02=true;
	#bg204_横旋回背景_02=true;
	#bg066_普陀楽城内のどか_01=true;

//あきゅん「演出：ここではまだ登録したくないので退避」
	//#ev004_香奈枝の凶眼_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆さよフラグが成立している場合　"mc04_023.nss"
	//◆それ以外　"mc04_026.nss"
	//$GameName = "mc00_001.nss";

//$Sayo_Flag = 2;

	if($Sayo_Flag == 2){$GameName = "mc04_023.nss";}
	else{$GameName = "mc04_026.nss";}

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

scene mc04_022vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_021vs.nss"

	//$Sayo_Flag = 2;

//◆視点チェンジ
//◆香奈枝サイド
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm10", 0, 1000, true);

	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100, "bg064_普陀楽城内道_02.jpg");
	FadeBG(0, true);

	StR(1200, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(0,true);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	CreateMask("絵覆", 6000, 0, 0, "cg/data/slide_08_00_0.png", false);
	SetAlias("絵覆","絵覆");

	CreateTextureEX("絵覆/絵演", 4100, -587, -400, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	Fade("絵覆/絵演", 1000, 1000, null, false);
	Move("絵覆/絵演", 2000, @0, -120, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鸟香奈枝蔑视着这个男人。
　这个因愤怒而激动的男人。

　香奈枝知道。
　他没有怀疑——

　对自己的正确，确实没有一丝怀疑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Move("絵覆/絵演", 2000, @0, @100, DxlAuto, false);
	FadeDelete("絵覆/絵演", 400, false);

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0010a06">
「你也是一样！
　那个叛徒与不知哪来的母猫交媾生下了你。
你跟那个寡廉鲜耻之徒没有任何差别！」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0020a06">
「那家伙也是如此……
　内心一味地被眼前小事所惑，
结果连大局都无法参透。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0030a06">
「以不想让民众送死为狡辞逃避战争。
　可是，那个决断却将国家未来锁于黑暗之中，
迟早会给人们带来十倍于战争的痛苦，他为何就
是不明白?!」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0040a06">
「身为一介平民可称之为温柔的特质，在成为
王者之心时，那只会被斥责为懦弱……
 你父亲连这点道理也不懂！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0050a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕", 5000, "BLACK");
	Fade("黒幕", 1000, 1000, null, true);
	Delete("ウィンドウ*/絵ev*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　不是——那样的。

　父亲大鸟时继明白这一点，
　并时常为之苦恼。

　自己的决断，会不会是错误的。
　到最后会不会反而将更重大的灾难强降于臣民身上。

　相信自己，拼命在选择的道路上奔驰的同时——
　父亲也总在怀疑着自己是否正确，并为之苦恼。

　……这个男人并不了解这些。
　这个坚信自己正确无误的男人，
根本就不了解父亲的苦恼。

　为何！

　香奈枝是知道的。
　尽管远在海外，自己仍然能了如指掌地明白
父亲的苦衷。

　而他却不明白。
　明明近在父亲身边！

　若这个男人能觉察父亲的烦恼，敞开胸襟提供意见的话，
大鸟家兴许能复兴了吧。
　他只要有相对的才能，父亲也会有相对的度量。

　可他没那样做。
　他给予父亲的，只有诀别的刀刃。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("黒幕", 1000, 0,null,true);


	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0060a06">
「无可救药的愚物！
　令人嗤笑的无能！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0070a06">
「到头来还放任你这样的疯狗到世间！
　你父亲正是使我的人生受诅咒的罪魁祸首——」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0080a06">
「不，你的父亲诅咒了整个大和的命运！
　那个男人就不该被生到这个世上。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0090a06">
「就算非要生下来，
作为一只蝼蚁降生也要好得多!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("黒幕", 1000, 1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　于是现在，他否定着——
　父亲存在的一切。

　坚信自己正确的他，
　单凭这份信念，就断定父亲是渣滓。

　父亲——会作何感想呢。
　如果深切苦恼到那种程度的父亲，听到这个男人
纯粹出于不理解的责辱之言时……

　会作何感想呢？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0100a03">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。心臓鼓動。レッドアウトレッドイン付き
	OnSE("se人体_体_心臓の音02", 1000);

	CreateColorEX("レッドアウト", 15000, "#990000");
	Fade("レッドアウト", 300, 1000, null, true);
	Fade("レッドアウト", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
　　　　　　　　　　不可饶恕

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0110a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　　　　大鸟时继
　　　　　　不会原谅 大鸟狮子吼

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。心臓鼓動。レッドアウトレッドイン付き

	OnSE("se人体_体_心臓の音02", 1000);

	CreateColorEX("レッドアウト", 15000, "#990000");
	Fade("レッドアウト", 300, 1000, null, true);
	Delete("黒幕");
	Fade("レッドアウト", 1000, 0, null, true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0120a03">
「……狮子吼……」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0130a06">
「啊啊，确实没办法啊。
　怨天尤人也无济于事。」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0140a06">
「只要我亲手收拾掉就好……
　父女两代，就让我来好好收拾吧。」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0150a06">
「你的父亲在熟睡中遭我袭击而死。
　什么都不知道，什么也没意识到——那个蠢货就
 像蛆虫一般，落得个与他相衬的可悲死法！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0160a03">
「——————」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0170a06">
「你也在这里像羽虱一般死去吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銘伏出現。獅子吼装甲
	OnSE("se特殊_鎧_銘伏出現01", 1000);

	CreateStencil("絵演型",1000,center,middle,128,"cg/st/3d銘伏七節_正面.png",false);
	SetAlias("絵演型","絵演型");
	Move("絵演型", 0, -710, -555, null, true);

	CreatePlainEX("絵演型/絵板写", 990);
	SetShade("絵演型/絵板写", HEAVY);
	Fade("絵演型/絵板写", 800, 1000, null, true);

	Wait(300);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演型");
	CreateTextureSP("絵七節", 1000, Center, Middle, "cg/st/3d銘伏七節_正面.png");
	Move("絵七節", 0, -710, -555, null, true);

	FadeDelete("絵板写", 500, true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵七節");
	DeleteStA(0,true);

	CreateTextureSP("絵演獅子吼装甲", 4100, Center, Middle, "cg/ev/ev954_獅子吼装甲_b.jpg");

	FadeDelete("絵フラ", 1000,true);

	Wait(1000);

//◆抜刀
	CreateSE("SE02","se擬音_雰囲気_抜刀01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	StC(1000, @0,@0,"cg/st/3d銘伏_立ち_抜刀.png");
	FadeStC(0,true);

	FadeDelete("絵演獅子吼装甲", 1000, true);

	Wait(500);

	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演香奈枝装甲", 19100, -465, -180, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	SetBlur("絵窓/絵演香奈枝装甲", true, 3, 500, 60, false);

	CreateSE("SE03","se戦闘_バロウズ_ボーガン構え01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("絵窓/絵演香奈枝装甲", 400, @0, -97, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);

	SetFwL("cg/fw/fw香奈枝_獰猛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0180a03">
「狮子吼!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

//◆バロウズボルト
	WaitAction("@絵窓/絵演香奈枝装甲", null);

	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateColorEXadd("絵色白全", 19990, "#FFFFFF");
	CreateColorEXadd("絵窓/絵色白", 19900, "#FFFFFF");

	DrawTransition("絵窓/絵色白", 400, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", false);
	Fade("絵窓/絵色白", 200, 1000, null, true);

	Fade("絵色白全", 200, 1000, null, true);

	Delete("絵窓");
	DeleteStA(0,true);

	CreateTextureSP("絵演効果", 100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵演効果", 0, @0, @180, @0, null,true);

	SetBlur("絵演効果", true, 3, 500, 200, false);
	Request("絵演効果", Smoothing);

	Zoom("絵演効果", 0, 10000, 10000, null, true);

	CreateSE("SE01a","se戦闘_バロウズ_ボーガン射撃01");

	MusicStart("SE01a",0,1000,0,800,null,false);
	Zoom("絵演効果", 300, 1100, 1100, Dxl2, false);
	FadeDelete("絵色白全", 200, true);

	WaitAction("絵演効果", null);

	Wait(10);

	CreatePlainSP("絵板写", 20000);

	CreateWindow("絵窓", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 5000, 310, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵窓/絵演背景", 0, 1100, 1100, null, true);
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -412, -730, "cg/st/resize/3d銘伏_立ち_抜刀l.png");
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 80, false);

	Move("絵窓/絵演立絵装甲", 450, -180, @0, Dxl2, false);
	DrawDelete("絵板写", 300, 100, "slide_01_03_1", true);

	WaitAction("絵窓/絵演立絵装甲", null);

	SetFwC("cg/fw/fw獅子吼_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0190a06">
「雕虫小技——
　射线我早已看穿！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆跳躍
	PrintGO("上背景", 20000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	CreateTextureSP("絵背景100", 100, InRight, Middle, "cg/bg/bg204_横旋回背景c_02.jpg");
	Move("絵背景100", 20000, -100, @0, null, false);

	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("上背景", 300, true);

	Wait(300);

	CreateSE("SE01b","se戦闘_動作_空急降下01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureEX("絵演合当理", 990, -1450, -222, "cg/st/resize/3d村正標準_騎航_通常3_ex2.png");
	Zoom("絵演合当理", 0, 100, 100, null, true);

	CloudZoomSet(5000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@1500,@0,null,false);

	CreateTextureSP("絵演銘伏", 1000, Center, Middle, "cg/st/resize/3d銘伏_騎航_抜刀lmex.png");
	Shake("絵演銘伏", 21600, 0, 1, 0, 0, 1000, null, false);
	Request("絵演銘伏", Smoothing);
	SetVertex("絵演銘伏", 1800, 1940);
	Rotate("絵演銘伏", 0, @0, @0, @15, null,true);
	Move("絵演銘伏", 0, @730, @500, null, true);
	Zoom("絵演銘伏", 0, 1500, 1500, null, true);

	CreateTextureEX("絵高速移動背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景b_02.jpg");
	SetBlur("絵高速移動背景", true, 2, 500, 100, false);
	CreateSurfaceEX("絵効果サフ", 10000,2500,"@絵高速移動背景");

	Zoom("絵演銘伏", 20000, 1000, 1000, null, false);

	SetVolume("SE01b", 2000, 0, null);

	Move("絵演銘伏", 2000, @-30, @-100, Dxl2, false);
	DrawTransition("絵色白", 3000, 1000, 0, 100, Axl2, "cg/data/slide_01_01_1.png", false);
	FadeDelete("絵色白", 2000, true);

	Wait(1000);

	CreateSE("SE02","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE02a","se戦闘_動作_空突進02");
	CreateSE("SE04","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色矢", 2000, "#FFFFFF");
	DrawTransition("絵色矢", 0, 0, 100, 200, null, "cg/data/slide_07_00_1.png", true);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("絵演銘伏", 300, @0, @0, 0, Axl2,false);
	Move("絵演銘伏", 300, -1138, -1662, null, false);
	Zoom("絵演銘伏", 300, 40, 40, Axl1, false);
	CloudZoomFade(1000,false);

	Wait(160);

	MusicStart("SE02",0,1000,0,1500,null,false);
	Fade("絵色矢", 0, 1000, null, true);

	Wait(80);

	DrawTransition("絵色矢", 1000, 100, 0, 400, null, "cg/data/slide_07_00_1.png", false);
	FadeDelete("絵色矢", 100, false);

	Wait(240);

	Move("絵演銘伏", 1500, @50, @0, Dxl2, false);
	Wait(200);
	Move("絵演銘伏", 3000, @50, @0, null, false);

	Wait(1000);

	Fade("絵演合当理", 0, 1000, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵演合当理", 300, 0, null, false);

	Move("絵演銘伏", 800, @-1500, @-200, Dxl3, false);
	Move("絵演合当理", 800, @-1500, @-200, Dxl3, false);
	Zoom("絵演合当理", 300, 3000, 0, null, false);

	Wait(800);

	Delete("絵演銘伏");

	CreateSE("SE05b","se戦闘_動作_空急降下01");
	MusicStart("SE05b",0,1000,0,1000,null,false);

	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-1500,@1000,null,false);

	Move("絵高速移動背景", 5000, -300, @0, DxlAuto, false);
	Fade("絵高速移動背景", 0, 1000, null, true);

	Rotate("絵効果サフ", 3000, @0, @0, @90, null,false);
	Fade("絵効果サフ", 3000, 1000, null, true);

	WaitAction("絵高速移動背景", null);

	Wait(1000);

	CreatePlainSP("絵板写", 20000);

	Delete("絵効果サフ*");
	Delete("絵高速移動背景*");
	Delete("絵演合当理*");
	CloudZoomDelete(0,false);

	CreateTextureSP("絵高速移動背景", 100, Center, -100, "cg/bg/resize/bg204_横旋回背景b_02rex.jpg");
	SetBlur("絵高速移動背景", true, 2, 500, 100, false);
	CreateSurfaceEX("絵効果サフ", 10000,2500,"@絵高速移動背景");
	Fade("絵効果サフ", 0, 1000, null, true);

	CreateTextureEX("絵背景１", 5100, 0, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureEX("絵背景２", 5100, 0, Middle, "cg/bg/bg204_横旋回背景_02.jpg");

	CloudZoomSet(10000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@0,@-1000,null,false);

	CreateSE("SE06b","se戦闘_動作_空急降下01");
	CreateSE("SE06c","se戦闘_動作_空急降下01");

	CloudZoomVertex(2000,@-1000,@1000,null,false);
	Rotate("絵効果サフ", 2000, @0, @0, @-90, null,false);
	Move("絵高速移動背景", 2000, @0, -4000, null, false);

	MusicStart("SE06b",0,1000,0,500,null,false);
	MusicStart("SE06c",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 1000, true);

	Wait(500);

	$横幅基礎=ImageHorizon("絵背景１")-1024;
	$横幅組込=$横幅基礎*(-1);

	CreateSCR1("@絵背景１","@絵背景２",400,$横幅組込,@-100);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果線", 10010, Center, Middle, 288, 512, "Rain");
	SetAlias("絵効果線","絵効果線");
	Rotate("絵効果線", 0, @0, @0, @-90, null,true);
	Zoom("絵効果線", 0, 2000, 4000, null, true);
	Move("絵効果線", 0, @512, @0, null, true);
	DrawTransition("絵効果線", 0, 0, 300, 100, null, "cg/data/slide_01_03_0.png", true);

	MoveFFP1("@絵効果線",5000);

	Fade("絵高速移動背景", 500, 0, null, false);
	Fade("絵効果サフ", 500, 0, null, true);

	Wait(1000);

	CreateSE("SE07a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE07a",0,1000,0,1250,null,false);
	CreateTextureSP("絵演装甲銘伏", 6100, OutLeft, Middle, "cg/st/3d銘伏_騎航_抜刀.png");
	Shake("絵演装甲銘伏", 2160000, 0, 2, 0, 0, 1000, null, false);
	Move("絵演装甲銘伏", 300, -609, -403, Dxl2, false);

	Wait(260);
	Move("絵演装甲銘伏", 10000, -509, @0, null, false);
	Wait(40);

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0200a06">
「邪恶的血脉在此断绝！
　追随你的父亲去吧，香奈枝——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ＢＧＭストップ？
//◆凶眼発動
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureEX("絵窓/絵演凶眼", 11100, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_a.jpg");
	Request("絵窓/絵演凶眼", Smoothing);
	Zoom("絵窓/絵演凶眼", 0, 5000, 5000, null, true);
	MoveFFP1("@絵窓/絵演凶眼",1000);

	CreateTextureSP("絵窓/絵演", 11000, -404, InBottom, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	SetBlur("絵窓/絵演", true, 2, 500, 80, false);

	CreateSE("SE01","se戦闘_バロウズ_ボーガン構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵窓/絵演", 500, @0, -65, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	WaitAction("絵窓/絵演", null);

	CreateSE("SE01a","se特殊_陰義_発動04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵窓/絵演凶眼", 200, 750, null, false);
	Zoom("絵窓/絵演凶眼", 400, 1100, 1100, Dxl2, false);

	Wait(700);

	Zoom("絵窓/絵演凶眼", 3000, 1050, 1050, null, false);


	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 1800, 1000, null, true);

	Move("絵演装甲銘伏", 0, -509, -403, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆テキスト横書き表示
　
　　　　<RUBY text="弓圣一矢　不中苹果">The paradox of "Tell and apple"（历史上退尔与苹果的悖论）</RUBY>。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//◆中点屈折。矢が軌道を変えて
	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 19920, "#FFFFFF");

	CreateTextureSPmul("絵演凶眼", 12000, Center, Middle, "cg/ev/resize/ev004_香奈枝の凶眼_bm.jpg");
	Fade("絵演凶眼", 1, 750, null, true);
	Zoom("絵演凶眼", 0, 1100, 1100, null, true);
	Zoom("絵演凶眼", 10000, 1000, 1000, null, false);
	MoveFFP1("@絵演凶眼",1000);

	Delete("絵色黒");
	Delete("絵窓");
	FadeDelete("絵色白", 1000, true);

	Wait(1000);

	CreateSE("SE02","se人体_体_心臓の音02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEX("絵色血", 12100, "#990000");
	Fade("絵色血", 100, 1000, null, true);

	FadeDelete("絵色血", 600, true);
	WaitPlay("SE02", null);

	CreateTextureSPadd("絵演弓聖壱覆", 20010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureSP("絵演弓聖壱", 20000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵演弓聖壱*", 0, @0, @0, @180, null,true);
	Request("絵演弓聖*", Smoothing);

	Zoom("絵演弓聖壱*", 0, 1300, 1300, null, true);

	CreateSE("SE030","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE030a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE030",0,1000,0,1000,null,false);
	MusicStart("SE030a",0,1000,0,1000,null,false);

	Fade("絵演弓聖壱覆", 200, 0, null, false);
	Zoom("絵演弓聖壱*", 200, 1100, 1100, Dxl2, true);

	Wait(1200);

	CreateTextureSPadd("絵演弓聖弐覆", 20110, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖弐", 20100, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Rotate("絵演弓聖弐*", 0, @0, @180, @0, null,true);
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖壱*");
	Zoom("絵演弓聖弐*", 0, 1300, 1300, null, true);

	CreateSE("SE03","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE03a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	Fade("絵演弓聖弐覆", 200, 0, null, false);
	Zoom("絵演弓聖弐*", 200, 1100, 1100, Dxl2, true);

	Wait(1000);

	CreateTextureSPadd("絵演弓聖参覆", 20210, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	CreateTextureSP("絵演弓聖参", 20200, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖弐*");
	Zoom("絵演弓聖参*", 0, 1300, 1300, null, true);

	CreateSE("SE04","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE04a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	Fade("絵演弓聖参覆", 200, 0, null, false);
	Zoom("絵演弓聖参*", 200, 1100, 1100, Dxl2, true);

	Wait(800);

	CreateTextureSPadd("絵演弓聖四覆", 20310, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖四", 20300, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖参*");
	Zoom("絵演弓聖四*", 0, 1300, 1300, null, true);

	CreateSE("SE05","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE05a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	MusicStart("SE05a",0,1000,0,1000,null,false);

	Fade("絵演弓聖四覆", 200, 0, null, false);
	Zoom("絵演弓聖四*", 200, 1100, 1100, Dxl2, true);

	Wait(600);

	CreateTextureSPadd("絵演弓聖五覆", 20410, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	CreateTextureSP("絵演弓聖五", 20400, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖五*", 0, @0, @180, @0, null,true);

	Delete("絵演弓聖四*");
	Zoom("絵演弓聖五*", 0, 1300, 1300, null, true);

	CreateSE("SE06","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE06a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MusicStart("SE06a",0,1000,0,1000,null,false);

	Fade("絵演弓聖五覆", 200, 0, null, false);
	Zoom("絵演弓聖五*", 200, 1100, 1100, Dxl2, true);

	Wait(300);

	CreateTextureSPadd("絵演弓聖六覆", 20510, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	CreateTextureSP("絵演弓聖六", 20500, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖六*", 0, @0, @180, @180, null,true);

	Delete("絵演弓聖五*");
	Zoom("絵演弓聖六*", 0, 1300, 1300, null, true);

	CreateSE("SE07","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE07a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE07",0,1000,0,1000,null,false);
	MusicStart("SE07a",0,1000,0,1000,null,false);

	Fade("絵演弓聖六覆", 200, 0, null, false);
	Zoom("絵演弓聖六*", 200, 1100, 1100, Dxl2, true);

	Wait(150);

	CreateTextureSPadd("絵演弓聖七覆", 20610, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖七", 20600, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖七*", 0, @0, @0, @180, null,true);

	Delete("絵演弓聖六*");
	Zoom("絵演弓聖七*", 0, 1300, 1300, null, true);

	CreateSE("SE08","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE08a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE08",0,1000,0,1000,null,false);
	MusicStart("SE08a",0,1000,0,1000,null,false);

	Fade("絵演弓聖七覆", 200, 0, null, false);
	Zoom("絵演弓聖七*", 200, 1100, 1100, Dxl2, true);

	Wait(75);

	CreateTextureSPadd("絵演弓聖八覆", 20710, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖八", 20700, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖七*");
	Zoom("絵演弓聖八*", 0, 1300, 1300, null, true);

	CreateSE("SE090","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE090a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE090",0,1000,0,1000,null,false);
	MusicStart("SE090a",0,1000,0,1000,null,false);

	Fade("絵演弓聖八覆", 200, 0, null, false);
	Zoom("絵演弓聖八*", 200, 1100, 1100, Dxl2, true);

	Wait(30);

	CreateTextureSPadd("絵演弓聖九覆", 20910, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	CreateTextureSP("絵演弓聖九", 20900, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖九*", 0, @0, @180, @0, null,true);

	Delete("絵演弓聖八*");
	Zoom("絵演弓聖九*", 0, 1300, 1300, null, true);

	CreateSE("SE09","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE09a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE09",0,1000,0,1000,null,false);
	MusicStart("SE09a",0,1000,0,1000,null,false);

	Fade("絵演弓聖九覆", 200, 0, null, false);
	Zoom("絵演弓聖九*", 200, 1100, 1100, Dxl2, true);

	Wait(15);

	CreateTextureSPadd("絵演弓聖十覆", 21010, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖十", 21000, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖十*", 0, @0, @0, @180, null,true);

	Wait(10);
	Delete("絵演弓聖九*");
	Zoom("絵演弓聖十*", 0, 1300, 1300, null, true);

	CreateSE("SE10","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE10a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE10",0,1000,0,1000,null,false);
	MusicStart("SE10a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十覆", 200, 0, null, false);
	Zoom("絵演弓聖十*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖十一覆", 21110, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	CreateTextureSP("絵演弓聖十一", 21100, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十");
	Delete("絵演弓聖十覆");
	Zoom("絵演弓聖十一*", 0, 1300, 1300, null, true);

	CreateSE("SE11","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE11a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE11",0,1000,0,1000,null,false);
	MusicStart("SE11a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十一覆", 200, 0, null, false);
	Zoom("絵演弓聖十一*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖十二覆", 21210, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖十二", 21200, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十一");
	Delete("絵演弓聖十一覆");
	Zoom("絵演弓聖十二*", 0, 1300, 1300, null, true);

	CreateSE("SE12","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE12a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE12",0,1000,0,1000,null,false);
	MusicStart("SE12a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十二覆", 200, 0, null, false);
	Zoom("絵演弓聖十二*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖十三覆", 21310, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	CreateTextureSP("絵演弓聖十三", 21300, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十二");
	Delete("絵演弓聖十二覆");
	Zoom("絵演弓聖十三*", 0, 1300, 1300, null, true);

	CreateSE("SE13","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE13a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE13",0,1000,0,1000,null,false);
	MusicStart("SE13a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十三覆", 200, 0, null, false);
	Zoom("絵演弓聖十三*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖終覆", 29010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureSP("絵演弓聖終", 29000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵演弓聖終*", 0, @0, @180, @0, null,true);
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十四");
	Delete("絵演弓聖十四覆");
	Zoom("絵演弓聖終*", 0, 1300, 1300, null, true);

	CreateSE("SE99","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE99a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE99",0,1000,0,1000,null,false);
	MusicStart("SE99a",0,1000,0,1000,null,false);

	Fade("絵演弓聖終覆", 200, 0, null, false);
	Zoom("絵演弓聖終*", 200, 1100, 1100, Dxl2, true);

//◆ぐっさし。血。
	CreateTextureSPover("絵演血効果", 11100, Center, Middle, "cg/anime/center/bloodA_3.png");
	CreateColorSPadd("絵色白", 11000, "#FFFFFF");
	DrawTransition("絵色白", 1, 0, 30, 100, null, "cg/data/slide_08_00_1.png", true);

	Wait(10);
	Delete("絵演凶眼");

	Move("絵演装甲銘伏", 1, -250, -403, Dxl2, true);

	CreatePlainSP("絵板写", 12000);
	CreatePlainSPadd("絵板写覆", 12100);
	Request("絵板写*", Smoothing);
	Zoom("絵板写*", 0, 1300, 1300, null, true);

	SetTone("絵板写", Monochrome);

	CreateSE("SE100","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE100a","se戦闘_バロウズ_ボーガン射撃02");

	Delete("絵演血効果");
	Delete("絵色白");
	Delete("絵演弓聖*");
	MusicStart("SE100",0,1000,0,1000,null,false);
	MusicStart("SE100a",0,1000,0,1000,null,false);

	Fade("絵板写覆", 200, 0, null, false);
	Zoom("絵板写*", 200, 1100, 1100, Dxl2, true);

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0210a06">
「————————」


{	FwC("cg/fw/fw香奈枝_獰猛.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0220a03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　于是<k>
　这男人<k>
　像蝼蚁一般<k>
　死去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずしゃ。死体落下
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 19000, "#000000");

	OnBG(100,"bg064_普陀楽城内道_02.jpg");
	FadeBG(0,true);

	CloudZoomDelete(0,false);
	Delete("@ProSCR*");
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空落下01");
	MusicStart("SE01",0,1000,0,750,null,false);
	WaitPlay("SE01", null);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, true);

//◆バロウズ
	StL(1000, @-60, @0,"cg/st/3dバロウズ_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 600, @60, @0, Dxl2, false);
	FadeStL(600,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0230a03">
「……………………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0240a03">
「……啊……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0250a03">
「……狮，子……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆少年獅子吼と少女香奈枝。花束を手渡している

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想背景", 15000, Center, Middle, "cg/bg/bg066_普陀楽城内のどか_01.jpg");
	SetTone("絵回想背景", Monochrome);

	SoundPlay("@mbgm15", 0, 1000, true);

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
“香奈枝小姐喜欢花吗？”

“如果喜欢的话，请收下这个……”

“若是合你的心意就好了。
　吾——本人完全不了解花的优劣。”

“……是的。
　昨夜，听说了。”

“已经正式决定要继承白河分家
……并且要将大鸟新这个名字改为大鸟狮子吼。
　还有……婚约的事情也……”

“你说……心情吗？
　本人的……”

“本人明白今次的事情是永仓老人为了让
时常发生尖锐冲突的吾主时治大人以及香奈
枝小姐的父亲时继大人修好关系，
而一手促成的。”

“本人也知道那些多嘴的佣人们在搬弄是非，
传一些关于香奈枝小姐不好的谣言。”

“可是……没有关系。”

“本人从很久以前……
　就已经喜欢上了香奈枝小姐。”

“心中所想所盼唯有美丽的您。”

“……香奈枝小姐……”

“若是——
　您觉得像本人这样出身鄙陋的异族人士
能够成为您的伴侣的话……”

“新，不，狮子吼——定会成为
配得上大鸟这一姓氏的武士……
　绝不会让香奈枝小姐哀叹与本人
的婚约是个错误！”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("絵回想背景");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0260a03">
「啊…………」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0270a03">
「啊、啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆炎上する館
//◆→bg002a_夜
//◆それに合わせて↓。テキスト無し、ボイスのみ

	CreatePlainSP("絵板写", 20000);
	CreateTextureEXadd("絵背景21", 15010, Center, Middle, "cg/bg/bg087_大鳥邸玄関前b_02.jpg");
	Zoom("絵背景21", 0, 1030, 1030, null, true);
	Fade("絵背景21", 0, 1000, null, true);
	DrawTransition("絵背景21", 0, 0, 100, 1000, null, "cg/data/circle_13_00_1.png", true);
	DrawEffect("絵背景21", 0, "HighWave", 20, 20, null);

	CreateTextureSP("絵背景", 15000, @0, @0, "cg/bg/bg087_大鳥邸玄関前b_02.jpg");
	DeleteStA(0,true);
	CreateSE("SEメラメラ", "se人体_動作_放火");
	MusicStart("SEメラメラ", 1000, 1000, 0, 1000, null,true);
	FadeDelete("絵板写", 1000, true);

//演出上Keyなし inc櫻井
	Wait(1000);

	OnBG(100, "bg002_空b_03.jpg");
	FadeBG(0, true);
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	FadeDelete("絵背景*",1500,true);

	SetVolume("メラメラ*", 2000, 300, null);

	CreateVOICE("香奈枝","mc04/022vs0280a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);


	CreateVOICE("香奈枝","mc04/022vs0290a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);


	CreateVOICE("香奈枝","mc04/022vs0300a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);

	CreateVOICE("香奈枝","mc04/022vs0310a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);

	CreateVOICE("香奈枝","mc04/022vs0320a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);

	Wait(3000);
	SetVolume("香奈枝*", 3000, 0, null);
	WaitPlay("香奈枝*", null);

/*
//	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0280a03">
//「啊啊……啊啊……啊呜……」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0290a03">
//「咕……呜……咕……啊啊啊啊啊！」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0300a03">
//「啊啊啊！　啊哈哈哈！　啊啊啊哈哈哈哈哈
//哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈!!」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0310a03">
//「咿呀——哈哈哈哈哈哈哈哈哈哈哈哈哈哈
//哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈!!」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0320a03">
//「哈啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈!!」

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆↑声優さんには笑うだけ笑っておいてもらって、
//◆後でスクリプトでフェードアウト掛ければ良いか。

//◆フェードアウト
//◆長ウェイト
	ClearWaitAll(3000, 3000);


}

..//ジャンプ指定
//◆フラグ分岐
//◆さよフラグが成立している場合　"mc04_023.nss"
//◆それ以外　"mc04_026.nss"

//★選択肢シーン
scene mc04_022vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("有纱代剧情","没有纱代剧情");
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
//◆さよフラグが成立している場合　"mc04_023.nss"
				$GameName = "mc04_023.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆それ以外　"mc04_026.nss"
				$GameName = "mc04_026.nss";
		}
	}
}

