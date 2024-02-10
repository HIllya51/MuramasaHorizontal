//<continuation number="1520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_045a.nss_MAIN
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
	#bg105_城門付近内側_02=true;
	#bg063_普陀楽城内廊下_02=true;
	#bg071_普陀楽城内張り出し_02=true;
	#ev952_雷蝶装甲_a=true;
	#ev952_雷蝶装甲_b=true;
	#ev955_虎徹景明装甲_a=true;
	#ev955_虎徹景明装甲_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_虎徹=true;

	$PreGameName = $GameName;

	$GameName = "md04_045aa.nss";

	//★ＥＤロール超速対応
	PreSetRoll(4);
	TheEND(4);
}

scene md04_045a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



	PrintBG("上背景", 30000);
	CreateColorSP("白", 2000, "WHITE");
	Delete("上背景");

..//ジャンプ指定
//前ファイル　"md04_045.nss"


//●捨てられる

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0010a00">
（能够舍弃）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0020a01">
“————”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0030a00">
（容易得很。
　与守护——得到之物的艰辛相比，
舍弃算什么！）

//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0040a00">
（假如这么做就能够守护光的话，
那我便这么做）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0050a01">
“主君……！”

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0060a00">
（你说过，除了光以外还有其他重要的东西吧。
　或许你说得对）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0070a00">
（但我要舍弃它们）

{	FwC("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0080a00">
（你也是……村正!!
　从我的内心消失吧!!）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆精神領域破壊。脱出
//◆元の場所。村正
	OnSE("se特殊_陰義_発動04", 1000);

	OnBG(100, "bg105_城門付近内側_02.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(0,true);

	DrawDelete("白", 1000, 200, "circle_01_00_0", true);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0090a01">
「……啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆がく。膝を突く

	OnSE("se人体_衝撃_転倒03",1000);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　因缘被斩断了。

　跪在地上，低着头的人形剑胄已经与我毫无关联。
　
　只是瞥了她一眼，我转身而去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0110a07">
「哥哥……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0120a00">
「你还要和这些线玩到什么时候？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0130a07">
「讨厌，这东西太缠人了。
　我也不想一直扮演被捕蝇纸黏住的苍蝇啊。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0140a00">
「……别动。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0150a07">
「好。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆太刀一閃
	OnSE("se戦闘_攻撃_刀振る01", 1000);

	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景200", 300, 1000, null, true);
	Fade("絵背景200", 500, 0, null, true);
	OnSE("se戦闘_攻撃_鉄切断",1000);

	Wait(500);

	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　拔出腰间的长刀，一挥。
　效力已然减弱的钢线，轻易地散落于地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0160a00">
「这就行了吧。
　快站起来。」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0170a07">
「哥——哥！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だき。アップ

	DeleteStL(150,true);

	OnSE("se人体_動作_抱きつき01",1000);

	StL(1000, @0, @1100, "cg/st/resize/st茶々丸_通常_制服a_l.png");
	Request("@StL*", Smoothing);
	Zoom("@StL*", 0, 1000, 1000, null, true);
	FadeStL(150, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0180a00">
「……为什么要粘上来。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0190a07">
「表达爱意。
　我就知道哥哥绝对会选我的！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0200a07">
「呼……我就知道哥哥是在掩饰。
　平时冷血的态度肯定是最后逆转的伏笔。
傲了之后绝对是要娇的！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0210a00">
「…………
　不知道你在说什么。」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0220a00">
「我并非是选择了你。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0230a07">
「一样的嘛。
　我觉得这样就好……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0240a07">
「哥～哥～」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0250a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　貌似暂时不会离开。
　虽然烦人，但把她拽走也太麻烦了，无从下手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0260a00">
「走吧。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0270a07">
「嗯。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0280a00">
「……啊啊，对了。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0290a00">
「那个要怎么办？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　拇指指向不动的剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0300a00">
「你不是说要毁了它吗？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0310a07">
「也对呢。
　……无所谓了。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0320a07">
「这次，那家伙是真的什么也做不了了。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/045a0330a01">
「…………」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0340a00">
「……也是。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0350a07">
「别管了别管了。
　还是留她一命比较舒服。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0360a07">
「走吧，哥哥。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0370a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("@mbgm*", 1000, 0, null);

	DeleteStA(0,true);

	OnBG(101, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);

	Wait(2000);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm12", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　在消耗着无数生命之时。
　城内的混沌越发浓重。

　天空中，已经难以找到银白色之外的星星。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0380a00">
「接下来只要等着锻造雷弹就可以了？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0390a07">
「嗯。
　已经没有什么能妨碍我们的目的了。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0400a00">
「常暗的预感不准吗。
　算了，不出事就好。」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0410a07">
「————啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0420a00">
「怎么了？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0430a07">
「……不愧是剑豪，感觉真敏锐。
　有一件只有我们能做的事，好像办成了呢，
哥哥。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0440a07">
「看那边。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我看向她所指的方向。

　天顶附近，<RUBY text="银星号">白银的王者</RUBY>正悠然起舞。
　或许是打算挑战它吧，有一骑武者正向它接近。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進04",1000);
	CreateWindow("絵演窓上", 16200, Center, 0, 1024, 400, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16200, 0, -144, "cg/bg/bg002_空a_02.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);

	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureEX("絵演窓上/絵立絵", 16300, 400, 0, "cg/st/3d同田貫_騎航_戦闘.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 70, false);

	Move("絵演窓上", 0, @0, @-350, null, true);

	CreateColorEX("明度", 150, "BLACK");
	Fade("明度", 300, 500, null, false);

	Move("絵演窓上", 500, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 300, 1000, null, true);

	Move("絵演窓上/絵立絵", 1000, -379, -192, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0450a00">
「什么人？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0460a07">
「不守清规戒律的老和尚。
　古河公方游佐童心。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0470a07">
「剑胄是同田贯正国。有名着呢。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0480a00">
「哦？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0490a07">
「招来发疯的虫子了。
　……那个乱来的家伙。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0500a07">
「不知道结果会怎样呢。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0510a00">
「这个男人如此不可小觑吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　不用问，我就知道游佐童心的威名。
　虽说与足利一门沾亲带故，但他所居的高位，并不只
因为是名门的一员，更大的原因乃是其凭一杆枪横扫战
场的武力。

　恐怕在六波罗全员中，他的实力也居于上游。
　
　但是，他将挑战的是银星号。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演窓上/絵立絵", 500, false);
	FadeDelete("絵演窓上/絵演背景", 500, false);
	FadeDelete("明度", 500, true);
	Delete("絵演窓*");

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0520a07">
「只有童心和尚就没问题。
　公主殿下对付他可以百战百胜。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0530a07">
「但是……你看。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　茶茶丸的手指稍微移动。
　被她指引着移动的视线前方，是天守阁。

　在那露台上，站着一个即便从远方看来，身躯也显得
异常庞大的男人，与我们一样，凝视着银星号与古河公
方的对峙。
　那是——小弓公方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0540a00">
「今川雷蝶！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0550a07">
「嗯。
　那家伙就不一样了。那家伙很危险。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0560a07">
「就算是公主殿下，也难保不出万一。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0570a00">
「并且加上游佐童心的话，危险倍增吗。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0580a07">
「不仅如此。
　假如鏖战中锻造雷弹正巧来了——」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0590a00">
「会怎样？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0600a07">
「公主殿下大概无法分心对付……
　结果<RUBY text="··">大家</RUBY>会被一起炸飞。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0610a00">
「————」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0620a00">
「去收拾吧。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0630a07">
「收拾哪个？」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0640a00">
「若是与银星号一同对付游佐童心，则会逼得
今川雷蝶参战。
　还是阻止他靠近银星号为上策吧？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0650a07">
「嗯。
　能估算到的事情我都算了，但只有他的实力
我无法估算。」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0660a00">
「幸好，他打算暂时在一旁静观。
　现在正是好机会。」

//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0670a00">
「我们要登上天守阁，打倒今川雷蝶。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0680a07">
「…………」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0690a00">
「害怕的话就留在这。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0700a07">
「嘿嘿——」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0710a00">
「……？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0720a07">
「那家伙的实力不同凡响，
堂堂正正是没有胜机的。
　————直到刚才。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0730a00">
「现在就不同了？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0740a07">
「能赢。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0750a07">
「我和哥哥，绝对能赢。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0760a00">
「一百次能胜几次？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0770a07">
「能胜二十次。」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0780a00">
「很好。
　我相信你。」

{	FwC("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0790a00">
「上吧！」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0800a07">
「Ｙｅｓ ｓｉｒ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆天守内、テラス
	SetVolume("@mbgm*", 3000, 0, null);


	CreateColorSP("暗転", 30000, "#000000");
	DrawTransition("暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//↓　素材用意していただける模様　inc櫻井
	OnBG(100, "bg071_普陀楽城内張り出し_02.jpg");
	FadeBG(0, true);


	StL(1000, @0, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStL(300, true);

	DrawTransition("暗転", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("暗転");

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0810a08">
「……不行。
　童心大人果然无法近身。」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0820a08">
「只有让吾去了！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0830a07">
「可不能让你去。
　都已经走到这里，怎能让你破坏计划呢。」

{	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(300, true);
	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0840a08">
「……茶茶丸!?」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0850a08">
「你，之前都在哪里干些什么——」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0860a07">
「说来话长。
　闭幕的时刻已近。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0870a07">
「我只想快点完事。」

{	SoundPlay("@mbgm09",0,1000,true);
	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0880a08">
「——————」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0890a08">
「说吧，什么事。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0900a07">
「雷蝶。
　我是来杀你的。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0910a08">
「是吗？」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0920a08">
「……原来是你。
　谋划这一切的人。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0930a07">
「哈哈哈，看来你总算明白了。
　你们一直都是我手中的棋子！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0940a00">
「虽然我记得貌似事态一直偏离预想就是了……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0950a07">
「没办法嘛！
　这跟只有一个半小时的电影不同，不是一切
都能顺利照幕后黑手的想法发展的！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a0960a00">
「失望了啊。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a0970a07">
「……我会更加努力的。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0980a08">
「哼。
　你们二人要向吾挑战？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a0990a08">
「过分的鲁莽反而显得可爱呢。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1000a07">
「你的意思是想手下留情吗？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1010a08">
「怎么可能。
　相反。」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1020a08">
「——吾要让你们粉身碎骨!!
　膝丸!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("装甲", 1000, @0, @0, "cg/ev/ev952_雷蝶装甲_a.jpg");
	Zoom("装甲", 0, 2000, 2000, null, true);
	SetBlur("装甲", true, 3, 300, 100, false);

//	StC(1000, @0, @0,"cg/st/st雷蝶_装甲_制服.png");
//	FadeStC(0,true);

	Zoom("装甲", 1000, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 1000, 0, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw雷蝶_軍将.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1030a08">
「顶礼膜拜八幡大菩萨！
　此身，御剑而成！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆武者·膝丸

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	Delete("装甲");
	CreateTextureSP("装甲b", 1500, @0, @0, "cg/ev/ev952_雷蝶装甲_b.jpg");

	StC(1000, @0, @0,"cg/st/3d膝丸_立ち_抜刀.png");
	FadeStC(0,true);

	Wait(1000);
	FadeDelete("絵フラ", 1000,true);

	Wait(1000);

	FadeDelete("装甲b",1500,true);

	SetFwR("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1040a08">
「姓凑斗的。
　你似乎对自己的实力相当自信。」

{	FwR("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1050a08">
「但不要把吾与之前的杂鱼相提并论！
　吾膝丸的装甲……若能斩开就尽管试试吧！」

{	FwR("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1060a00">
「——哼。
　既然中将阁下有命，那就不得不遵从了。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆チャキ。
	OnSE("se擬音_雰囲気_抜刀01", 1000);

	DeleteStC(150,true);

	StL(1000, @0, @0, "cg/st/3d膝丸_立ち_抜刀.png");
	StR(1000, @50, @0, "cg/st/st景明汚染_戦闘_制服.png");
	FadeStR(150, false);
	FadeStL(150, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1070a07">
「对呀。
　但是哥哥，要打的话先要装备上武装才是。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1080a00">
「什么？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1090a07">
「哥哥的趁手兵器，不是这太刀。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1100a07">
「在这里。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1110a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1120a07">
「懂了吗？应该懂了吧。
　已经结缘了……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1130a07">
「在这里。
　哥哥的武装在这里！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1140a00">
「————」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1150a08">
「……虽然不知道你是什么意思。
　若你只会说胡话，就连你一并干掉。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1160a07">
「快呼唤我！
　哥哥。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1170a07">
「我的名字!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　心中。
　浮现出一句话。

　我开口，咏出它。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明汚染_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1180a00">
「——————————虎彻。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。茶々丸分解
//◆装甲アクション

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStA(0,true);

	CreateTextureSP("装甲", 5000, @0, @0, "cg/ev/ev955_虎徹景明装甲_a.jpg");
	Zoom("装甲", 0, 2000, 2000, null, true);
	SetBlur("装甲", true, 3, 300, 100, false);


	Zoom("装甲", 500, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 500, 0, null, true);

	Wait(500);

	SetFwR("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1190a08">
「…………什么——」

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1200a00">
「予狮子以肉。予狗以骨。
　予龙以纯洁之魂灵。」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明汚染_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1210a00">
「今夜之虎彻——正是嗜血之时。」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	CreateTextureSP("装甲", 10000, center, middle, "cg/ev/resize/ev955_虎徹景明装甲_al.jpg");
	Request("装甲", Smoothing);

	OnSE("se人体_動作_跳躍03",500);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("装甲", 0, 600, 600, null, true);
	FadeF4("装甲", 200, 1000, 400, 0, 0, Dxl2, true);

	OnSE("se人体_動作_跳躍03",1000);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Zoom("装甲", 0, 700, 700, null, true);
	FadeF4("装甲", 200, 1000, 400, 0, 0, Dxl2, true);

	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_空突進02",1000);
	Zoom("装甲", 0, 1000, 1000, null, true);
	EffectZoomadd(17000, 500, 100, "cg/ef/ef003_汎用移動.jpg", false);
	FadeF4("装甲", 200, 1000, 400, 0, 0, Dxl2, true);

	Wait(100);

//◆装甲
//◆武者·虎徹
	#av_虎徹=true;

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	SetBlur("装甲", true, 1, 500, 100, false);
	Zoom("装甲", 500, 2000, 2000, Axl2, false);
	Fade("絵フラ", 500, 1000, null, true);
	DeleteStA(0,true);

//	StR(1000, @0, @0,"cg/st/3d虎徹_立ち_通常.png");
	StC(1000, @0, @0, "cg/st/3d膝丸_立ち_抜刀.png");
	FadeStC(150, true);
	CreateTextureSP("装甲", 4900, @0, @0, "cg/ev/ev955_虎徹景明装甲_b.jpg");
	Request("絵背景", Smoothing);

	Zoom("装甲", 0, 2000, 2000, null, true);
	SetBlur("装甲", true, 3, 300, 100, false);

	Wait(1000);

//	FadeStR(0,true);

	Zoom("装甲", 2000, 1000, 1000, Dxl2, false);
	FadeDelete("絵フラ", 2000,true);

	Wait(1500);

//あきゅん「演出：ネタ残し」
	SoundPlay("@msong04_inst",0,1000,true);

	SetFwR("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/045a1220a08">
「……茶茶丸。
　你到底是？」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1230a07">
《来——战斗吧！》

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1240a07">
《虎彻初次上阵！
　哥哥——主君!!》

{	FwR("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1250a00">
「……啊啊。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1260a07">
《敌骑是六波罗首领今川雷蝶。》

{	FwR("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1270a07">
《不多不少，正是适合的对手！
　我们必胜！》

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/045a1280a07">
《主君，我们上————!!》

{	FwR("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/045a1290a00">
「好!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 1500, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 1050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 1100, 100, -144, "cg/bg/bg071_普陀楽城内張り出し_02.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 1110, -700, -1000, "cg/st/resize/3d虎徹景明_立ち_抜刀ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Fade("絵色100", 0, 300, null, true);
	Fade("絵演窓上/絵演背景", 0, 1000, null, true);
	Fade("絵演窓上/絵立絵", 0, 1000, null, true);

	OnSE("se戦闘_攻撃_振る04", 1000);
	OnSE("se戦闘_動作_刀構え03", 1000);
	FadeDelete("装甲", 1000, false);
	Move("絵演窓上/絵演背景", 1500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 1500, -800, -200, AxlDxl, true);
	OnSE("se戦闘_動作_刀構え01", 1000);

	Wait(500);

	CreatePlainSP("絵板写", 4999);
	Wait(50);
	Delete("絵色100");
	Delete("絵演窓*");
	SetBlur("絵板写", true, 3, 500, 100, false);

	OnSE("se戦闘_動作_空突進01", 1000);
	OnSE("se戦闘_動作_空突進02", 1000);

	FadeDelete("絵板写", 350, false);
	Zoom("絵板写", 350, 2000, 2000, Axl3, false);

	Wait(250);

	SetBlur("@StC*", true, 1, 500, 50,false);
	SetBlur("@OnBG*", true, 1, 500, 50,false);
	Request("@StC*", Smoothing);
	Zoom("@StC*", 300, 1500, 1500, Dxl3, false);
	Move("@StC*", 300, @0, @100, Dxl3, false);
	Zoom("@OnBG*", 300, 1500, 1500, Dxl3, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　拔刀，冲向前方。

　向黄金的敌骑。
　武者，长曾弥虎彻的初次上阵。

　凑斗景明的，最后一战。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆激突
	CreateTextureEX("絵剣", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵剣2", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵剣", 0, 1800, 1800, null, true);
	Zoom("絵剣2", 0, 1800, 1800, null, true);
	Rotate("絵剣", 0, @0, @0, @-90, null,true);
	Rotate("絵剣2", 0, @0, @0, @-90, null,true);

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);

	EffectZoomDXadd(18100, 500, 100, "#FFFFFF", "cg/ef/ef039_時間移動.jpg", false);

	Fade("絵剣", 0, 1000, null, true);
	Fade("絵剣2", 0, 1000, null, true);
	Zoom("絵剣", 500, 2200, 2200, Dxl2, false);
	Zoom("絵剣2", 500, 2100, 2100, Dxl2, false);

	Wait(300);

	CreateColorSP("黒幕１", 5000, "BLACK");
	CreateTextureSPadd("衝突", 15000, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	SetBlur("衝突", true, 3, 500, 100, false);
	Zoom("衝突", 0, 1100, 1100, null, true);

	FadeDelete("絵剣*", 800, true);

	OnSE("se戦闘_破壊_爆発07", 1000);

	Zoom("衝突", 5000, 1500, 1500, Dxl2, false);
	Shake("衝突", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Wait(2000);

//◆エンドロール

	ClearWaitAll(3000, 3000);

}

..//ジャンプ指定
//次ファイル　"md04_045aa.nss"
