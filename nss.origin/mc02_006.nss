//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_006.nss_MAIN
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

	$GameName = "mc02_007.nss";

}

scene mc02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_002.nss"


//◆フェードイン

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(11, "bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(500, false);

	SoundPlay("@mbgm35",0,1000,true);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

	WaitKey(1000);

//◆ガチャ。ドア開く
	OnSE("se日常_建物_扉開く01",1000);

//◆香奈枝軍服。元気良く登場

	StL(1000, @-500, @0, "cg/st/st香奈枝_通常_制服c.png");
	Move("@StL*", 300, @500, @0, Dxl1, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060010a03">
「您好呀，景明大人。
　您的狱中生活过得还舒坦吗～？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆上から景明の立ち絵がぬーっと。逆向きに

	StR(1000, @0, @-550, "cg/st/st景明_通常_私服.png");
	FadeStR(0, false);
	Rotate("@StR*", 0, @0, @180, @180, null, true);
	Move("@StR*", 100, @0, @50, Axl1, true);
	WaitKey(1000);
	Move("@StR*", 150, @0, @-10, Axl1, true);
	Move("@StR*", 1000, @0, @250, Axl1, false);

	Shake("@StL*", 1000, 5, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw香奈枝_ショックb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060020a03">
「呀——————————————!!」

{	OnFwC("cg/fw/fw景明_通常a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060030a00">
「大尉阁下……」

{	StCL(1000, @-70, @0, "cg/st/stさよ_通常_私服.png");
	FadeStCL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060040a04">
「哎呀呀凑斗大人。
　没想到您竟会从天花板露脸……
真是位难缠之人呀。呵呵呵。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060050a04">
「不对，你干嘛呢？」

{	OnFwC("cg/fw/fw景明_黙考.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060060a00">
「回您的话。我是打算休息的……
　但却冷静不下来。不禁就像平时在拘留所
生活一般，运动起身体了。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060070a04">
「平时？」

{	OnFwC("cg/fw/fw景明_笑顔a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060080a00">
「别在意细节。」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060090a03">
「鬼才不在意——！
　你想运动的时候，就会倒吊在
天花板上吗？　平时就这样!?」


{	OnFwC("cg/fw/fw景明_笑顔b.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060100a00">
「有利于健康哦，可能是因为血液循环
通畅了。」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060110a03">
「我没问你这些！」

{	OnFwC("cg/fw/fw景明_困惑.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060120a00">
「而且还能锻炼腿和腹肌。」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060130a03">
「我感觉自己不像是在和地球人对话!!」


{	FwC("cg/fw/fwさよ_老兵.png");}
//嶋：修正（お父上）【090930】
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060140a04">
「大小姐请冷静！
　难道您忘记了，令尊曾费尽口舌教导您，
即使有人从天花板上耷拉下来，也不能慌乱吗！」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0060150a03">
「忘什么忘，我根本没接受过那样有
针对性的教育！」

{	DeleteStL(300, false);
	DeleteStCL(300, false);}

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆ガチャ
	OnSE("se日常_建物_扉開く01",1000);
	WaitKey(1000);
	
	SetNwC("cg/fw/nw番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆ボイス「ファッツハプニン――」What's happening?
//【ｅｔｃ／ＧＨＱ見張り】
<voice name="ｅｔｃ／ＧＨＱ見張り" class="その他男声" src="voice/mc02/0060160e000">
「大尉阁下，发生何事——」


//◆ボイス「マイガーーーーーーッ!!」
//【ｅｔｃ／ＧＨＱ見張り】
<voice name="ｅｔｃ／ＧＨＱ見張り" class="その他男声" src="voice/mc02/0060170e000">
「这啥啊——————————!?」

{	OnFwC("cg/fw/fw景明_通常a.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060180a00">
「……？
　您是守在门外的人吗？」

{	OnFwC("cg/fw/fw景明_黙考.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0060190a00">
「刚才真是惊扰您了。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0060200a04">
「不，你现在也仍然在惊扰他人……
　喂，你快点给我下来。怪异蝙蝠男。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆次のファイルでも同じBGMを使うため停止していません。 inc櫻井
//◆シーン切り

	ClearFadeAll(1000, true);
}

..//ジャンプ指定
//次ファイル　"mc02_007.nss"