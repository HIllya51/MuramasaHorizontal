//<continuation number="830">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_019.nss_MAIN
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
	#bg076_建朝寺境内_02=true;
	#bg032_八幡宮奥舞殿内b_01=true;
	#bg002_空a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_020.nss";

}

scene mb03_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_018.nss"

//◆夕空
//◆ＳＥフェードイン。銃声、悲鳴
//◆建朝寺
//◆銃声、剣戟、悲鳴。
	PrintBG("上背景", 30000);
	CreateTextureSP("絵演背景", 4000, Center, 0, "cg/bg/resize/bg002_空a_02.jpg");
	OnBG(100,"bg076_建朝寺境内_02.jpg");
	CreateSE("SEL01","se背景_ガヤ_戦場の風景04");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	WaitKey(2000);
	Move("絵演背景", 3000, @0, @-568, AxlDxl, false);
	FadeDelete("絵演背景", 3000, true);

	WaitKey(1000);


//◆親王の座所
//◆署長
	SetVolume("SE*", 3000, 500, null);
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(3000,true);

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,true);

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190010a11">
「……宫殿下……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190020a10">
「……哦。
　你辛苦了，菊池。」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190030a11">
「……在下先行一步。
　殿下您请稍后。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190040a10">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。ばた。署長死亡
	CreateSE("SE01b","se人体_衝撃_転倒03");
	Move("@StR*", 300, @-10, @30, Dxl1, false);
	DeleteStR(300,true);
	MusicStart("SE01b",0,1000,0,1000,null,false);


//◆ウェイト
//◆近付く足音
	WaitKey(2000);

	CreateSE("SE02","se人体_足音_歩く08");
	MusicStart("SE02",2000,1000,0,750,null,false);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190050a10">
「…………」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190060a10">
「没想到你会登门造访啊。
　堀越。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190070a07">
「您希望是雷蝶吗？
　皇子殿下。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	SetVolume("SE*", 100, 0, null);
	StL(1000, @30, @0,"cg/st/st茶々丸_通常_制服a.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190080a07">
「您没请我，还真是遗憾。
　不过我觉得不管来者是谁，都没多大区别吧？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190090a10">
「……是啊。
　本王不过是担起失败的责任，送命而已。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190100a07">
「嗯。
　偏偏和雷蝶联手，最后控制不了那家伙了，
束手无策了哦。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190110a10">
「……」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190120a07">
「您太心急了，宫大人。
　败因就在于此。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190130a10">
「无言以对啊。随你说吧。
　下次会做得更好。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190140a07">
「下次啊……」


{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190150a10">
「玩笑啦，玩笑。
　别用那么冰冷的眼神看我。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190160a10">
「菊池还在等我呢。
　能快点给我来个一剑封喉吗。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190170a07">
「对你忠心耿耿的镰仓署长吗。
　那位大叔不是应该期望你活下去完成自己的
心愿么？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190180a10">
「…………
　你心眼很坏啊。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190190a07">
「是吗？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190200a10">
「特地想为我留点不舍吗。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190210a07">
「不是。　不对哦。
　如果你希望的话，可以成全你。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190220a10">
「…………」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190230a07">
「咦？　你怎么不欢呼雀跃啊？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190240a10">
「……等我问清楚了再说。
　那么，你的条件是什么。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190250a07">
「没条件。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190260a10">
「……」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190270a07">
「我可以免费把你送到安全的地方哦。
　横滨可以吧？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190280a10">
「ＧＨＱ……？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190290a07">
「是。
　他们现在看出你的利用价值了。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190300a07">
「皇族的变种，轻浮而又受人追捧的亲王殿下。
　想让国民站到自己这边，利用你再方便不过。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190310a10">
「……前提是得有推销我的中间人啊。
　本王，在ＧＨＱ几乎没有人脉。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190320a07">
「别愁，你这迷途的羔羊。
　我不可能把你往横滨基地前一扔就完事的。
我茶茶丸大人的售后服务是很周到的。」


//◆ＧＤＧは「グリューネドラヘ·ゲゼルシャフト」と読む
{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190330a07">
「我会为你介绍中间人的。
　叫做绿龙会，虽然成员都是些古怪可疑的人。
在ＧＨＱ要人面前很吃得开。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190340a10">
「……绿龙……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190350a07">
「接下来就要看你的本事了。不过很简单吧？
　那边的好处一目了然。」


//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190360a07">
「只要你代表大和，表明支持进驻军，国际联
盟的非战派也会保持缄默。
　英国佬们就能无所顾忌地与我们六波罗战斗
了，就是这么个情况。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190370a07">
「肯定会热烈欢迎的。
　保你三餐不愁高枕无忧后宫成群哦，老爷。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190380a10">
「……然后呢。
　你会怎么样。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190390a07">
「那自然是和狮子吼一起恶战苦斗了。
　真是无比非常难以言表的挣扎啊。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190400a07">
「甚至向ＧＨＱ摊出<RUBY text="··">王牌</RUBY>。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190410a07">
「不过我们终究会输的。
　本来，被市民抛弃的军队就不可能长久……」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190420a07">
「六波罗毁灭，我们也会死。
　然后大和国就能一片祥和了。可喜可贺、
可喜可贺。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190430a10">
「……真是够理想的。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190440a07">
「是吧？
　那就这么定了，行吗？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190450a10">
「要我回答吗。
　是啊。如果是那样的话。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190460a10">
「拒绝。
　我还是死在这里吧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//――――――――――――――――――――――――

//◆ずる。
//◆茶々丸アップ
	SetVolume("@mbgm*", 100, 1, null);
	CreateSE("SE01","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @0, @60, Dxl2, false);
	DeleteStL(300,true);

	StCL(1000, @0, 0,"cg/st/resize/st茶々丸_通常_制服a_l.png");//ダミー注意
	Move("@StML*", 300, @0, @-384, Dxl3, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw茶々丸_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190470a07">
「也许光听声音，你还不怎么明白，我刚才摔了
一跤。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190480a10">
「干嘛要解释？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190490a07">
「唉，因为有那个帘子，我想你可能没看见。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻る
	Move("@StML*", 300, @-30, @0, null, false);
	DeleteStCL(300,true);

	StL(1000, @-30, @0,"cg/st/st茶々丸_通常_制服a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,false);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190500a07">
「话说回来，为什么啊。
　难道不是打着灯笼都找不着的好事吗？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190510a10">
「这个嘛。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190520a07">
「不愿成为大英联邦的附属国？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190530a10">
「不愿意啊。
　不过，如果这对于大和来说是上上策的话，
那也没有办法。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190540a07">
「那还有什么不满？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190550a10">
「因为构不成交易啊。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190560a07">
「……嗯？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190570a10">
「你什么也得不到，不是吗。
　是啊，条件不错。进驻军大概会欢迎我吧。
六波罗会被逼上绝路吧。作为首领的你会死吧。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190580a10">
「你只是一味失去啊。
　什么也得不到。」


{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190590a07">
「嗯。我可是无欲无求的足利茶茶丸。
　百年之后说不定会被印上纸钞名垂青史。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190600a07">
「那么，这有什么不妥吗？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190610a10">
「很不妥啊。太不妥了。
　只知奉献不求回报的家伙啊，要么是真正的
圣人。如若不然……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190620a10">
「就是真正的恶魔，<RUBY text="·······">最后会夺走一切</RUBY>。」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190630a07">
「——」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190640a10">
「……茶茶丸。
　让我听听你的期望吧。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190650a10">
「倘若真的无欲无求，那但说无妨。
　如果你能<RUBY text="····">面不改色</RUBY>，我就相信你。」


{	SetVolume("@mbgm*", 3000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190660a07">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190670a10">
「……你的期望什么？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆茶々丸
//◆無表情→笑顔？

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190680a07">
　　　　　　　　　「世界
　　　　　　　　　　终焉。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190690a10">
「——!?」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190700a07">
「……永别了，宫大人。
　原本还以为利用你是最好的方法。算了，我还
是考虑走其他的路吧。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ちゃきん
//◆一閃……の途中で
	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitKey(500);
	CreateSE("SE01b","se戦闘_攻撃_刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateMovie("絵動画一閃", 4000, Center, Middle, true, false, "dx/mv剣戟_左から右.ngs");
	Wait(300);
	Request("絵動画一閃", Pause);


//◆銃声割り込み。ばきゅーん
//◆血
	SetVolume("SE01*", 100, 0, null);
	CreateSE("SE02","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE02b","se人体_血_たれる01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#000000");
	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	Delete("絵動画*");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Wait(100);
	FadeDelete("絵色白", 200, true);

	WaitKey(1000);
	DeleteStA(0,true);

	FadeDelete("絵演", 1000, true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190710a10">
「…………」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190720a07">
「…………」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190730a11">
「…………」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190740a07">
「……喂。等等。
　那边的大叔。」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190750a11">
「……真不好意思……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190760a10">
「菊池……」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190770a11">
「虽然是致命伤……不过。
　也许是因为伤的位置不对……怎么也断不了
气……」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190780a11">
「也不好意思宣告自己还活着……
　只能默默等死……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190790a11">
「但是……好不容易得以苟延残喘。
　至少要<RUBY text="····">惩办恶魔</RUBY>才是。」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190800a07">
「……心脏正上方……正中间吗……
　可真是无计可施了呢……」

//◆笑い
{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0190810a07">
「……太悲惨了。
　怎么会是，这样的结局……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばったり
	CreateSE("SE01","se人体_衝撃_転倒03");
	Move("@StL*", 300, @0, @60, null, Axl1);
	DeleteStL(300,true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw署長_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0190820a11">
「……」


{//◆がちゃ。銃が落ちる音
	CreateSE("SE01","se戦闘_金属_拳銃落ちる");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0190830a10">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆複数の足音が近付く。どたどた。
	CreateSE("SE01","se人体_足音_踏み込み01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	WaitKey(2000);

//◆夕空
	SetVolume("SE*", 3000, 0, null);
	PrintGO("上背景", 30000);
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 3000, true);

	WaitKey(1000);

//◆銃声連続
//◆フェードアウト
	CreateSE("SE01","se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(1000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_020.nss"