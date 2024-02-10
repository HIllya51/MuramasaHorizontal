//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_023.nss_MAIN
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

	$GameName = "mc04_024.nss";

}

scene mc04_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_022vs.nss"

//◆※隠しイベント
//◆さよフラグ二つとも有る場合のみ

//◆山林？　夜
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnSE("se自然_火_火災倒壊", 600);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");
	Delete("上背景");
	Fade("黒幕１",2000,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　注视着那逐渐化为灰烬的宅邸，
究竟过了多久呢。
　……不知从何时起，察觉到身边有人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ヤングさよ
	StL(1000,@0,@0,"cg/st/stさよ吸血_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwさよ吸血_沈静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230010a04">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230020a00">
「…………」


{
	SetVolume("@OnSE*", 1000, 0, null);
	FwC("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230030a04">
「差不多是时候得离开这里了。
　觉察到异变的军队可能即将到达……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230040a00">
「…………」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230050a04">
「……」

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230060a04">
「……出了什么事吗？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230070a00">
「……」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230080a04">
「……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230090a00">
「……妹妹……」


{	FwC("cg/fw/fwさよ吸血_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230100a04">
「是。」


{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230110a00">
「妹妹，去世了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　为什么呢。
　我将这件事告诉了这个素昧平生的女子。

　就像忏悔一般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ吸血_沈静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230120a04">
「————」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230130a04">
「是吗……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230140a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	SoundPlay("@mbgm31",2000,1000,true);
	WaitKey(1500);
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230150a00">
「……为什么……」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230160a04">
「……？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230170a00">
「为什么……
　没能救她。」


{	FwC("cg/fw/fwさよ吸血_沈静.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230180a04">
「…………」


{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230190a00">
「为什么……我……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　会让光死去呢。

　……我心知肚明。
　没能救她，是因为根本就<RUBY text="··">没有</RUBY>救她的方法。

　两年前——或者说更早以前——我的命运就
已注定，应该完成的使命也注定了。
　这是早就已经注定的结局。

　我是知道的。
　
　所以我这愚不可及的自问，其实是在质问我的命运。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230200a00">
「为什么？」


{	FwC("cg/fw/fwさよ吸血_沈静.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230210a04">
「……很痛苦吧。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230220a00">
「痛苦？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　听到这出乎意料的话，我感到一阵困惑。
　不管怎么运转自己沉重迟钝的思维，也无法
理解为何会有人对自己说这样的话。

　我痛苦？
　……没有那回事。

　因为凑斗景明没有受伤。
　受到伤害，被夺去生命的，总是除我以外的人。

　因为我贯彻己见，在战斗中被斩杀的人们。
　仅仅因为善良，因为在我身边，就被斩杀的人们。

　痛苦的是他们。

　凑斗景明并不痛苦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230230a00">
「我不痛苦。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0230240a00">
「痛苦什么的——」


{	FwC("cg/fw/fwさよ吸血_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0230250a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

//◆ウェイト

}

..//ジャンプ指定
//次ファイル　"mc04_024.nss"