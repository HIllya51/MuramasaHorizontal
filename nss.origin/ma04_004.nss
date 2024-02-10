//<continuation number="380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_004.nss_MAIN
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
	#voice_on_柳生常闇斎=true;

	$PreGameName = $GameName;

	$GameName = "ma04_005.nss";

}

scene ma04_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_003.nss"

//●０４
//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm34",0,1000,true);

	StL(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040010a05">
「……于是。
　有何事？　狮子吼。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040020a06">
「是。
　昨日，与进驻军有所联系的御雇组来
人报告……」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040030a06">
「他们最近好像向江之岛派出了正式调查
团。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040040a09">
「……哦，哦。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040050a08">
「情报的可信度呢？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040060a06">
「联络了潜伏在横滨的厩众，让他们立刻
着手调查。
　据说的确有类似的风声。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma04/0040070a07">
「哎～
　也就是说终于落入陷阱了？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040080a09">
「居然如此谨慎，真是令人意外。
　从我们通知他们起已经有一个月时间
了吧。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040090a05">
「这……仅是动作慢而已吗。
　亦或是诱饵太过诱人，因此起疑了呢……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040100a05">
「无论如何……
　既然对方上钩，吾辈的任务亦明确了。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040110a08">
「是，父亲。
　<RUBY text="····">按兵不动</RUBY>就可以了吧？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040120a05">
「嗯。
　饥饿之野兽定需饵料。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040130a09">
「肚子一旦吃饱，<RUBY text="··">鼻子</RUBY>也会迟钝。
　您是想让他们饱食一顿吧？　殿下。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma04/0040140a07">
「否则，我们的工夫就白费了。
　这次可是花了不少钱呢。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040150a06">
「肆意挥霍预算的家伙没资格说这种话。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma04/0040160a07">
「如果那么森严的研究所造出的东西却像
纸糊的一样，肯定会露馅吧。我可是力求
以假乱真。
　……托福，这才变成了个天大的玩笑。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040170a08">
「吾倒也觉得做得有些过火了呢……」

{	FwC("cg/fw/fw護氏_通常.png");}
//嶋：修正（くらい）【090930】
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040180a05">
「如此也好。足以满足彼之好奇心。
　如若其于此时将目光投向<RUBY text="····">优胜候补</RUBY>则不妙矣……
狮子吼，那边情况如何。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040190a06">
「正在待命。
　……常暗。」

{	#voice_on_柳生常闇斎=true;
	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040200b37">
「是——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すいっ。
//◆柳生常闇斎。侍スタイルにナイトスコープ
	StR(1000, @-30, @0,"cg/st/st常闇斎_通常_私服.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040210b37">
「大人。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040220a09">
「哦，是柳生啊。
　百忙之中还叫你过来，不好意思。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040230b37">
「承蒙关怀，实不敢当。
　古河中将大人。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040240a05">
「那么，常暗斋。
　篠川是何情况。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040250b37">
「——」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040260a05">
「毋需顾虑。允汝直言。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040270b37">
「是。就目前来看一切尽在掌握。
　我麾下的厩众当中，反间谍机能也正顺利
运转。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040280a05">
「此事关乎幕府大业，国家大业。
　……汝不会辜负余之期望吧？」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040290b37">
「有六波罗才有今天的常暗。
　在下岂会辜负您的期望。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040300a05">
「如此甚好。
　退下。」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/ma04/0040310b37">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さっ。
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	DeleteStR(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040320a09">
「那么，计划进行得如何？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040330a06">
「由冈部之乱所收集到的实战数据正在进行
最终调整。
　一旦完成，就预备进行第一期量产。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma04/0040340a05">
「加快速度。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma04/0040350a06">
「是！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0040360a09">
「西洋人也并不愚笨。
　不知他们何时会针对我方采取行动。
唉，那么……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma04/0040370a08">
「所以只能指望吾方所准备的江之岛……
　能够<RUBY text="····">不负重望</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆江ノ島遠景（対岸の片瀬から見た図）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg040_江ノ島全景_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　位于镰仓市西南的江之岛在关东地区属于牟财天
的信仰中心地，可谓是历史悠久的观光景点。
追溯回去，在镰仓幕府之前就有参拜的香客远道而来，到
了江户时代，就与参拜伊势一同成为平民旅行的必到之处。

　即便到了近代，海岛独特的风景与民情依然备受喜爱。
随着交通设施的便利，无论远近，前来游玩的人数更是
有增无减。
　其中包括众多著名人士。

　如哈普斯堡王朝的费迪南王子，学习院院长时代
的乃木希典等。大约十年前，作为文豪太宰治的殉
情地点，更是在大和境内广为人知。
（虽然确切说来事件发生在海岛对岸）

　近年来，更是不光作为参拜地与风景名胜，还迎
来了怀有其他目的的人们。
　例如垂钓，抑或观赏珍惜植物，还有——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆片瀬海水浴場
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(1000,true);
	SoundPlay("@mbgm29",0,1000,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0040380a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　晴空万里。
　视野中充斥着海天一色的碧蓝，着实令人心情愉悦。

　热风伴着潮水的气味灼烧着皮肤。
　全身各处不断涌出的汗珠，在这种时候却带来难以言
喻的清凉感受。

　好热。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//次ファイル　"ma04_005.nss"

}


