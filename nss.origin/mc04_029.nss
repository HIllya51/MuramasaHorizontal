//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_029.nss_MAIN
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

	$GameName = "mc04_030.nss";

}

scene mc04_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_028.nss"


//◆夜→朝

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景20", 12, Center, Middle, "cg/bg/bg025_坑道山脈と森a_03.jpg");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg025_山脈と森a_01.jpg");
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	WaitKey(1500);

	SoundPlay("@mbgm23",0,1000,true);
	FadeDelete("絵背景20",2500,true);
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　长夜过去……
　迎来清晨。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景30", 10, Center, Middle, "cg/bg/bg091_山荘の一室_01.jpg");
	Fade("絵背景30",1500,1000,null,true);
	WaitKey(1500);

//■ 立ち絵ないほうがカップルのピロートーク的な雰囲気が出ていいのではないかと。 inc櫻井

	SetFwC("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0290010a03">
「……明明比男士更早醒来，悄悄离开房间才是
是女人的嗜好呢。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0290020a00">
「非常抱歉。
　我是早上醒得比较早的类型。」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0290030a03">
「睡脸被看到了……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg091_山荘の一室_01.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　大鸟大尉埋怨着。
　我忍着笑意，将她送出了房间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：山荘の朝食。
//◆ちょっと演出入れつつ表示か。

//inc久保田　朝食はどのように演出すればよろしいでしょうか？　とりあえず立ち絵で席に着くまでの感じを作ってみました。

	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(1000);
	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

	WaitKey(1000);

	CreateSE("SEL01","se日常_食器_お茶準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　在永仓侍从准备的早餐席上聚集。
　一边与主从二人进行平常的对话，一边享用
无可挑剔的食物。

{	SetVolume("SEL*", 1000, 0, null);}
　然后分别。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0290040a04">
「凑斗大人，上午有什么打算吗？」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0290050a00">
「想稍微在森林中散散步。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0290060a04">
「那也很不错呢。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0290070a03">
「确实。而且天气也很好。
　景明大人，稍后我能一起去吗？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0290080a00">
「当然。
　那么，我先一步。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　——定下约定。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"mc04_030.nss"