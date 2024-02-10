//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_019.nss_MAIN
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
	#bg098_堀越御所内廊下_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_020.nss";

}

scene md02_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_018.nss"


//◆通路
//◆光。ずかずか。
//◆茶々丸

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);
	CreateSE("ずかずか", "se人体_足音_歩く09");
	MusicStart("ずかずか", 0, 1000, 0, 1000, null, true);

	SoundPlay("@mbgm30", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStR(300, false);
	FadeStL(300, true);
	SetVolume("ずかずか", 1000, 0, null);

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190010a07">
「呀呵——公主殿下。
　今天也在啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 300, @0, @80, Axl1, true);
	WaitKey(100);
	OnSE("se人体_動作_跳躍01",1000);
	DeleteStR(100,false);
	SetBlur("@StR*", true, 2, 10, 10, false);
	Move("@StR*", 100, @-80, @-80, Dxl3, true);
	SetFwC("cg/fw/fw光_怒り.png");

//inc久保田　プレ分けしました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【光】
<voice name="光" class="光" src="voice/md02/0190020a14">
「天体坠落小彗星·简略版!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん
	OnSE("se戦闘_攻撃_殴る05", 1000);
	CreateTextureEXadd("ずがん", 15000, @0, @0, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("ずがん", 0, 180, 0, 180, null, false);
	Zoom("ずがん", 100, 1500, 1500, null, false);

	Fade("ずがん", 0, 1000, null, true);
	DeleteStL(300,false);
	Move("@StL*", 300, @0, @300, Dxl3, false);
	WaitKey(200);
	Fade("ずがん", 150, 0, null, true);
	Delete("ずがん");



	SetFwC("cg/fw/fw茶々丸_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190030a07">
「拿我来出气也过分了点吧!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(1000, @-50, @0, "cg/st/st光_通常_私服.png");
	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StR*", 300, @50, @0, Dxl3, false);
	FadeStR(300, false);
	SetFwC("cg/fw/fw光_警戒.png");
//inc久保田　プレ分けしました
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【光】
<voice name="光" class="光" src="voice/md02/0190040a14">
「咯……
　我很气愤！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @50, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(1500,false);
	Shake("@StL*", 1500, 2, 4, 0, 0, 500, AxlAuto, false);
	Move("@StL*", 1700, @0, @-50, DxlAuto, false);

	SetFwC("cg/fw/fw茶々丸_歯噛.png");
//inc久保田　プレ分けしました
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190050a07">
「早上是可恶和尚的性骚扰，中午的时候
又被那该死的剑胄戏弄，最后就连打个招呼
也要挨打，我的愤怒也不知要如何排遣！」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190060a14">
「故意装着什么也不知道的样子。
　反正你是都听到了吧。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190070a07">
「嗯——姑且算吧。」

{	FwC("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190080a14">
「景明那家伙……
　这么容易对那女人放下警惕……」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190090a14">
「让我不得不抱有敌意的一个人，
只有将父亲夺走的罪魁祸首，母亲。
　没想到事情会落得如此地步。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190100a07">
「诶……
　公主你那是天真地认为是<RUBY text="··">女人</RUBY>的缘故啊。」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190110a14">
「？　那当然。
　除了女人还能是什么？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190120a07">
「是剑胄哦？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190130a14">
「人类女人、虾夷女人、剑胄女人。
　女人就是女人。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190140a07">
「正确。
　那么，你打算怎样？」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190150a14">
「没能怎样。」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190160a14">
「只要贯彻光的霸道，所有愿望都能实现。
　到那之前，也只是抱着一颗焦虑的种子。」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190170a14">
「最后，若被夺走的东西能全部抢回的话……
也就不拘泥于期间的经过。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190180a07">
「这样啊。」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190190a14">
「嗯……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190200a07">
「那么。」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190210a14">
「呣？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190220a07">
「那个，能给我吗？」

{	FwC("cg/fw/fw光_驚き.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190230a14">
「那个？
　……啊啊，<RUBY text="这个">结晶</RUBY>吗。」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0190240a14">
「虽然都作出来了，但还是浪费了。
　想要吗？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0190250a07">
「嗯。
　或许会有用上的时候。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_020.nss"