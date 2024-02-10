//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_036.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;
	#bg001_空b_01=true;
	#bg039_競技場客席a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_037.nss";

}

scene md02_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_035.nss"

//◆翌朝
//◆食卓

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一声令下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @30, @0,"cg/st/st茶々丸_通常_変装_b.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360010a07">
「今天去玩，快准备一下。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360020a00">
「……哈。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360030a01">
「去玩？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);

	Delete("@OnBG*");
	DeleteStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　几小时后。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空。ガーッと車の走行音
//◆田村サーキット
//◆※鎌倉サーキットの流用or微細アレンジで。他も。

	CreateSE("車", "se乗物_車_発車01");
	MusicStart("車", 0, 1000, 0, 1000, null, true);
	OnBG(100, "bg001_空b_01.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",1500,true);
	WaitKey(1500);
	SetVolume("車", 1000, 0, null);

	OnBG(101, "bg039_競技場客席a_01.jpg");
	FadeBG(1500, true);
	Delete("@OnBG100");

	SoundPlay("@mbgm25", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我们正在骏河国小鹿的田村甲业直营竞技场。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360040a01">
「主君，还好吧？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360050a00">
「……还好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　不习惯乘车旅行，稍微有点晕车。
　虽然还没到要冲去厕所的程度，但视野有些不稳。

　要从<RUBY text="··">颠簸</RUBY>中恢复过来还需要点时间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360060a00">
「睡眠不足也有影响。」

{	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360070a07">
「啊呀……哥哥你也是吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360080a01">
「也？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360090a07">
「公主也是。
　可能是昨天晚上熬夜的原因吧。
今早就缩在房里，没打算外出的样子，
我就放着她没管了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360100a00">
「……这样啊。」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　也就是说将自己关在房间睡懒觉了？
　她应该是作息规律的生活节奏才对啊……
但现在或许不同了。

　要是睡懒觉的话，我不在的这段时间，
光也应该不会与银星号一起引起骚动。
　被硬拉着来到这里，大概没法尽快回去。

　说是<RUBY text="·">玩</RUBY>，但事实是怎样还不清楚——就堀越公方来看，
还真是说不准。
　姑且先随她的意思比较好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360110a07">
「要借个地方休息一下吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360120a00">
「没事。
　话说阁下……为什么要来这里？」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360130a01">
「是啊。
　为什么我非得坐车顶，一边给沿路的人
提供话题一边来这种地方？」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360140a07">
「都没喊你，只是你自己硬要跟来的吧。
{	Wait(500);
	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
　……哥哥，忘记今天是什么日子了吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360150a00">
「今天……？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360160a07">
「今年最后的活动。
　田村挑战杯的日子哟。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　说起来。
　在众多事端的纷扰中完全忘记了，原来是今天啊。

　田村挑战杯是田村甲业及其他公司每年共同主办的
——虽这么说，也就是这几年的事
——是个装甲竞技大赛。
　规模的话也不算大。

　但，参加的各团队送来的都是瞄准来年胜负的骑体，
因此也很受爱好者的关注。
　我也有为了得到观看席位而四处奔跑的经历。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360170a07">
「我想，对喜欢装甲竞技的哥哥来说，
是不想错过的活动吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360180a00">
「嗯，确实。
　……您也挺了解我的兴趣。」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360190a07">
「这是为什么呢——
　不可思议呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	SetVolume("@mbgm*", 1000, 0, null);
}

..//ジャンプ指定
//次ファイル　"md02_037.nss"