//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_047vs.nss_MAIN
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

	$GameName = "mc04_048vs.nss";

}

scene mc04_047vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_046vs.nss"


//◆景明サイド

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm13",0,1000,true);

//	CreateColorSP("絵色100", 20000, "BLACK");
	CreateTextureSP("絵背景50", 100, Center, 0, "cg/bg/bg202_旋回演出背景山_01.jpg");
//	SetBlur("絵背景50", true, 3, 800, 200, false);
	Request("絵背景50", Smoothing);
	Shake_Loop("@絵背景50","shake01");

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵狸", Smoothing);
	Rotate("絵狸", 0, @0, @0, @50, null,true);
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

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　挣扎起濒临折断的翼甲继续飞行。
　敌骑同样在试图重整战姿。

　在那之前将其拿下吗。
　
　不，就算赶不及也无所谓。

　不管是早是晚，<RUBY text="······">只要杀掉就好</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/047vs0010a00">
「电磁拔刀能用吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/047vs0020a01">
《不能再用！
　热量不足……》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/047vs0030a00">
「那加速呢？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/047vs0040a01">
《……只能短时间。
　不过……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/047vs0050a00">
「好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　估计村正想继续提出警告，将她的话语中途打断。
　必要事项已经问清。

　接下来只需实行！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se特殊_コックピット_起動音04");
	CreateSE("SE03","se戦闘_動作_空突進08");

	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("絵狸", 500, @5, @20, Dxl2, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE03",0,1000,0,1000,null,false);
	EffectZoomadd(10000, 300, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("絵狸", 1000, 500, 500, Axl3, false);
	Move("絵狸", 1000, @-100, @-600, Axl3, true);


	SetVolume("SE*", 1000, 0, null);
	ClearFadeAll(1000, true);

}

..//ジャンプ指定
//次ファイル　"mc04_048vs.nss"

