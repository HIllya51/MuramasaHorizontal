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

scene mb02_029vs.nss_MAIN
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
	#ev146_新陰流合撃解説_a=true;
	#ev146_新陰流合撃解説_b=true;

	#bg070_普陀楽城内階段ホール_03=true;
	#bg071_普陀楽城内張り出し_03=true;
	#ev146_新陰流合撃解説_a=true;
	#ev146_新陰流合撃解説_b=true;
	#ev146_新陰流合撃解説_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_030vs.nss";

}

scene mb02_029vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_028vs.nss"

	SoundPlay("@mbgm09",0,1000,true);//ダミー注意

//◆景明ＶＳ常闇
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");

//おがみ：村正をウィンドウで出しておきます
//	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀手無.png");
	CreateWindow("絵演窓右", 4000, 0, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureSP("絵演窓右/絵演右", 4100, 0, 0, "cg/bg/bg071_普陀楽城内張り出し_03.jpg");
	CreateTextureEX("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/3d村正標準_立ち_抜刀手無.png");
	Rotate("絵演窓右/絵演右", 0, @0, @180, @0, null,true);

	Move("絵演窓右/絵背景100", 0, -470, -180, null, true);


	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 500, true);

	CreateSE("SE01","se戦闘_動作_鎧_踏み込み01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演窓右/絵背景100", 500, -450, -200, Dxl2, false);
	Fade("絵演窓右/絵背景100", 500, 1000, null, false);
	FadeStA(500,true);


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0010a00">
「……柳生常暗斋。」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0020b37">
「……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0030a00">
「不会有错吧。」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0040b37">
「我是暗处之人。
　没有向敌人报出姓名的习惯。」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0050b37">
「但是……你很特别。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　也就是说，我被他允许了吗。
　允许我用这个名字称呼他。

　——柳生常暗斋。
　幕府秘藏武艺、柳生新阴流六波罗派的现任宗主。
既是幕府剑术大师又是足利一族近卫队“厩众”的统帅
……

　即大和第一的剑客！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0060b37">
「你想到“切落”了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　站立于武界巅峰的男子指着我的左手，这样说道。
　这只失去了手腕前端部分的手。
作为幕府军剑术典范足利一族直卫队“厩众”的统帅。
</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0070a00">
「……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0080b37">
「一刀流的真髓“切落”是凭借与对方之剑相
对称的一击获取胜利……
　而其秘诀在于……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶａ", 6000, Center, Middle, "cg/ev/ev146_新陰流合撃解説_a.jpg");
	Fade("絵ＥＶａ", 1000, 1000, null, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0090b37">
「<RUBY text="···">迟一步</RUBY>——看穿对方剑路而后动。
带着<RUBY text="··">切落</RUBY>这一明确目的迎战，
控制刀与刀的交锋，这才是秘诀所在。
　讲求运剑的精准度。」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0100b37">
「我等的“合击”似是而非。
　看清对方剑法而后动，这点是相同的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：剣理図解。刃鳴風の。
	CreateTextureSP("絵ＥＶｂ", 5990, Center, Middle, "cg/ev/ev146_新陰流合撃解説_c.jpg");
	FadeDelete("絵ＥＶａ", 1000, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0110b37">
「但接下来所追求的是效率而非
精准。
　在描绘<RUBY text="··">大圆</RUBY>的敌方剑路内侧，我的剑
却是描绘<RUBY text="··">小圆</RUBY>——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶｃ", 5980, Center, Middle, "cg/ev/ev146_新陰流合撃解説_b.jpg");
	FadeDelete("絵ＥＶｂ", 1000, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0120b37">
「所以，最终比对方更早到达目标。
　不交锋。<RUBY text="··">挺进</RUBY>。
　而后斩。」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0130b37">
「这就是新阴流六波罗派的合击。
　……即便同为新阴流，解释也会有所不同，其
他派系似乎是以完全不同的形式传承的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　以一副热心的良师形象，他这样解说道。
　然而成绩太差的学生，却是半分都无法理解。

　用高效的运剑来补偿起剑之慢——不，是逆转之术。
　……我能理解的不过如此。

　既无法效仿，也无破解之术。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/029vs0140a01">
《主君……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　但有件多余之事，确实切身明白了。
　而村正也一样吧。

　赢不了这个男子。
　这种状态下——无计可施。

　腹腔之中冰冷一片。
　这恐怕，不单单是因为从左手切断面白白流走了鲜血
与热量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/029vs0150a01">
《——全力以赴。》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0160a00">
（不）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　终焉磁装——电磁拔刀的使用也需纳入，进行战术的
讨论，村正如是说道。
　对于这副赤色剑胄来说此番话必是屈辱般的进言。

　面对肉身人类竟需全力而战！
　
　但我拒绝了她的进言，与屈辱无关。

　——再不杀戮。
　与一条约好了。为了让杀戮无罪善良之人的诅咒陷入
永眠。

　如果完全驱使剑胄的威力，必能置对方于死地。因为
剑胄是为杀人而特殊化的武器。
　必须抑制……决定忠于一条，赌上我的誓言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/029vs0170a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　村正沉默了。
　这沉默似乎传达了放弃之意——不是针对这场胜负，
<RUBY text="····">绝对不是</RUBY>。

　是对其他某种的放弃。
　……而我现在心中没有余裕去探究这种放弃的真相。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0180b37">
「——那么。
　我一人，提刀一把，挡住了你的前路。手中这
把“合击剑”。」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0190b37">
「而你是一骑武者。虽有同伴却相隔甚远。
　而且没有时间。不消多久，我的部下便会赶
来。」


{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0200b37">
「此刻状况如上。
　那么——你作何打算？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　这番话的内容简直是挑衅，但这位剑士诉说时的口吻
听上去却不带半点挑衅，反而优雅从容。
　黑色机械覆盖之下看不清他的双眸，也无法窥测他的
真意。

　但他提出的尖锐问题，却正是我此刻应直面的现实。
毫无夸张之处。
　敌是一人。己亦一人。但敌方在不久的将来具备决定
性的增援，而我却没有……

　敌方之剑拥有本国武术史上位于榜首的大流派、柳生
新阴流的登峰造极之艺。
　与好不容易才修成无名流派的凑斗景明之剑相比，同
为剑者却有着云泥之差。

　武者与肉身，两者之间原本绝对性的战斗力之差此刻
却化为乌有。
　
　——如何行事。

　用何手段才能突破这一局面？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【常闇斎】
　
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0210b37">
「心法无形通贯十方。」 


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0220a00">
「……」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0230b37">
「尔等之器只是杀人刀吗？
　还是已达活人刀之境界……？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0240a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　无言以对。
　即，无计可施。

　剑技胜负已成定局。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 300, 1000, null, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0250a00">
（是吗）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我明白了，这就是<RUBY text="··">答案</RUBY>。

　凑斗景明胜不了柳生常暗斋。
　——我输了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1500);

}

..//ジャンプ指定
//次ファイル　"mb02_030vs.nss"