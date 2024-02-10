//<continuation number="2090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_007.nss_MAIN
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
	#bg013_鎌倉俯瞰a_03=true;
	#bg009_鎌倉住宅街a_03=true;
	#bg007_若宮大路a_03=true;
	#bg007_若宮大路a_01=true;

	#ev106_雄飛と見下ろす村正_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_008.nss";

}

scene ma03_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_006.nss"

//◆鎌倉·夜


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg013_鎌倉俯瞰a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　与大鸟香奈枝共同行动——
　话虽如此，但自然不可能将她带到关东拘留所去。

　于是在署长的宅邸为她准备了一个房间。
　离八幡宫很近。到车站的距离也不远。虽然不知生活
环境是否合她心意，但交通便利这点应该不会让她感到
不自由吧。

　在夜幕的道路上行走。
　没有交谈。

　倒也并无疏远之意——但对方是如何想的就不知道了。
　只是在整理脑内思绪而已。

　实话说，这并非值得苦恼的状况。
　既然为我以银星号追踪者这一立场提供保障的两人
——亲王和署长已经做出决断，那么就不得不在今后的行
动中带上她。

　既然这点已经无法改变，那么以后需要多加留意的就
是尽最大可能让她远离危险而已。
　估计不会很困难。

　大尉并非武者，没有与银星号以及寄生体战斗的手段。
但反过来说，让无法作战的人介入战斗，实在不妥至极。
　只让她在危险较少的搜查阶段提供协助就好。

　在这个方面，我认为她或许比我要更有才能。
　想到要把他人卷入到银星号的问题中，就不胜羞愧。
但仅从权衡利益得失的层面上说，这并非什么坏事。

　我的思考大体上就在这里告一段落。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070010a03">
「景明大人。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070020a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	OnBG(100,"bg009_鎌倉住宅街a_03.jpg");
	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服b.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一边行走，一边回望。
　虽然感觉这并不礼貌，但在道路中央停下脚步也不太
像话。

　她仿佛完全不觉得重，将乐器箱背在右肩上，向我投
来窥探的目光。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070030a03">
「您在生气吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070040a00">
「没有。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070050a03">
「那么，您是觉得困扰吗。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070060a00">
「即便如此，也并非您的责任，大尉阁下。
　您只是在忠实地履行自己的职责罢了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070070a00">
「本人也认为应该忠实于自己所处的立场，以
及相应所产生的责任。
　对能得到大尉阁下协助的事绝无异议。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070080a03">
「是这样吗？
　那就好……而且给景明大人增添麻烦也不是
我的本意。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070090a04">
「太好了呢，大小姐。
　顺带一提，凑斗大人的发言意译一下的话，估
计就是『虽然超级麻烦，但既然是亲王的命令也
没办法了呢。哼。』这个意思了吧。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070100a03">
「啊嗯!?
　真的是这样吗，景明大人！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070110a00">
「是的。」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070120a03">
「讨厌。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ばた。
	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStL(300,false);
	Move("@StL*", 300, @20, @180, DxlAuto, false);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070130a04">
「大小姐，在路上睡觉可是会给通行的人们带
来困扰的哦。
　请到那边的垃圾丢弃场稍作休息吧。所幸明
天似乎就是回收日了。」

{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070140a03">
「莫非你其实很恨我!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070150a00">
「但是，那充其量不过是本人心情上的问题，
对大尉阁下的能力并无任何担忧，不如说更多
的是期待。
　反倒是在为本人是否会成为阻碍而感到不安。」

{	StL(1000, @0, @180,"cg/st/st香奈枝_通常_私服b.png");
	Move("@StL*", 300, @0, @-180, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070160a03">
「呀，景明大人真是太谦虚了。
　刚才的听到了吗，婆婆？　景明大人对我抱
有期待哦！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070170a04">
「重新振作的速度之快，实在了不起。
　大小姐就是得这样才行！」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070180a04">
「话说回来大小姐，您可知道在所有生物中最
为强韧的是单细胞生物呢。」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070190a03">
「景明大人，请稍候片刻。
　我有点俗事要去那个角落上的肉店办一下。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070200a00">
「但我觉得他们不会接受不明品牌的肉品。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　真是令人费解的主仆。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070210a00">
「大尉阁下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070220a03">
「是？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　视线渐渐转回前方，喊了一声。
　背后拉动枪机的声音戛然而止，取而代之的
是若无其事的话音。

　吸了一口气后继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070230a00">
「那个村子的事情您听说了吗。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070240a03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　此时，沉默比百万言语更似雄辩。
　自不用说，噩耗不可能还没传到她的耳中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070250a00">
「真是万分羞愧。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070260a03">
「为何要道歉？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070270a00">
「让大尉阁下的一番努力都化为了泡影。被眼前
战斗纠缠，忽略了银星号的来袭。
　实在为本人的无能而无比悔恨。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070280a00">
「在无辜而死的人们看来……
　连这份悔恨也会是可憎的事物吧。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070290a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　即使以他们的死作为反省的材料，也不可能给被杀害
的人们带来任何安慰。
　当然不能让他们白白牺牲。但即使将元凶斩于刀下，
也无法救赎死者的怨念。

　虽然能够深信自己曾经救过。
　但那不过是生者的妄念罢了。

　若是不想借妄想来逃避的话，
　就只有一直将怨念背负下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070300a03">
「村子的事情在回到司令部之后马上就听说了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070310a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070320a03">
「似乎……没有一个人……
　没有任何一个人……存活下来的样子哦？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070330a00">
「是的。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070340a03">
「我，一直都身处海外。
　回到大和的日子尚浅。接触到关于银星号事件
的活生生事例这还是第一次哦。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070350a03">
「怎么看都实在无法饶恕。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070360a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070370a03">
「所以，刚才的事情也干脆地答应了。
　虽然考虑到上司意图的话，本应该紧盯着
八幡宫才行的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070380a00">
「本人理解您的心情。
　不，是自认理解。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070390a03">
「不过对景明大人而言，
事情有些不太一样对吧？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070400a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070410a03">
「还没有问过您呢。
　景明大人是为了什么，才去追踪银星号的呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　听起来并不像质问。
　甚至还带着几分温柔。

　正因如此吗。
　闪烁其词而想逃避的意欲反而被削弱了。

　——对反复发生的惨剧的悲愤。
　——作为警察的使命感。
　
　这些无疑都是动机。

　但是<RUBY text="··">最初</RUBY>并非如此。
　那些都是在这两年间，不懈追踪的日日夜夜中萌生
的东西。

　最初，只是————
　只是想阻止那家伙而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070420a00">
「过了前面的十字路口很快就到了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070430a03">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070440a00">
「……晚些时候。
　安顿下来之后，我会说明的。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070450a03">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetVolume("@mbgm*", 1500, 0, null);


	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070460a03">
「……咦？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070470a00">
「怎么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　大尉发出惊讶的声音。
　视线注视着黑暗中的远处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070480a03">
「那个，玄关一侧栽有唐松的宅邸
就是景明大人的？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070490a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　不对，正确地说应该是镰仓署长的宅邸。
　不过就那细细的眼眸而言，视力还真是惊人。凭我的
眼睛在这个距离只能看到房子的剪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070500a03">
「有人正等在门前哦。
　那个是…………哎呀？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070510a00">
「大尉？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070520a03">
「……是我认识的人。
　不，说起来……对对，
和景明大人应该也是旧识。
因为听她这么说过。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070530a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　心中略有疑问，我加快了脚步。

　走到近处时，我的眼睛终于也清楚看到了香奈枝小姐
所说的人影。
　孤孤单单无所依靠地站立着的，娇小身姿。

　意识到那是谁的时候，那个身影也向这边转了过来，
几乎是同时。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070540a02">
「凑斗先生！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070550a00">
「……您是。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070560a02">
「那、那个。
　昨天，在那之后想了很多，我，果然还是——」

{	StR(1000, @30, @0,"cg/st/st香奈枝_通常_私服a.png");
	Move("@StR*", 0, @-30, @0, null, false);
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070570a03">
「贵安。
　一条绫弥小姐，这样称呼可以吗？」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070580a02">
「反了!!<?>
{	FwC("cg/fw/fw一条_通常b.png");}
　呃，为什么连你也在？」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070590a03">
「哎呀。
　区区小三居然敢追到别人家里，并且还冲正妻
说这种话。」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070600a03">
「亲爱的，这究竟是怎么回事!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070610a00">
「不，本人还想问是怎么回事。」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070620a02">
「小三!?
　正妻!?」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070630a04">
「出大事了！
　发展成修罗场了哦，凑斗大人。
因为年轻欠下的风流债现在逼上门来了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　我可没有借过那种债的记忆。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm25",0,1000,true);

	SetFwC("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070640a02">
「凑、凑、凑斗先生！　这个大号的女人是怎么
回事啊，是真的吗，妻子、妻子吗!?　这个
大号的女人。」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070650a03">
「啪。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070660a04">
「啊。大小姐的脑神经系统发生严重断裂。」

//◆次、ボイスは以下の通り。
//◆Don't fuck with me! Fuck'in your baby pig!
//◆Come on, daughter of a bitch!
//◆「ドンファックウィズミー！　ファッキンユアベビィピッグ！
//◆　カマン、ドータロバビッチ！」くらいの発音か。
{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070670a03">
「别小看人了喂！　你这个※※和△▲△
去■■吧！　来啊，这个○○的▼▼!!」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070680a02">
「啊!?　混账三等兵！」

{	DeleteComic();
	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070690a04">
「风云告急的凑斗家。
　憎恶的暴风雨席卷而来，招致血之飨宴已经只
是时间问题！　呜呼，那平静祥和的日子已经一
去不复返了吗!?」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070700a04">
「另外，实况由永仓纱代在镰仓署长宅邸前为您
转播。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070710a00">
「请就此作罢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　不明所以。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	FadeDelete("上背景", 1000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070720a00">
「并非妻子。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070730a02">
「我相信了。」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070740a03">
「明明不用不好意思的……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070750a00">
「大尉。」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070760a03">
「嗯哼。那冰冷的双瞳也好迷人。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070770a04">
「凑斗大人。那种脑髓被金线虫啃了个精光的
悲情系女人最妥善的处理方式就是在被拉着殉
情之前让她先去死哦。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0070780a03">
「那个忠告在这种状况下究竟是什么意思呢，
婆婆？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070790a00">
「话说，绫弥小姐为什么会来这里？
　记得并没有告诉过您这个宅邸的位置才对。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070800a02">
「对不起。
　我打听了一下……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070810a00">
「向谁。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070820a02">
「在镰仓警署的窗口，询问了名叫凑斗的人的
住所之后，回答说大概是在这里。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0070830a04">
「个人情报被完全泄漏了呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　无言以对。

　在六波罗的专制统治下，警察机关已经有名无实的如
今。警察局的服务规定已经沦为用来填满手册书页上的
文字行列。
　不知会有几个职员看过哪怕只是一行字的内容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070840a00">
「……明白了。这也无妨。
　请说说您的来意吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070850a02">
「…………是昨天的事情。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070860a00">
「这个我已经拒绝过。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070870a02">
「可是……
　…………我……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070880a00">
「本人的回答不会改变。
　请回吧。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070890a02">
「凑斗先生……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070900a00">
「天色已暗。已经不是适合年轻女子孤
身一人四处走动的时间段。
　如果可以请让我送您一程吧。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070910a02">
「……我、我不回去。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070920a00">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070930a02">
「我的想法也不会改变！
　请使唤我吧！　像警察那样……
在你的带领下！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　——没错。
　她昨天，也说了同样的话。在警察局前。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆昨日の場面。モノクロマスク？
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	FadeDelete("上背景", 1000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070940a02">
「那、那个。
　之前的事情，真的非常感谢。」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070950a02">
「那个，救、救了我……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070960a00">
「区区小事无须放在心上。
　帮助迷路的孩子是警察的职责。」

{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070970a02">
「不、不是，不是说那个。
　啊，不，那、那虽然也是。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0070980a02">
「那个……
　其实，那个。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0070990a00">
「是。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071000a02">
「今天是有事想来拜托你。
　请，请把我……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071010a02">
「请把我当作你的部下使唤吧！
　做什么我都愿意！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071020a00">
「…………」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0071030a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆復帰
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 15000, "#000000");

	OnBG(100,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(0,true);

	FadeDelete("上背景", 750, true);
	FadeDelete("絵暗転", 750, true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071040a02">
「求你了……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071050a00">
「如果希望在警察局就职的话，请在学校毕业
之后接受录用考试。
　本人无法给出另外的答复。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071060a02">
「那样就太晚了！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071070a00">
「绝无此事。
　您还很年轻。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071080a00">
「虽然成为警官需要花上数年，但想必能够大展
身手。
　而且，不管是谁都要经历这样的过程才能成为
正式警官。您也无法例外。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071090a02">
「我知道。不当警官也无所谓。只做个杂役就
好。薪水我也不要。
　请让我……为你的工作，帮点什么忙吧！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071100a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071110a03">
「唉呀。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071120a04">
「哎呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　大鸟主仆诧异的声音传入耳中。
　胸腹深处不禁有种煎熬的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071130a00">
「……为什么，要做到这个地步。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071140a02">
「我……
　我是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　那心意已决的目光令人心痛。
　我能理解，那其中蕴含的东西。因而心痛。

　那份<RUBY text="··">误解</RUBY>是一种酷烈的苦痛。
　对我而言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071150a02">
「是第一次！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071160a03">
「唉。
　似乎听到了非常无法置之不理的发言，
不过暂且先放一边，景明大人，做了那种
事情不好好负起责任可不行！」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071170a02">
「暗地里偷偷说六波罗那群混账的坏话的人
随处可见。但是，敢于站出来反抗的人却无
处可寻。就连我也一样。充其量也只是不痛
不痒地出言讥讽罢了。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071180a02">
「而你是第一个。不仅仅是靠嘴巴
去和那些家伙战斗的人！
　第一次……第一次见到……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071190a00">
「…………」

{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071200a03">
「……被无视了……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071210a04">
「看看场合好吗，大小姐。」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071220a02">
「我知道六波罗那些家伙是错误的。所以讨厌
明明知道，却什么也做不到的自己！
　我无法原谅错误的事物……也不想原谅！　我
讨厌像这样视若无睹！」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071230a02">
「为了做个不辱父亲之名的女儿……
　我一直想做些什么。不管什么也好！　
而现在终于找到了！」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071240a02">
「求你了，凑斗先生！
　我想为你出一份力！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　——啊啊。
　这目光。
　这眼神。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ。新田雄飛

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	SetVolume("@mbgm*", 300, 0, null);
	OnSE("se擬音_フラッシュバック01",1000);

	Fade("絵フラ", 300, 1000, null, true);

	CreateTextureSP("絵回想", 12000, -660, -490, "cg/ev/resize/ev106_雄飛と見下ろす村正_d.jpg");
	CreateTextureEX("絵回想ＳＴ", 12100, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	Fade("絵回想ＳＴ", 0, 500, null, true);

	Wait(500);

	Fade("絵フラ", 700, 300, null, true);

	Wait(1000);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵回想*");

	FadeDelete("絵フラ", 300, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071250a00">
「你误解了。
　把一切都误解了。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071260a02">
「凑斗先生……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071270a00">
「你应该嫌恶着我才对。
　应该轻蔑着我才对。应该把我看作毫无骨气，
一文不值的人才对。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071280a02">
「那、那是……我之前还不知道。
　对不起。我真是个笨蛋……什么也不明白。
以为自己在做什么不得了的事情。其实，你
才是。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071290a00">
「不。过去的你才真正认识凑斗景明，那才是
正确的理解。
　本人不配获得任何一丝敬意，是个应当被唾
弃的人。只配被称为渣滓。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071300a03">
「…………」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071310a02">
「为什么。
　你战斗了！　一定一直以来都是如此！　即
使被我这样的小鬼蔑视，也没有做任何辩解！」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071320a02">
「你是值得尊敬的人……
　我是这样想的！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071330a00">
「……呜、啊……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　想把一切都坦白。
　想毫不顾虑地把自己的情感胡乱发散出来。那种卑劣
的行为多少也会让我轻松一些吧。

　当然，自己不被容许这样做。考虑到双肩上背负的职
责以及为我做后援的亲王和署长的立场。
　
　但是——但是。总会有无法压抑的部分。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071340a00">
「我是……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071350a00">
「<RUBY text="·····">我是杀人者</RUBY>！
　这种人有什么值得尊敬的!!」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071360a02">
「即便如此，你不是也拯救了众多的人吗！
　那个村子不就是——」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071370a00">
「没有拯救！
　那个村子，被银星号毁灭了！」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071380a02">
「————!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　绫弥惊得停住了呼吸。
　理所当然。这个事件还没有被报道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071390a00">
「就在我和地方官争斗的时候，
银星号袭击了村子！
　就这样杀了所有人，所有人都死了。」

{FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071400a00">
「我有拯救什么吗!?」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071410a02">
「…………呃……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071420a00">
「什么也没有拯救。
　我所做的只是杀戮。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071430a02">
「……我、
　…………我被……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071440a00">
「知道了就回去！
　别再接近我……我不是你梦想中的那种人。
只是一个杀人者。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071450a00">
「走吧!!
　再靠近我的话，连你也——」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071460a02">
「可是！
　你帮助了我！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071470a00">
「……呃!?」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071480a02">
「如果不是有你在，我那个时候就被杀掉了！
就会死于六波罗之手！
　现在我还活着都是因为有你在。这是毋庸置
疑的事实！」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071490a02">
「我说的有错吗!?」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071500a00">
「什…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　不对。
　不是这样。
　没有这回事——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071510a00">
「不对……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071520a02">
「没有不对！
　这条被你救下的性命，
我也想为了救助他人而使用！
或许我无法做到什么……但我想做点什么。」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071530a02">
「所以，我想为你出一份力！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071540a00">
「……呃……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　不对。
　这个女孩在说什么！

　不对——！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071550a03">
「……呼。真没办法呢。
　那么，景明大人。她就交给我来看管，
您意下如何呢？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071560a00">
「大尉！」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071570a02">
「……和你没关系吧？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071580a03">
「哎呀。很有关系哦？
　我，作为进驻军的军人，将会为景明大人
的工作提供协助。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071590a02">
「是……是这样吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071600a03">
「是的。
　不过，你做好觉悟了吗？
　我们不得不面对的家伙，
或许比幕府要更为棘手哦。」

{	FwC("cg/fw/fw一条_驚くb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071610a02">
「唉？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071620a03">
「在刚才的对话中不是也提起了吗？
　景明大人的工作是解决<RUBY text="···">银星号</RUBY>事件。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071630a02">
「————」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071640a03">
「那个村子的事情也算是其中一环。
　如何？　这位同学。
这可不是把坏官员绳之于法
就能大团圆结局的那种轻松事情哦？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071650a02">
「…………
　那是，真的吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071660a03">
「嗯。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071670a02">
「要和那个银星号……
　和那个恶魔战斗就是凑斗先生的工作……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071680a03">
「要罢手吗？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071690a02">
「……不。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071700a02">
「我做。请让我加入吧！
　凑斗先生，拜托你了！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071710a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071720a03">
「怎么样呢？
　像刚才说的那样，如果景明大人觉得不方便
的话，那就由我来看管她吧。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071730a00">
「……大尉。为什么……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071740a03">
「是呢……
　一方面也算是有些缘分。在离开那个
村子的时候偶然碰到了她。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071750a03">
「对，那个时候，还让她帮了一点小忙哦？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071760a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071770a03">
「另外就是……
　共鸣吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071780a02">
「共鸣？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071790a03">
「嗯。因为我也『尊敬』着景明大人嘛。
　孤身一人站出来挑战巨大之恶的勇气
……真的很了不起。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071800a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　连你也如此吗。
　那种——莫名其妙的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071810a03">
「……」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071820a02">
「……你，莫非其实是个好人？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071830a03">
「其实就是个好人哦？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071840a02">
「是吗……抱歉。
　原来不仅仅是个大号的女人啊。」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071850a03">
「…………」

{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071860a04">
「噢噢……大小姐，竟然忍耐住了呢。
　一阵阵抽搐的太阳穴真是壮观啊。」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071870a03">
「呵、呵呵呵……
　这种程度，算不了什么哦。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071880a03">
「今后请多多指教。
　小绫弥。」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071890a02">
「别给我在人家的姓前面加个小字!!
　可恶……算了不管了。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071900a02">
「总之谢谢你。
　……只要能帮上凑斗先生的忙，就算向<RUBY text="··">白蚁</RUBY>
低头也算不了什么。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071910a03">
「唉呀真是荣幸。
　是呢，就请尽量努力不要干扰到景明大人的
工作哦？」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071920a02">
「你才是呢，当家的进驻军。
　要是拖后腿的话就把你装箱送回横浜去。」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071930a03">
「唔哼哼哼哼……是吗。
　那就好好相处吧，<RUBY text="······">为了景明大人</RUBY>。」

{	FwC("cg/fw/fw一条_冷笑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071940a02">
「啊啊，会好好相处的。
　<RUBY text="·······">为了凑斗先生嘛</RUBY>。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0071950a04">
「真是美好的光景啊。
　看上去就像是国家间的和平会谈一样。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071960a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　这两个人，究竟在说什么。
　为了我？　说要为了我？

　我——究竟算什么。
　我——明明只是——一个罪人而已。

　那——为什么——
　非要向我表示好意不可？
　非要向我表示敬意不可？

　真是——离谱。
　怎么会——有这种事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0071970a00">
「……不要。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0071980a03">
「？　景明大人？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0071990a02">
「凑斗先生？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072000a00">
「……别靠近。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0072010a04">
「哦呀？
　凑斗大人脸色很差呢。
是不是累了呢……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072020a00">
「……别……别过来。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0072030a03">
「景明大人？
　总感觉，您看上去——」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072040a00">
「别碰我!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぐらっと。視界が揺れる感じ

	SetVolume("@mbgm*", 1000, 0, null);

	CreatePlainEX("絵ＥＦ", 5000);
	SetShade("絵ＥＦ", HEAVY);

	OnSE("se人体_動作_後ずさり01",1000);

	Zoom("絵ＥＦ", 300, 1250, 1250, DxlAuto, false);
	Fade("絵ＥＦ", 300, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0072050a00">
「————!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
//◆ばたん。

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 600, 1000, null, false);
	Move("絵ＥＦ", 600, @0, @-60, AxlAuto, true);

	OnSE("se人体_衝撃_転倒05",1000);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0072060a02">
「……凑斗先生!?」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0072070a02">
「这、这是怎么了，你还好吗!?
　请振作一点！」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0072080a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0072090a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(0, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_008.nss"