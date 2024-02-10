
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsaa.nss_MAIN
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
	#ev187_銘伏の妖剣_h=true;
	#ev187_銘伏の妖剣_g=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vsaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_014vsa.nss"

//●打つ·身体
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 100, "BLACK");

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　无可奈何！
　至多是两败俱伤。

　幸运的话，我可以活下来，而且还能打击敌人！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆袈裟懸け。しゅいーん。
	OnSE("se戦闘_攻撃_刀振る02", 1000);
	CreateTextureSP("絵演効果", 11000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");

//◆小ウェイト
	WaitKey(800);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_f.jpg");

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0630a00">
「!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　手感——
　
{	Wait(500);
FadeDelete("絵演効果", 1000, false);}
　　　　　　　　　　……没有？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆闇差分ｂ
	CreateTextureSP("絵背景09", 4300, @0, @0, "cg/ev/ev187_銘伏の妖剣_f.jpg");
	Delete("絵背景09EX");

//◆ぼやけ差分ｃ：切先迫り＆片手
	CreateTextureEX("絵背景10", 4400, @0, @0, "cg/ev/ev187_銘伏の妖剣_h.jpg");
	Fade("絵背景10", 2000, 1000, null, true);

//◆明確差分ｂ：切先迫り＆片手
	CreateTextureEX("絵背景11", 4500, @0, @0, "cg/ev/ev187_銘伏の妖剣_g.jpg");
	Fade("絵背景11", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　———————————————————————
————————————————————————
————————————————————————
——————————————————————败了。

　我被骗了。
　敌人……仅仅是伸出了太刀的刀尖。
　他的身体还留在原位。

　我以为敌人前来攻击，于是向前斩击。但我的攻击仅
仅是在空中滑过。
　我的攻击仅仅从敌骑胸甲上擦过，没有造成任何损伤。

　于是。

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);

//◆刺突
	CreateColorSP("絵色黒", 20050, "#000000");
	SL_centerin2(21000,@0, @0,1000);
	OnSE("se戦闘_攻撃_刀振る05", 1000);
	SL_centerinfade2(10);

//◆ぐさー。
	OnSE("se戦闘_攻撃_刀刺さる05", 1000);

	CreateColorSP("赤", 21100, "#990000");
	DrawTransition("赤", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("赤", 2000, true);

	ClearWaitAll(1500, 0);

//◆ゲームオーバー。タイトルへ。

}

..//ジャンプ指定
//次ファイル