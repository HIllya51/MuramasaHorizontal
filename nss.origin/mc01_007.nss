//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_007.nss_MAIN
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
	#bg001_空b_01=true;
	#bg056_建長寺三門前_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_008.nss";

}

scene mc01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc01_006.nss"

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_01.jpg");
	SoundPlay("@mbgm25",0,1000,true);
	Delete("上背景");

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070010a03">
『ＹＥＡＨ!!』

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070020a00">
「……」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070030a03">
『啊，你刚刚打算要挂电话吧!?』


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070040a00">
「没有。
　我只是打算一边抱头高喊，一边冲出去而已。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070050a03">
『是吗？
　那就好。』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　香奈枝小姐若无其事的声音，让我感觉她已摆脱
了先前那件事的阴影。
　即便如此，我依然无法释然。

　连锁的记忆被唤醒，烦闷的种子又开始发芽。
　若想要将其狠狠地压抑住，就有一种仿佛双肩担
了两块重石般的疲惫感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070060a00">
「……前段时间让您看到我失态的一面。
　非常抱歉。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070070a03">
『不会不会，当时是我说话不知轻重。
　那之后，没什么事吧？』


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070080a00">
「托您的福。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我小心地回答道，尽量不让语气显得讽刺。
　从那天起，大鸟主从二人就没有回到署长为她们准备
的房间，也没有与我见过面。不能否认这让我在心理上
感到轻松了一些。

　仅仅像这样通过电话交谈都很痛苦。
　说实话，之后的几天内，我也想避免与她的碰面。

　但大尉若有要事的话，兴许也必须见面的吧……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070090a00">
「然后呢，有什么事吗？
　特地打电话来，一定是有什么要事吧。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070100a03">
『嗯……』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　大鸟大尉言辞稍有含糊。
　她犹豫不决的声音，经由信号化之后，依然残留着传
达了过来。

　虽然电话是个很便利的东西，但它还未向一般民众普
及。
　安装成本高，电话费也很高。

　虽然这些因素对在经济上没有丝毫困难的大鸟大尉来
说都不算很大的问题，但这是她第一次通过电话跟我联
系。
　一般有事的话，她大都是跑来亲口告诉我。

　这次没这样做，一定有她的理由。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070110a03">
『景明大人……』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070120a00">
「嗯。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070130a03">
『请你认真听好我接下来要说的话。』


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070140a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我顺从她的话将话筒靠近耳边，洗耳恭听。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070150a03">
『问题的关键是“搭载了自动感应型中央驱动
装置，相当于第三代骑体的装甲<RUBY text="４ＷＤ">四翼驱动骑</RUBY>”。』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070160a00">
「……关键？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　驱动？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070170a03">
『答案是四个字的。
　第一个字要和最后一条解答框里的……“ｄｏ”
“ｔｓｕ”“ｇｕ”“ｂｕ”四个音组合成
一个单词。』


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070180a03">
『啊，题目是“小型名骑·日轮装甲和有限制骑
的竞技用剑胄”。』

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070190a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆青空
//◆ＳＥ：あほー。カラス。
//◆戻り
	OnBG(1100,"bg001_空b_01.jpg");
	FadeBG(1000,true);

	CreateSE("SE01","se擬音_コミカル_カラス鳴き声");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	WaitKey(1000);

	SoundPlay("@mbgm29",0,1000,true);
	FadeDelete("@OnBG*", 1000, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070200a00">
「大尉。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070210a03">
『是。』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070220a00">
「我怎么有一种被询问纵横字谜该怎么填的
感觉。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070230a03">
『你说什么？』


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070240a00">
「抱歉。我真的有些累了。
　能否请解释一下方才那个问题的含义呢？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070250a03">
『啊，景明大人真是的。竟然捉弄我。』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070260a00">
「我丝毫没有捉弄你的意思。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070270a03">
『我当然是在问你纵横字谜的答案了啊。』


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070280a00">
「……」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070290a03">
『啊，这回你是不是真的想挂电话了!?』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070300a00">
「是。」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070310a03">
『好过分！
　你知不知道，我在日刊大和体育上偶尔发现的
谜题上，究竟花费了多少时间啊!?』


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070320a00">
「至多一小时。」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070330a03">
『纱代！』


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0070340a04">
『回答错误。
　小姐从昨天六点起一直不眠不休地挑战这
个谜题。』


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0070350a04">
『吃饭的时候也是。
　洗澡的时候也是。
　连去厕所的时候都会拿着它钻研。
　说实话，我认为她实在该适可而止了。』


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070360a03">
『你听到没有，景明大人！』


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070370a00">
「所谓的进驻军大尉，究竟是做什么的呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我深深感到怀疑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);
	SoundPlay("@mbgm16",2000,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070380a03">
『先不说那些。
　景明大人，你最好现在就来建朝寺一趟哦。』

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070390a00">
「……建朝寺？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070400a03">
『嗯。』


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070410a00">
「但那个地方跟我什么关系都没有……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 4000, Center, Middle, "cg/bg/bg056_建長寺三門前_01.jpg");
	Fade("絵演背景", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　巨富山的建朝寺，位居镰仓五山名刹群的首位。由
镰仓幕府第五代当权者北条时赖下令建成，是一座历
史悠久的禅寺。
　宗派属临济宗。

　因为是代表镰仓的寺院之一，所以我曾去参拜过也
是理所当然，但我与那座禅寺间的关联也仅限于此。
　我想不出究竟有什么理由让我现在马上就去那里。

　不管建朝寺有什么，那都应是与自己不相关的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演背景", 400, false);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070420a03">
『真是的，你振作一点啊。
　你难道不知道最近骚动的局势吗？』


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070430a00">
「最近有看报纸，所以大致知道一些。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　然而，关于有没有充分理解它们的含义这一点，我并
没有什么自信。知识被塞入运动迟缓的大脑中后，便积
压起来从未使用过。
　即使马上发酵了也不足为奇。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070440a03">
『那你应该知道，集大和国民的尊敬与信赖于
一身的大将领殿下去世了吧？』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070450a00">
「是啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　面对语调有些奇特的大尉的问话，我点了点头。
　这一事实被报道，是在八幡神社奉刀参拜一两天之后
的事。

　……但，即便如此，也无法断言足利护氏的猝死与亲
王毫无关系。<k>
　
　事到如今，我才想到。

　也许亲王找了另外的刺客代替我完成了那件事。即便
大将领正在进行奉刀参拜的时候被刺杀，这样的事实也
无法在事前未有任何准备的情况下就公之于众，隔一段
时间之后再发出『猝死』的消息也并不矛盾。

　虽然我没有亲眼确认它的发生，但听闻奉刀参拜之后，
八幡神社便被严密地封锁了。
　……这足以充当加深怀疑的材料。

　但这也仅是一种可能而已。只是，无论如何也难以想
像，亲王身旁还有其他合适的暗杀者。
　……想到这里的时候，我突然发觉了自己的沉默。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070460a00">
「抱歉。我当然知道。
　还听闻，幕府似乎相当动摇。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070470a03">
『不仅仅是幕府啊，景明大人。
　ＧＨＱ也是。』


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070480a03">
『你不知道那边发生的事件吗？』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　事件？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070490a00">
「……在横须贺军港的驻军基地，由于失误
而导致了事故的发生，一名高级军官引咎辞
职——我倒是听说有这样一件事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　但是，应该与此事没什么关系吧。
　除此之外的话……似乎并没有什么特别的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070500a03">
『嗯嗯，那个。就是那件事。』


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070510a00">
「……什么？
　大将领的死会不会和横须贺的事故有什么关
系呢？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070520a03">
『若<RUBY text="·····">的确是事故</RUBY>的话，当然是没什么关系的吧？』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070530a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　不是事故——？

　若是这样的话。
　
　……那会是什么？我依然抓不住香奈枝小姐话语的重点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070540a00">
「大尉殿下。我不明白你想说什么。
　我不明白，究竟我为什么要去往建朝寺呢？」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070550a03">
『哎呀，急于要知道结论了？
　互相倾慕之人啊，不想再享受一下这样的对
话吗？』


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070560a00">
「如果真的有爱，那也无妨。」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070570a03">
『您又这么冷淡。
　景明大人总是这样，一点都不了解我的心意。』


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070580a00">
「我自认为是察觉到了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　虽然不知为何，但我确实察觉到了她对我怀抱着的恶
意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070590a03">
『算了。
　那么现在我就将要事告知于你。』


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070600a00">
「好。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070610a03">
『舞殿宫殿下现在正在建朝寺。
　大概署长也与他一同。』


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070620a00">
「宫殿下……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　为什么——<k>刚想反问的时候，我便明白了。
　没想到我的脑袋已经迟钝到如此地步。我自己都对自
己感到无望了。

　若八幡神社被封锁了，那亲王肯定早已移驾至其他地
方。
　那个地方就是建朝寺吧。

　若是位居镰仓五山第一位的建朝寺的话，也不会有任
何与高贵的皇子身份不符的地方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070630a00">
「我明白了。多谢相告。
　近日，我便会前去拜访。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070640a03">
『……你到底怎么了？』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　她说完便呵呵呵地笑了起来。
　看来她是发现电话另一头的人是个彻头彻尾的傻子，
正开心地不得了。

　在知晓一切之后——
　知道那天我为什么会那么狼狈之后。
　
　她的笑声，在我听来便是如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070650a03">
『让你马上就过来。
　明天就来不及了哦，景明大人。』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070660a00">
「……这是为何？」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070670a03">
『接下来，建朝寺将会遭遇袭击。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0321]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070680a00">
「——」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070690a00">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　遭遇袭击？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SoundPlay("@mbgm34",0,1000,true);
	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070700a03">
『目标当然是宫殿下。
　无路可逃。不知道那位大人会不会丧命呢。』


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070710a03">
『如果没有人保护的话……
　对吧？　景明大人。』


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070720a00">
「为什么!?
　究竟是什么人？　为什么要谋害宫殿下——」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070730a03">
『谁知道呢？』


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070740a00">
「大尉殿下！」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070750a03">
『急于要知道结论的是景明大人吧？
　我可是想恳切地对您娓娓道来呢。』


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070760a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070770a03">
『真拿您没办法。
　我只告诉您一点。』


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070780a03">
『害人终害己。』


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070790a00">
「——什么？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070800a03">
『策略也是同样的道理。
　运用方法错误的话，就会返回到自己身上。』


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070810a00">
「……即是说——」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070820a03">
『好，到此为止。
　现在马上采取行动吧，景明大人。』


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070830a00">
「等一下！」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0070840a03">
『要快哦。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぷつっ。つーつー。
	OnSE("se日常_機械_電話03",1000);
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　电话被挂断了。
　我狠狠瞪着不停传出无意义的信号音的话筒，将它放
回座机。

　……究竟是怎么回事。
　亲王会遇袭？　因为用错了策略？

　难道将大将领送入黄泉的果真是亲王，六波发觉了此
事，如今要报仇吗？
　或者，事情并没有这么简单——

　不。
　现在不是肆意猜测隐情的时候。

　如果大尉所言全部属实，那她最后的忠告也没错。
　现在应该马上行动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070850a00">
「——村正!!」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0070860a00">
「听得到吗!?
　现在马上回来!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"mc01_008.nss"