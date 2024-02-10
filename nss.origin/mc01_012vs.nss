//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_012vs.nss_MAIN
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

	$GameName = "mc01_013.nss";

	CP_AllDelete();

}

scene mc01_012vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vsaba.nss"
//前ファイル　"mc01_011vsabb.nss"

//◆合流
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0010a01">
《……那么，结果……
　刚才的到底是什么？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0020a00">
「是高速徹甲弹。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0030a01">
《高速徹甲弹？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演徹甲弾", 18000, -360, -460, "cg/ev/resize/ev922_ガッタイダーボーディホーン準備_al.jpg");
	SetTone("絵演徹甲弾", Monochrome);
	Fade("絵演徹甲弾", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　对龙骑兵用高速徹甲弹ＡＤＨＶＡＰ。

　此为通过轻合金外壳包裹钨制弹芯的二重构造，实现
高贯通力的炮弹。
　这是种在中弹的瞬间柔软外壳炸裂、露出锐利弹芯
贯穿装甲的结构。

　对龙骑兵用的炮弹，因其重量极轻，初速度非常高，
在近距离范围内攻击，即使拥有武士的反射神经，也难
以回避。
　虽说一旦拉开距离，弹速就会骤降。

　对龙骑兵用火器在军事领域的有识之士之间被评价为
最实用且最完备。
　然而可惜的是——对全世界的武士而言则是幸运——
所用材料中的钨非常贵重，因此无法量产。

　如果可量产的话……在将来实现量产的话，战场的情况
一定会发生巨大改变。
　威力如此巨大的兵器。

　既然连这样的炮弹都能够射出，那就根本不可能是某些
好事的武士出于好奇心而发动的袭击。
　敌人毋庸置疑是从属于组织的人。

　而且兼具极高的技术力和经济力——换言之，是大规模
的组织。
　
　是六波罗。还是ＧＨＱ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演徹甲弾", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
　无论是哪个，想必一定是与谒见亲王的危难息息相关
吧。
　是识破我想赶去支援的行动，借此困住我吗。


　倘若果真如此，就更不能在这里犹豫了。
　
　如此思考一番之后，我的焦躁反而缓和了几分。

　一定是因为刚才的那一弹带来了冰水灌顶般的效
果吧。
　我在精神上恢复了冷静。

　冷静到足以瞬间将这一战细细回想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0040a00">
「……真是……奇妙啊。
　不，刚看到时就觉得很奇妙。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0050a00">
「并不是特指哪里……
　总觉得那个武士的战斗方式<RUBY text="···">很奇怪</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　是因为从敌人的举动中莫名地散发出外行人的感觉。
　也有这个原因——

　但，似乎尚无法一言以蔽之。
　还有，别的什么要素……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0060a01">
《那一定是——
　因为热量。》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0070a00">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　虽然提出了疑问，我却并没有期待得到回答。

　但对村正而言似乎成为了诱因。

　仿佛是在自我确认一般，将推测说出。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0080a01">
《很奇怪啊。怎么想都很奇怪。
　如果我的判断没错的话——那个武士
<RUBY text="······">用全速冲过来</RUBY>，<RUBY text="··">直接</RUBY>、<RUBY text="···">全力地</RUBY>
<RUBY text="····">揍了上来</RUBY>。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0090a01">
《若将热量换算成十，那个武士<RUBY text="···">并没有</RUBY>
以五为单位分别分配给启动飞行推进器和增强
肌肉力量。
　两者都是十。……这按理说是根本不可能的。》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Fade("絵演", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　虽然理解了村正所说的话，不过花费了些许时间。

　通常，武士在面临太刀较量之时，直到即将发起进攻
之际，会在飞行推进器（也就是飞行能力）上消耗热量，
一旦发起进攻，立刻在装甲（身体强化）中注入热量。
　这种绝妙的切换也是武士的技能之一。

　倘若借用村正的表现来解释，即是说，直到刀刃相交之
际，飞行推进器分配的热量是十，互相交锋之时飞行推进
器的热量则为零，转而在肌肉力量强化中注入十的热量。
　这是太刀较量的铁则，几乎无人例外。

　因为吝于切换所需要的时间，直接以五为单位将热量平均
分配给骑航和装甲的散漫武士，绝对无法获得太刀较量的胜
利。

　当然，无视有利与不利，只讲求可不可行的话——这种使
用热量的方法，<RUBY text="····">的确可行</RUBY>。
人人都做得到。
　但是村正所说的敌人的奇妙之处，并不是指这件事。

　两者都是十。
　启动飞行推进器和身体强化都竭尽全力——保持最大
速度，驱使最大力量袭来。

　敌骑异样的力量威势之因就是这个吗。
　
　但，不可能。

　说起分量，既有人拥有的力量为十，也有的人拥有的
力量为八。因人而异。
　在这个世界的某处，也会有武士拥有超出常人一倍的
热量吧。

　但说到比例，无论什么人，都只能拥有<RUBY text="··">十成</RUBY>的
力量。即使有人拥有平均值二十成的力量，这份力量
对其本人而言也相当于十成。
　这是理所当然的。显然，毋庸置疑。

　颠覆常理。
　对峙的敌骑<RUBY text="··········">使用了二〇〇％的力量</RUBY>
犯规了。

　至少村正如是说。
　
　……………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演*", 500, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0110a00">
「如果再加上古怪的言行，甚至可以推测使用
了什么药物。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0120a01">
《是啊。
　热量本身不知为何也很异常……很有可能。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0130a01">
《但——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　仅仅如此，果然还是无法解释清楚吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 125, 125, null, true);
	Move("絵演合体", 300, @0, @-30, DxlAuto, false);
	Fade("絵演合体", 300, 1000, null, true);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/012vs0140b33">
《我知道啊——！
　你喜欢的是母亲和尸体啊——!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　然而，没有解谜时间了。
　恶魔的骑体又卷土重来，伴随着飓风袭向我们。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆前半戦終了
	ClearWaitAll(2000, 2000);


..//ジャンプ指定
//次ファイル　"mc01_013.nss"

}



