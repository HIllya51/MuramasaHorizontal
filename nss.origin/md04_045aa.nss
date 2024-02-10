//<continuation number="1520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045aa.nss_MAIN
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
	#ev229_茶々丸ＥＤ=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameCircle=0;

}

scene md04_045aa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_045a.nss"


//◆ＥＶ：茶々丸ＥＤ


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateTextureSP("イベント絵上", 4010, -330, InBottom, "cg/ev/resize/ev229_茶々丸ＥＤm.jpg");
	CreateTextureSP("イベント絵", 4000, @0, @0, "cg/ev/ev229_茶々丸ＥＤ.jpg");
	CreateSE("SE01","se背景_ガヤ_燃える町並み_L");
	MusicStart("SE01",2000,1000,0,1000,null,false);

	Wait(5000);

	Delete("上背景");
	FadeDelete("黒幕１",3500,true);

	SetVolume("SE*", 5000, 0, null);

	Wait(1000);
	SoundPlay("@mbgm19", 0, 1000, true);

	Move("イベント絵上", 6000, @0, -25, DxlAuto, true);


	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1300a07">
「哎呀——真是一场苦战呢。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1310a00">
「……是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　与茶茶丸二人，坐在瓦砾堆成的山上。

　直到刚才，这里还被称作普陀乐城天守阁。
　如今毫无形迹。毁去它的不是我们，而是
那位敌将的力量。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("イベント絵上", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1320a00">
「胜率，不是只有百分之一的程度而已吗？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1330a07">
「冷静想想是没错呢。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1340a00">
「…………
　再也不信你说的话了。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1350a07">
「Ｏｎｅ，Ｏｎｅ　ｍｏｒｅ　ｃｈａｎｃｅ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　夕阳笼罩大地。

　有几颗银色之星，如萤火虫般飞舞着。
　但，本应发出最强光芒的那颗已然不在了。

　锻造雷弹已经投下，与此同时银星号消失无踪。
　
　我不知道，光到底如何了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1360a00">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1370a07">
「回去吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　察觉到我的不安，茶茶丸说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1380a07">
「公主殿下必将到达神的领域。
　将神夺取，然后回到这里来。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1390a07">
「因为哥哥你在这里。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　刚刚还说过再也不信她了。
　我什么也无法回答。

　只是在心中，默默地点头。

　沉默地度过时光。
　名为终局的瞬间，平静地流逝而去。

　世界将要结束了吧。
　但是这里，就好像已经结束了似的……
一片寂静。

　没有声音，只有光与影的移行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1410a07">
「其实呢。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1420a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1430a07">
「我还有一个秘密没有告诉哥哥。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1440a00">
「说来听听。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1450a07">
「嗯。
　其实啊。」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1460a07">
「我对哥哥是一见钟情。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1470a00">
「……」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1480a07">
「第一次听到声音时就喜欢上哥哥了。
　……知道吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1490a00">
「……」

{	FwC("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1500a07">
「……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1510a00">
「这样啊。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1520a07">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　世界走向终结。

　神终会降临吧。
　在这寂静的光阴之海。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(5000, 3000);

//◆ＥＮＤ

/*
//あきゅん「演出：このエンド居る？　いらんでしょ」
	CreateColorEX("黒幕１", 5000, "BLACK");

	SetVolume("@mbgm*", 6000, 0, null);

	Fade("黒幕１", 3000, 1000, null, true);

	CreateTextureEX("END", 15000, @900, @520, "cg/sys/Telop/lg_エンド.png");
	Fade("END", 1000, 1000, null, true);
	Fade("END", 5000, 0, null, true);
*/


}

..//ジャンプ指定
//次ファイル
