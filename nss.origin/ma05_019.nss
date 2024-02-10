//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_019.nss_MAIN
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

	$GameName = "ma05_020.nss";

}

scene ma05_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_018.nss"

//◆湊斗家
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　暂且将她的遗骸安置在起居室后，我顺着她们二人的
路线追了过去。
　现在可不是慢悠悠磨蹭的时候。我冲进祭殿之中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆祭殿
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190010a00">
「统大人！　光——」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190020a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　虽然有些不合时宜。
　看到祭殿中的情景，我不由得瞬间惊呆了。

　祭殿中央，养母无力地趴着。
　而她对面是正在打开禁忌之御扉的光。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190030a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="··········">不容忽视的情况太多了</RUBY>。
　我不由得僵住了。

　……片刻后。
　浪费了极其宝贵的时间之后，我终于梳理好孰先孰后，
重新行动起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190040a00">
「统大人……！」

{	FwC("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0190050b46">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我跑过去摇晃她的肩膀。
　没有回应——但确有呼吸。

　也没有受伤的痕迹。
　似乎只是晕过去而已。

　我暂时放下心来，开始关注第二个状况。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//あきゅん「SE：要望：ピッキング音、まあ普通になんかカチカチする音ループで」
	CreateSE("SEL01","se日常_金属_鎖鳴る01");
	MusicStart("SEL01",0,1000,0,1250,null,false);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190060a00">
「光！」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190070a14">
「嗯？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190080a00">
「……你在干什么？」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190090a14">
「如你所见。
　我在开锁。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190100a14">
「……看来似乎需要窍门呢。这个。
　真难开。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190110a00">
「……嗯。
　似乎是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　养母以前也说过开起来很费劲——不。
　不对。不是这种问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190120a00">
「慢着，光！」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190130a14">
「嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガチャ
	CreateSE("SEL01","se日常_金属_鎖鳴る01");
	MusicStart("SEL01",0,1000,0,1250,null,false);

	WaitKey(800);

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se人体_動作_ロック解除01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/ma05/0190140a14">
「……唔。开了。
　看来跟力气大小无关啊。关键问题是使力
的地方。」


{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190150a14">
「谢谢你，景明。
　差点我就一脚踹上去了。可是想想里面的东
西，果然还是不妥。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190160a00">
「不……
{	Wait(500);
	FwC("cg/fw/fw景明_困惑.png");}
　不行不行不行！　光！　不能打开！」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190170a14">
「为何？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190180a00">
「问我为何……还用问吗。
　封印于此处的是皆斗家禁忌。没有统大人的
允许是不可打开的。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190190a14">
「可是，现在凑斗家巫女是我。
　祭祀的权限不是全都在我的掌握之中吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190200a00">
「……那倒也是。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　光为何会知道这件事？
　……不，先别管这个了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190210a00">
「总之，现在不是说这些的时候，光。告诉我
到底发生了什么。
　不，应该先把统大人叫醒——」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190220a14">
「<RUBY text="········">哪是管这个的时候</RUBY>，景明。
　现在时机正好。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190230a00">
「什么？」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190240a14">
「山贼团不是即将袭击镇子吗。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190250a00">
「……是啊。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190260a14">
「光来迎击。
　用这里的剑胄。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　——!?

　要使用
　………………那剑胄!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190270a00">
「不行，光!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我不由得高声喊了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190280a00">
「那……
　<RUBY text="····">那可不行</RUBY>！　不能拿出来！」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190290a14">
「……哼。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-30, @0,"cg/st/st光二年前_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);
	CreatePlainSP("絵板写",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　光这才转头看着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/ma05/0190300a14">
「可是，景明。
　还有其他的方法吗？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190310a00">
「这……
　不过，但是。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190320a00">
「那个……不能用。
　正如皆斗家传承所言，那是邪物。」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190330a14">
「你在说什么啊。剑胄不过是武器罢了。
　武器就是武器，别无其他。」

//【光】
<voice name="光" class="光" src="voice/ma05/0190340a14">
「武器无善恶之分。
　是正是邪，全凭其使用者而定。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190350a00">
「这……话是没错……」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190360a14">
「刚才那个女人。
　据我看，她是武者吧？」

//【光】
<voice name="光" class="光" src="voice/ma05/0190370a14">
「不过她似乎未配有剑胄。
　也就是说，山贼有剑胄，而且还打算使用，
不是吗？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190380a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……的确。
　剑胄——即便是数打，也并非人人都可操控之物。需
要训练或相应的才能。

　但，除首领外，应该至少有一人也拥有同样的能力。
　起码，她弟弟应该受过和姐姐一样的训练……

　虽无从知晓山贼团分裂的始末。
　但也没有任何证据可以断定弟弟会服从姐姐。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/ma05/0190390a14">
「仅是对付武装集团，肉身相搏也不可行。
　加之对方是武者，我方只能用剑胄迎战，不
是吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190400a00">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　光所说的话——恐怕是对的。
　恐怕……是当下最为现实的可行方案。

　全副武装的步兵。甚至还有炮、有车。
　更有剑胄。

　仅凭一具肉身无论如何也无法抵挡。
　但——我记起养母的教诲。

　不可杀戮。

　必须在不杀戮的前提下阻止武装集团。
　……剑胄果然是必不可少的。

　若有剑胄之力，使普通兵器毫无招架之力便轻而易举。
恐怕也可做到不杀一兵一将。
　彼此都用剑胄对战大概没那么轻松，但——或许也可通
过展示对等战力以谋求交涉。

　可行。

　然而却为何如此犹豫不决，无法赞同……<K>
{//◆回想。禁忌の劒冑
	CreateColorEX("絵演背景黒化", 499, "#000000");
	Fade("絵演背景黒化", 0, 1000, null, true);
	CreateTextureSP("絵演立左", 500, Center, Middle, "cg/st/3d二世女王蟻_煽り.png");
	CreateTextureSP("絵演立右", 500, Center, Middle, "cg/st/3d村正蜘蛛_俯瞰.png");
	Move("絵演立右", 0, @300, @100, null, false);
	Move("絵演立左", 0, @-300, @100, null, false);
	DeleteStA(0,true);
	Fade("絵板写", 600, 0, null, false);}

　因为我见过那副剑胄。

　不祥之气甚至令人不寒而栗。
　对于解放那种邪物，心中忧虑仍挥之不去。

　但是。
　……但是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Fade("絵板写", 600, 1000, null, false);

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/ma05/0190410a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　光礼貌地等待着我的答案。

　……至少。
　如此踌躇，有百害而无一利。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵板写", null);
	Delete("絵演*");
	StL(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
	FadeStL(0,true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190420a00">
「我明白了。」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190430a14">
「嗯？」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190440a00">
「我来吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　怎么能让大病初愈的光冒此风险。
　我死死盯着自己的手掌。这是对我的历练。

　吉野御流合战礼法乃武者之业。
　没有什么办不到的事情……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/ma05/0190450a14">
「是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　听了我的话，光愉快地微笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/ma05/0190460a14">
「很好。
　正好剑胄有两副。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190470a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　如此说来……我想起来了。
　禁忌之剑胄，有两副。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190480a00">
「可是……
　等等，光！」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190490a14">
「不行，我们该走了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);

//あきゅん「SE：要望：軋みながら扉開く音」
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se日常_建物_扉開く09");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演立左", 2100, Center, Middle, "cg/st/3d二世女王蟻_煽り.png");
	CreateTextureEX("絵演立右", 2100, Center, Middle, "cg/st/3d村正蜘蛛_俯瞰.png");
	CreateColorSP("絵黒", 2000, "#000000");
	DrawTransition("絵黒", 1000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　光边礼貌地回应我，边拉开门扉。
　理应厚重的门，居然轻易地开启了。

　而里面放着——
　剑胄。

{	WaitAction("絵黒", null);
	Move("絵演立右", 0, @300, @100, null, false);
	Move("絵演立左", 0, @-300, @100, null, false);}
　两副剑胄。
{	Fade("絵演立左", 500, 1000, null, false);}
　白银女王蚁，<?>
{	Fade("絵演立右", 500, 1000, null, false);}
深红蜘蛛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190500a00">
「……！」

{	FwC("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0190510a14">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　想要跑上前去，不料却踏空了。
　灾祸之兆、不祥之气——即便是第二次见识剑胄所释放
出的气势，仍觉得非比寻常。

　反观光，倒是一副毫不在意的模样。
　她极其自然地走近那副剑胄——单手抚上那白银色的巨
蚁。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/ma05/0190520a14">
「久等了。
　村正。」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0190530a15">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　——村正？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/ma05/0190540a14">
「随我同行！
　共赴武之大道！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。女王蟻が割れる
//装甲まとめ
	CreateSE("SE02","se特殊_鎧_装着04");
	PrintGO("上背景", 10000);

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StC(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
	FadeStC(0,true);
	MusicStart("SE02",0,1000,0,1250,null,false);
	FadeDelete("上背景", 600, true);
	WaitKey(100);
	FadeDelete("絵フラ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……像是在回应她的号召。
　白银之姿突然裂开。

　裂成块块碎片，
　围绕着光舞蹈。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190550a00">
「什么……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　我明白眼前的情景意味着什么。
　发生了什么——<RUBY text="········">因何而发生了什么</RUBY>，我搜刮脑中的知识，得以做出判断。

　——光已经与这副剑胄结缘了吗!?

　就在我愕然旁观之时。
　被白银之辉环绕，光很享受似的眯起眼睛，动作优美地
缓缓抬起手指。

　装甲之势！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆光、装甲アクション１
	SoundPlay("@mbgm11",0,1000,true);
	CreatePlainSP("絵板写",3000);
	StC(1000, @0, @0,"cg/st/st光二年前_装甲_私服a.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw光二年前_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/ma05/0190560a14">
「遇鬼斩鬼。
　逢佛弑佛。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆アクション２
	CreatePlainSP("絵板写",3000);
	StC(1000, @0, @0,"cg/st/st光二年前_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwR("cg/fw/fw光二年前_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【光】
<voice name="光" class="光" src="voice/ma05/0190570a14">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ガキーン。閃光
//◆銀星号
	CreateSE("SE02","se特殊_鎧_装着04");

	CreateSE("SE01","se特殊_鎧_装着06");

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	MusicStart("SE02",0,1000,0,700,null,false);
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStC(0,true);
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(2000);
	FadeDelete("絵フラ", 1000, true);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190580a00">
「……!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　光——!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆祭殿、半壊
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	CreateSE("SE01b","se戦闘_破壊_建物02");
	PrintGO("上背景", 10000);

	MusicStart("SE01a",0,1000,0,1250,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵煙幕", 10000, "#FFFFFF");
	DrawTransition("絵煙幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("上背景");
	DeleteStC(0,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_01.jpg");
	CreateTextureSP("絵背景2000", 150, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_01.jpg");
	SetBlur("絵背景2000", true, 3, 500, 100, false);

	CreateTextureadd("絵背景200", 1000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);

	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 2000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("絵背景2000", 0, 300, null, true);
	Zoom("絵背景2000", 2000, 2000, 2000, null, false);
	FadeDelete("絵背景2000", 1500, false);
	Shake("絵背景100", 2000, 4, 3, 0, 0, 1000, Dxl1, false);
	DrawDelete("絵煙幕", 1500, 1000, "effect_01_00_0", false);
	Fade("絵煙幕", 1000, 0, null, true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 2000, 0, null, false);
	Move("ムービー１", 7000, @0, @+300, null, false);
	Zoom("ムービー１", 8000, 70000, 8000, null, false);
	Fade("ムービー１", 6000, 0, null, false);

	WaitKey(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　……银色闪光散去之后。
　终于恢复视力的我所看到的，是部分屋顶和墙壁已不
知去向的祭殿。

　光不见了。找不到她的身影。
　不——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	Delete("ムービー１");

	CreateTextureEX("絵背景1000", 5000, Center, -550, "cg/bg/resize/bg002_空a_01.jpg");
	Zoom("絵背景1000", 0, 1000, 5000, null, true);

	Fade("絵背景1000", 0, 1000, null, false);

	Zoom("絵背景1000", 400, 1000, 1000, Dxl1, false);
	Move("絵背景1000", 400, @0, 0, Dxl1, false);

	DrawDelete("黒幕１", 200, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0451]
　在空中飞翔的银色身影。
　……瞬间便消逝无踪。

　是去往镇子的方向吗。
　可是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("絵背景1000", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190590a00">
「……只不过是装甲……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　只不过是装甲。
　——就造成如此惨状？

　那副剑胄到底拥有多么巨大的异能。
　光是想像就令人毛骨悚然。

　被卷入那场爆炸般的气浪，我身上却没受伤。
　养母也没受伤。万幸——不。或许是光顾及了我们。

　……既如此，我可不能呆站着。

　我得继续下去。
　既然没能成功阻止光，就应当立即追上去。

　我望着剩下的那副剑胄。
　虽以近在咫尺的距离经历了那场狂暴，却毫发无损、
安然无恙。

　这一事实，使我被迫认清了它不输于那白银之蚁的实
力……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190600a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵板写", 0, 1000, null, true);
	Wait(10);
	CreateColorSP("絵黒", 2000, "#000000");
	CreateTextureSP("絵演中央", 2100, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	Fade("絵板写", 600, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　我强忍胆怯，硬着头皮靠近了它。
　泛着深红色钢铁之光的大蜘蛛，仅是从旁观看就能嗅出
不祥之气。

　……接下来，该怎么办。
　我可不知道佩刀礼的详细步骤。

　总之只能先碰触一下试试看——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴？
	CreateSE("SE01","se特殊_雰囲気_発光04");
	PrintGO("上背景", 25000);
	CreateColorSP("絵白", 10000, "#FFFFFF");
	CreateColorSP("絵黒", 100, "#000000");
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵白", 1000, true);
	SoundPlay("@mbgm04",0,1000,true);

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190610a00">
「——!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正の世界。醜悪。死と怨念のイメージ
//◆銀星号事件ＣＧを歪曲して使うとか。
//◆ＳＥ付き。おどろおどろ。
	CreateSE("SE01","se特殊_陰義_発動04");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 10000, "#FFFFFF");
	CreateTextureEXsub("絵演１", 400, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateColorSP("絵色399", 399, "#CC0000");

	CreateStencil("Ｓ",1000,52, 123,128,"cg/st/3d村正蜘蛛_正面.png",false);
	SetAlias("Ｓ","Ｓ");
	CreateMask("Ｓ/Ｍ", 1000, center,InBottom, "cg/st/3d村正蜘蛛_正面.png", false);
	SetAlias("Ｓ/Ｍ","Ｓ/Ｍ");
	CreateTextureSPmul("Ｓ/Ｍ/絵演", 2100, Center, InBottom, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	Fade("絵演１", 0, 750, null, true);
	DrawEffect("Ｓ/Ｍ/絵演", 3600000, "LowWave", 30, 30, null);
	FadeDelete("絵白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　……什么。
　这东西……

　是什么!?
　这东西!?

　这——
　令人汗毛倒竖的情景、声音、气息、氛围、触感、味
道、思念、命运到底是什么啊啊啊啊啊啊啊啊啊啊!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン
	CreateSE("SE01","se特殊_陰義_発動04");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　
　　　　　　　　　吾名村正


　　　　　　吾遇鬼斩鬼


　　　　　　逢佛弑佛


　　　　　　　　　吾非善


　　　　　　　　　吾无义


　　　　　　　　　吾弃正道


　　　　　　　　吾正邪俱断


　　　　　　　　　吾乃一柄凶刀也


　　　　　欲求同吾契约者
　　　　　可有与吾共化凶刀之觉悟


　　　　　　　　　若无速散


　　　　　　　　　若有——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ギーン。不協和音
//◆現実復帰
	CreateSE("SE01","se特殊_陰義_発動03");//ダミー注意
	PrintGO("上背景", 25000);
	Delete("Ｓ");
	CreateColorSP("絵白", 5000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SetVolume("@mbgm*", 100, 0, null);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵白", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0190620a00">
「啊……
　哇啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　费了九牛二虎之力——
　我才成功地抽离黏在剑胄上的手。

　忍不住胃内翻涌而上的呕吐感，我滚倒在地。
　吐得到处都是。

　我无声地嘶吼着。

　……不行！
　不行不行不行不行不行!!

　那种令人作呕的魔物！
　我实在是消受不起……!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_020.nss"