//<continuation number="430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_020.nss_MAIN
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
	#bg060_円応寺境内_01=true;
	#ev140_円応寺の閻魔像_b=true;
	#bg018_公方執務室_01=true;
	#bg004_鄙びた村a_01=true;
	#ev158_一導の最期=true;
	#ev159_一導の生首_a=true;
	#ev159_一導の生首_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_021.nss";

}

scene mb04_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_019.nss"

//◆円往寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg060_円応寺境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　圆往寺缘起说。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演", 1000, Center, Middle, "cg/ev/ev140_円応寺の閻魔像_b.jpg");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　阎王爷对亡者的罪恶施予相应的惩罚，但每天他都
要被亡者强硬地灌下铜水，一日三次。

　滚烫的铜水灼烧阎王的喉咙，烫焦他的五脏六腑，其
苦痛胜过了任一亡者所承受的惩罚。
　但阎王必须心甘情愿地承受这一惩罚。

　因为，处罚亡者折磨亡者，这本就是阎王爷的罪名。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·綾弥一導
//あきゅん「演出：素材削除」
	FadeDelete("絵演", 1000, true);
	SoundPlay("@mbgm17",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　绫弥一导曾是相模国税局的官员。

　国税局是利用税金来维持国家正常运行的机关。
　当然，在国税局工作的人都必须是公正的人。

　他格外坚信这一点，因此他比任何人都堂堂正正地活着。
　
　不。顺序理应与之相反。

　他原本就是一个毕生都致力于追求公正的人。
　所有人都富于关怀之心，不为私利所蒙蔽，互相帮助
互相扶持地生活——这是他理想中的世界。

　因此，他憎恨这并不公正的现实，
　憎恨妨碍公正世界到来的邪恶。

　以凌虐来取乐。
　以欺骗来牟利。
　以掠夺来富足。
　——他无比憎恨这些邪恶的事物。

　热爱正义，
　憎恨邪恶。
　
　为了创造一个公平公正的世界。

　所有人都将这个梦遗失于自己的童年。
  与“现实”的战斗不断落败，使得这一理想渐渐地褪
色枯朽，但他却始终怀抱着少有的激情，在成年之后仍
鲜明地保留着这一理想。

　这个比任何人都期盼公正的人，毫无疑问地是将其作
为自己的天职，而在国税局里任职的。
　他坚信那里正需要自己这样的人。

　然而，实际又是怎样呢？
　至少，似乎同僚们对他的看法迥异。

　在国税局工作的时候，他曾将公正作为一个绝对的前
提，在办公时永远将公正置于首位，从未混淆过公正的
含义。
　公正与数学上的均等全然不同。

　他曾主张。
　目前的税制对低收入者而言过于沉重，对高收入者而
言则又过轻松。因此，应采取对前者降低税率，对后者
提高税率的政策。

　他还曾主张。
　基础设施的状况存在问题。仅优先提高了公共机关以
及大型企业的便利性，而且优先得有些过度。也应从人
口分布的角度来考虑修改设施建设规划。

　他还曾——
　
　
　他在短短的几天内，就在国税局确定了自己的立场。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 115, Center, Middle, "cg/bg/bg018_公方執務室_01.jpg");

	Fade("絵背景100", 2000, 1000, null, false);
//	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　说白了，就是被人孤立。
　理由格外简单，因为那个他原本以为是聚集所有公正
之人的国税局，其实只是个有违公正之人的汇集地。

　他被视作是<RUBY text="····">不合时宜</RUBY>的异类而被疏远。
　虽然并非一个同伴都没有，但实为甚少。

　他真正开始展现自己的不平凡，是在那之后。
　他并没有屈服。无视周围的压力，其坚定的信念并未
动摇分毫。

　反而越发强韧。
　
　——他的幻想被打破。
　但正因如此，他要比之前更为公正。

　若除却自己之外的一百人都错了的话，
　那他自己就必须追求那一百人的份的公正。

　作为一个由苛税养育的公务员，他把这看做为自己
的义务。
　当然，即使国税局是民营性的，他也丝毫不会改变
自己的态度。

　他始终追求着正道。

　反对掠夺弱者的法令。
　对强者牟利、富者谋财的行为提出异议。

　他不惜一切努力。
　然而，得到回报却极少。

　他被同僚讽为愚者，被企图操纵政治的财阀们视作绊
脚石。
　不仅如此，他甚至遭受到了那些他想要救助的市民们
的嘲笑与谩骂。

　伪善者。无能之人。梦想家。
　若要为他的每个绰号都逐一注解、整理的话，大概可
以编册成书了。

　但即便如此，他仍未屈服。
　作为一个官员。不，作为一个人。他从未停下自己追
求公正的脚步。

　不受任何人欢迎的，竭尽于服务他人的每一日。
　
　他最终所获得的报酬，唯有那宛若在嘲讽他的信念一
般的矛盾。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景200", 110, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");
	Rotate("絵背景200", 0, @0, @180, @0, null,true);

	FadeDelete("絵背景100", 2000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　他在国税局为数不多的朋友中，有一人犯下了渎职的
罪名——挪用公款。他察觉到了这一事实。

　如果这一事件仅仅如字面所说，那他也许能够忍受着
伤痛，继续坚持自己的信念而活着吧。
　然而，这一事件还有几条应当提及的外情。

　前年，有个村庄曾遭遇海啸灾害。
　友人为村庄制定了重建计划，申请了预算。
　被批准的预算金额连申请金额的十分之一都不足。
　而村庄当时正处于迫在眉睫的窘况之中。

　如此这般，挪用的公款，友人没有贪占一厘一毫。
　
　……等等等等。

　友人的困境、苦恼，以及最终做出决定时的痛苦，他
都能深切体会到。
　如果自己身处在友人的立场之上，大概最终也会做出
与他相同的选择。

　但即便如此，遵循他的标准，友人的行径便是恶。
　从相模国全国征收来的税金，被一个官员肆意施与了
某个特定的区域，这是无法原谅的行为。

　矛盾。

　友人是正确的。
　友人是错误的。

　一直坚定不移地行走于正义之道的他，第一次停下了
脚步。
　他不知该选择哪条路前进。

　是应将友人的行为看做善行，无视其挪用公款？
　还是应将友人的行为看做恶行，将其告发弹劾？

　对他来说这两个选择都是正确的，但又都是错误的。
　无论选择哪一个，都无法完全符合他的正义。

　尽管如此，他仍必须做出决断。
　无论最终的答案是什么，他都已经察觉到了——现实
世界中不存在完全的正义。

　恐怕只有这样，他才能作为一个<RUBY text="·">人</RUBY>。
　才能将自己嵌入社会的框架之中，化为其中的一部分。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色100", 100, "BLACK");


	FadeDelete("絵背景200", 2000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　但他最终却未能成为人。
　面临无法直行，必须选择向左或者向右走
的分岔路时，他却依然选择了正面突击。

　最终偏离了正确的轨迹，舍弃了人性。
　沦为奔跑于荒野的野兽。

　即是说。

　他遵循自己的正义感，告发了友人，
　而后继承了友人的遗志，以私费救济村庄，
　最终，他将背叛了友人的自己断为邪恶，斩杀了。

　他将正义贯彻到底。
　
　但这是不折不扣的疯狂行为。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：綾弥一導の最期
//◆磔刑にされた友人、その前に座る一導、その後ろの
//◆一条（子供）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	FadeDelete("上背景", 2000, true);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　绫弥一条回想着。
　追忆最后那天的事。

　遥远的记忆。被封印了的光景。
　被牢牢锁住的沉重之箱，如今终于打开。

　——那一天。
　父亲已经失去了一切。

　虽然父亲把绫弥家的财产都用去救济村子，但他在捐
助时丝毫未提及自己的姓名，因此村民们一直都以为救
助他们的是父亲的那位友人。
　对父亲则是憎恨到了极致。

　而父亲在国税局内外的那几个仅有的同伴，也都杳无
音信。原本就疏远父亲的那些人，当然就更不会跳出来
替他们伸出援手。
　没多久父亲就被赶出了政府机关。

　另一方面，绫弥家的亲属们都责备父亲花掉了本应分
配给他们的财产。
　最后趁父亲沉默的当口，将家中剩余财产全部掠夺，
吐完唾沫之后就走了。

　父亲最好的友人，已经逝世了。
　那个人腐烂的眼窝中聚满了怨念，瞪视着父亲。

　片濑，龙口的处刑场。
　在大战胜利举国欢庆之后没多久就发生了挪用公款事
件，这激怒了军部，于是最终导致友人受到了落伍的非
人刑法。

　父亲的友人在那里被施以磔刑，暴尸刑场。
　遗骸的手脚都已破碎得面目全非。

　但他脸上的表情却那么的深刻而清晰。
　他在喊，背叛者。

　父亲听得到他的声音。
　他屈膝而跪，凝视着友人，接受着他的怨念。

　他手持短刀。

　而我则被迫手握大刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200010b14">
「唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_刀刺さる02",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　毫无预兆地，父亲将短刀拔出鞘，将刀尖刺入侧腰。
　他痛苦地呻吟着，在我面前弯下了他宽阔的脊背。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200020b14">
「唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_正宗_投擲腸管",200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　而后父亲一边呻吟着，一边以刀拉大了伤口。
　我听到了咯吱咯吱的声音。

　犹如用石头碾碎蜈蚣的声音一般。

　父亲狠狠地切到腹缘，将刀丢在了地上。
　然后，双手颤抖着，缓慢地——毫无疑问，他尽力想
要快一些——从伤口中扯出了某样东西。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200030b14">
「一条。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200040b14">
「看着。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　父亲举起让我看的，是一个粪便状的物体。
　滑滑软软地垂着，格外恶心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200050b14">
「闻闻它的味道。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　它的味道与粪便无异。
　比盛夏放置在阳光下暴晒的死鱼还臭。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200060b14">
「很脏吧。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200070b14">
「很臭吧。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200080b14">
「这就是恶。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200090b14">
「这就是罪。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200100b14">
「这就是邪恶。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200110b14">
「我是邪恶的。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200120b14">
「我终于明白了。
　<RUBY text="···········">讨伐恶这件事本身也是恶</RUBY>。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200130b14">
「它蒙蔽了正义，
　将与己对立的意见、
思想、行为——将人性……」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200140b14">
「将这些都断为恶，封杀掉……
　这本身就是罪。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200150b14">
「贯彻正义的我是邪恶的。
　我终于明白了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　父亲，
{
//◆ウェイト短
	Wait(500);
}
　
　
　开心地笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200160b14">
「吾之人生无一丝动摇。
　吾之正义无一丝阴霾。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200170b14">
「即便我自身是邪恶的，
　如果我无法原谅自己的话，
我的正义仍旧是完整的。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200180b14">
「一条。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　父亲的声音仿佛鞭策着我的后背。
　
　那个时候，我还无法理解个中含义。
　但继承了父亲血肉的这具肉身，却清楚。

　我知道接下来该做什么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200190b14">
「这是我给你最后的教诲。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200200b14">
「我不知道你今后会怎样活下去。
　无论怎样，只要你按自己的意志选择就行。
　但，我要把我能告诉你的全部教授与你。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200210b14">
「要憎恨。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200220b14">
「憎恨邪恶。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200230b14">
「决不可心软。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200240b14">
「要否定一切的恶。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200250b14">
「没有任何例外地——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我的手臂不听使唤地动了起来。
　现在操纵着我身体的并不是我自己，而是我的父亲。

　是父亲的教诲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200260b14">
「憎恨恶。」


{	NwC("cg/fw/nw綾弥一導.png");}
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200270b14">
「憎恨我。」


{	NwC("cg/fw/nw綾弥一導.png");}
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200280b14">
「憎恨我的恶。」


{	NwC("cg/fw/nw綾弥一導.png");}
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200290b14">
「斩杀我！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　拔离剑鞘的白刃指向天顶。
　原本对我而言过于沉重的刀，现在拿在手中却未有一丝
颤抖。

　执行介错。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200300b14">
「为人必须要公正。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200310b14">
「违背为人之原则的，就是恶。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200320b14">
「无法允许恶的存在的，即为正义。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200330b14">
「一条。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200340b14">
「你要践行正义。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200350b14">
「将我，」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200360b14">
「斩杀。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆一閃
//◆首が落ちる
	SetVolume("@mbgm*", 300, 0, null);

	Wait(500);

	CreateColorSP("絵色黒", 5000, "#000000");

	SL_leftdown2(5100,@0, @0,1000);

	OnSE("se戦闘_攻撃_刀刺さる03",1000);
	SL_leftdownfade2(10);

	Wait(1500);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　
　　　　　　　我砍下了父亲的头。
　　　　　　　践行了正义。

　
　　　　　　　　　　斩杀了父亲。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ちとウェイト
//◆生首。イメージ？
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev159_一導の生首_a.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　父亲被砍的头颅，
　并没有倒下。

　它伫立在地上，注视着我。

　嘴唇开合。
　我听到的声音，毫无疑问是错觉。

　但依然传达到了。
　父亲临死前，想要说的是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶＢ", 3990, Center, Middle, "cg/ev/ev159_一導の生首_b.jpg");
	FadeDelete("絵ＥＶ", 300, false);

	SetNwC("cg/fw/nw綾弥一導.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200370b14">
「践行正义本身便是罪恶。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200380b14">
「这是无法逃避的真理。
　没有能够清白地践行正义的方法。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200390b14">
「唯有将正义本身抛开，才能够做到
剿灭邪恶。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200400b14">
「<RUBY text="····">善恶相抵</RUBY>。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200410b14">
「善与恶互相抵消，共同消亡。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200420b14">
「即便如此。」


//【一導】
<voice name="一導" class="その他男声" src="voice/mb04/0200430b14">
「即便如此——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我完全不明白。
　为什么事情会变成这样。

　为什么父亲会变成这样。
　为什么我会做这样的事。
　
　因为不明白，所以全部都封印在了内心深处。

　想要忘记却难以忘记的——
　父亲的遗愿。内心只怀抱着追求正义这一主旨，度过
了那之后的生活。

　……接着在十年后。
　我再次回到了这个地方。

　这次一定能够理解父亲想要传达给我的教诲。

　所有的答案都在这里。
　从一开始便在这里。

　全部。
　都在<RUBY text="此处">原点</RUBY>。

　——“即便如此”
　
　最后那一刻，父亲这样说道。

　没错。
　他说，即便如此。

　
　　　　　　　　　　　<RUBY text="····">即便如此</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 0);

}

..//ジャンプ指定
//次ファイル　"mb04_021.nss"