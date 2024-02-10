//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_007vs.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_008.nss";

}

scene mc04_007vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_006.nss"

//◆香奈枝サイド
//◆ずががががが。銃撃
//◆倒れる兵士ら
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	OnBG(100, "bg090_大鳥邸通路a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm06", 0, 1000, true);


	CreateSE("歩く", "se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("歩く", 0, 1000, 0, 1000, null,true);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);


	StL(1000, @0, @0, "cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(300, true);


	SetNwC("cg/fw/nw大鳥軍兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／大鳥兵士Ａ】
<voice name="ｅｔｃ／大鳥兵士Ａ" class="その他男声" src="voice/mc04/007vs0010e171">
「啊呀————————!!
　香奈枝大人，请饶命——————!!」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0020a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん。殺。

	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	CreateTextureEX("血", 15000, @0, @0, "cg/anime/blood02a_3.png");
	Fade("血", 0, 1000, null, false);
	Shake("@StL*", 100, 13, 1, 0, 0, 1000, Axl1, true);
	Fade("フラッシュ白",0,1000,null,true);
	FadeDelete("血",1000,false);
	Fade("フラッシュ白",300,0,null,true);

	OnSE("se人体_衝撃_転倒01", 1000);



	Move("@StL*", 200, @-10, @150, DxlAuto, false);
	DeleteStL(300,true);

	StR(1000, @0, @0, "cg/st/st六波羅兵士_通常_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStR(300, true);


	SetNwC("cg/fw/nw大鳥軍兵士Ｂ.png");

//嶋：修正（お父上）【090930】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥兵士Ｂ】
<voice name="ｅｔｃ／大鳥兵士Ｂ" class="その他男声" src="voice/mc04/007vs0030e172">
「不、不是的啊，香奈枝大人！
　我们只是遵从狮子吼大人的命令，对您父亲
大人绝对没有丝毫叛逆之心——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずがーん。殺。
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	CreateTextureEX("血", 15000, @0, @0, "cg/anime/blood02b_3.png");
	Fade("血", 0, 1000, null, false);
	Shake("@StR*", 100, 13, 1, 0, 0, 1000, Axl1, true);

	Fade("フラッシュ白",0,1000,null,true);
	FadeDelete("血",1000,false);
	Fade("フラッシュ白",300,0,null,true);

	OnSE("se人体_衝撃_転倒05", 1000);

	Move("@StR*", 200, @10, @150, DxlAuto, false);
	DeleteStR(300,true);


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0040a03">
「……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0050a03">
「呵呵。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走り出す
//◆場所移動

	SetVolume("歩く", 1000, 0, null);

	OnSE("se戦闘_動作_空突進02", 1000);

	Zoom("@OnBG*", 600, 1500, 1500, DxlAuto, false);


	Wait(200);

//◆大廊下
//◆ずさーっと香奈枝登場
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(100, "bg089_大鳥邸貴人の間_01.jpg");
	FadeBG(0, true);

	StL(1100, @-30, @0,"cg/st/st六波羅兵士_通常_制服.png");
	StR(1000, @30, @0,"cg/st/st六波羅兵士_通常_制服.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	FadeStA(0,true);

	OnSE("se人体_動作_スライディング", 1000);
	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw大鳥軍兵士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0060e173">
「什么——」


{	NwC("cg/fw/nw大鳥軍兵士Ｆ.png");}
//【ｅｔｃ／大鳥兵士Ｆ】
<voice name="ｅｔｃ／大鳥兵士Ｆ" class="その他男声" src="voice/mc04/007vs0070e176">
「呜——」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/007vs0080b18">
「…………啊……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0090a03">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガンパレード。ばきゅんどきゅん。
//◆殺戮
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("血1", 14000, @0, @0, "cg/anime/blood01a_12.png");
	Fade("フラッシュ白",300,0,null,true);

	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("血2", 14100, @0, @0, "cg/anime/blood02b_7.png");

	Fade("フラッシュ白",300,0,null,true);

	OnSE("se人体_衝撃_転倒01", 1000);

	Move("@St*", 600, @0, @50, null, false);
	Shake("@St*", 600, 2, 0, 0, 0, 1000, null, false);
	DeleteStA(600,true);

	FadeDelete("血*",1500,true);

	StL(1000, @-120, @0,"cg/st/st六波羅兵士_通常_制服.png");
	Move("@StL*", 150, @120, @0, Dxl2, false);
	FadeStL(150,true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0100e173">
「——等、等一下！
　香奈枝大人，到此为止！」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0110a03">
「……」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0120e173">
「您不会是忘记了吧！　这位是您的妹妹，花
枝大人！
　……您不怕把她也卷进来吗!?」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0130a03">
「……」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0140e173">
「把枪——把枪放下！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0150a03">
「为什么？」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0160e173">
「……啊？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0170a03">
「哪有必要放下枪？」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0180e173">
「什、什么为什么……
　…………您会打中她的啊？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/007vs0190a03">
「……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/007vs0200b18">
「傻瓜。」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0210e173">
「哎？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずきゅーん。

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0220e173">
「……」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/007vs0230e173">
「怎、怎么……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ばた。
	OnSE("se人体_衝撃_転倒01", 1000);

	Move("@StL*", 500, @0, @50, null, false);
	DeleteStL(500,true);

	Wait(300);
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	WaitKey(1000);

}

..//ジャンプ指定
//次ファイル　"mc04_008.nss"