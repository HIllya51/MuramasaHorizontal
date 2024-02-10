//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_025.nss_MAIN
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

	$GameName = "mc04_026.nss";

}

scene mc04_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_024.nss"

//◆元の場所
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");

	CreateSE("SEL01","se自然_風_野原01");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	Wait(2000);

	Delete("上背景");
	FadeDelete("絵黒幕", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……回过神来时，我已是孤身一人。

　女性的身影已经无迹可寻。
　她消失了。

　刚才相互触碰的肌肤上，还残留着温暖的余韵。
　别的什么也没有——

　……不。
　还有一样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝
	SetVolume("SEL*", 1600, 0, null);

	OnSE("se人体_足音_歩く04_L", 1000);

	WaitKey(1200);

	StR(1000,@0,@0,"cg/st/st香奈枝_通常_私服d.png");
	FadeStR(300,true);

	SoundPlay("@mbgm26",0,1000,true);
	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250010a03">
「景明大人！
　你还在这种地方啊。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250020a00">
「……大尉阁下。
　您没事吧？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250030a03">
「真是的。幸好过来确认了一下。
　赶快撤退吧。要是被篠川军抓住
那可就麻烦了哦。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250040a00">
「是。
　抱歉让您无谓地担心了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250050a00">
「那么，即刻启程吧。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250060a03">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250070a00">
「大尉？
　怎么了」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250080a03">
「没什么……
　看这样子，银星号不在这里吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250090a00">
「在这里。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250100a03">
「……诶？
　在吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250110a00">
「是的。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250120a03">
「那么……发生什么了？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250130a00">
「结束了。
　全部都……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250140a00">
「全部。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250150a03">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250160a00">
「大尉阁下？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250170a03">
「没、没事。
　……那个，景明大人。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250180a03">
「这样说或许有些不合时宜，可是。
　若是如此，感觉有些太过——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さよ通常版
	OnSE("se人体_足音_歩く04_L", 1000);
	WaitKey(1200);

	StL(1200,@0,@0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250190a04">
「啊，是你们二位啊！
　还没有逃走吗？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250200a04">
「这附近快要变成危险地带了。
　要放松的话还是请好好选择场所。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250210a00">
「……侍从阁下。
　主仆二位均没有受伤，实在再好不过。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250220a04">
「凑斗大人才是。
　哎呀哎呀，大家都好运亨通真是太好了。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250230a04">
「为了不浪费这份运气还是尽快离开吧。
　快快，大小姐！」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250240a03">
「诶，嗯。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250250a04">
「凑斗大人，出口在这边。
　请小心不要跟丢。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250260a00">
「多谢关心，
　侍从阁下。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250270a04">
「没什么没什么。
　………………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0250280a00">
「怎么了？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250290a04">
「没什么没什么没什么没什么」


{	SetVolume("@mbgm*", 2000, 0, null);
	SetComic(@0,@0,13);
	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0250300a04">
「……呵……」

{	DeleteComic();
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250310a03">
「…………」


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0250320a03">
（……莫……莫非……）

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆隠しイベここまで
	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"mc04_026.nss"