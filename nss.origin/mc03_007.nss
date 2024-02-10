//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_007.nss_MAIN
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

	$GameName = "mc03_008.nss";

}

scene mc03_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc03_006.nss"

//◆夜
//◆國境。山道？
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10000, "#000000");

	OnBG(100, "bg022_山林a_03.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

	SoundPlay("@mbgm35", 0, 1000, true);

	SetNwC("cg/fw/nw警備班長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070010e309">
「…………」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070020e310">
「…………」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070030e311">
「…………」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070040e309">
「越来越冷了啊……」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070050e310">
「因为已经到了十二月了啊。」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070060e311">
「真羡慕巡逻的那些家伙。
　能动一动，会轻松很多吧。」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070070e310">
「那你去三班换一下岗位吧？
　那些家伙，一小时要沿着河边往返两次。」



{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070080e311">
「……那还是算了吧。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070090e309">
「还有三十分钟就能换班了。忍耐一下。
　不过，仁藤那个家伙还真是慢啊。」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070100e310">
「只不过是解个手，那家伙不会是回到事务室
了吧？
　……顺便再烤个火什么的。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070110e309">
「之后去问问事务室那些人吧。
　如果是真的，就让他今后一直常驻湿地好了。」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070120e311">
「我觉得，他大概只是用时比较长。
　他是那种一有压力就容易病倒的类型。」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070130e310">
「说起来也是啊。
　那家伙现在很难受吧。」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070140e311">
「因为是和进驻军的战争啊……」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070150e309">
「……」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070160e310">
「班长。
　那些<RUBY text="Ｊｏｈｎ　Ｂｕｌｌ">英国绅士</RUBY>，真的会来吗？」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070170e309">
「会来的……
　那些家伙对普陀乐城<RUBY text="·····">做了些什么</RUBY>，
　你们也知道吧。」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070180e310">
「虽然听说了，
　……但还是想象不出来啊。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070190e309">
「从镰仓撤退过来的家伙们都在这样说啊？说
是整个城都炸飞了。
　是说所有人都是在做梦吗……
要真是做梦的话，我也希望是这样啊。」


//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070200e309">
「连邦氏大人都移驾会津了，这已经不可能用
开玩笑来解释了吧。
　……这是战争啊。战争已经开始了。」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆嘆息

	SetNwC("cg/fw/nw警備兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070210e310">
「…………」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070220e311">
「<RUBY text="这里">会津</RUBY>会成为战场吗。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070230e309">
「怎么说呢。
　以大鸟中将的性格考虑……也有可能我们这
边先出击，进攻横滨那边。」



{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070240e311">
「那样比较好呢。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070250e309">
「是吗？」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070260e311">
「我不愿意在会津战斗。
　这里是我的故乡。」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070270e310">
「我也这么想。班长也是。
　我军大部分都是吧。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070280e309">
「嗯……
　确实是啊。
　谁都不希望自己的故乡发生战争呢。」


//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070290e309">
「即使如此，若被入侵也只能应战了啊。」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070300e311">
「……」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070310e310">
「……好冷。」


//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070320e310">
「我想走一走，沿着河边也可以啊。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070330e309">
「再忍耐一下。
　很快就——」


//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070340e309">
「……？」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070350e310">
「班长？」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070360e309">
「刚才有没有听到奇怪的声音？」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070370e310">
「…………
　有吗？」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070380e311">
「呃……不知道。」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070390e309">
「那附近，好像有什么硬物撞到树上的声音……
　是错觉吗。」



//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070400e309">
「……不，以防万一。
　你们两个人去确认一下。」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070410e310">
「明白。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆がさがさ。

	OnSE("se自然_草木_探る02", 1000);

	WaitKey(1000);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070420e311">
「……没有人啊。」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070430e310">
「没有人……吧？」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070440e311">
「班长——
　情况一切正常。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	WaitKey(1000);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070450e311">
「班长？」


//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070460e311">
「……咦？
　怎么了。」


//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070470e311">
「喂，班长去哪里了？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	SetVolume("@mbgm*", 2000, 0, null);
	WaitKey(1000);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070480e311">
「……喂。」


//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070490e311">
「怎么回事？
　……不会是他们俩一起捉弄我吧……」



//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070500e311">
「喂——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆がさっ

	OnSE("se自然_草木_探る01", 1000);

	WaitKey(300);

//◆一閃
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	DeleteStC(100,false);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	Fade("絵背景500", 100, 1000, null, true);
	FadeDelete("絵背景500", 500, true);


//◆血
	CreateColorSP("絵色血", 5000, "#CC0000");
	FadeDelete("絵色血", 1000, false);

	CreateTextureEX("絵ＥＦ15", 11000, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");

	OnSE("se人体_血_たれる01", 1000);

	Fade("絵ＥＦ15", 1000, 1000, null, true);
	Delete("絵背景500");
	Fade("絵ＥＦ15", 1000, 0, null, true);
	FadeDelete("黒幕１",1000,true);

	WaitAction("絵色血", null);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070510e311">
「——————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ばたん。兵士倒れる

	OnSE("se人体_衝撃_転倒04", 1000);

//◆雪車町
	StL(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStL(300, true);


	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0070520a12">
「…………」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0070530a12">
「嘿，嘿，嘿。
　那就稍微打扰一下了……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_008.nss"