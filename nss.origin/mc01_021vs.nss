//<continuation number="470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc01_021vs.nss_MAIN
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

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc01_020vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

//あきゅん「ＣＰ：ダメージフラグで生命値調整」
	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,378);
	CP_SpeedChange(0,372,null,false);

	CP_PowerChange(0,650,null,false);

	CP_HighChange(0,1200,null,false);
	CP_AziChange(0,251,null,false);
	CP_AltChange(0,1,null,false);

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	FrameShake();

	CreateTextureSP("絵演空", 100, InLeft, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	Move("絵演空", 0, @0, @144, null, true);

	CP_HighChange2(60000,1300,null,false);
	Move("絵演空", 60000, @0, @144, null, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,600,0,1000,null,true);
	MusicStart("SEL01b",2000,600,0,1500,null,true);

	Zoom("上背景", 150, 1500, 1500, Dxl2, false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0010a01">
《主君，没事吧!?》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0020a00">
「至——」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0030a00">
（……至少，现在没事）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　放弃了编织言语出声回答剑胄的询问，用意念定向传
达了自己想说的话。
　和发生通话不同，或许会出现主旨无法被正确理解的
情况，但现在也无法奢求了。

　唇舌的痉挛进一步恶化，无需刻意活动唇舌，似乎只
要稍有疏忽就会尖叫出声。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0040a00">
（感到失去自由的地方似乎逐渐扩散开来……
　连脖子和腰腿都变得无法动弹之时，会相当
危险吧）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0050a01">
《那么——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　只能坠落。
　武者的飞行只快速转动后背的飞行推进器是无法
成立的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0060a01">
《……唔。
　明明还有其他的手段，竟然用毒！》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0070a01">
《真让人无话可说！
　如果探寻前例，不是得回溯到蒙古袭来
画卷吗？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0080a00">
（我也没听说过其他的前例。
　用毒来战斗的武者）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 100, null);
	CreateTextureEX("絵演蒙古襲来", 18000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");
	SetTone("絵演蒙古襲来", Monochrome);
	Fade("絵演蒙古襲来", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　蒙古袭来——即是说所谓的元日战争之时，从战斗开始
时蒙古武者就压倒性地胜过日本武士，原因除了蒙古的骑
体运动性出色、擅长编队战术以外，也有果断用毒这个因
素。

　能将细微的擦伤变为重伤，最终转变为致命伤的剧毒
想必一定是有效的兵器吧。
　……但，即使纵览世界军史，像这样使用的先例绝不多
见，这也是实情。

　在未开化的民族之间倒是有许多用在狩猎上的例子。但
若是硬要举出一个文明国家的军队用过毒的例子，除元帝
国之外，几乎都属于遥远古代史的范畴了。
　而且，根本没有武者使用过的先例。

　那是因为毒这种东西，从正面极其违逆了无论哪个时代
哪个国家的武者都必定会存在且特有的——作为战场王者
的——审美观吧。


　武士拥有比普通平民更优秀的能力，所以必须成为民
众的模范。
　这样的武士怎么可能会使用毒药，不择手段地盗取胜
利呢？

　这种意识理应是武士的自尊，也是良好的传统。

　
　总觉得——那个敌骑并没有这种意识。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 750, null);
	FadeDelete("絵演蒙古襲来", 1000, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0090a00">
（再怎么斥责也不会有进展吧……）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0100a01">
《是啊。那就让那家伙筋疲力尽地倒地吧。
　不过现在……先要解决那个毒药的问题。》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0110a00">
（明白什么了吗）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0120a01">
《究竟是什么毒？　我完全不知。
　虽然很惭愧，但我毕竟没有学过
那方面知识。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0130a00">
（话是没错。
　但是，应该能明白毒药是如何作用在
我身体的什么地方）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0140a00">
（在何处？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　虽然我知之不详，但杂学程度还是有所涉足的。即便
统称为毒，种类却非常丰富。
　不过从症状来看，可以排除对作用于脏器的实质毒，
以及破坏接触到的组织的腐蚀毒。

　如此一来，是破坏血液、掠夺身体机能的血液毒呢，
还是侵袭并麻痹神经的神经毒呢……
　如果知道是哪一种毒，说不定还能判定毒的名称。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0150a01">
《是神经毒。
　虽说是从伤口处经由血管扩散开来，
但丧失正常功能的是神经。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0160a01">
《而且肌肉也……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　神经毒。
　以及从身体末端显现出异常的这种症状。

　印象模糊的知识中，与之相符的是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0170a00">
（……河豚毒）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0180a01">
《河豚？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0190a00">
（不，总之……就是河豚的毒）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　河豚毒。
　三十年前，日本的某个姓田原的博士首次成功将其
提取并命名。

　而日本人之所以会早世界一步发现它，并非偶然，
而是必然。
　河豚是日本人自古以来就非常熟悉的食材。

　<RUBY text="·········">与死亡背靠背的美味</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色黒", 500, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0200a01">
《也——也就是说。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0210a00">
（照此下去，很快就会死亡）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0220a01">
《必须解毒！》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0230a00">
（以你的机能和力量做得到吗？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0240a01">
《……应该能行。
　虽然需要停止全部行动，花费几分钟。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　即是说，现在不可能立刻实行。
　即使以最乐观的情况为立足点来考虑，也难以争取到
解毒的时间。

　河豚毒这种物质至今未有人工合成的成功先例。敌人
恐怕为将其适用于战斗，在加工的基础上使用了直接从
河豚身上提取的、一般经口摄取的河豚毒吧。


　做到如此地步的对手——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0250a00">
（我可不认为敌人会同意让我们“小休止”的）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0260a01">
《现在是耍贫嘴的时候吗？》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0270a00">
（能够延缓毒素蔓延吗？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0280a01">
《……应该没有问题。
　但撑不了多久。》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/021vs0290a00">
（速战速决吧）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/021vs0300a01">
《是啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　也就是说时间受到限制。
　不，时间限制原本就存在。

　超过时间限制的惩罚是从有可能使舞殿宫等自己
以外的人性命涉险转变为自身的死亡。
　
　……事情变得简单了，真是感激不尽。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転。動きが少し鈍い。
//◆ちょっとガタついたり。
	CreateTextureEX("絵演空演出後", 100, InLeft, -945, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	CreateSE("SE01a","se戦闘_動作_空急降下01");
	CreateTextureEX("絵演旋回背景", 200, InLeft, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	SetVertex("絵演旋回背景", left, middle);

	$背景倍角変数 = 2.50;
	$背景倍角組込変数 = $背景倍角変数 * 1000;

	$横移動計算基準値 = ImageHorizon("絵演旋回背景") * $背景倍角変数;
	$横移動計算調整値 =  $横移動計算基準値 -1200;
	$横移動計算補正値 =  $横移動計算調整値 * (-1);

	Zoom("絵演旋回背景", 0, $背景倍角組込変数, 1000, null, true);

	Wait(1);

	SetBlur("絵演旋回背景", true, 2, 500, 80, false);
	SetBlur("絵演空", true, 2, 500, 30, false);
	SetBlur("絵演空演出後", true, 2, 500, 30, false);

	CP_SpeedChange2(0,372,null,false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",900,1000,0,850,null,false);
	Fade("絵演旋回背景", 300, 1000, AxlAuto, false);

	Move("絵演空", 300, @-512, @0, null, false);
	Move("絵演旋回背景", 1800, @$横移動計算補正値, @0, AxlDxl, false);

	CP_AziChange(1800,21,AxlDxl,false);
	CP_RollBarMove2(600,87,AxlAuto,true);

	Wait(200);
	Shake("@CP_Frame", 300, 0, 20, 0, 0, 1000, Dxl3, false);

	Wait(400);
	Shake("@CP_Frame", 300, 0, 30, 0, 0, 1000, Dxl3, false);

	CP_RollBarMove2(600,-2,DxlAuto,false);

	Fade("絵演空演出後", 0, 1000, null, true);
	Delete("絵演空");

	Wait(450);
	Shake("@CP_Frame", 300, 0, 60, 0, 0, 1000, Dxl3, false);

	SetVolume("SE01a", 900, 0, null);
	Fade("絵演旋回背景", 150, 0, DxlAuto, false);
	Move("絵演空演出後", 150, @-512, @0, Dxl2, true);



	FrameShake();

//◆敵騎と相対
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎航_戦闘a.png");
	Move("絵演合体", 0, @-330, @30, null, true);
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 50, 50, null, true);
	Move("絵演合体", 300, @30, @-30, null, false);
	Fade("絵演合体", 300, 1000, null, true);

	OnSE("se特殊_コックピット_ロックオン",1000);
	CockPit_LockSet(@-300,@0);
	CP_LockOnFade(300,"on",false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　原以为已经明确的胜负趋势被轻易改变，我被逼得
走投无路，敌人看起来充满了气势。
　身躯看上去也好像大了一圈。

　这些可能只是因为我心理上的退缩而产生的幻觉。
　但是，突击的速度和威势的增加却是逼近眼前的
现实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

//◆ガッタイダー
	CreateTextureEX("絵演", 18000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Fade("絵演", 1000, 1000, null, false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/021vs0310b33">
《呀——唔啊啊啊啊呜啊啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　敌人的疯狂的声音最终失去了语言形式。
　是因为极度的兴奋吗，还是因为别的理由呢，
这我既不知道也不会明白。

　我应该对付的只有敌骑的刃。
　沉重而又饱含剧毒的斧刃要如何应对。

　现在，暂时不应进攻，必须专心于防守。
　当然，虽然也有<RUBY text="····">以攻为守</RUBY>的方案……

　无论使用哪个对策，手段大致分为两种。
　展示于人的太刀技巧，或——隐藏秘技。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：用剑技对抗／以阴义对抗


}

..//ジャンプ指定
//◆剣技で対抗する　"mc01_021vsa.nss"
//◆陰義で対抗する　"mc01_021vsb.nss"

//★選択肢シーン
scene mc01_021vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("絵演", 5000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Cockpit_AllFade0();
	CP_LockOnDelete();
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("用剑技对抗","以阴义对抗");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆剣技で対抗する　"mc01_021vsa.nss"
				$GameName = "mc01_021vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆陰義で対抗する　"mc01_021vsb.nss"
				$GameName = "mc01_021vsb.nss";
		}
	}
}

