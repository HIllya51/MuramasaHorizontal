//<continuation number="730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_011.nss_MAIN
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
	#bg053_湊斗家の庭_01 = true;
	#bg053_湊斗家の庭_04 = true;
	#bg001_空a_02 = true;
	#bg001_空a_03 = true;

	#ev134_戦闘解説ＶＳ首領編１_a = true;
	#ev134_戦闘解説ＶＳ首領編１_b = true;
	#ev134_戦闘解説ＶＳ首領編１_c = true;
	#ev135_戦闘解説ＶＳ首領編２_a = true;

	#ev135_戦闘解説ＶＳ首領編２_b = true;
	#ev135_戦闘解説ＶＳ首領編２_c = true;
	#ev135_戦闘解説ＶＳ首領編２_d = true;
	#ev135_戦闘解説ＶＳ首領編２_e = true;

	#ev135_戦闘解説ＶＳ首領編３_a = true;
	#ev135_戦闘解説ＶＳ首領編３_b = true;
	#ev135_戦闘解説ＶＳ首領編３_c = true;
	#ev135_戦闘解説ＶＳ首領編３_d = true;
	#ev135_戦闘解説ＶＳ首領編３_e = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_012.nss";

}

scene ma05_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_010.nss"

//◆夜明け前
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_03.jpg");
	CreateTextureEXadd("絵背景110", 110, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("絵背景110", 0, 400, null, true);
	DrawTransition("絵背景110", 0, 0, 300, 1000, null, "cg/data/slide_02_00_1.png", true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　——拂晓。
　睁开双眼的刹那，便到了这一时刻。

　这时连太阳都未升起，为什么我醒来了呢。
　是因为昨晚再次埋于内心深处的誓言令我全身
的细胞都兴奋起来了吗。

　还是说——这是所谓的征兆吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆庭
	PrintGO("上背景", 25000);
	OnBG(100,"bg053_湊斗家の庭_04.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
//	StL(1000, @0, @0,"cg/st/st景明_通常_社員b.png");
//	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　打开道场大门，我走到被海蓝色晕染的庭院中。
　四周被寂静所包围。

　这在清晨是常有的事。
　然而，今天的这份寂静并不仅仅是因为人们正在沉眠，
而是在某处蕴含着一种险恶——仿佛被压抑着的某样东
西。

　没走几步，我就发现了其真面目。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110010a00">
「早上好。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110020b31">
「……早上好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　似乎不打算继续隐藏下去一般，毫不慌张。
　寂静得似乎连脚步声都不存在，那抹身影从庭院的树
丛中走了出来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領
	CreateSE("SE01","se人体_動作_後ずさり01");
	StC(1000, @0, @0,"cg/st/st首領_通常_制服.png");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStC(300,true);
	SoundPlay("@mbgm26",2000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不过她用一个咋舌表达出其内心是极其不愿意的。

　在我盯着她的目光下，她已经平静地微笑起来。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110030b31">
「算了，正好省了我的功夫。
　不用转来转去找你的被窝
了。」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110040a00">
「本来我就不记得告诉过您我的住所。」

{	FwL("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110050b31">
「这种事情，一调查就马上知道了啦。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　的确如此。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110060a00">
「所来何意？」

{	FwL("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110070b31">
「不问我就不知道吗？」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110080a00">
「虽然有所察觉，不过那是攸关生死之事。
　有必要确认一下以防万一搞错了。」

{	FwL("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110090b31">
「如果是生死攸关之事，那更没有
去一一确认的空闲吧。
　虽然我是打算如果你昏睡在床的话就这样
直接砍下你的脑袋。」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110100a00">
「这样的话原本就没有一丝误解。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　特意选择天亮之前的时刻来偷袭。那是理所当然的吧。

　如果昨晚若无其事地就此睡觉，那么就算她走近枕边
我也一定发觉不了。

　即使发觉了，也会手脚笨重，变得无法与之较量。

　清晨的睡眠尤其沉。在古往今来的兵法中，这个时段
也是奇袭的最佳时机。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110110b31">
「就算现在也一样。
　又不是看不到这个。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　首领说着，将手里拿的某个东西向我这边丢来。

　我伸出右手，在空中接住。

　是太刀。
　前几天的对决中借来的那一把。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110120a00">
「……你不是打算搞奇袭吗。」

{	FwL("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110130b31">
「哼。
　如果能和你正面交锋真正比出个
高下的话，这才是最好的选择。」


{	FwL("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110140b31">
「只是，为了区区一介平民而去特意
准备一个较量的形式，完全没有这种
道理啊。」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110150a00">
「是吗。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　虽然很歪曲，不过她这样解释我也不是无法理解。


</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110160a00">
「我获得了与您对等较量的资格。
　是这样的吗？」

{	FwL("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110170b31">
「如果你要这么想的话就这么想好了。
　如果你就这样出战的话，我就从正面
将你斩杀。」

{	FwL("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110180b31">
「只是这样罢了。」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110190a00">
「……」

{	FwL("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110200b31">
「随便你怎么做都好。
　像之前那样，用一些小伎俩也行。
这次，我会将这种东西，与你的性命一同
全部斩杀殆尽……！」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110210a00">
「……既然都用过一次那种伎俩了。
　就算你不相信我，那也是因为我自己的
无德之过。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　回应露出刀刃的首领，我也拔剑出鞘。
　刀刃的维护似乎今天也没懈怠。

　是不是为了让这把刀无法使用而在上面动了什么手脚
呢——
　也没有涌现出这种疑念。如果要设什么陷阱的话，只要
一开始就不把太刀给我便可。

　而且，满溢首领眼中那气势汹汹的战意也不似作伪。

　说要从正面将我打倒是真心话。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110220a00">
「我会用通常的方法对付你。」

{	FwL("cg/fw/fw首領_武人.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110230b31">
「随你怎么说。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg053_湊斗家の庭_04.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);
	Fade("絵背景100", 0, 1000, null, true);

	CreateTextureEX("絵st100", 120, -324, -190, "cg/st/resize/st首領_戦闘_制服_ex.png");

	Fade("絵st100", 0, 1000, null, true);

//	OnBG(100,"bg053_湊斗家の庭_04.jpg");
//	FadeBG(0,true);
//	StL(1000, @0, @0,"cg/st/st景明_通常_社員b.png");
//	StR(1000, @0, @0,"cg/st/st首領_戦闘_制服.png");
//	FadeStA(0,true);
	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,800,null,false);
	Move("絵st100", 500, @+50, @0, Dxl1, false);
	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　不理会我，首领将太刀缓缓架于右肩之上。
　这是武者正统的上段姿态。

　我也摆出架势——
　在这之前，我继续说道。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110240a00">
「首领殿下。」

{	FwL("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110250b31">
「什么？」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110260a00">
「在决斗之前，能不能做个约定呢？」

{	FwL("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110270b31">
「……啊。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　她的嘴角画出轻蔑的唇线。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110280b31">
「怎么？　你又想到什么巧妙的约定了吗？
可以让我无法再以已经不当首领为借口的
约定？
　还是要我签个合同？」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110290a00">
「不。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　我摇了摇头。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110300a00">
「和上次一样的约定即可。
　如果我赢了，请在天亮后停止对小镇
的掠夺行为。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110310a00">
「如果您赢了，这条命任您处置。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……虽然对于满身杀气的对手而言，这个交换条件有
些不得要领。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110320b31">
「…………」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110330b31">
「你在想什么啊？」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110340a00">
「没什么特别的事。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我只是下定了决心。
　——不依靠那些小伎俩，
而战斗到解除这位女性的害人之心为止。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110350a00">
「可以吗？」

{	FwL("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110360b31">
「……可以哦。
　如果这是你的愿望的话。」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110370a00">
「那么。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);
	PrintGO("上背景", 15000);

	CreateMask("マスク", 2000, 0, 0, "cg/mask/ciスラッシュ_01_00.png", false);

	CreateTextureEX("マスク/絵背景100", 2100, -481, 225, "cg/bg/bg053_湊斗家の庭_04.jpg");
	Zoom("マスク/絵背景100", 0, 2000, 2000, null, true);
	SetShade("マスク/絵背景100", HEAVY);
	Fade("マスク/絵背景100", 0, 1000, null, true);
	CreateTextureSP("マスク/絵st200", 2200, 126, -177, "cg/st/resize/st景明_戦闘_社員_ex.png");
	Request("マスク/絵st200", Smoothing);
	Zoom("マスク/絵st200", 0, 750, 750, null, true);

	CreateTextureEX("絵st100", 120, -503, -142, "cg/st/resize/st首領_戦闘_制服_ex.png");
	Request("絵st100", Smoothing);
	Zoom("絵st100", 0, 750, 750, null, true);
	Fade("絵st100", 0, 1000, null, true);

	CreateTextureEX("絵背景100", 100, -205, 230, "cg/bg/bg053_湊斗家の庭_04.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);
	Fade("絵背景100", 0, 1000, null, true);

//	OnBG(100,"bg053_湊斗家の庭_04.jpg");
//	FadeBG(0,true);
//	StL(1000, @0, @0,"cg/st/st景明_戦闘_社員.png");
//	StR(1000, @0, @0,"cg/st/st首領_戦闘_制服.png");
//	FadeStA(0,true);
	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,800,null,false);
	Move("マスク/絵st200", 500, @-40, @0, Dxl1, false);
	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我举起太刀。
　与对手正相对的举刀过顶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110380a00">
「吉野御流合战礼法，凑斗景明。
　参上。」

{	FwC("cg/fw/fw首領_武人.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110390b31">
「……六波罗新阴流。
　虽说对等地自报家门也太过愚蠢，不过
流派名告诉你也无妨。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆戦闘ＢＧＭ
	SoundPlay("@mbgm09",0,1000,true);

	Move("絵st100", 1000, @+30, @0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　慢慢上前一步，首领拉近了我们之间的距离。
　她身上已然没有了如上次那般倨傲又从容的影子。

　有的只是以实力作后盾的平常心。
　——果然，很强。

　再次感慨的同时，我放弃了用刀背作战的策略。

　那样是无论如何也无法胜过她的。

　刀剑以刃对敌。
　这并不局限于刀刃的锋利。形状、重量
平衡、缠刀柄的方式、柄饰的配置……全部都是以这一
用途为前提的。

　若是无视这一点，将会大幅降低刀剑的性能。
　本来实力就有差距，若还背负不利条件的话，也许仅
有的胜机在抓住之前就会消逝了。


　只能正确地使用太刀，而且还要避开要害。
　不然的话，就要在砍到对方前一刻停下来。

　……无论如何，我想，这与用刀背取胜般并无二致，
都是难事。
　哪怕只有一丝一毫能够接近胜利的可能，
做出这份选择的责任便落在我的身上。

　我的脊背，不仅仅背负着我自己一个人的命运。

　首领静静地一步一步走在地面上，拉近我们之间的距
离。
　仿佛乌龟一般的步伐——然而这种慢步才正是威胁。

　姿势端正、重心平稳，却缓慢无比的笔直步伐才是极
为困难的事。
　姿势的维持依靠快步走要容易达成得多。

　举出自行车的例子便很容易理解了。
　用比步行还要缓慢的速度来稳健地骑自行车，这种事
谁能做到？

　首领的慢步，意味着她身怀这份绝技——重心的完全
控制。
　本能的胆怯让我的脊背窜上一股寒意。

　……总之就是如此。
　她通过此步法，将到达<RUBY text="····">斩击距离</RUBY>的瞬间，分毫不差地
完全掌握，便能在最佳的时机挥出一刀。


　能与之抗衡的，就只有我也掌握相同的战机了。

　我勉强将因为紧张而僵直的眼球放松，适当地让它们
松弛一下以稳定视野。

　脚步，钉在原地。
　这也是一种选择。

　对敌人的步法我方也回以相应的步法，以求打乱敌方
对距离的掌握而夺取自己的距离——这也是一种方式。
　然而我放弃了。用那种方式较量的话，恐怕我是赢不
了的。

　说到争夺彼此之间的距离，实战经验是比什么都重要
的。
　靠仅有的几年兵役与数次的比试经验，我丝毫不认为
自己有能够敌过六波罗武者的战斗履历。

　静止等待的话，虽然等于将争夺距离的优势让给对方，
但对距离的把握却是我方容易获得优势。即使速度很慢，
但只要敌人会动，这一点便无可动摇。


　不如在此时找寻胜机。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110400a00">
「————」

{	FwC("cg/fw/fw首領_武人.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110410b31">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　朝霭中连呼气都不曾浮现，完全感受不到对面敌人的
呼吸。
　相对而言，我能像对方那样巧妙地隐藏住自己的呼吸
吗……可以吗。

　被人看穿呼吸，与在黑板上写下行动预定表给人看几
乎是同一个意思。
　对手会抓住我无法应对的机会而攻过来吧？


　运动身体靠的是肌肉，而肌肉的出力是被呼吸状态所
左右的。
　通常，比起<RUBY text="·">吸</RUBY>用<RUBY text="·">停</RUBY>，比起停用<RUBY text="·">呼</RUBY>，产生的肌肉力量更大。

　因此，无论如何都不能将空气吸入肺部的时机——全
身肌肉的行动力都减少的瞬间被对方察觉。

　所以要将呼吸的幅度尽可能的减小。

　能够隐藏呼气的话便也能隐藏吸气。
　尽可能地悄悄使用肺部…………

　不知不觉，间距缩短了。

　被拉近到都能用小刀的刀尖切到对方的距离，这很接
近某个固定值。
　
　——固定值。

　便是，<RUBY text="·······">能够斩击的距离</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110420a00">
（看到了……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我尽可能地从角度与视点研究距离，进行确认。
　基本上，可以把握到以厘米为单位的程度。

　战机将近。
　那是，我的机会。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆解説：間合の差
	CreateTextureEX("絵ＥＶ30", 3000, Center, Middle, "cg/ev/ev134_戦闘解説ＶＳ首領編１_a.jpg");
	Fade("絵ＥＶ30", 1000, 1000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　敌我的武器几乎等长。
　然而在体格上却有差距，这样就造成了有效射程的差
距。

　我的射程比对手还长。
　占有优势的那部分，即我方能够单方面攻击的距离。


　用蜻蜓止水一般的速度不断接近这个距离的首领，
其所作的考虑仿佛是为了
让我容易获得这个机会一般。

　当然，并非如此——<k>不，也无法如此断言。

　或许她正是如此考虑的。
　让我在最佳的时机攻击——然后在这时迎击，将我
压制。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆解説差分a
	CreateTextureSP("絵ＥＶ29", 2900, Center, Middle, "cg/ev/ev134_戦闘解説ＶＳ首領編１_b.jpg");
	FadeDelete("絵ＥＶ30", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　虽说在射程上占优可以单方面地攻击，但那是指在我
开始动作之前。
　开始动作，身体向前倾的话——理所当然的，距离会
缩短，于对手而言也是攻击的时机。

　现状并不是只有利于一方。

　即便如此，先行动的一方十分有利这一点不会错。

　对手将我方的攻势<RUBY text="·····">无一延迟地</RUBY>把握住，这样会勉强形
成势均力敌的局面。而实际上如此是行不通的。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆解説差分b
	CreateTextureSP("絵ＥＶ28", 2800, Center, Middle, "cg/ev/ev134_戦闘解説ＶＳ首領編１_c.jpg");
	FadeDelete("絵ＥＶ29", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　首先无法避免错过动作的时机，一旦慢了，在刀剑的
较量中所背负的不利的分量自是不言而喻。
　即使是眼前的这位熟练老手，
也无法逃脱这个道理。

　就算有可能用剑速来挽回……
　果然，对我来说，这是次不错的较量。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆戻り。庭での対峙
	Move("絵背景100", 0, @-40, @0, Dxl1, true);
	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110430a00">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　到达距离。

　属于我的距离。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(2000);

	SetFwC("cg/fw/fw首領_武人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110440b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　也许是心理作用。
　首领的双眸，仿佛越发险恶。

　我放过时机。
　仍然维持不动，任由敌人慢慢缩短距离。

　我方的有效射程，敌方的射程之外——我方的优势区
间已然不长。马上就要消失了吧。
　我放过时机这一事实，似是出乎首领的意料。

　……的确。
　如果遵从兵法的常规，我是应该攻击的。

　之所以打消这个念头，是因为脑海中突然想起一句话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110450a00">
（六波罗新阴流……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　正确来说应该是柳生新阴流六波罗派。
　曾经作为德川氏御家流的大流派之后裔。在德川时代
末期抛弃主家而投身于朝廷势力中，成为六波罗的部属
——这便是柳生氏的祖辈。

　拥有许多独特的技法，虽然已经很难被称之为柳生流
了，但在幕府军内很受欢迎。
　虽说是分派，却获得了凌驾于本家之上的地位，现在
其当家已经在幕阁都占有一席之地了。

　当代本家叫柳生常暗斋。
　被称为绝顶高手，受雇于足利一族，担任其亲卫队六
波罗厩众的头目——不。关于他的事就到此为止吧。


　与柳生新阴流齐名的，是拥有德川家兵法的流派小野
派一刀流。
　这也是名流派，尤以这招奥义闻名。

　切落。
　先要让敌人从正面<RUBY text="····">挥斩过来</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆切落解説
	CreateTextureEX("絵ＥＶ30", 3000, Center, Middle, "cg/ev/ev135_戦闘解説ＶＳ首領編２_a.jpg");
	Fade("絵ＥＶ30", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureSP("絵ＥＶ29", 2990, Center, Middle, "cg/ev/ev135_戦闘解説ＶＳ首領編２_b.jpg");
	FadeDelete("絵ＥＶ30", 1000, true);

	WaitKey(1000);

	CreateTextureSP("絵ＥＶ28", 2980, Center, Middle, "cg/ev/ev135_戦闘解説ＶＳ首領編２_c.jpg");
	FadeDelete("絵ＥＶ29", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430a]
　等待到对手发动攻击，定下剑招为止——我方才开始
动作。
　发起与敌对的剑击相对称的剑击。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ27", 2970, Center, Middle, "cg/ev/ev135_戦闘解説ＶＳ首領編２_d.jpg");
	FadeDelete("絵ＥＶ28", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430b]
　然后迎击敌方的剑招，<RUBY text="····">将其斩落</RUBY>。
　就这样，连敌人的身体都会斩断……

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ26", 2960, Center, Middle, "cg/ev/ev135_戦闘解説ＶＳ首領編２_e.jpg");
	FadeDelete("絵ＥＶ27", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0431]
　用仅有的一刀同时做到进攻和防守。
　这正是体现一刀流之流派名的招式。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	Move("絵背景100", 0, @-50, @0, Dxl1, true);
	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0432]
　……这样的技理，并不能断言首领——新阴流是否知
晓。
　小野柳生两家虽然为同一主人效命，但他们互相视对
方为潜在敌人，偷学彼此的技法也是家常便饭。

　即使并非如此，某个流派的技术改名换姓存在于别的
流派中也并非罕见之事。因为追求的是同样武器的操控
方法，所以这也可以说是理所当然的。
　六波罗柳生流内传授切落的技法亦非不可思议之事。

　实际上，我并不仅仅知晓切落这一名称而连技理都掌
握正是因为这个理由。
　在吉野御流中，这招技法是冠以打潮之名而传授的。


　首领对我的攻击并不仅仅依靠剑速取胜，当她在用
切落迎击我的时候——胜负便在于能够看穿对方的剑
招。因为在用切落相互过招时，只有看穿对方的剑招
才能最终<RUBY text="····">斩落对方</RUBY>。

　而这场较量对我不利。
　既然是由我方先开始，这个时点已经定下一半以上的
剑招了——虽然在中途变化也并非不可能，但在这个范
围内毕竟还是太难以行动了。

　我与在某种程度上是看到我方的剑招才动手的敌人之
间，有着难以颠覆的优劣差距。
　也就是说，只要掌握这一剑就算是打成平手也不会败
北——这就是剑圣的至高技艺与广受畏惧之处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　所以我放过时机。
　首领会不会掌握了切落或是同类的招数，亦或后发
制人取得胜利的迎击技法，这种危险性并不是完全不
值得考虑的。

　…………或许，我放过了唯一的胜机。

　我抛弃在心脏四周<RUBY text="····">不断吵嚷</RUBY>蠢动的迷茫，重新估算着
距离。

　我的优势距离快到尽头。
　再过一个呼吸之后……就要到双方的攻击距离了。

　现在这个时点，我有三种选择。
　一是在优势攻击距离时发动攻击，二是在相互攻击距
离时发动攻击，三是在相互攻击距离时等待敌人攻击。


　与之相对应的，对方也有这几种选择。


　首先是第一种选择。
　我在优势距离时发动攻击——如果对方也用类似于切
落的技能迎击的话，我会战败。
　如果并非如此，则要靠剑速的差距取胜。

　第二种选择。
　在双方的攻击距离攻击——如果对方也同样地攻过来
的话并无优劣。以剑速定胜负。
　如果敌方等着我用切落而准备完毕的话，我将战败。

　第三种选择。
　等待敌人进攻——如我所愿敌人攻过来的话我将获胜。
前提是以我的本领能完全贯彻“打潮”的剑理，不过。
　若是敌人不攻过来，形势便僵持了。

　无论哪种方法都有利有弊。
　决定选择的关键，在于判断最害怕敌人的哪一方面。


　若最担心的是运剑速度，那一定要现在就先行动起来，
挥剑而斩。
　到进入了相互攻击距离之后，就只能成为势均力敌以
下的较量了。

　若并非如此，将迎击技设定为最大的威胁的话，第一
种与第二种选择便无效了。
　该选择的是第三种，等待的姿势。

　是哪种呢。
　……然而，决定已经做好了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110460a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　我在等待。
　观望着我们之间距离的变化。

　一味地等待敌人的攻击。
　说到底，不过是这一瞬间——然而。

　一瞬间。

　距离，
　到达了相互攻击的距离。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_武人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110470b31">
「——」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110480a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　得到的结果是，<k>
　…………我们，<RUBY text="····">同时静止</RUBY>。

　在这一时点，双方的企图都暴露了。
　两边的目标，都是引诱对方攻击，然后使用迎击技。


　而既然都已知晓彼此的目的。
　
　——磨棋。

　敌不动，我不动。
　只能等待敌方攻击。

　然而，敌人也知道我在等待对方。

　敌人也不攻击，继续等待着。

　<RUBY text="····">先动者败</RUBY>。
　我们彼此都明白这一点。

　也就是——
　形势陷入了持久战。

　一瞬。
　又是一瞬。

　继续对峙，维持对峙，唯有时间在流逝。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110490a00">
（怎么办）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　即便是这种情形，也并非没有选择的余地。
　除了继续等待对方改变心意，还有其他方法。

　其中之一，就是各退一步。
　在变成这种情形之时，认同彼此的力量，分出胜负
才是有分寸的武人行为。

　还有一种方法便是引诱对方攻击。
　佯攻——引诱敌人白白使出迎击技，然后
后发制人。

　无论哪种方法都能打开这个局面。
　然而……我无法选择。

　前者在考虑范围之外。
　既然对这次较量都赌上了一些东西，即使违背武士的
美德也无法退让。

　后者，也根本不值得考虑。
　如果我认为她是那种轻易就会被我的佯攻所蒙骗的对
手的话，在走到这个僵局之前早有好几种对付她的办法
了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110500a00">
（……不过）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　对手用这种方法倒是很有可能。

　对方终于过来了——然而也许我立刻就会变成上钩的
鱼儿，陷入险境。
　古话有云，惯于战斗之人必拥有诱敌之技。


　能看透是最重要的。
　看透敌人攻势的真伪。

　我在那一瞬间，能否做出正确的判断呢。
　那是很困难的吧……不过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110510a00">
（看透的话就能赢）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　如果能够看破伪装的话，就可以<RUBY text="··">假装</RUBY>上当。

　然后瞄准敌人迎击的时机，就能压制对方。

　……可看起来是敌人的迎击，实际上正是对方的<RUBY text="··">伪装</RUBY>，
这种事情也是有可能发生的。
　即便如此，比起由我去佯攻对方，等待才比较有利。


　就这样，结果。
　——继续等待。

　等待。
　等待敌人动作。

　敌人也在等待。
　等待我的动作。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110520a00">
（从我们站着僵持开始……
已经过去七个半呼吸了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　以秒作为单位的话是几秒呢。
　不——不要去想了。

　正值较量之时，推测实际时间毫无意义。
　比起这个，把握呼吸数才更有意义。因为呼吸的状态
是与体力状况有着直接联系的。

　在现在这个时点，完全没有问题。
　我对自己的持久力很有自信。恐怕比起眼前的原军人
都不会差吧。

　如果所对峙之人在这一点上，相反于我的自信而怀有
不安的话——
　那时一定会向我发动攻势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110530a00">
（是的。
　她会来）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　我深信。

　首领是带着胜于我的自负来面对这次对战的。想要
证明前几日的败北是一个失误。

　相对而言，我对自己实力不如对方这一点毫不怀疑。

　对我来说，继续这种对峙没有任何影响。
　然而，她不同。这样不分上下的对峙，等同于否定她
自身的实力胜过我这原本的战斗动机，也就失去了战斗
的意义。

　所以她不得不发动攻势。
　为了证明她自己的力量，一定会过来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_武人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110540b31">
「——」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110550a00">
（来了……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(5000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　———————————————————————
————————————————————————
————————————————————————
——————————————————————来了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領、わずかに前へ
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵st100", 1000, @+10, @0, null, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110560a00">
「！」

{	FwC("cg/fw/fw首領_武人.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110570b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　…………这样过来吗?!

　她的确是动了起来。
　然而——却完全出乎我的预料。

　首领放缓脚步，前进……一步。
　只是，这样而已。

　也就是再次开始拉近我们之间的距离。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110580a00">
（不好）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　我感到我的脸上血色尽失。
　如果照镜子的话一定像是幽灵一样苍白。

　敌人的企图究竟是什么，我终于清楚地明白了。
　虽然发现得也太晚了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110590a00">
（我的距离<RUBY text="····">被抹杀了</RUBY>）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　除此之外，没有其他解释。

　刀剑之间有着所谓的间距，这自不必言。
　那是刀刃所能到达的范围——正确来说，并非如此。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆解説ＣＧ
	CreateTextureEX("絵ＥＶ30", 3000, Center, Middle, "cg/ev/ev136_戦闘解説ＶＳ首領編３_a.jpg");
	Fade("絵ＥＶ30", 1000, 1000, null, true);

	CreateTextureSP("絵ＥＶ29", 2990, Center, Middle, "cg/ev/ev136_戦闘解説ＶＳ首領編３_b.jpg");

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670a]
　比如说仅仅是刀尖能够达到的距离，通常是不考虑在
间距之内的。
{	FadeDelete("絵ＥＶ30", 1000, false);}
　若是仅靠刀尖，就算砍到对方也不能给予其多大的
伤害。顶多是留下割开表皮的小伤而已。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵ＥＶ30", null);
	CreateTextureSP("絵ＥＶ28", 2980, Center, Middle, "cg/ev/ev136_戦闘解説ＶＳ首領編３_c.jpg");
	FadeDelete("絵ＥＶ29", 1000, true);

	WaitKey(1000);

//あきゅん「演出：この素材を使用するタイミングがわからん」
	CreateTextureSP("絵ＥＶ27", 2970, Center, Middle, "cg/ev/ev136_戦闘解説ＶＳ首領編３_d.jpg");
	FadeDelete("絵ＥＶ28", 1000, true);

	WaitKey(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670b]
　刀剑能够砍到敌人骨肉的间距，是指在刀尖三寸之
外大约一尺的范围，能够用刀刃触碰到对手的距离。

　符合这部分的地方被称为物打。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureSP("絵ＥＶ16", 2960, Center, Middle, "cg/ev/ev136_戦闘解説ＶＳ首領編３_e.jpg");
	FadeDelete("絵ＥＶ2*", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670c]
　超过了物打的距离，或<RUBY text="····">没有够到</RUBY>那个距离，刀剑的杀
伤力便都会减弱。
　并不是无法挥刀斩下……然而却无法达成一击必杀。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670d]
　现在敌我双方，已在能达到物打对方的距离之内了。
　然而……如果首领继续这样缩短距离的话。

　双方距离将短于我的物打距离。
　然后，到那时，敌方仍然留有对我方物打的范围……


　没错。
　在对峙胶着之前，在某种程度保证我有利局面的射程
距离的优势，这次变成了劣势。
　<RUBY text="············">因为最低射程也是我比较长</RUBY>。

　最终，会变成只有对方单方面能够斩击我的距离。这
便意味着我将战败而亡。
　在如此近的距离要抵挡剑招是多么困难的事情，无须
借助他人的智慧便能知晓。

　正所谓<RUBY text="····">怀中接招</RUBY>是也。
　体格强壮碰见体格瘦小之人时，最不得不畏惧的事态。


　如果想要回避在不久的将来定会面临的窘境的话，一
定要在事态变成那样前决出胜负。
　然而，这条路的尽头亦是死亡。

　攻击的话会遭到反击。
　我十分了解这一点。

　无法大意动弹的状况依然没有改变。
　只是………只有我这边，被定下了时间限制。


　动即死。
　等亦死。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110600a00">
（退后，吗……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　妙招突然从我脑海中闪过。
　……暂且后退。

　用与敌人前进等值的速度后退，维持距离。
　这样做的话，即使无法对我有利，也能持续胶着状态。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110610a00">
（不行）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　然而，我否决了自己的想法。
　在后退的那一刹那，我便会成为<RUBY text="··">尸体</RUBY>。

　失去了前进攻击敌人的势头。
　这对她来说正是胜机。没有迎击的风险，再者如果重
心后移会导致无法坚守防御。很容易被就此砍倒。


　如果认为她无法抓住这一胜机的话，那我也太天真
了。
　总之我不能认为对手没有将我能采取的方法之一——
后退，纳入考虑范围中。

　一旦后退定会被抓住不放。

　……无处可逃。
　连拖延时间的战术也几近无用。

　时间在一味地丧失，
　我不断地接近名为死亡的时限。

　将双手所握的太刀变得毫无意义的距离正不断接近。


　……原本我就不打算杀掉对方。
　即便失去杀伤力也无妨。

　然而能否将打击力巧妙地减弱到杀伤力之下<RUBY text="···">压制力</RUBY>之
上，这种事情——
　真是如意算盘打得太好了。

　若是有杀伤力，那么就连骨头都会斩断。
　若是没有杀伤力，那么就不会斩断骨头。

　假设就这样被缩短间距，然后互相攻击——假设速度
胜过对方，我的刀刃先砍到对方的身体。

　也不过就是砍入敌人肩口数厘米。

　然而敌人并不会停下。
　在一瞬的百分之一之后，敌人的刀刃到达，使我体
内从骨头到内脏都被撕裂剜割。

　败北。

　那么，若非互相攻击——
　而是能够单方面的施与一击的话？　即使这一击无法
决出胜负，也能使对手衰弱，让局势朝着有利的方向发
展吧。

　是用打潮——切落的剑理来压制敌剑并砍到她。
　还是用旋体八击之术躲开这一击……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110620a00">
（天方夜谭）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　在脑内的实验失败了，我放弃这个方法。
　要实现理想，无论如何都必须要无视我的能力界限和
物理法则。

　距离，太近了。
　没有摆弄招式的余裕。

　既然已经被她如此接近，恐怕我已失去了胡乱挥下太
刀之外的选择。
　剩下的唯有沉默地被砍的命运吧。想要用出守势的招
数也不行了。来不及的。

　……束手无策。

　无策。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110630a00">
（……我输了吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　太刀连一次都还没有交锋过。
　然而胜负已分——我是这么想的。

　这是至今从未感到过的绝望。

　不能失败的较量。
　背负着妹妹命运的较量。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想背景", 8000, 0, -381, "cg/bg/resize/bg053_湊斗家の庭_03l.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw統_笑い.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【統】
<voice name="統" class="統" src="voice/ma05/0110640b46">
「身为母亲，只能一起死掉了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　——再加上，另一位大人的性命。

　在这样的战斗中
　……却将要面临失败。

　这份情感并没有从身心的最深处唤起什么新的力量。

　上天并不会如此偏袒于我。

　它所唤起的只有深深的绝望。
　和动摇。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆暗くなる？
	CreatePlainEXsub("絵灰転", 5000);

	SetVolume("@mbgm*", 1500, 1, null);
	CreateSE("SEL01","se特殊_雰囲気_集中01_L");
	MusicStart("SEL01",3000,500,0,1000,null,true);
	Fade("絵灰転", 1500, 500, null, true);

	SetFwC("cg/fw/fw景明過去_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110650a00">
（冷静下来……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　对自己的斥责在绝望之前只是徒劳。
　视界急速地开始失去色彩。

　这不同于失去热量的武者所陷入的灰色视症，只是
极度紧张而引起的血流紊乱而已。
　然而，意思是相似的。

　……自我崩溃。
　我自行崩溃，并迎向败北。

　即使自己感觉得到，也无法抑制。
　意识变得混乱、散漫，对现实的认知模糊起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110660a00">
（现在是对战中……
　敌人就在眼前）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　我自言自语道，声音却很渺远。
　<RUBY text="·····">我在哪里呢</RUBY>，我开始不明白了。

　……糟糕。
　身体的感觉消失了。

　自己的身体不见了。

　这份动摇如果表面化的话就完了。
　如果无法控制，使得漏洞显现，那对敌人来说，便一
定是期待的瞬间。

　便是，斩杀……
　毫无抵抗地。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110670a00">
（不能变成那样）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　我的身体不能因为我一人的原因而死。

　我焦躁地将逐渐游离的五感拉回。
　那就像溺水之人抓住稻草一般。

　所有的努力，不过是零的堆积，得不出任何有效的结
果。
　似要将我身心都冲走的恶意浪潮，一点都没有减弱，
嘲笑着达到目的。

　感觉先是从下身开始消失。
　……腿和腰不见了。

　不知消失到何处去。
　不，绝不可能——视线下移的话，它们是确实地存在
的吧。

　然而却无法任由想要下移的眼球随心所欲。

　敌人，就在眼前……！

　随时想要微微向下移的视线，被我拼命地固定在正面。

　虽然这么做了，但认为腰腿消失的这种荒谬的疑念却
无法驱散。

　现在，就连自己<RUBY text="·········">是否站着都值得怀疑</RUBY>。
　似是漂浮在空中一般的感觉。

　架太刀，空中舞……
　这真像是武者啊，我想着这种梦幻般的事。


　如果是武者的话，即使双脚真的消失了，也不会十分
困扰。
　因为那不过是用于驾驭姿势的零部件而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110680a00">
（真令人羡慕）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　连这种恍惚的念头都浮现，或许正是我一只脚已经踏
入棺材的证明。
　在这种时候，时间也仍在流逝，对手也在接近，也就
是死亡正在迫近。

　——无可奈何。

　我勉强在心中的一个小角落保持一点清醒。
　在那里，我做好心理准备。

　既然如此，就只有趁对方攻过来时挥刀以对了。
　对方正在等待。被对方的迎击所压制的可能性很大。
相当大。胜算很少——然而，就这样等待对方攻击的
话，胜算岂止是少，简直完全没有。

　只有在些微的光明中找出活路了。
　为此——先要将腿和腰夺回。

　血液涌上头部，丧失下半身感觉的状态，让我连随意
乱砍这种事都无法做到。
　将心中不断动摇的部分<RUBY text="··">忘却</RUBY>，让全身心倚靠平静的
那部分……然后再次确认四肢。

　寻找至今仍应支撑着身体的双脚。
　……冷静下来。

　这里不是空中，我也不是武者。
　所以双脚是确实存在的。

　不依赖双脚的跨步才是武者刀法。
　然而这里是地面。如果忘记足技的话，连完整的一击
都无法达成。

　如果不用脚来跨步的话，
　威力也好，间距也罢——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ピキーン
//◆画面、ぱっと元に戻る
	SetVolume("SEL01", 300, 0, null);
	CreateSE("SE01","se特殊_その他_世界凍結");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("絵白", 10000, "#FFFFFF");
	Delete("絵灰*");
	FadeDelete("絵白", 1000, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110690a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　这一瞬间。
　
　……全部都联系上了。

　心回归现实。
　感觉回归正常。

　手与脚与腰与脊椎，还有一刀的所在全都把握。

　视界毫无晕眩，获得全无误差的情报。

　我复原了。
　分崩离析的自身，现在再次聚集成一点。


　在这半瞬后。<k>
　间距终于，<k>到达我最低射程的分界点——


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 1000, null);

//◆微妙な変化。景明の体勢が少し沈む？
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("マスク/絵st200", 1000, @-6, @10, DxlAuto, true);

	SetFwC("cg/fw/fw首領_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110700b31">
「——！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　我的<RUBY text="····">斩击距离</RUBY>。
　并未失去，维持在那。

　首领也发觉了吧。
　没有马上攻击过来就是最好的证据。

　我只是移动了重心。

　双脚，仍在原地。
　改变两膝的角度，将腰稍稍向后方——将体重向后移。
没有改变姿势，仅仅是微妙地后移。

　就这么点变化。
　从<RUBY text="····">跨步斩击</RUBY>的姿势，变为<RUBY text="····">当场斩击</RUBY>的姿势。

　平时就很熟悉的，空挥的姿势。
　为了空中战而准备的，自我封住步法的武者锻炼。

　通常，是在地面上不带实战意义的挥斩太刀的形态。

　在有立足点的战斗中，这只能被认为是舍弃跨步优势
的愚蠢行为。

　那毕竟只是，对通常而言。
　如果是现在这种状况——敌人已逼入跟前的状态的
话，这份愚蠢将迎来逆转。

　便会产生<RUBY text="······">缩小斩击距离</RUBY>的效果。
　这正是，九死一生的道路。

　迎接敌人近身入侵的这段距离——
　对舍弃跨步的我来说正是绝佳的，用物打处攻击对方
的距离。

　只要想到，便是极为简单的事。
　然而，斩击便要跨步——这种固定观念，是无法轻易
容许这种单纯想法的突破的。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110710a00">
（危险……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　将快要掉落悬崖的身体用一根手指支撑。
　这正是我现在的心境。

　——并没有安心松口气的空闲。

　虽已脱离死境。
　然后，情势便在此陷入僵局。

　首领即使看到了我转变姿势，也并没有无所适从。

　而是继续用不变的巧妙至极的慢步前行。

　这样的现状。
　对于我来说，已经是只能斩击的距离了。然而，我还
不能如此轻而易举地攻击。

　与我相比四肢更短的敌手那边，还剩下些距离上的余
裕。
　即使在如此近的距离，也能使用切落或其他对应的招
式。……我仍需等待。

　与此相反，敌人现在的状况与对峙初期的我类似。
　并没有回应我招数的余地。对策唯有互相攻击。
若是如此，现在马上先发制人，快一刻也好，尽快以剑
攻击对方才是最上策。

　然而——她没有过来。
　只是一步一步地缩短距离，估测着我的呼吸。


　为什么。
　如此明显的事，为什么不明白。

　不过，或许……这也是因为自负心吗。
　比起毫厘之差的胜利，靠威胁引诱我出招然后迎击的
完胜才是她所希望的吗。

　的确，那每一刻都在累积的杀气煽动了我的恐惧心。

　仿佛即便只将精神的缰锁放松一点点，我也会于那个
瞬间大声叫嚷着胡乱挥斩——已经到了这个地步。

　为了忍耐这份冲动，我需要调动我所有的意志力。
　
　——还差一点点。还差一点点，必须忍耐。

　最后的节点马上就要造访。

　间距就这么被缩短……
　终于，敌人也到达了只能斩击的距离。

　彼此聚精会神于迎击技上的余地，早已没有。
　只是相互挥砍，较量剑速的间距。

　没有策略没有方法也没有技巧。
　条件不分上下。毫无疑问的势均力敌。

　哪边比较快。
　哪边比较强。

　用互相挥砍的那一刀，来决定。

　最后的节点。
　最后的战机。

　……距离接近。
　我的敌人，在伸手便能触及的距离。

　她的表情<k>
　——如湖面般平静。

　她是山贼。
　拥有六波罗出身这无法令人尊敬的经历，无论怎么看
都是非常讨厌的女人。

　然而现在这一瞬间，只是单单作为一介武人——仅此
而已的存在。

　战胜凑斗景明这一敌人，
　一心一意的力量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_武人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0110720b31">
「————————」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0110730a00">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	PrintGO("上背景", 15000);
	Delete("マスク/*");
	Delete("マスク");
	CreateTextureSP("絵背景100", 200, Center, Middle, "cg/bg/bg053_湊斗家の庭_04.jpg");
	OnBG(100,"bg053_湊斗家の庭_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	FadeDelete("絵背景100", 10000, false);

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　晨光照耀。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆演出。ホワイトアウト？
//◆斬り合い
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる01");
	CreateSE("SE02","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(50);
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("絵白", 5500, "#FFFFFF");
	WaitKey(2000);

//◆朝焼け
//◆フェードアウト
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_03.jpg");
	CreateTextureEXadd("絵背景110", 110, Center, Middle, "cg/bg/bg001_空a_02.jpg");
	Fade("絵背景110", 0, 600, null, true);
	DrawTransition("絵背景110", 0, 0, 600, 1000, null, "cg/data/slide_02_00_1.png", true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(2000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_012.nss"