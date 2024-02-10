//<continuation number="140">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_013.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mb04_013.nss","MasamuneComes",true);
	Conquest("nss/mb04_013.nss","MasamuneComesSET",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg002_空a_02=true;
	#bg201_旋回演出背景市街地_02=true;
	#bg041_片瀬海岸_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_014.nss";

}

scene mb04_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_012vs.nss"

//◆夕空
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreateTextureSP("絵背景100", 100, 0, -1000, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	CreateSE("SE01L","se戦闘_動作_空走行02_L");
	MusicStart("SE01L",2000,500,0,1000,null,false);

	Move("絵背景100", 100000, @0, -1500, null, false);


	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/mb04/0130010a14">
《呵……呵呵……》


//【光】
<voice name="光" class="光" src="voice/mb04/0130020a14">
《我很高兴……》


//【光】
<voice name="光" class="光" src="voice/mb04/0130030a14">
《……再……》


//【光】
<voice name="光" class="光" src="voice/mb04/0130040a14">
《……让我们下次……
　……再见吧。》


//【光】
<voice name="光" class="光" src="voice/mb04/0130050a14">
《…………景明…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_動作_空突進08");
	MusicStart("SE02",0,300,0,1000,null,false);
	Wait(2500);

//◆海に沈む音。どぼーん。遠い。
	CreateSE("SE01","se人体_動作_水中飛び込み02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130060a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	SetVolume("SE*", 2500, 0, null);
	WaitKey(2500);

//◆海岸·夕
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg041_片瀬海岸_02.jpg");

	FadeDelete("上背景", 1500, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 1500, true);

	CreateSE("SE01","se戦闘_動作_鎧_着地01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(800);
	Shake("絵背景100", 500, 0, 5, 0, 0, 1000, Dxl2, false);


	Wait(800);

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正重新进行装甲，着陆。
　……银星号沉入了海底。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0130070a01">
《……要确认……她的生死吗？》


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130080a00">
「不……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没有必要去做那种事。
　而且，我也有所顿悟。

　现在自己那仿佛已经麻痹了的心……
　在最终确认这一事实时，大概会崩溃吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。膝を突く
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StR*", 300, @10, @40, Dxl2, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb04/0130090a01">
《主君！》


{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130100a00">
「……我没事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　击败银星号所带来的冲击，深深地渗入了骨髓。
　能量也已近枯竭。

　即便如此，现在我仍不能倒下。

　还不能倒下。
　身心都不能。

　历经两年的战斗已经画上了休止符。
　但我还有一件事需要完成。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　————这样……就可以了吧……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("絵色黒", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　这是一个我尚未回答的问题。
　我不能弃之于不顾。

　我曾与她约定，会跟随她、协助她。
　我有义务为她竭力。

　我必须满足她的要求。

　她若要向我追究，那么即使要豁出一切我也必须
回应她。

　这是……
　我最后的责任。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(500,true);

//◆ひゅごーん。すちゃ。騎航と着陸のＳＥ
	MasamuneComes();

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我无需回首确认，便知晓身后来人的情绪已激动到
仿佛要将全身点燃一般。
　兴许是由于勉强进行长时间飞行，她剧烈地喘息着，
甚至可以听到心脏剧烈跳动的声音。

　她似乎正拼命地抑制着。
　她深吸了一口气。之后————却仍一言不发。

　比激烈言辞更犀利的沉默，炙烤着我的后背。
　
　她已然察觉到。
　察觉到我做了什么。

　……那么给她答案吧。
　她曾在枕边质问过我的问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@プロセス正宗飛来");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130110a00">
「一条。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130120a00">
「于邪，你的愤怒是正义的。
　于恶，你的憎恶是正义的。」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130130a00">
「你是正义的。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0130140a00">
「但……
　<RUBY text="····">你的战斗</RUBY>，却绝非正义的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度シーン切り
	ClearWaitAll(2000, 0);

}

..//ジャンプ指定
//次ファイル　"mb04_014.nss"



.//プロセス用======================================================

..//正宗が遠方より騎航し着地する
function MasamuneComes()
{
	CreateProcess("プロセス正宗飛来", 5000, 0, 0, "MasamuneComesSET");
	SetAlias("プロセス正宗飛来","プロセス正宗飛来");
	Request("プロセス正宗飛来", Start);
	Request("プロセス鼓動", Disused);
}

function MasamuneComesSET()
{
	CreateSound("SEP01", SE, "sound/se/se戦闘_動作_空落下02");
	CreateSound("SEP02", SE, "sound/se/se戦闘_動作_鎧_着地01");
	SetVolume("SEP01", 0, 0, null);
	SetVolume("SEP02", 0, 0, null);
	SetAlias("SEP01", "SEP01");
	SetAlias("SEP02", "SEP02");

	Request("SEP01", "Play");
	SetVolume("SEP01", 1000, 1000, null);
	Request("SEP01", Disused);

	Wait(1000);
	SetVolume("SEP01", 1000, 0, null);
	Wait(1000);
	Delete("SEP01");

	Wait(300);

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, 1000, null);
	Request("SEP02", Disused);

	WaitPlay("SEP02", null);
	WaitPlay("SEP*", null);
}