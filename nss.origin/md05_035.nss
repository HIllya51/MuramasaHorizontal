//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_035.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_035.nss","power",true);
	

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
	#bg073_海d_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_036.nss";

}

scene md05_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_034.nss"


//◆海上
//◆激しく波立つ。bg073d


	PrintBG("上背景", 30000);

	//徒歩：前のファイルからの繋ぎの関係でBGM変更
	SoundPlay("@mbgm14", 0, 1000, true);

	CreateSE("ズゴゴ", "se特殊_その他_辰気収斂_L");
	MusicStart("ズゴゴ", 0, 1000, 0, 1000, null,true);
	OnBG(100, "bg073_海d_02.jpg");
	FadeBG(0, true);
	CreateProcess("プロセス２", 12000, 0, 0, "power");
	SetAlias("プロセス２","プロセス２");
	Request("プロセス２",Start);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 1000000, 1, 2, 0, 0, 1000, DxlAuto, false);

	CreateTextureEX("背景大海スペシャル", 2100, Center, Middle, "cg/bg/bg073_海d_02.jpg");
	Zoom("背景大海スペシャル", 0, 1100, 1100, null, true);

$ループムーブナット名 = "@背景大海スペシャル";
$ループムーブタイム = 20000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);

	Fade("背景大海スペシャル", 0, 800, null, true);
	Shake("背景大海スペシャル", 1000000, 1, 2, 0, 0, 1000, DxlAuto, false);



	DrawDelete("上背景", 500, 500, "slide_02_01_0", true);

	SetVolume("ズゴゴ", 5000, 500, null);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　海面波涛起伏。

　因为起风了吧。
　不对——

　在晃动的不是海水。
　而是这个地球。

　这摇撼是来自天空的波动。

　在那里聚合着庞大的辰气，
　震动着地球。

　————毁灭。

　自天空袭来的神武一击，
　踩碎我，连地球的中心也一并贯穿。

　如果是那股力量，一定会变得如此。

　……必须阻止。

　将其扼杀，也必须阻止。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0350010a00">
（并……不坏。）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　事到如今，我不禁那样想。

　光并没有错。
　不管任何人怎么说，也绝对不是光的错。

　那只是她，太过执拗的一场梦。

　那么究竟错在于谁。

　自那刻伊始，而今在此终止的命运。
　——这又是谁之过呢？

　皆斗本家吗。

　凑斗明尧吗。

　凑斗统吗。

　不，
　都不是。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(500);

//◆ちゃきん。
//◆ＥＶ：折れた野太刀を片手で構える村正
	SetVolume("SE*", 2000, 0, null);
	SetVolume("ズゴゴ", 2000, 0, null);


	OnSE("se擬音_雰囲気_抜刀01", 1000);

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ev/ev255_野太刀を構える村正_a.jpg");
	Request("絵背景100", Smoothing);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 2, 500, 100, false);


	Zoom("絵背景100", 1500, 1000, 1000, Dxl2, false);
	Fade("絵背景100", 500, 1000, null, true);

	Wait(2500);

	CreateColorSP("黒幕１", 10000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 500, null, "cg/data/slide_04_00_0.png", true);

	Request("プロセス*", Stop);
	Delete("プロセス*");
	Delete("背景大海スペシャル");



}

..//ジャンプ指定
//次ファイル　"md05_036.nss"


function power()
{

	CreateColor("焚き火光", 3500, 0, 0, 1024, 576, "#c46c3e");
	SetAlias("焚き火光","焚き火光");
	Request("焚き火光", AddRender);
	Fade("焚き火光", 0, 0, null, false);
//	DrawTransition("焚き火光", 0, 200, 200, 990, null, "cg/data/circle_01_00_0.png", true);


	begin:

	while(1)
	{
	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",200,150,null,true);
	Fade("焚き火光",180,230,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,190,null,true);
	Fade("焚き火光",200,150,null,true);

	Fade("焚き火光",150,230,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,200,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,170,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",100,280,null,true);
	Fade("焚き火光",350,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",200,220,null,true);
	Fade("焚き火光",170,100,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,150,null,true);
	Fade("焚き火光",100,240,null,true);
	Fade("焚き火光",140,140,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,130,null,true);
	Fade("焚き火光",400,100,null,true);
	Fade("焚き火光",180,130,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,120,null,true);
	Fade("焚き火光",200,90,null,true);

	Fade("焚き火光",150,120,null,true);
	Fade("焚き火光",400,90,null,true);
	Fade("焚き火光",180,110,null,true);
	Fade("焚き火光",300,100,null,true);
	Fade("焚き火光",140,130,null,true);
	Fade("焚き火光",200,90,null,true);

	}


}
