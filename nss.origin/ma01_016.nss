//<continuation number="1020">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_016.nss_MAIN
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
	#ev102_大阪虐殺_a=true;

	#bg008_教室_01=true;
	#bg018_校長室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_017.nss";

}

scene ma01_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_015.nss"



	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg008_教室_01.jpg");

	StL(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStL(0,true);

	SoundPlay("@mbgm26",1000,1000,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//◆教室

	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160010b57">
「所谓六波罗幕府，是因其原本所在地
为京都六波罗而得来的通称，官方称为
六卫府，但……」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160020b57">
「说来可笑。
　本来，所谓六卫府的官署并不存在。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160030b57">
「六卫府本是左右近卫府、左右兵卫府、
左右卫门府，这六个首都防卫军的总称。
　并不是原来就有名为六卫府的单独机
关。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160040b57">
「然而，自从六卫大将领这一作为总司令官
统率近卫六府的官职被设立，直到最终职位
被赋予统领武者的责任，由此，在大将领之
下，以武者为中心的参谋组织诞生了。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160050b57">
「从这个角度上，六卫府才更应该成为惯称……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　铃川的声音一如既往的响亮。
　但我总觉得，那声音听起来欠缺了些许张力。
想想现在的状况也情有可原吧。

　自律失踪以来，已有五天。
　焦躁不安的，肯定不只是我们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160060b57">
「六卫大将领和征夷大将军一样，拥有
施行军政的权利。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160070b57">
「但与征夷大将军拥有出征后获得的占
领地上的相应权利对应，六卫大将领可
在迎击外敌的防卫战中，将某一地域判
断为必要而拥有相应权限。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160080b57">
「无论哪个都是战时限定的临时权力。
　一旦战争结束就要将施政权奉还朝廷。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160090b57">
「但是从前的镰仓幕府，将征夷大将军的这个
权利扩大化解释，把施政权延伸到全国范围并
使其恒久化。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160100b57">
「六波罗也在做着相同的事。
打着『现今乃国难之时』的旗号，扩大临时
大权，主张对大和全域实施无限期施政。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆大阪虐殺ＣＧ。六波羅の暴虐イメージ補強
	CreateTextureEX("絵ＥＶ100", 10000, Center, Middle, "cg/ev/ev102_大阪虐殺_a.jpg");
	Fade("絵ＥＶ100", 1000, 1000, null, false);

	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160110b57">
「其依据，便是曾经的大阪虐杀。
　也就是他们最终将整个城市斩尽杀绝，
而将那场叛乱冠以强化支配权的理由。
……真是让人目瞪口呆的合理做法啊？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160120b57">
「这便是六波罗支配的政治背景，
强大的武力，加上ＧＨＱ的默认，共同成为
支持其统治的支柱以及——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガラッ。
	OnSE("se日常_学校_教室ドア開ける01",1000);
	SetVolume("@mbgm*", 2000, 0, null);
	DrawDelete("絵ＥＶ100", 1000, 100, "blind_01_00_0", true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160130b56">
（嗯？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
　授课正中，毫无顾虑的推门拉开声异常唐突。
　随后，从那里猛然露出一张令人不快的
脸的人物也很唐突。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160140b57">
「……教导主任？」

{	NwC("cg/fw/nw教頭先生.png");}
//【ｅｔｃ／教頭】
<voice name="ｅｔｃ／教頭" class="その他男声" src="voice/ma01/0160150e052">
「上课中打扰实在抱歉。
　铃川君，请来一下。校长找你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　但是更加唐突的，还在那之后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw教頭先生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／教頭】
<voice name="ｅｔｃ／教頭" class="その他男声" src="voice/ma01/0160160e052">
「新田君、稻城君、来栖野君。
　你们也一起来。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160170b56">
「啊？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0160180b33">
「什么？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0160190b43">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg018_校長室_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitKey(600);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

	WaitPlay("OnSE*", null);
	WaitPlay("SE*", null);

	OnSE("se日常_学校_教室ドア開ける01",1000);
	DrawDelete("暗転", 1000, 100, "blind_01_00_1", true);

//◆校長室

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
　如果有人能以学生身份频繁出入这间房间，
那他一定不是突出的优等生，就是有名的问
题儿，除此之外别无可能吧。

　两方都不是，身为毫无趣味的标准学生的
我，当然还是第一次走进校长室这种地方。
　话虽如此，我却并没有涌起什么感慨。

　或许上流阶级子女们上的私立学院又另当
别论，这样一所公立学校的一个校长并不会
呈现在黑檀木办公桌上抽着烟管办公的景象。
　这里不过是，一间干燥无味的办公室而已。

　而这间房间的主人身上也全然没有让人提
起兴趣的部分。之后谈话的内容更是无趣至极。来这里的理由，我已经有了一定程度的预想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160200b23">
「一位不愿透露姓名和住址的人士联络了学校。
……并告知我校的学生，昨日和幕府雇佣的几
位在路上发生了争执。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
　校长的身边站着教导主任，我们旁边有铃川在。
　但毫无疑问，校长的话并不是对着他们二人中的
任何一人说的。是对<RUBY text="····">其余的人</RUBY>说的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160210b23">
「是你们没错吧？」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160220b56">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
　用一副<RUBY text="··">被告</RUBY>代表的口气，我给出了肯定的答复。

　既然三个人一起这样被叫出来，不用怀疑那个
什么联络肯定已经指名道姓地供出了我们。
　装糊涂只是浪费时间。

　那时在现场的人群之中，有谁那么灵机一动了一下吧。
　作为社会人来说相当明智——对我们来说则实在，
完全是，麻烦十足的灵机一动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160230b56">
「但那是他们——」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160240b23">
「关于争执的内容，我没有打算听你
多说。
　毕竟我已经听说并未引起重大事件。
事实上，你们此刻也平安无事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0241]
　正准备滔滔不绝继续说下去的我，被校长轻易打断。
　那是将想说什么、想听什么，已然全部决定了的态度。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160250b23">
「所以那件事就算了。
　问题在于，为什么会发生那样的事。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160260b56">
「不，所以说，我们碰巧遇上的野木山
那帮人——」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160270b23">
「你们为什么会在那种地方？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
　……果然，看来连对话的走向也决定好了。

　在和野木山组发生纠纷的事情上我也有牢骚……
当然了。我们才是被害者啊。
　可是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160280b23">
「那一带应该只有夜间营业的饮食店。
对你们来说是没什么价值的地方吧。
那么为什么，你们会在那种地方转悠？」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160290b56">
「那是因为……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0291]
　从这一点来说，身为学生的我们毫无疑问违反了
校规。无论如何辩解，这个事实也不会改变。
　……校长打算以此为突破，将对话变成一边倒的
情势吗。

　受些斥责倒没有什么大不了。
　但是受到严厉处分以至于自由行动被限制的情况，
还是要尽量避免的。如果被勒令停课反省并通知家
里的话，就没办法继续找律了。

　虽然现在正是需要巧妙辩白的时候，我却想不到
一个能用的理由。而本该在这种时候最可靠的忠保，
如今也保持着沉默。恐怕是感到了事件走向的不利
在控制自己无意义的插手吧。

　别无他法，我只能顺着校长的诱导回答。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160300b56">
「我们去找饰马律了。」

{	FwC("cg/fw/fw校長_不機嫌.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160310b23">
「看来是那样呢。数名学生四处冒充侦探
在附近探查，这样的联络，
本周以来也接到了几次。
　就是说那也是你们的所为了。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160320b56">
「……就是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
　几乎可以说是让人心情愉悦的程度，校长主导的对话
进行顺利且毫无废话。
　应答着的我简直索然无味。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160330b23">
「那是警察的工作。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
　虽然我能理解你们的心情。
　——连这样的定式句，校长都省略了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160340b23">
「交给警察吧。
　这不是你们该做的事。」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160350b56">
「可是，那样的话——」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160360b23">
「放心吧。警察们正在行动。
　前几天，上原教员据说还在校门口接受了
便衣警察的调查……所以不用担心。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0361]
　不行的。
　<RUBY text="········">那家伙根本就没用</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160370b23">
「你们是学生，无法成为警察的助力。
　即使本意协助，从结果来说也只能是帮倒忙。」

//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160380b23">
「这种行为反而会把你们重要的友人，
我所爱护的学生饰马君，
置于更危险的境地。
　明白了吗？」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160390b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0391]
　火大。
　五脏六腑无法抑制地沸腾着。

　啊啊，可恶。
　为什么名为<RUBY text="··">正论</RUBY>的东西，会让人如此火大啊！

　校长完美地理解它的运用方法。
　不掺杂一句废话。只用无懈可击的正论使人屈服。

　没有对策。

　哪怕声泪俱下地让他考虑一下我们的处境，再紧
咬住这点不放，或许能引出某种程度的妥协。
　但现在这么一来，连这种委屈的作战都行不通了。

　如果任由对话这样进行下去，接下来就该和校长
约定不再进行愚蠢的行动了吧。
　也可以无视约定，继续搜查。

　但是毁约本身又会成为我们的负担，赋予学校
方面严惩我们的正当性。
　离被禁足在家，一定也就为时不远了。

　这种事态，我是绝对不会接受的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160400b56">
「可是……律她……
　她是我们的朋友啊。所以，如果我们不去亲自
找她……」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160410b23">
「再说一遍，这不是你们该做的。
　你们是学生，本分是学习。」

//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160420b23">
「当然，只要不越界，放学之后怎么玩乐
都无所谓。然而……
　你们在做的事情并不是玩乐吧？」

//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160430b23">
「所以，必须停止。
　我的意思你们理解了吗？」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160440b56">
「…………」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160450b23">
「如果不能认同请讲出来。
　要是没什么可说的，那就请向我保证
今后不再进行擅自的举动。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160460b56">
「…………」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160470b23">
「选哪一个？　沉默的话我不明白。
　你们也差不多到了该学会清楚表达自身意
见，遵从社会规定，这些所谓社会人的修养
的年龄了。」

//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160480b23">
「放弃用沉默表达不满，仿佛在等待对方妥协
这种撒娇似的态度吧。」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160490b56">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0491]
　可恶。可恶！
　那算什么啊！

　你所说的确实合乎情理啊。
　啊，真是，没有一点反驳的余地。

　但那只是片面的道理，片面的正确性而已吧！
　即使那是社会上普遍通用的道理！

　必须把自己的正确性清楚地说出来才行吗？　
做不到的话就必须服从别人的正确性才行吗？
　啊啊说的也是啊。要不然社会就无法运转了。

　但是，即使如此，这种道理却把明明相信着
正确性只是无法好好说明的人给无视了啊！
　像现在的我一样的家伙！

　就算这么说，反正你们也只会说那是无法说
明的人的错吧。
　啊啊，<RUBY text="··">能干</RUBY>的人一定会这么说。

　可是啊……
　这样到最后，世上不是只有伶牙俐齿的人才能
取得胜利了吗！

　还有能够揍扁表达不满意见者的家伙。
　那么两方都不是的人只能闭上嘴服从他人吗。

　这就是正确的社会吗。
　是这样吗!?

　啊啊……我明白我明白我明白。
　就算那不是正确的社会，也是<RUBY text="··">相对</RUBY>正确的社会对吧！

　至少比起像我这种家伙只会活得举步维艰的社会来说！
　那种事情我都明白啊！

　就算明白……
　怎么可能接受啊!!现在，此时此刻！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160500b56">
「唔……」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160510b23">
「……你好像没什么应该说的了。
　那么，就按我的话办吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0511]
　……<RUBY text="···">那个人</RUBY>。
　曾经体会过无法说明的我的心情，吧。

　那样的想法，突然从胸中掠过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160520b23">
「今后——」

{	StR(1000, @0, @0,"cg/st/st鈴川_通常_制服.png");
	FadeStR(300,false);
	SetVolume("@mbgm*", 1200, 0, null);
	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160530b57">
「请等一下。校长。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0531]
　什么都没能说出口的我的替补，
　从我根本没预料到的方向站出来了。

　……铃川？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160540b23">
「怎么了？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160550b57">
「他们是出于对朋友的担心才会进行行动的。
在这一点上，我认为您应该多加考虑。」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160560b23">
「……我不明白你想表达什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0561]
　或许是由于在本可以最大限度地顺利解决问题
的当口被泼了冷水，校长烦躁地皱起了眉头。
　指尖轻轻敲打着桌面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160570b23">
「担心失踪的朋友，所以干起冒充侦探的事。
这个缘由我明白。
　所以又怎样？　我想说的是，这种行为是
违反规定的。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160580b57">
「如您所言。
　<RUBY text="·····">但即使如此</RUBY>，<RUBY text="··········">他们依旧因为担心朋友</RUBY>、
<RUBY text="·····">想救出朋友</RUBY>，
<RUBY text="······">而展开了行动</RUBY>。」

{	SoundPlay("@mbgm32",0,1000,true);}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160590b57">
「这样有错吗？」

{	FwC("cg/fw/fw校長_怯み.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160600b23">
「什——什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
　场面的主导者——或本应是主导者的人物——无言
以对。他似乎从未想过竟然会在这种时刻受到这样的
反击。
　对我来说也是同样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160610b23">
「……不是这个问题！
　他们的行为会给周围的人平添麻烦——
这一点才是问题。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160620b57">
「不，校长。那只是问题的一个方面。
　并不是问题的全部。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160630b57">
「为了公平起见，也应从不同的观点考察情况。
　他们为了营救朋友而开始的行为，
这一点又该怎样评价呢。」

{	FwC("cg/fw/fw校長_不機嫌.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160640b23">
「……你到底在说什么……！
　学校可是收到了抱怨啊。　如果不做出
有诚意的应对，学校将信用尽失。
这些你明白吗？」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160650b57">
「有诚意的对应……这是当然。
　但我认为那应该是去探寻既不对抱怨忍气吞声，
也充分考虑学生情况的最佳解决方法。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160660b57">
「不是吗？」

{	FwC("cg/fw/fw校長_怯み.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160670b23">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0671]
　校长怒目圆睁，却好像发不出声音的样子。
　旁边的教导主任也目瞪口呆。

　着实意外。
　确实，铃川身为十分「会说话」的老师，
在学生间声誉也恰如其分地高，其中也不
乏像小夏一样对他抱有憧憬之心的爱慕者。

　但是，在这样的状况下，仍旧站在学生
的立场上辩护到如此程度，恐怕连小夏都
不曾抱有期待吧。
　站在我身边的小夏，娇小的脸庞却瞪大了双眼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160680b57">
「我认为，对他们的行动应该给予理解
的理由十分充分。
　为了寻找失踪的朋友而亲自展开行动，
这有什么奇怪的呢。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160690b57">
「更何况，在警察之流没法指望的情况下。」

{	FwC("cg/fw/fw校長_不機嫌.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160700b23">
「谨言慎行！　铃川令法！」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160710b57">
「我只是说出了事实而已啊。
　……哎呀，失礼了。用了有些庸俗的
措辞。」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160720b23">
「……虽然作为他们的班主任，我希望你
在场。但我并没有和你争论的打算。
　如果你想妨碍我，就请你离开。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160730b57">
「真不凑巧，校长。我和这件事也并不是
毫无关系。有些自负地说，我没有教育过
学生在朋友陷入危机时还应该保持沉默并
置之不理。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160740b57">
「因此。
　也可以说，对于他们的行动我也负有责任。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160750b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0751]
　喂，喂。
　这样好吗铃川。

　总觉得，这已经不是因为看到我们被一边倒
地训斥而心存同情，稍微帮一下的程度了。
　是想彻底对抗吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160760b56">
（虽然我很开心……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0761]
　说实话，我真的很开心。

　但是以一介教师的立场和校长发生冲突会没事吗？
　……不可能会没事吧。

　那为什么？
　为什么要做到这种地步……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160770b23">
「关于你的教育方式，我也听说了很多……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0771]
　校长的声音里，完全没有成分让我相信
自己的担心是多余的。
　充满寒冬天空的气息。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw校長_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160780b23">
「诸如屡次有向着<RUBY text="···">不合适</RUBY>方向进展之嫌之类。
对了，就这件事，我也不得不和你谈一下。
　你能将谈话提前真是帮了大忙呢，铃川君。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160790b57">
「那么，不如我再将谈话多提前一些吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0791]
　面对充满压迫的言语，铃川甚至连情面上的畏怯
都没有流露。
　反而傲然地挺起胸膛，宣告道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160800b57">
「我的家人是被六波罗夺去的。
　因此情感上无论如何，比起体制一侧，
都会更倾向于被抑制的一侧。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160810b57">
「这一点请您务必体谅。」

{	FwC("cg/fw/fw校長_怯み.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160820b23">
「————」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160830b56">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0831]
　……这是有名的传闻。

　铃川本是已婚者，如今却单身。
　曾经拥有过妻女，又失去了。

　并不是六波罗直接、亲自动的手。
　然而铃川的妻子因患感冒久拖不治最终死去，似乎与
六波罗贪婪掠夺导致一时间粮食不足与医疗费加剧高涨
难逃干系。

　从铃川的授课中，常常能够窥见他对六波罗的愤怒正是
出于这个原因……这些，就是在传达不到本人耳中的地方
悄然流传的传言全部。
　当然，校长应该也知道这件事。

　恐怕明知铃川不想提及往事而会刻意回避，却偏偏一味
责问，正是校长的企图吧。
　针对校长的远距离战术，铃川选择了近身战。

　距离一瞬间缩短到零。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160840b57">
「我的家人，妻子和女儿曾经都很美……
不是姿容，而是心性、生活的态度，非常的，
　非常的美丽。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160850b57">
「失去之物总令人遗憾……遗憾到至今仍无法
释怀的程度。然而却没有办法夺回。
　死者不能复生。无论做什么都不能。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160860b57">
「理想和现实的对立苛责着我。
　最初我依靠的是宗教……校长，你知道吧？　
被幕府禁制的基督教。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160870b57">
「虽然被人几番忠告，但是除了信仰以外，
我没有从自暴自弃中保护自己的方法。
　十分抱歉。现在我仍会每周去一次教会。」

{	FwC("cg/fw/fw校長_通常.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160880b23">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0881]
　所谓<RUBY text="··">禁制</RUBY>，并不是准确的表述。在ＧＨＱ面前
禁止他们的宗教即使是六波罗也做不到。
　但对西洋文化极其冷淡的幕府看不惯基督教
也是事实，听说在私下进行了相当严酷的镇压。

　如果有公务员光明正大地出入教会，
那<RUBY text="··">私下</RUBY>里还不知道会受到怎样的对待。
　……恐怕不是被切断晋升道路，这种程度就能
了事的吧。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160890b57">
「信仰成为了支持着我的存在。
　但是，却没有成为救赎。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160900b57">
「所以我……继续任教。
　也有朋友劝我去乡下静养。但是
既然失去的东西再也无法找回，那
么至少，我想找到新的什么。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160910b57">
「教育出像妻子和女儿一样，美丽的人类。
　我这样立誓，以教师的身份重新开始。
为了这个誓言，我才站在这里。校长。」

{	FwC("cg/fw/fw校長_怯み.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160920b23">
「铃川君。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0921]
　如果说铃川的话就像拳头连击，那么一味被打的校长
简直如同沙袋一样。
　边艰难地喘息着，边解开衣领，他才好不容易挤出几
句话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw校長_怯み.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160930b23">
「铃川君。可是。」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160940b57">
「我希望学生们是美丽的。
　而不希望他们是将朋友的困境视若无物的
人类。」

{	FwC("cg/fw/fw校長_怯み.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160950b23">
「可是啊……」

{	FwC("cg/fw/fw鈴川_冷徹.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160960b57">
「校长。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0961]
　态度强硬，冷静而透彻。
　铃川俯视着上司。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw鈴川_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0160970b57">
「请您回答我。
　当朋友遭遇危机的时候，老师应该教导学生
什么都不要去做吗？」

{	FwC("cg/fw/fw校長_怯み.png");}
//【校長】
<voice name="校長" class="その他男声" src="voice/ma01/0160980b23">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0981]
　校长无法不赞同。
　从刚才开始，他所表达的正是这个意思。

　但是，他却不能赞同。
　此时此刻，面对铃川，他没有办法赞同。

　……坦白地说。
　我觉得铃川的战术有些卑鄙。

　利用自身的不幸作挡箭牌以达到目的，除非
对方正是给自己带来不幸的本人，否则这样的
做法难免要受到手段卑鄙的指责吧。
　这是利用人的良心的行为。是弱者的暴力。

　可是，铃川平时并不是会如此行事之人。连
铃川的过去，至今为止我也一次都没听他亲口
说过。

　立誓之事也是今天头一次听说。
　大概，他不曾和任何人说过吧。

　那么为何事到如今讲出来，理由自然不会是
突然想得到人们的同情。
　他是为了帮助我们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0986]
　不。
　是为了<RUBY text="··">守护</RUBY>。
　守护铃川口中的美丽。

　一想到我们内在是否真的存在那种美丽，
说实话有点不好意思。
　但是为了它，铃川忍受着耻辱。

　不惜利用弱者的暴力的耻辱。
　他明明并不是能蒙蔽自己羞耻心的人类。

　那到底是怎么一回事，我想我并不是很
清楚。
　虽然觉得哪里好像明白了，但真正的地
方一定一点都没有理解。

　但是，我觉得必须要做这二者之一。
　道歉，或是表达谢意。有哪一个不得不做。

　是哪一个呢。
　我不知道。

　因为不知道，我放任自己随心说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0160990b56">
「老师。」

{	FwC("cg/fw/fw鈴川_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0161000b57">
「嗯？」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0161010b56">
「对不起。」

{	FwC("cg/fw/fw鈴川_笑顔.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0161020b57">
「不用道歉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1021]
　铃川苦笑着摇了摇头。
　……看来选错了。

　不合时宜的对话，但谁也没有追究。
　眼前的局面已经有了结果。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorEX("暗転", 15000, "#000000");

	SetVolume("SE01", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	Fade("暗転", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
　就这样。
　最终，铃川以与我们同行为条件，取得了让我们
行动自由的认可。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);


}

..//ジャンプ指定
//次ファイル　"ma01_017.nss"

