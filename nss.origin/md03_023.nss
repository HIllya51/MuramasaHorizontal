//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_023.nss_MAIN
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
	#ev224_建長寺を包囲する軍勢=true;
	#ev952_雷蝶装甲_a=true;
	#ev952_雷蝶装甲_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_膝丸=true;

	$PreGameName = $GameName;

	$GameName = "md03_024vs.nss";

}

scene md03_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_022.nss"

	PrintBG("上背景", 30000);


	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);


	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	StCL(1000, @80, @0, "cg/st/st一条_通常_制服.png");
	StL(900, @-100, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStR(0, false);
	FadeStL(0, false);
	FadeStCL(0, true);

	Delete("上背景");

	SetNwC("cg/fw/nwその他.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230010a07">
「你们要去哪儿？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12", 0, 1000, true);


//◆ざざーん。
//◆ＥＶ：包囲部隊。茶々丸、景明、雷蝶
	CreateTextureEX("軍団", 15000, @0, @0, "cg/ev/ev224_建長寺を包囲する軍勢.jpg");
	CreateTextureEX("軍団大", 15000, 0, -512, "cg/ev/resize/ev224_建長寺を包囲する軍勢l.jpg");

	CreateSE("SE01","se人体_足音_鎧_複数駆け去る01");

	OnSE("se人体_足音_鎧歩く03",1000);
	MusicStart("SE01",0,1000,0,200,null,false);

	Wait(50);

	SetVolume("SE01", 4000, 0, Axl3);

	Fade("軍団大", 1000, 1000, null, false);

	Move("軍団大", 2000, -512, -512, Dxl1, true);
	Move("軍団大", 1000, -512, -100, AxlDxl, true);

	Fade("軍団", 0, 1000, null, true);

	WaitKey(700);

	Fade("軍団大", 1000, 0, null, true);
	DeleteStA(0,true);

	SetFwR("cg/fw/fw黒瀬_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230020b26">
「什!?」

{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230030a02">
「……啧……」

{	FwR("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0230040a01">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　被……包围了。
　周围全是六波罗的军队。

　打头阵的是——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Move("軍団大", 0, -412, -100, null, true);
	Fade("軍団大", 500, 1000, null, false);
	Move("軍団大", 2000, -402, -100, Dxl1, 1000);

	SetFwR("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0230050a00">
「…………」

{	FwR("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0230060a01">
「……啊……」

{	FadeDelete("軍団大", 1000, false);
	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230070a07">
「今晚是很适合赏月，
　但也不必特意跑来普陀乐吧！」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230080a07">
「就在这儿赏吧。」

{	FwR("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230090b26">
「堀越公方！」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230100a07">
「宫大人在哪里呢？
　里面吗？」

{	FwR("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0230110a11">
「……中将，您这是何意！
　明知建朝寺是舞殿宫殿下的居所还带兵
包围，简直专横跋扈不可饶恕！」

{	FwR("cg/fw/fw署長_怒り.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0230120a11">
「还不立即退兵！」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230130a07">
「你有什么资格说我啊，镰仓署长。
　你们才是，为什么在这里啊？」

{	FwR("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0230140a11">
「…………」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230150a07">
「已经露馅就别再硬撑了。
　雷蝶说实话了，交代了企图和舞殿宫联手
攻占幕府的计划。」

{	FwR("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230160a08">
「什——」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230170a07">
「哎？　不对吗？」

{	FwR("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0230180a00">
「对这里出兵的理由只是表面，实际上是从倒
幕派手中保护舞殿宫……是这样才对吧？」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230190a07">
「啊，没错没错。
　抱歉啊雷蝶，一不小心弄错了～」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230200a08">
「唔唔唔……」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230210a07">
「就是这样，署长。
　完全用不着担心宫大人哦！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230220a07">
「我是来保护宫大人的。
　从你们倒幕派的手里！」

{	FwR("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0230230a11">
「……啧……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　景明的养父气得把牙咬得咯咯响。
　体味着深刻的失败感——拼命抗拒着蜂拥而来的
绝望感。

　黑濑童子也是这样。
　绫弥一条——憎恶和战意随着每次呼吸而高涨。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230240a07">
「封锁寺院周边。
　一只苍蝇都别放出去。」

{	NwR("cg/fw/nw六波羅兵士.png");}
//【ｅｔｃ／包囲兵】
<voice name="ｅｔｃ／包囲兵" class="その他男声" src="voice/md03/0230250e249">
「是。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_複数兵士散開", 1000);

//◆ざっざっ。兵士、散る

	FadeDelete("軍団",1000,true);


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230260a07">
「好了，我们收拾这些家伙吧。
　你会帮忙吧，雷蝶？」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230270a08">
「……吾知道了啦……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230280a07">
「哦～哦～哦～
　紧咬嘴唇，脸色苍白，指尖微微发抖，
呼吸相当不稳定……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230290a07">
「看来状态绝佳啊。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230300a08">
「你烦死啦——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　让兵士分散至四周，茶茶丸走到阵前。
　然后是身边那个身躯异常庞大的男人……还有，景明。

　要开战了。
　我方状况不利————

　不。
　对我来说……反而正好。

　虽然和计划完全不同，总归是见到景明了。
　所以现在是绝好的机会。

　如果我能让景明恢复正常，这种状况也会改变！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正動く
//◆しかし茶々丸
	OnSE("se人体_動作_一歩", 1000);

	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	Move("@StL*", 200, @20, @0, null, false);
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服x.png");
	FadeStL(200, true);

	FadeStR(200, true);
	Move("@StR*", 300, @-20, @0, DxlAuto, false);


	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230310a07">
「——怎么。
　你以为我会让你得逞吗？」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230320a07">
「村正啊。」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0230330a01">
「茶茶丸……！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230340a07">
「怎么可能让你接近哥哥呢？
　我来当你的对手。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0230350a01">
「用不着！
　让开！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230360a07">
「才不要。
　……真是的，本以为你可能会派上用场才放
你一条生路，谁想反而给自己添麻烦了。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230370a07">
「今天我绝对会揍扁你的！」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0230380a01">
「……！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230390a07">
「雷蝶，那边带着剑胄的姑娘归你了。
　还有如果警察署长有所动作，你就把他顺便
也收拾了。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0230400a07">
「麻烦哥哥对付那个黑的。」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0230410a00">
「好吧。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230420a08">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(150,true);

//◆雷蝶と一条

	StR(1000, @0, @0, "cg/st/st一条_通常_制服b.png");
	StL(1000, @0, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStL(300, false);
	FadeStR(300, true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw黒瀬_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230430b26">
「一条大人，请多加小心！
　那家伙是小弓公方，今川雷蝶——」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230440a02">
「就是个大块头的废柴男吧。
　呵……这就好办了。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230450a02">
「要是四公方中的一人被打倒了，
就办不成聚会了吧？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230460a08">
「……这是说，你会打倒吾吗？」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230470a02">
「我管你怎么解释呢。
　要认为我是在挑衅也可以，要当做我是在背
九九乘法表也行，随你怎么想。」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230480a02">
「我要做的事都不会变。
　上了，正宗！」

{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/0230490b40">
《遵命！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。鎧パーツ分離
//◆装甲アクション

//	OnSE("se特殊_鎧_装着03",1000);
	CreateSE("SE01","se特殊_鎧_装着03");
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");


	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStA(0,true);
	StC(1000, @0, @0,"cg/st/st一条_装甲_制服a.png");
	FadeStC(0,true);
	Fade("絵フラ", 500, 0, null, true);

//おがみ：装甲アクション
	FadeDelete("絵暗転", 200, true);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg056_建長寺三門前_03.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 320, -220, "cg/st/resize/st一条_装甲_制服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵色白", 500, true);

	Wait(300);

	Move("絵演窓上/絵演背景", 600, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);



	SetFwR("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230500a02">
「鬼若现世，灭尽恶鬼。
  恶若现世，断绝邪恶！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

/*
	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st一条_装甲_制服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);
*/

	CreateTextureEX("絵演窓上/絵立絵2", 16200, -217, -50, "cg/st/resize/st一条_装甲_制服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 3, 500, 70, false);


	OnSE("se戦闘_攻撃_刀振る01",1000);
	EffectZoomadd(17000, 800, 100, "cg/ef/ef003_汎用移動.jpg", false);

	Fade("絵演窓上/絵立絵", 400, 0, Axl3, false);

	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);


	PrintBG("上背景", 30000);
	SetBlur("上背景", true, 6, 500, 50, false);
	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	OnBG(100,"bg056_建長寺三門前_03.jpg");
	StC(1000, @0,@0,"cg/st/st一条_装甲_制服b.png");
	FadeStC(0,true);
	FadeBG(0,true);
	Zoom("上背景", 400, 4000, 4000, Axl2, false);
	FadeDelete("上背景", 400, true);

	WaitKey(500);

	SetFwR("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230510a02">
「剑胄之理，正在于此！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆正宗変身

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	StC(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000,true);

	Wait(500);

	SetFwR("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/md03/0230520a02">
「佛经也好圣经也好古兰经也好选一种去祈祷
吧，你这花哨公方!!」

{	FwR("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230530a08">
「…………」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230540a08">
「现在的吾啊……
　比起其他任何人和事，你这嚣张的小妮子
真是让吾讨厌得不得了。」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230550a08">
「诅咒自己的不走运吧。
　……膝丸。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ガリーン。鎧パーツ分離
//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("装甲", 1000, @0, @0, "cg/ev/ev952_雷蝶装甲_a.jpg");
	Zoom("装甲", 0, 2000, 2000, null, true);
	SetBlur("装甲", true, 2, 500, 100, false);

//	StC(1000, @0, @0,"cg/st/st雷蝶_装甲_制服.png");
//	FadeStC(0,true);
	Fade("絵フラ", 1000, 0, null, false);
	Zoom("装甲", 1500, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw雷蝶_軍将.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0230560a08">
「顶礼膜拜八幡大菩萨！
　此身，御剑而成!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆膝丸変身
	#av_膝丸=true;

//◆正宗と膝丸

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	DeleteStA(0,true);
	Delete("装甲");

//おがみ：装甲演出EV完成後に見直し
	CreateTextureSP("装甲b", 1500, @0, @0, "cg/ev/ev952_雷蝶装甲_b.jpg");

//	FadeDelete("絵フラ", 1000,true);

	Fade("絵フラ", 1000, 0, null, true);

	WaitKey(1000);

	StC(1100, @0, @0,"cg/st/3d膝丸_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("装甲b",500,true);

	WaitKey(1000);

	Fade("絵フラ", 100, 1000, null, true);

	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureSP("絵演窓右/絵演右", 4100, -417, -160, "cg/bg/bg056_建長寺三門前_03.jpg");
	Zoom("絵演窓右/絵演右", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/resize/3d正宗_立ち_通常ｌ.png");
	Move("絵演窓右/絵背景100", 0, -1012, -661, null, true);

	CreateTextureSP("絵演左立ち絵", 3100, Center, Middle, "cg/st/resize/3d膝丸_立ち_通常ex.png");
	Move("絵演左立ち絵", 0, -1114, -30, null, true);
	CreateTextureSP("絵演左", 3000, -300, -200, "cg/bg/bg056_建長寺三門前_03.jpg");
	Zoom("絵演左", 0, 2000, 2000, null, true);

	Move("絵演左立ち絵", 2000, -1114, -130, Dxl2, false);
	Move("絵演窓右/絵背景100", 2000, -1012, -561, Dxl2, false);
	Move("絵演窓右/絵演右", 2000, @0, @60, Dxl2, false);
	Move("絵演左", 2000, @0, @-60, Dxl2, false);



	OnSE("se擬音_雰囲気_抜刀01", 1000);
	FadeDelete("絵フラ", 500, true);

	Wait(1000);



/*
	StL(1100, @0, @0,"cg/st/3d膝丸_立ち_抜刀.png");
	StR(1000, @100, @0,"cg/st/3d正宗_立ち_抜刀.png");
	FadeStR(300,false);
	FadeStL(300,true);

	WaitKey(900);

	DrawDelete("@StL*", 150, 100, "slide_02_01_0", false);
	DrawDelete("@StR*", 150, 100, "slide_02_01_0", true);
*/

	CreatePlainSP("絵板写", 20000);
	DeleteStA(0,true);

	Wait(32);

	Delete("絵演*");
	OnSE("se戦闘_動作_空突進01", 1000);
	DrawDelete("絵板写", 150, 100, "slide_02_01_0", true);

//	CreateSE("乱戦", "se戦闘_攻撃_乱戦02");
//	MusicStart("乱戦", 600, 1000, 0, 1000, null,true);


//◆黒瀬

	CreateTextureEX("絵ＳＴＣ100", 1500, 0, InBottom, "cg/st/st黒瀬_通常_私服.png");
	Fade("絵ＳＴＣ100", 300, 1000, null, false);
	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230570b26">
「一条大人！」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0230580a00">
「你还有空担心别人？」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230590b26">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("乱戦", 1000, 0, null);



//◆景明と黒瀬



	OnSE("se人体_動作_一歩", 1000);
	StR(1000, @0, @0, "cg/st/st景明汚染_戦闘_制服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0230600a00">
「真是奇遇。
　你是叫……黑濑吗？没想到会在这种情形下
再见面啊。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0230610a00">
「很不巧，这次我不会让你逃到任何地方的。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230620b26">
「……凑斗景明。
　虽然吾不想对有恩之人拔剑……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230630b26">
「您被奇异之术夺取了心智就没办法了。
　就由吾之剑将您引回正道吧。」

//◆笑い
{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0230640a00">
「……哼！」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0230650b26">
「参上！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//すぐ続くようなので以下のように記述しています inc櫻井
	SetVolume("@mbgm*", 2000, 0, null);


}

..//ジャンプ指定
//次ファイル　"md03_024vs.nss"