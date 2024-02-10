
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_014vscc.nss_MAIN
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
	#ev187_銘伏の妖剣_g=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mc04_014vscc.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_014vsc.nss"

	//$Flag_mc04_014vsc = "右";

//●左右
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm08", 0, 1000, true);

	CreateTextureSP("絵背景09EX", 4101, @0, @0, "cg/ev/ev187_銘伏の妖剣_i.jpg");
	Request("絵背景09EX", Smoothing);
	Zoom("絵背景09EX", 0, 1100, 1100, null, true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我应该转向侧面。
　然后在刀指过来之前，前进斩击就可以胜利！


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆横移動。俊敏に。
if($Flag_mc04_014vsc == "左"){
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵背景09*");

	CreateTextureSP("絵演背景", 100, -754, -400, "cg/bg/resize/bg090_大鳥邸通路a_01l.jpg");
	SetBlur("絵演背景", true, 3, 500, 30, false);

	Move("絵演背景", 450, -270, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	Wait(300);

	}else if($Flag_mc04_014vsc == "右"){
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	Delete("絵背景09*");

	CreateTextureSP("絵演背景", 100, -270, -400, "cg/bg/resize/bg090_大鳥邸通路a_01l.jpg");
	SetBlur("絵演背景", true, 3, 500, 30, false);

	Move("絵演背景", 450, -754, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_02_0", true);

	Wait(300);
	}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　从刀尖前面——闪开！

　然后不停地，一口气，

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0690a06">
「逃开了……」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/014vs0700a06">
「——你以为自己逃开了？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/014vs0710a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵演", 10000, -700, -1060, "cg/ev/resize/ev187_銘伏の妖剣_glm.jpg");
	Request("絵窓/絵演", Smoothing);
	Zoom("絵窓/絵演", 0, 750, 750, null, true);

	Move("絵窓/絵演", 2000, -870, @0, Dxl2, false);
	Zoom("絵窓", 2000, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　为什么？

　为什么，<k>　　　　　　　　　　　狮子吼，<k>
　　　　不知什么时候，<k>　　　　　右手，<k>
　　　　　　　　　　　　　　　　　　将腰间小刀……

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ビーム。投擲
	CreateTextureEX("脇差", 10010, @0, @0, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("脇差", 0, @180, @0, @0, null,true);
	Zoom("脇差", 0, 1050, 1050, null, true);
	Request("脇差", Smoothing);

	OnSE("se戦闘_攻撃_脇差投げ01", 1000);
	Fade("脇差", 0, 1000, null, true);
	DrawTransition("脇差", 150, 0, 1000, 100, null, "cg/data/slide_03_01_1.png", true);

	Delete("絵窓*");

	Wait(200);

//◆ぐさー。血
	SetVolume("@mbgm*", 300, 0, null);

	Delete("脇差");

	OnSE("se戦闘_攻撃_刀刺さる05", 1000);

	CreateTextureSPmul("絵効果地", 5010, Center, Middle, "cg/anime/Left/blood_C_6.png");

	CreatePlainEX("絵板写", 9990);
	Wait(10);
	FadeFR2("絵板写",0,500,500,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	ClearWaitAll(2000, 0);

//◆ゲームオーバー

}

..//ジャンプ指定
//次ファイル