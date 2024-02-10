//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005a.nss_MAIN
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
	#ev119_一条と香奈枝海水浴_a = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($ma04_005a_routeFlag==true){$ma04_005a_routeFlag=false;}
	else{$Ichizyou_Flag=$Ichizyou_Flag+2;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005.nss"

//●一条
	SoundPlay("@mbgm29",0,1000,true);

	PrintBG("上背景", 30000);
	CreateCamera("カメラ１", Center, Middle, 250);
	SetAlias("カメラ１","カメラ１");

	CreateTextureSP("カメラ１/絵背景100",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex04.jpg");
	CreateTextureEX("カメラ１/絵背景200",500, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex03.jpg");
	SetAlias("カメラ１/絵背景100","絵背景100");
	Request("カメラ１/絵背景100", Smoothing);
	Request("カメラ１/絵背景200", Smoothing);
	Zoom("カメラ１/絵背景100", 0, 1200, 1200, null, true);
	Zoom("カメラ１/絵背景200", 0, 1200, 1200, null, true);

	CreateTextureSP("カメラ１/絵１",600, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex01.png");
	CreateTextureEX("カメラ１/絵２",600, Center, Middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_ex02.png");
	SetAlias("カメラ１/絵１","絵１");
	SetAlias("カメラ１/絵２","絵２");
	Request("カメラ１/絵１", Smoothing);
	Request("カメラ１/絵２", Smoothing);
	Move("カメラ１/絵１", 0, @+50, @0, null, true);
	Move("カメラ１/絵２", 0, @+50, @0, null, true);

	MoveCamera("@カメラ１", 0, @+200, @+200, @0, Dxl1, true);

	Fade("カメラ１/絵背景200", 500, 1000, null, false);
	MoveCamera("@カメラ１", 3000, @-100, @-600, @0, Dxl1, false);

	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条的泳装是学生泳装。
　去店里购买时，她自己挑选了那件。

　这里不是学校。虽然觉得选择其它款式的会更
好………不过这种笨拙倒也符合一条的风格。
　而且。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	WaitAction("カメラ１/絵背景200", null);

	MoveCamera("@カメラ１", 500, @+210, @-150, @+150, Dxl1, true);
	MoveCamera("@カメラ１", 500, @+100, @+400, @+100, Dxl1, true);
	MoveCamera("@カメラ１", 500, @+180, @+350, @+100, Dxl1, true);

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);

	MoveCamera("@カメラ１", 1500, @-470, @-650, @-250, Dxl1, false);
	Fade("絵ＥＶ100", 500, 1000, null, true);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0010a00">
「这还真是。」

{	FwR("cg/fw/fw一条_通常a.png");
	SetComic(@+250,@0,10);}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0020a02">
「……什么？」

{	DeleteComic();
	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0030a00">
「很有魅力，一条。
　作为男性，我受到了刺激。」

{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0040a02">
「……」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0050a02">
「……唔………!!」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0060a04">
「打出了天然直球呢。
　小姐，您陷入了困境。」

{	FwR("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005a0070a03">
「唔，没想到景明大人居然喜欢学生泳装！
　是我事前调查不够到位……！」

{	FwR("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005a0080a03">
「既然如此，也没办法了。
　纱代，至少也要插科打诨阻止他们二人世界。」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0090a04">
「明白。
　凑斗大人。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0100a00">
「是。」

{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0110a04">
「男性受到刺激也就是说……
　您在想一些下流的事情吗？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005a0120a00">
「多少有点。」

{	FwR("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005a0130a02">
「～～！」

{	FwR("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005a0140a04">
「不行啊小姐。
　普通攻击被他顶回来反倒会适得其反。」

{	FwR("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005a0150a03">
「婆婆真没用。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　情况有些无谓地混乱起来。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆一条好感度＋
//$Ichizyou_Flag = $Ichizyou_Flag++;
//嶋：+2に変更【090922】
	$ma04_005a_routeFlag = true;
	$Ichizyou_Flag = $Ichizyou_Flag+2;

	judgment_of_count();


}

..//ジャンプ指定
//次ファイル　"ma04_005z.nss"