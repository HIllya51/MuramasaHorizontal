//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_014b.nss_MAIN
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
	#bg003_荒れ野_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_015.nss";

}

scene md05_014b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_014.nss"


//●助けない

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm02", 0, 1000, true);

	OnBG(100, "bg003_荒れ野_03.jpg");
	FadeBG(0, true);
	CreateTextureEXadd("炎", 110, @0, @0, "cg/ef/ef046_炎a.jpg");
	Fade("炎", 0, 1000, null, true);
	Zoom("炎", 0, 1100, 1100, null, true);

	DrawEffect("炎", 50, "MiddleWave", 30, 30, null);

	CreateSE("SEめらめら", "se背景_ガヤ_燃える町並み_L");
	MusicStart("SEめらめら", 3000, 1000, 0, 1000,null, true);

	CreateMovie("煙動画", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 6000, null, true);
	Request("煙動画", SubRender);
	Move("煙動画", 0, @0, @-400, null, true);

	FadeDelete("上背景",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　该说是<RUBY text="··">着魔</RUBY>了吗。
　不经意间涌上的思绪，如云团填塞胸中。
我慌忙将其挥开。

　不行。
　被允许对这个世界的现象进行干涉的，
只有存在于这个世界的人。

　我是外来者，只能把握这鲜有的机会一窥而已。
　没有出手的资格。

　若是因为我的判断以及行动就能发生改变，那仅仅是我
自身所在世界的现象……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間ぶれ
	CreatePlainEX("絵板写", 11000);
	DrawEffect("絵板写", 36000, "MiddleWave", 30, 30, null);

	OnSE("se特殊_その他_空間歪曲",1000);

	Fade("絵板写", 200, 1000, null, false);
	Zoom("絵板写", 1000, 1300, 1300, Dxl2, true);

	Wait(500);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/014b0010a01">
《……不要焦虑。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/014b0020a00">
「抱歉。
　头脑一热。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　已看不见少女的身影。
　看见的话不知又会冒出何种念头。

　集中精力于修正力的运作，交予身体。
　
　……还不能回到原来的时空吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
	SetVolume("@SE*", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1500);

}

..//ジャンプ指定
//次ファイル　"md05_015.nss"