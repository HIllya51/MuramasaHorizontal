//<continuation number="680">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_023.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md01_023.nss","Zansyu_md01_023",true);
	Conquest("nss/md01_023.nss","ZansyuSet_md01_023",true);
	

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
	#bg026_普陀楽山塞a_01=true;
	#bg045_普陀楽城公方の間_01=true;
	#ev214_足利護氏の行列=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_024.nss";

}

scene md01_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_022.nss"

//◆時間経過。参拝当日
//◆普陀楽城
//◆適当な一室
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(3000,true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230010a05">
「……舞殿宫殿下。
　余将前赴八幡宫执太刀奉纳之仪。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230020a05">
「留守普陀乐与款待奉币使九条殿下之事，
请一定拜托了。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230030a10">
「啊，嗯。
　那边也拜托了，六府。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230040a05">
「是。
　余前去祈愿国家百年之繁荣。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230050a10">
「那真是件好事啊。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230060a05">
「余六府斗胆将神州大和之重任委于己身……
　若为国家，无论何事皆必不懈怠。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230070a10">
「……嗯，本王知道。
　六府的赤胆忠心，本王很清楚。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230080a05">
「余惶恐。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230090a05">
「那么现在，在宫殿下面前，余先完成一桩责
任吧。
　虽为例行公事，亦不可省。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230100a10">
「……什么事？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230110a05">
「雷蝶。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230120a08">
「是，父亲。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばたんごろごろ。人間を一人投げ込んだ。
	CreateSE("SE01","se戦闘_攻撃_人投げ込む");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainEX("絵演震", 5000);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 1000, 0, 4, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw縛られた男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230130e148">
「宫……宫殿下……」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230140a10">
「金子?!
　你为什么在这里……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230150a10">
「这是怎么回事，六府！」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230160a05">
「……是吗……
　宫殿下完全不知呢。」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230170a05">
「此人作为宫殿下身边之侍从，勾结逆贼冈部
残党……
　竟企图将宫殿下引入谋反之中！」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230180a10">
「————」

{	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230190e148">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230200a05">
「对于宫殿下，此应为晴天霹雳。
　但物证已存，无可置疑——」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230210a05">
「余理解殿下之心情。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230220a10">
「……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230230a08">
「咦？
　舞殿宫殿下，似乎不太吃惊呢。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230240a08">
「不会是，早就知道了……之类？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230250a10">
「不……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230260a05">
「不可胡言，雷蝶。
　舞殿宫殿下之尊，怎能知其为逆贼而置于身
边。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230270a05">
「……是吧？
　宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230280a10">
「…………」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230290a08">
「嘻嘻，嘻嘻嘻……」

{	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230300e148">
「和宫殿下无关！　他什么也不知道！
　我试探了宫殿下是否有倒幕的想法，但却没
有任何成果，所以才这样……！」

//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230310e148">
「可惜，舞殿宫殿下和传闻中的一样，毫无价
值！
　赶快把我的首级——」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230320a08">
「你闭嘴。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぼく。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵演震", 1000, 4, 0, 0, 0, 1000, Dxl2, false);

	StL(1000, @0, @0,"cg/st/st雷蝶_通常_制服.png");

	SetNwC("cg/fw/nw縛られた男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230330e148">
「呜啊——」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230340a10">
「金子！」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230350a05">
「宫殿下。到底如何。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230360a05">
「若宫殿下知其本性……
　为何将其留置身边，余必须仔细了解。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230370a05">
「因余护氏有责任守护大和。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230380a10">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230390a05">
「如若不知……便很简单。
　那么，到底如何。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230400a10">
「……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230410a10">
「不知道。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230420a05">
「……」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230430a08">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230440a10">
「本王什么都不知道。
　金子竟是如此恶人……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230450a10">
「能不要把本王卷进去吗。
　对本王心脏不好。」

{//◆小声で
	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230460e148">
「……嘿嘿……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230470a05">
「……那么，宫殿下。
　此人之处分可否交至余。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230480a10">
「嗯……可以。
　怎样都可以。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230490a05">
「是。
　雷蝶，带下去。」

{	Delete("絵演震");
	FadeStL(300,false);
	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md01/0230500a08">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//あきゅん「演出：プロセス用の定義まとめ」
	CreateSE("PSE01","se人体_動作_人引きずる_L");
	CreateSE("PSE01a","se戦闘_攻撃_刀刺さる05");
	CreateVOICE("ｅｔｃ／側近金子","md01/0230510e148");
	CreateSE("PSE01b","se人体_衝撃_転倒02");

	Zansyu_md01_023();
	DeleteStA(300,true);

//◆人を引き摺ってく音
//◆斬った音。ずばー。

/*
//◆ボイスのみ。テキスト出さない
{	NwC("cg/fw/nw縛られた男.png");}
//【ｅｔｃ／側近金子】
<voice name="ｅｔｃ／側近金子" class="その他男声" src="voice/md01/0230510e148">
「呃啊——!!」
*/

//◆倒れる音。ごろん。

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230520a05">
「……逆贼之末路必将如此。
　守护世间正义实乃可喜之事。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230530a10">
「……是啊。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230540a05">
「冈部未死之人近期亦将一网打尽，并使之步
其后尘。
　请殿下安心等待。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230550a10">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230560a05">
「余六府得知宫殿下未与大逆之蠢策相关，已
然宽心。
　宫殿下深明事理，本就未曾质疑，但——」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230570a05">
「今后，也请保持清正之身。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230580a10">
「本王知道……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230590a05">
「因此余也可放心执行奉刀之仪了。
　那么……告辞。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230600a10">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230610a05">
「宫殿下。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230620a10">
「什么事。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230630a05">
「沙罗双树之花色，表盛者必衰之理。
　高傲者之世，亦如春夜之梦。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230640a05">
「——如此存念而耐心等待尚可。
　六波罗并非狭量，不至追究脑中自娱之梦。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230650a10">
「…………」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0230660a05">
「哼哼哼哼……
　哇哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆護氏去る
	DeleteStA(300,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230670a10">
「……」

//◆悔しさを噛み殺す風
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md01/0230680a10">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ有れば。市中をゆく護氏の行列
//あきゅん「演出：ここのＥＶの使い方がよくわからない」
	ClearWaitAll(2000, 1000);

	Delete("@プロセス*");

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev214_足利護氏の行列.jpg");
	CreateSE("SE01","se背景_ガヤ_大名行列_L");
	Delete("上背景");
	MusicStart("SE01",1000,1000,0,1000,null,true);
	FadeDelete("絵暗転", 1000, true);

	WaitKey(3000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_024.nss"


.//プロセス用======================================================
..//斬首の後流し
function Zansyu_md01_023()
{
	CreateProcess("プロセス斬首", 5000, 0, 0, "ZansyuSet_md01_023");
	Request("プロセス斬首", Start);
	Request("プロセス斬首", Disused);
}

function ZansyuSet_md01_023()
{
	MusicStart("@PSE01",0,1000,0,1000,null,true);

	Wait(6000);

	SetVolume("@PSE01", 100, 0, null);
	MusicStart("@PSE01a",0,750,0,1000,null,false);

	Wait(300);

	MusicStart("@ｅｔｃ／側近金子",0,750,0,1000,null,false);

	Wait(1000);

	MusicStart("@PSE01b",0,750,0,1000,null,false);

}