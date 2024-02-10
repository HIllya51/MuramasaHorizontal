
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vsab.nss_MAIN
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
	#ev187_銘伏の妖剣_z=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vsab.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_014vsa.nss"

//●打つ·太刀
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我该瞄准太刀！

　现在最优先的事是摆脱困境。
　之后再对敌人本体进行攻击。

　我首先要挡开瞄准我喉咙的刀尖——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆斬り。がちーん。
//◆獅子吼の太刀、吹っ飛ぶ
	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);

	CreateTextureEX("絵背景10", 4200, @0, @0, "cg/ef/ef010_汎用斜め軌道.jpg");
	Fade("絵背景10", 100, 1000, null, true);
	Delete("絵背景09EX");

	OnSE("se戦闘_動作_金属落とす", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　没有失误。
　我的一击命中了敌人的太刀，将其击飞了。

　白刃滚落在走廊中。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	OnBG(100, "bg090_大鳥邸通路d_01.jpg");
	FadeBG(0, true);

	FadeDelete("絵背景10", 1000, true);

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0640a00">
「——」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　……不可能。
　<RUBY text="·····">这太简单了</RUBY>。

　为什么敌人会如此轻易地放开太刀，


</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

//◆横一閃
	CreateSE("SE00","se人体_動作_跳躍01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev187_銘伏の妖剣_z.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev187_銘伏の妖剣_z.jpg");
	Zoom("絵演*", 0, 1100, 1100, null, false);
	Zoom("絵演", 200, 1300, 1300, Dxl2, false);
	Zoom("絵演上", 200, 1600, 1600, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆しゅぱーん。血。
	CreateColorSP("黒", 5000, "BLACK");
	Delete("絵演*");
	SL_right2(15001,@0, @0,1500);
	Rotate("@slashR*", 0, @0, @0, @32, null,true);
	OnSE("se戦闘_攻撃_刀振る02", 1000);
	SL_rightfade2(10);

	OnSE("se戦闘_攻撃_鎧攻撃命中", 1000);

	CreateColorEX("赤", 6000, "#990000");
	Fade("赤", 500, 1000, null, true);

	SetShade("@OnBG*", LIGHT);
	SetShade("@StC*", EXTRALIGHT);

//	DeleteStC(0,true);

	Zoom("@StC*", 0, 2000, 2000, DxlAuto, false);
	Move("@StC*", 0, @-150, @200, Axl1, false);


	Zoom("@OnBG*", 0, 2000, 2000, null, false);
	Move("@OnBG*", 0, @0, @-200, null, false);

	Delete("黒");
	FadeDelete("赤", 500, false);

	Move("@OnBG*", 2500, @0, @300, DxlAuto, false);
	Move("@StC*", 2500, @50, @300, DxlAuto, true);


//首飛んでる inc櫻井
	Move("@StC*", 10000, @20, @-300, null, false);

	Move("@OnBG*", 10000, @20, @-50, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……我没有得到对于这疑惑的回答。
　因为在那之前，我已经被送上了<RUBY text="Ｇｕｉｌｌｏｔｉｎｅ">断头台</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEXover("黒2", 15000, "BLACK");
	Fade("黒2", 500, 1000, DxlAuto, false);
	ClearFadeAll(500,true);
	CreateColorSP("黒3", 15000, "BLACK");

	Wait(1000);

	OnSE("se戦闘_衝撃_鎧転倒01", 1000);

	Wait(2000);
	ClearWaitAll(0, 0);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル