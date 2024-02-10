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

scene md03_022.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_023.nss";

}

scene md03_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_021.nss"


//◆建朝寺。bg056_夜

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);

	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	StCL(1000, @80, @0, "cg/st/st一条_通常_制服.png");
	StL(900, @-100, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);



	SetFwC("cg/fw/fw署長_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220010a11">
「有什么需要的东西吗？
　我会尽可能地准备的……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220020a01">
「我不需要。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220030a02">
「我也是。」

{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/0220040b40">
《唔啊啊～～～啊啊！
　正义之魂早已完全装备！再不需要
其他任何东西了!?》

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220050b26">
「以本人现有的武装便足够了。
　没时间召集同伴倒是很遗憾……」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220060a11">
「既是要去潜入，也是有利有弊的吧。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220070b26">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我们现在正要前往普陀乐城。

　他们是为了实现他们的目的。
　我是——为了去见景明，夺回他的意志。

　现在的他恐怕会抗拒吧。
　即使如此……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220080a11">
「你们三人目的虽然不同。
　但都是舞殿宫殿下的希望。」

//【署長】
<voice name="署長" class="署長" src="voice/md03/0220090a11">
「宫殿下让我代为转告说拜托你们了。」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220100b26">
「不敢当。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220110a02">
「就算不拜托我们也会做的。」

{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/md03/0220120b40">
《正义并非执行命令！
　但是赞同是理所当然的！》

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220130a01">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220140a11">
「我也要拜托你。
　……村正。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220150a01">
「哎？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0220160a11">
「我儿子就交给你了。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220170a01">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0220180a01">
「好的……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220190a02">
「…………」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0220200b26">
「时间紧迫。
　好了，差不多该出发了。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0220210a02">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

}

..//ジャンプ指定
//次ファイル　"md03_023.nss"