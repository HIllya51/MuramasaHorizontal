//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_053.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;
	#bg025_坑道山脈と森a_01=true;
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_054vs.nss";

}

scene md04_053.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_052.nss"

//◆堀越御所
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateEffect("Memory_cover", 1500, 0, 0, 1024, 576, "Sepia");
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　时间飞逝。
　六波罗支配大和，堀越家成为堀越公方。
　
　茶茶公主的父亲得到了期盼已久的孩子。

  那一夜，庆宴举行到中途，被众人远离独自就坐的茶茶
公主突然遭到袭击并被带出宅邸。
  与曾经假扮为强盗的刺客——有所不同，这次的
是强悍的武者，茶茶公主的力量也无法匹敌。

  ……原本，她就不想抵抗。
  因为茶茶公主早已知悉自己的命运，也已经死心了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山野。bg025？

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg025_坑道山脈と森a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	OnSE("se人体_衝撃_転倒05", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　深夜，在人迹罕至的河岸边，被推倒于沙石上，脖子
被架上刀刃。
　同那时一样啊，茶茶公主想道。

  在那时就被杀掉的话该多好。
  乖乖死掉的话，就什么苦都不用受了。

　她如此想道。
　——但是，一切都结束了。

　本应该，<k>
　
　
　结束的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md04/0530010a14">
『……哼。
　也罢，人也是会遇到各种各样的情况吧。』

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530020a14">
『在暗夜里，持有剑胄者正企图杀害毫无抵抗
的女性，这可真败兴。
  武者啊，不如停下那种无趣的游戏来与我对
决一场如何？』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆一撃。ずがーん。

	CreateSE("SE01","se戦闘_破壊_爆発01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");


//◆月夜＋銀星号


	OnBG(101, "bg001_空c_03.jpg");
	FadeBG(1000, true);

	StC(1000, @0, @0, "cg/st/3d銀星号_立ち_通常.png");
	FadeStC(300, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　从天而降的白银之人。
　仿佛是月亮的碎片获得了生命一般。

　——是公主。

  茶茶公主直觉如此。
  与仅仅被冠上此名号的自己不同，是真正的高贵之
人。

  白银武者似乎也在确认茶茶公主的身份。
  接着说出一句话。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md04/0530030a14">
『什么啊，原来是丧家犬吗？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md04/0530040a14">
『无趣的眼神。
　反正就是在想着赶紧死掉之类的吧。』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530050a14">
『就算死了也无法解脱。
　死亡就是<RUBY text="··">停止</RUBY>哦？　绝望而死的人，
会一直陷在绝望中。永不超生。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_拗ね.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md04/0530060a14">
『正如像你这样的家伙，才是我想灌输武之
法的对象……
  不过，不知为何污染波对你似乎无效。』

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530070a14">
『杀死这样的丧家犬会玷污我的武道。
　然而若是置之不理，亦非意图制霸天下者应
有的行为。』

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530080a14">
『……唔。该怎么做。
　这丧家犬，可真难以处置。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md04/0530090a14">
『无可奈何。这也是某种缘分。
　丧家犬姑娘，让姐姐我来当你讨论人生的对
象吧。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……讨论？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【光】
<voice name="光" class="光" src="voice/md04/0530100a14">
『嗯。说吧，说说看。
  说你为何会如此无可奈何，狼狈不堪，厚颜
又可悲。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　…………有这么夸张？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md04/0530110a14">
『夸张到会让人以为，你是为了在明年的全世界
挫折资格赛出线而正在进行特训。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　…………

　……因为……很痛苦。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md04/0530120a14">
『因为什么？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　……声音——

　人的声音不绝于耳。
  地底野兽的嚎叫震耳欲聋。

　总是，总是，响个不停。
　所以……很痛苦。无法平静下来。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md04/0530130a14">
『抱歉。
　我完全不明白。』

{	FwR("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530140a14">
『不过用耳塞什么的也改善不了吗？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……不行……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/md04/0530150a14">
『看医生也不行吗？  
  去看耳鼻科，或者去因为容易被对方理解为
侮辱所以必须注意别随便建议他人去看的某种
医院。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……唔……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_拗ね.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/md04/0530160a14">
『原来如此，这可棘手了。
　可是这样的话，将根源切断就行了吧？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……根源？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md04/0530170a14">
『我不是很清楚，不过这是因为有人在你的耳
边吵闹的缘故。
　按道理不就是将他们全杀掉便能获得平静了
吗？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　…………不可能的。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md04/0530180a14">
『为什么？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　……光杀一两个人是解决不了的。

　不将住在伊豆的人都杀光的话，声音是不会消失的。

　……而且也许这还不够。
　或许不将整个大和的人杀光的话就没法获得平静。

　……这也是同样不够的吧……
　不把全世界的人全杀光的话，这些声音是不会消失的
吧……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/md04/0530190a14">
『这样啊。』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530200a14">
『那么杀光就好了。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不思議.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/md04/0530210a14">
『嗯？　怎么了。
　我说了什么奇怪的话吗？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　……很奇怪。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/md04/0530220a14">
『为什么。
　不杀光全世界的人你就无法解脱对吧？』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530230a14">
『那就杀吧。
　很简单的道理。连三段论都不需要。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　…………我想那也包括你在内。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_笑い.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/md04/0530240a14">
『是吗。要决战啊。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md04/0530250a14">
『不过这可是奇遇。
　其实呢，我也跟你一样。』

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530260a14">
『必须与全世界战斗，并打倒他们。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……为什么？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【光】
<voice name="光" class="光" src="voice/md04/0530270a14">
『为了得到爱。
　我必须超越人类，到达神之座才行。』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530280a14">
『为此我要与全人类比试并胜出。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……我完全不明白。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_警戒.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/md04/0530290a14">
『其实你的执念很深吧。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　…………

　……为何，能够战斗呢。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/md04/0530300a14">
『为什么？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　……不可能，做得到的。

　与全世界战斗……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【光】
<voice name="光" class="光" src="voice/md04/0530310a14">
『……唔……』

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530320a14">
『那反过来问你。
　为什么无法与世界战斗？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　……因为……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/md04/0530330a14">
『因为？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　……那是世界啊。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【光】
<voice name="光" class="光" src="voice/md04/0530340a14">
『你这丧家之犬。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【光】
<voice name="光" class="光" src="voice/md04/0530350a14">
『为何要放弃？
　只因为对手是世界？　是全人类？』

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530360a14">
『那又如何。
　对方是全世界全人类的话，
我方就是我凑斗光！』

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530370a14">
『哪会有无法对等决胜负的理由呢。』

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530380a14">
『哪有理由未战就降，不得不放弃希望呢!!』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【光】
<voice name="光" class="光" src="voice/md04/0530390a14">
『我只告诉你一件事。
　是非常简单的事。』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【光】
<voice name="光" class="光" src="voice/md04/0530400a14">
『<RUBY text="·······">任何人都能战斗</RUBY>！』

//【光】
<voice name="光" class="光" src="voice/md04/0530410a14">
『无论敌人有多强大。
　胜负与优劣皆不清楚。唯有战斗是绝对做
得到的。』

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530420a14">
『只要你想这样做！』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　……………………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【光】
<voice name="光" class="光" src="voice/md04/0530430a14">
『不明白这个道理的话，你就是只彻头彻尾的
丧家犬。
　无药可救了。』

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530440a14">
『不过……你真的不明白吗？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　……战斗是谁都做得到的。

　无论敌人多么强大。

　都能够挑起战斗。
　……只要自己想这样做。

　<RUBY text="········">只要自己想这样做</RUBY>!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
	Delete("Memory_cover");
}

..//ジャンプ指定
//次ファイル　"md04_054vs.nss"