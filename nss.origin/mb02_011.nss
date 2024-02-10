//<continuation number="440">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_011.nss_MAIN
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
	#bg033_普陀楽城宿舎_01=true;
	#bg050_普陀楽城宿舎前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_012.nss";

}

scene mb02_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_010.nss"

//◆宿舎·昼
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_普陀楽城宿舎_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110010a02">
「那么，足利邦氏……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110020a00">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我对一条的确认表示认同。
　……在我所能考虑到的范围内，这是最好的办法了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110030a02">
「取其首级吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110040a00">
「不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我慌忙摆手。
　就算是开玩笑，只要我点点头，她都有可能当场就奔
出去付诸行动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110050a00">
「太过了。
　会导致与舞殿宫殿下的构想相反的结果。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110060a02">
「哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　话说回来，这样的暴动单靠我们两个人是不可能
成功的。
　就算抱着必输的觉悟也没什么希望吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110070a00">
「只需尽可能把袭击的动静闹得大一些就好。
　某种程度上突破警备网，适当地威胁到邦氏的
性命……这样最佳。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110080a02">
「那样就可以了吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110090a00">
「那样就足够问责游佐童心了。
　免不了从元老之首的宝座上跌落。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110100a00">
「而今川雷蝶的权势会因此增强。
　与他联手的宫殿下的政治影响力也会扩大……
就是这么回事。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110110a02">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一条点头，一副并没有嘴上说的那么信服的样子。
　她的性格完全不适合从政。也难怪她理解不了。

　我不再重复无益的说明，转移了话题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110120a00">
「接下来就是具体计划了。
　首先是日期……」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110130a00">
「听说明天傍晚有能剧表演。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110140a02">
「能剧……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110150a00">
「对。游佐童心主办。
　据说场地是主堡的能乐堂。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110160a02">
「就是那个大会场吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110170a00">
「据说不邀请外部的宾客，仅在内部表演。
　如此一来，将会邀请城内不少人出席吧。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110180a02">
「那就趁此机会？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110190a00">
「这样说可能有些乐观，不过不可能不邀请邦氏。
　当然，选在能剧表演中袭击实属下策。
既然六波罗要人云集，
警备必定十分森严。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110200a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110210a00">
「我们不如看准表演结束后，警备人员疏忽大意
的瞬间——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ウェイト
	Wait(1000);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110220a02">
「……怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　对于话说到一半戛然而止的我，一条不解地开口询问。
　我伸出一只手，捂住她的嘴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110230a02">
「……!?」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110240a00">
（有脚步声。
　有人过来了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我用对方懂得读唇术才能明白的声音轻声低语。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110250a02">
（……不是那个女密探吗？）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110260a00">
（是两个人的脚步声）


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0110270a02">
（……）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110280a00">
（别乱说话）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　看到一条用眼神表示理解，我这才将手抽回。
　总之……先看看情况吧。

　正当我边想边站起身时。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0110290b20">
「改！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　中年女性的声音。
　的确是今川家密探——岩田没错。

　但她<RUBY text="······">直呼我的名字</RUBY>。
　这是事先定下的暗号。

　有其他人在场时的暗号。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆家の前
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg050_普陀楽城宿舎前_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我留下一条，走出玄关。
　和我推测的一样，外面站着岩田女士和一位未曾谋面
的略微年轻的女人。

　……不对。
　对于这个一眼就能看出地位不低的女官。我在哪里
见过吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110300a00">
「这不是岩田大人吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　按照我们约定好的，我言语恭敬地迎了出去。
　女士大方地点了点头，侧身为背后的女官让开地方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw岩田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0110310b20">
「他就是改。」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110320e123">
「哼……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　用鼻子哼了一声，走上前来的女人，用莫名凌厉的眼神
露骨地打量着我。
　我装出一副诚惶诚恐的模样垂着头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw女官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110330e123">
「你就是新来的官吏吗。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110340a00">
「……是。」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110350e123">
「上次那番举动也是因此而起吗？
　不过……」


//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110360e123">
「算了。
　岩田，好好教育部下。」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0110370b20">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……想起来了。
　她是在足利四郎身边侍奉的女官之一。

　大概是对那次我的无礼怀恨在心，查到我所属的部门后
前来加以斥责吧。
　如果是这样的话……她还真清闲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110380a00">
「上次真是失礼。
　今后必将谨言慎行，务请宽恕。」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110390e123">
「哼……！
　邦氏殿下都允许了的事情，我敢唱反调吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　女官狠毒地放话，似乎还将头扭了过去。
　垂着头的我看不到她的动作。

　不管怎样，她发泄完毕也该就此回去了吧。
　我抱着这种想法，等着女官的双脚从我的视野中
消失——然而，她却纹丝未动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110400a00">
「……？」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110410e123">
「叫改的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110420a00">
「是。」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0110430e123">
「跟我来。
　殿下要召见你。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0110440a00">
「……什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_012.nss"