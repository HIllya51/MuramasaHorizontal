//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_009.nss_MAIN
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
	#ev220_茶々丸の世界=true;
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_010.nss";

}

scene md02_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_008.nss"


//◆茶々丸の世界
//◆ＳＥ：金神魔王尊の声。低めに。
//おがみ：演出一考
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 20000, "BLACK");
	CreateTextureSP("茶々丸の世界", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界", 0, 1500, 1500, null, true);
	CreateTextureEX("茶々丸の世界２", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界２", 0, 1500, 1500, null, true);
	DrawEffect("茶々丸の世界", 50, "LowWave ", 0, 100, null);
	DrawEffect("茶々丸の世界２", 50, "SuperWave", 0, 500, null);
	SetFont("黑体", 22, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("絵我が", 16000, 50, 20, 700, 500, "“我就是力量”");
	SetAlias("絵我が","絵我が");
	Move("絵我が", 0, 450, 230, null, true);
	Fade("絵我が", 0, 0, null, true);
        

	Delete("上背景");

	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);

	CreateSE("ぼえー", "se特殊_その他_神の声01");
	CreateSE("ノイズ１", "se日常_機械_ノイズ03");
	CreateSE("ノイズ２", "se日常_機械_ノイズ02");
	CreateSE("ノイズ３", "se日常_機械_ノイズ03");
	CreateSE("ノイズ４", "se日常_機械_ノイズ03");
	MusicStart("ぼえー",2000,1000,0,500,null,false);

	FadeDelete("黒幕１",2000,true);

	Wait(2000);

	MusicStart("ノイズ１",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 0, null, true);
	Fade("絵我が", 0, 0, null, false);
	SetVolume("ノイズ１", 0, 0, null);

	Wait(2000);

	MusicStart("ノイズ２",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 0, null, true);
	Fade("絵我が", 0, 0, null, false);
	SetVolume("ノイズ２", 0, 0, null);

	Wait(50);
	Fade("絵我が", 300, 1000, null, false);
	MusicStart("ノイズ３",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(150);
	Fade("茶々丸の世界２", 0, 0, null, true);
	Fade("絵我が", 0, 0, null, false);
	SetVolume("ノイズ３", 0, 0, null);

	Wait(2000);

	MusicStart("ノイズ４",0,1000,0,1000,null,true);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 500, null, true);
//	Fade("茶々丸の世界２", 0, 0, null, true);
	Fade("絵我が", 2000, 0, null, false);
	Wait(3000);

//◆音に合わせて　“我就是力量”　ＣＧ表示。小さく。
//■↑演出保留中　inc櫻井

	SetVolume("ノイズ４", 3000, 0, null);
	SetVolume("ぼえー", 3000, 0, null);

//◆朝
	FadeDelete("茶々丸の世界*",3000,true);
	Delete("茶々丸の世界*");
	Delete("絵我が");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……并不舒适地醒来。
　脑袋深处被钝痛缠绕着。

　就像做了非常糟糕的梦。
　完全没有落下任何记忆。要是噩梦的话，
真庆幸没有记起来。

　足利茶茶丸已经不在了。
　蜘蛛形态的村正就在身边。

　正想要唤醒时，门打开了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆すー。
	OnSE("se日常_建物_スライド開く01", 1000);

	SetNwC("cg/fw/nw女中.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0090010e259">
「您早。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0090020a00">
「……早。」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0090030e259">
「早饭已经准备好，请问需要吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0090040a00">
「……好的。」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0090050e259">
「明白。
　请稍候。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0090060a00">
「请问中将阁下在哪儿？」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0090070e259">
「刚刚吃过早饭后到执务室去了。
　有什么事的话我可以代为联络。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0090080a00">
「不……不必了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_010.nss"