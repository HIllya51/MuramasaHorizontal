//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_018.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_018.nss","DenziMan",true);
	Conquest("nss/mb04_018.nss","DenziManSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg041_片瀬海岸_02=true;
	#bg041_海岸_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_019.nss";

}

scene mb04_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_017vs.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 5000, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　……………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180010b40">
《主君。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180020b40">
《现在不是睡觉的时候。
　快睁开眼。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海岸
//◆正宗天牛虫
	CreateSE("SEL01","se自然_水_浜辺の波01_L");
	OnBG(100,"bg041_海岸_02.jpg");
	StR(1000, @0, @350,"cg/st/3d正宗天牛虫_正面.png");
	FadeBG(0,true);
	FadeStA(0,true);
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	DrawTransition("絵暗転", 1000, 1000, 0, 300, DxlAuto, "cg/data/slide_05_00_0.png", true);
	Delete("絵暗転");

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180030a02">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180040a02">
「正宗……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180050b40">
《好。
　明白现在的状况吧？》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180060a02">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180070a02">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 4000, -330, -85, "cg/ev/resize/ev948_正宗突進汎用exl.jpg");
	Fade("絵演背景", 1000, 750, null, false);

	SoundPlay("@mbgm26",0,1000,true);

/*

//あきゅん「演出：電磁抜刀ムービーを流してたけどなんかバグるので保留」
	DenziMan();
*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　被村正的阴义击中——
　承受住。然后再利用正宗的阴义，
以村正的阴义<RUBY text="····">予以反击</RUBY>。

　以彼之道，还施彼身。
　将自身所承受的攻击再现，原封不动地返回给对方，
这就是相州真宗的绝招。

　这也就意味着，村正亲身承受了自己那宛若闪电般迅
速的拔刀术的攻击……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演背景", 1000, false);
//	FadeDelete("@プロ電磁抜刀回想", 1000, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180080a02">
「……他死了……吗？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180090b40">
《没有。
　因为之前他那一刀便缺乏力度，所以吾等将
攻击返还的力度也不够强。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180100b40">
《真是可恨！
　若非方才他那一击如此软弱无力，吾的阴义
就能使他毙命了！》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180110a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　但若是那样的话，在反击之前就会被村正所击毁了。
　
　……一瞬间这种想法闪过脑海，又迅速将其抹去。

　那是不可能的。
　正宗是<RUBY text="····">绝对不会倒下</RUBY>的。

　因为不会倒下，便一定能将敌人的王牌夺为己用。
　此阴义绝对是最强的。

　没有任何问题。
　既然正宗是不会倒下的，那么便再无任何问题。

　背负正义之名的人是绝不会倒下的！
　
　无论受到多重的伤，
　哪怕——被信任的伙伴所背叛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆一条、立つ
//◆少しよろめく
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180120a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180130b40">
《体外伤已大致愈合。
　有什么障碍吗？》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180140a02">
「……没有。可以了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　虽然总觉得内脏少了些部分。
　不过，现在那种事情也无所谓。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180150a02">
「倒是你，状况怎么样？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180160b40">
《已经进行了最低限度的修复。
　不必担心。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180170b40">
《那么走吧。
　恶鬼也被击落了……大概就坠落在这附近。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180180b40">
《现在，去将他了结吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックスと立ち絵消して背景表示
	DeleteStA(300,true);
	WaitKey(2000);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180190a02">
「……这里是什么地方？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180200b40">
《是一个叫美浜的地方。》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180210a02">
「去小弓时经过的地方啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　这么一说，的确有点眼熟。

　从习志野沿着海岸线行走。
　大约是在东南角的方位……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180220a02">
「——」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180230b40">
《他应该就在……{WaitKey(3500);}<BR>　嗯。信号探查果然在地面上就失灵了啊。》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180240b40">
《那去西北方位探查一下吧。他就是坠落在那
个方位的。
　走吧，主君。》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180250a02">
「正宗……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180260b40">
《……嗯？　怎么了？》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180270a02">
「看那里。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆視界移動
	CreateTextureEX("絵演背景", 4000, Center, 0, "cg/bg/resize/bg004_鄙びた村b_02.jpg");
	Move("絵演背景", 3000, @-256, @0, DxlAuto, false);
	Fade("絵演背景", 600, 1000, null, true);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180280b40">
《……烟？
　距离这里没有多远……》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180290a02">
「是啊。
　你认为那是什么，是火灾吗？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180300b40">
《那么……
　……等等！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180310b40">
《主君，有钢铁的声音。》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180320a02">
「钢铁？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180330b40">
《是<RUBY text="··">军队</RUBY>。
　绝对没错。》


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180340a02">
「……！」


{	FadeDelete("絵演背景", 300, false);
	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0180350b40">
《怎么办？》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0180360a02">
「走吧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆だっしゅ。
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆ウェイト
	WaitPlay("@mbgm*", null);
	WaitPlay("SE01", null);
	WaitKey(3000);

//◆以下、顔グラ無し
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0180370b21">
「……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0180380b21">
「……终于追上了……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0180390b21">
「不会再让你逃掉了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_019.nss"


.//プロセス用======================================================

..//電磁抜刀返しの回想
function DenziMan()
{
	CreateProcess("プロ電磁抜刀回想", 5000, 0, 0, "DenziManSET");
	SetAlias("プロ電磁抜刀回想", "プロ電磁抜刀回想");
	Request("プロ電磁抜刀回想", Start);
	Request("プロ電磁抜刀回想", Disused);
}

function DenziManSET()
{
	CreateMask("マスク", 3100, 0, 0, "cg/data/slide_08_00_0.png", true);
	CreateMovie("マスク/絵演動画", 3000, 0, 0, false, false, "dx/mv電磁抜刀_禍.ngs");

//	Fade("マスク/絵演動画", 0, 0, null, true);
	Request("マスク/絵演動画", Stop);
//	Fade("マスク/絵演動画", 1000, 1000, null, false);
	Request("マスク/絵演動画", Play);

	WaitPlay("マスク/絵演動画", null);

	Fade("マスク/絵演色白", 1000, 1000, null, false);
	Fade("マスク/絵演動画", 1000, 0, null, true);
	Delete("マスク/絵演動画");
	Fade("マスク", 2000, 0, null, true);
	Delete("マスク");
}