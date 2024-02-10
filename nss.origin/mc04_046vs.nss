//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_046vs.nss_MAIN
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

	//CP_AllDelete();

	$GameName = "mc04_047vs.nss";

}

scene mc04_046vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"mc04_045vs.nss"


//◆香奈枝サイド
//◆落ちかけ

//◆※ここでブレードアーツ２使うか？

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);

//	CreateColorSP("絵色100", 20000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg202_旋回演出背景山_01.jpg");
//	SetBlur("絵背景50", true, 3, 800, 200, false);
	Request("絵背景50", Smoothing);
	Shake_Loop("@絵背景50","shake01");

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3dバロウズ_騎航_通常.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, @-50, null,true);
	Zoom("絵狸", 0, 300, 300, null, true);
	Move("絵狸", 0, @0, @-1000, null, true);
	SetBlur("絵狸", true, 2, 200, 100, false);
	Fade("絵狸", 0, 1000, null, true);
	Shake_Loop("@絵狸","shake02");

	CreateSE("SE01","se戦闘_動作_鎧_速度失速01");
	CreateSE("SE10","se戦闘_動作_空突進05");

	FadeDelete("上背景", 1000, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景50", 30000, @0, @-1500, Dxl2, false);
	Move("絵狸", 2000, @0, @1000, Dxl2, true);
	FadeF4("絵狸", 0, 1000, 60000, 0, 0, null, false);

/*
	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();
	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,420,300);

*/


	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/046vs0010a03">
「哼哼……啊哈哈……」


{	FwC("cg/fw/fw香奈枝_獰猛.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/046vs0020a03">
「哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　复仇的化身放声大笑。
　喜悦得不能自已，笑得前俯后仰。

　受了深及内脏的重伤。
　被仿佛要将全身化为沙块一般的失落感侵袭的同时，
愉快且痛快地发出哄笑。

　——想法传达到了。
　
　恶魔这样想道。

　复仇对复仇。
　憎恶对憎恶。
　杀意对杀意。

　澄澈的一念，将他和自己维系起来。

　这片天空只剩复仇。

　何等的美丽。
　何等的爽快。

　世界在此刻完成。
　封闭在卑微矮小中充盈。

　别的什么都不需要。

　只要这样就好。

　世界在复仇法则下统一!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_獰猛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/046vs0030a03">
「哈——哈啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆バロウズ再起
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se特殊_コックピット_起動音04");
	CreateSE("SE03","se戦闘_動作_空突進08");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("絵狸", 500, @-5, @20, Dxl2, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵狸", 1000, 500, 500, Axl3, false);
	Move("絵狸", 1000, @100, @-600, Axl3, true);


	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

	//CP_AllDelete();

}

..//ジャンプ指定
//次ファイル　"mc04_047vs.nss"



