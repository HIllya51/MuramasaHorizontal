//<continuation number="100">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_018.nss_MAIN
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
	#bg049_景明故郷住宅地a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_019.nss";

}

scene mb03_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_017.nss"

//◆外。夕方
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　与一家人告别之后。
　袭击小弓的方案，结果还是没有得出妥帖的结论。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180010a02">
「从东侵入。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180020a00">
「是啊。
　他们猜想亲王军经陆路由北而来，或涉过浦
贺水路由南而来。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180030a00">
「其余方向，尤其是东侧的警戒应该很薄弱。
　相对而言较为薄弱。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180040a02">
「也就是说，如果从东边进入可直驱其中心部
位。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180050a00">
「只是我们两人的话，大概可行。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180060a02">
「担心的只有时间问题了吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180070a00">
「是啊……
　绕到东侧，如果和我们所希望的一样，防卫松
懈，对空警戒也有漏洞的话，我们可以飞行，而
后一举突破防线。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180080a02">
「不用考虑防空队吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0180090a00">
「如果是低空飞行的话，雷达信号探测很难察
觉。因为混在地面上的构造物中，能够混淆探
测反应。
　其余的就要靠运气了。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0180100a02">
「我明白了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 5000, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条爽朗地答道，仿佛天命所归毋庸置疑，然而我却
移开了视线。
　不知为何，难以直视她的脸庞。

{	SetVolume("@mbgm*", 3500, 0, null);
	Move("絵演背景", 3000, @0, @560, AxlDxl, false);
	Fade("絵演背景", 3000, 1000, null, false);}
　总之，我和一条从东侧侵入袭击小弓。
　
　……镰仓的亲王等人也快该开始行动了吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	WaitAction("絵演背景", null);
	WaitPlay("@mbgm*", null);
	WaitKey(1000);

}

..//ジャンプ指定
//次ファイル　"mb03_019.nss"