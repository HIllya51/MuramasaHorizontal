//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_027vs.nss_MAIN
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

	$GameName = "md03_028vs.nss";

}

scene md03_027vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_026vs.nss"


//◆茶々丸と村正

	PrintBG("上背景", 30000);
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	CreateColorSP("黒幕１", 20000, "BLACK");
	Delete("上背景");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", true);
	SoundPlay("@mbgm09", 0, 1000, true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0010a01">
「————」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0020a07">
「你还这么有余裕啊。
　现在不是东张西望……」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0030a07">
「————什!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　茶茶丸也看到了。
　出乎她的意料了吧。她愕然失语。

　景明与黑濑童子的对峙。
　只有这一点与之前相同。

　不同的是，黑濑童子穿着<RUBY text="··">装甲</RUBY>。
　
　原来他是武者。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @50, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0040a07">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　茶茶丸的焦虑显而易见。

　看看周围，身着黄金剑胄的巨汉武者虽然完全压制了
一条，却离景明他们有一定距离，无法及时赶去帮忙。
　要叫回四散去包围寺院的士兵也需要时间。

　如果没人支援的话……二者的战斗瞬间就会结束。
　武者与单薄的人类。胜负显而易见。

　倘若无人阻拦的话。
　
　如今插入二人之间的——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸、動く
//◆村正、阻止
	OnSE("se人体_動作_後ずさり01",1000);
	StL(1000, @-50, @0, "cg/st/st村正_戦闘_私服.png");
	Request("@StL*", Smoothing);
	Rotate("@StL*", 0, @0, @180, @0, null,true);

	Move("@StR*", 100, @-50, @0, DxlAuto, false);

	SetBlur("@StL*", true, 1, 500, 50, false);
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0050a07">
「你——让开啊!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0060a01">
「我拒绝。
　刚才立场相反时你也阻拦我了吧。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0070a07">
「你、你这……
　话说哥哥被杀了你也没好处吧!!」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0080a01">
「黑濑童子不会取他性命。
　就算会受伤……之后我给他治愈便可。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0090a01">
「和景明决出胜负后，我会让黑濑童子对付
你。
　在此期间我会使景明的精神恢复原状，也
会治好伤。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/027vs0100a01">
「你被将死了，茶茶丸!!」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/027vs0110a07">
「少开玩笑了!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突

	OnSE("se人体_動作_後ずさり01",1000);
	DeleteStR(100, false);
	DeleteStL(100, true);
	WaitKey(100);

	OnSE("se戦闘_攻撃_鎧_剣戟03", 1000);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	SetVolume("SE*", 800, 0, Axl2);
	Wait(800);


}

..//ジャンプ指定
//次ファイル　"md03_028vs.nss"