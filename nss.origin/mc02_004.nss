//<continuation number="220">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_004.nss_MAIN
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
	#bg029_キャノン中佐執務室_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_005.nss";

}

scene mc02_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_003.nss"

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(100, "bg029_キャノン中佐執務室_01.jpg");
	StR(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	StL(1000, @20, @0, "cg/st/st香奈枝_通常_制服c.png");
	StCL(1000, @-100, @0, "cg/st/stさよ_通常_私服.png");
	FadeBG(0, true);
	SoundPlay("@mbgm36",0,1000,true);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);


//◆キャノンの部屋
//◆テキスト横書き

	FadeStR(300, true);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040010b03">
「……完了吗？」


{	FadeStL(300, false);
	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040020a03">
「是的。」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040030b03">
「…………
　让舞殿宫跑掉了……吗。」


{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040040a03">
「未能回应您的期待，我诚感歉意。
　我谨接受处分。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040050b03">
「——」


{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040060a03">
「…………」

{	FadeStCL(300, false);
	FwH("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0040070a04">
「恳请您不要责备大小姐，不，
大鸟大尉。中佐阁下。
　一切恶果都应归罪于我这个老东西
未尽职责……」


{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040080a03">
「嗯。可不是嘛！」


{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0040090a04">
「刚才的话纯属玩笑。
　中佐阁下，下官只是遵从上司命令行事。
请勿混淆责任之所在。」


{	FwH("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040100a03">
「你还算是我的侍者吗!?」


{	FwH("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0040110a04">
「这话轮不到你说吧，你个烂透的橘子。」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040120b03">
「……算了吧。
　也没必要非得抹杀掉他不可。」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040130b03">
「姑且先使他退出一线，这已足矣。
　短时间内，他也不会再多管闲事，
会老实一些吧。」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040140b03">
「……在这期间敲下定锤。
　所有的一切。」


{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040150a03">
「…………」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040160b03">
「你辛苦了。
　退下休息吧。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040170b03">
「尔后将传达对贵官的下一个部署。」


{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040180a03">
「……明白。
　告辞。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆香奈枝退室

	DeleteStCL(300, false);
	DeleteStL(300, true);

	CreateSE("SE01","se日常_建物_扉閉める01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040190b03">
「……哼……」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040200b03">
「是他自己逃跑也好，被人放跑也罢，
消失的家伙根本不值一提了。
　死去的家伙也一样。」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040210b03">
「但是……
　俘虏，吗。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040220b03">
「凑斗景明。
　……嗯。接下来……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc02_005.nss"