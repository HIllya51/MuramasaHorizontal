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

scene ma04_015vs.nss_MAIN
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

	//$Ichizyou_Dead = true;
	//$Kanae_Dead = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($Kanae_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	$PreGameName = $GameName;

	$GameName = "ma04_016vs.nss";

}

scene ma04_015vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_014vs.nss"
//前ファイル　"ma04_014vsa.nss"
//前ファイル　"ma04_014vsb.nss"

//◆分岐
//◆ヒロイン全員生存なら１４Ａ
//◆香奈枝死亡なら１４Ｂ
//◆一条死亡なら１４Ｃ

}

//――――――――――――――――――――――――――――――
.//●１４Ａ
scene ma04_015vs.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

//◆一条·ばあや

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0010a02">
「……什么?!」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0020a04">
「是伏兵！
　……虽然早料到他们会在这里，
也知道一旦敌方有所动作他们就会出现。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒覇吐
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演", 3000, -20, -160, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Move("絵演", 6000, @0, -60, DxlAuto, false);
	Fade("絵演", 1000, 1000, null, true);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0030a04">
「太快了。
　怪物还活着！」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0040a02">
「那家伙瞄准了你的主人吧?!」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0050a04">
「……现在的大小姐也同样毫无防备。
　这样下去……！」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0060a02">
「怎么办?!
　联系凑斗先生——」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0070a04">
「…………不。就让我纱代前去。
　绫弥小姐，这里可以交由您来处理吧。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0080a02">
「……哈？
　不是，你去能有什么用!?」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0090a04">
「尽力而为吧。
　不用担心。姜是老的辣。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0100a02">
「喂喂喂……
　你等等——」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0110a04">
「再会。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ひゅいーん。さっと消える。
//◆しゅたた。疾走
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("@StL*", 150, 0, 5000, Axl2, true);

	CreateSE("SE01a","se戦闘_特殊_忍移動03");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0120a02">
「等下，啊…………」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0130a02">
「………………」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0140a02">
「……什么啊。那个婆婆……
　是忍者吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("絵色黒", 15000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

..//ジャンプ指定
//次ファイル　"ma04_016vs.nss"

}

//――――――――――――――――――――――――――――――
.//●１４Ｂ
scene ma04_015vs.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆部分装甲一条
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	StL(1000, @0, @0,"cg/st/st一条_戦闘_制服.png");
	FadeStL(0,true);
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0150a02">
「……咦？
　啊……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0160a02">
「什么……
　到底怎么了？」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0170a02">
「……伏兵……？
　也就是说……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆うおーん。荒覇吐
	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演", 3000, -20, -160, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Move("絵演", 6000, @0, -60, DxlAuto, false);
	Fade("絵演", 1000, 1000, null, true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0180a02">
「…………」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/015vs0190a02">
「原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃撃ずがが。
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(5,20);

	CreateSE("SE02a","se戦闘_銃器_跳弾04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("絵色黒", 15000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

..//ジャンプ指定
//次ファイル　"ma04_016vs.nss"

}

//――――――――――――――――――――――――――――――
.//●１４Ｃ
scene ma04_015vs.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0200a04">
「……伏兵！
　这种时候……」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/015vs0210a04">
「不好。
　这样下去，大小姐就——！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @60, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);
	Move("@StL*", 300, @-60, @0, Dxl2, true);

//◆ばひゅーん。疾走。
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("@StL*", 150, 0, 5000, Axl2, true);

	CreateSE("SE01a","se戦闘_特殊_忍移動03");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("絵色黒", 15000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

..//ジャンプ指定
//次ファイル　"ma04_016vs.nss"

}


