//<continuation number="890">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_020.nss_MAIN
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

	$GameName = "mc02_021.nss";

}

scene mc02_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_019.nss"

//◆夜
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	StL(1100,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,false);
	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　夜晚。
　我再度被大鸟大尉带往外头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);
	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200010a03">
「……这样啊。
　他对景明大人说了那些话……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200020a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　总是与大尉若即若离的永仓侍从，
与我们保持了一些距离，她一边警戒周围情况，
一边观察我们的对话。
　不管怎样，她肯定知道那位中佐的来访。

　在被询问之前，由我先开口，
我将对话内容全都说了出来。
　大尉也向我提供了情报。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200030a00">
「……资料管理课课长。真正的身份是谍报总监。
　而且，您的上司……卡农中佐他。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200040a03">
「嗯。
　说他透过ＧＨＱ对大和的统治掌握实权，
也不为过。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200050a00">
「也就是说，他所说的内容不是
一名中佐的见解……而是ＧＨＱ整体的
思想？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200060a03">
「姑且不论虚实。
　我们应该认为那位大人的发言
相当具有分量。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200070a00">
「……虚实。
　大尉阁下，卡农中佐对我提出的要求
一事，是否就是字面所陈述的意思呢？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200080a03">
「这个……关于这件事。
　这是令人惊讶到极点的有效作战方式。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200090a03">
「因为<RUBY text="···">于我也</RUBY>准备了类似的计划。
　就算还有其他的方案，需要景明大人
的协助，此事并无虚假吧。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200100a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
 有效运用“大鸟”之名吗。
　排除了大和的既存权力层之后，他计划
让香奈枝小姐接管——卡农中佐脑内是
如此盘算的吧。

　计划成功后，她会成为傀儡君主。
　会扮演妹妹那样的配角，在更大的舞台上表演。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200110a00">
「大尉阁下。
　您已经认同了吗？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200120a03">
「您是说有关我自己的计划吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200130a00">
「是的。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200140a03">
「我一概不予否定。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200150a00">
「……
　我不认为这提案符合大尉
您的性情。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200160a03">
「我前几天就说过了吧。
　我回到大和以后，首先就是要尽到保护人民的
责任——」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200170a03">
「国际联盟，就是大英联邦，
如果我们接受它的统治，对大和来说
是最好的话……我就会服从他们，去
实行他们对我的要求。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200180a03">
「不可否认。
　这不需要顾虑到我个人
的喜恶。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200190a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我有些敬佩这位高贵之人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200200a03">
「景明大人您认为呢？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200210a00">
「……我试着思考过。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200220a00">
「卡农中佐所展示的未来是最好的吗
……这一点很重要。
　我在想这真的有可能是最好的吗。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200230a03">
「您的结论呢？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200240a00">
「会带来短暂的和平。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200250a00">
「若是进驻军驱逐六波罗，掌握了大和的统治权，
我们可以期待他们大幅度改善政策……
只要大英联邦没有放弃只针对大和的绅士态度。」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200260a00">
「大和将大英尊为宗主国——就像斯堪地那维亚、
巴尔多三国、蒙古</RUBY>一样，会成为封锁俄罗斯帝国
的一面墙。
　对俄封锁网终于完成……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200270a00">
「不过，到时俄罗斯帝国就会默默地
举起双手投降吗？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200280a03">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200290a00">
「南下政策是他们的生命线。
　我不认为他们会对生命线的截断视若无睹。」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200300a00">
「当他们用实力突破封锁网时……
　首要的目标就是。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200310a03">
「——刚被占领的大和？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200320a00">
「在统治体制尚未完备之前会有趁虚而入
的空隙，应该有人这样认为吧。
　如此，这样一来——大和之春无法持久。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200330a00">
「大和将会成为女帝军与俄军激战的场所。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200340a03">
「当然，大英联邦不希望这种事态发生。
他们会用外交来决一胜负吧。他们会答应
俄罗斯帝国的部分要求，以要求他们加入
联盟为代价，大概如此吧。……但。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200350a03">
「他们的计划不一定会成功。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200360a00">
「没错。
　过往的历史就是证明……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200370a03">
「所以才拒绝了卡农中佐的委托——吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200380a00">
「……是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　原因不只这些。
　……加入ＧＨＱ就代表会成为<RUBY text="···">那骑士</RUBY>
的战友。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バロウズ一瞬

	EfRecoIn1(18000,400);

	CreateTextureSP("絵回想100", 2000, Center, InBottom, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	CreateTextureSP("絵回想200", 2100, Center, InBottom, "cg/st/3dバロウズ_立ち_通常.png");
	EfRecoIn2(200);


	Wait(150);


	EfRecoOut1(200);

	Delete("絵回想*");

	EfRecoOut2(400,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　这只是个人的情感问题。虽然不算小事。
但我不打算告诉香奈枝小姐。
　
　该说的事情还有一件。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200390a00">
「……不。
　这个也不好说。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200400a03">
「？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200410a00">
「其实我还有一个担忧。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200420a03">
「是什么呢？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200430a00">
「不过这不是逻辑上的观察，
只是我的猜想而已。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200440a03">
「没关系，说说看？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200450a00">
「……卡农中佐……
　他真的是对大英联邦宣誓忠诚
的军人吗？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200460a03">
「————」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200470a00">
「我真是的，这根本就是
卑鄙小人才会猜疑的问题。
　真丢人。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200480a03">
「……但是，会做出这臆测，也是
有根据的吧……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200490a00">
「称不上根据。
　只是……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200500a00">
「是跟他对话之后发现的。虽然我也不算是
什么好人，但我认为中佐的城府比我更深。
　但，他曾经……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("@mbgm16*", 400, 500, null);

	EfRecoIn1(18000,600);
	CreateTextureSP("絵背景20", 10, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw景明_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200510a00">
「明智。
　抛弃独立国家的骄傲，甘愿接受女王陛下
的施舍，这种选择也算明智吗？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200520b03">
「————」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200530b03">
「你所说的……嗯，我能理解。」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200540b03">
「但，民众们的想法是与你
不同的。
　比起百般煎熬的自尊，
他们更冀望身为从属的安乐。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0200550b03">
「我认为你也必须要谅解……做出如此选择
的人们……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	Delete("絵背景20");

	StL(1100,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(0,true);

	SetVolume("@mbgm16*", 300, 1000, null);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200560a00">
「只在那瞬间，我窥见了卡农中佐<RUBY text="····">毫无矫饰</RUBY>
的情感……
　我是这么认为的。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200570a03">
「……这是对女王支配的反抗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200580a00">
「不清楚。
　这真的只是我的臆测。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200590a03">
「————————」


//◆呟くように
{	DeleteStL(300,false);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200600a03">
「……我们果然还是得先
思考对策吗……？
　不……待伯爵行动，就已经太迟了…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200610a00">
「大尉阁下？」


{	StL(1100,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStL(300,false);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200620a03">
「抱歉。没什么。
　那么……如果景明大人的推测是正确的，
事态会如何？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200630a00">
「万一他真的想背叛女王，
就会积极地推动占领大和的计划。
　他会利用这个国家与大英联邦拨刀相向——」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200640a00">
「大和最终还是会成为战场吧。
　在这种情况之下，情势会比大英联邦与
俄罗斯帝国开战更复杂，或许也会让民众
面临更严峻的境遇。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200650a00">
「……严峻到甚至会使民众
怀念六波罗统治的时代。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200660a03">
「留恋不堪的过往？
　我可不想这样。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200670a00">
「我完全同意。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200680a03">
「换言之，景明大人的看法是，若我服从上司
继续走下去，不论结果如何，未必会有光明的
未来。
　可是——」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200690a03">
「那么景明大人有没有个人的展望呢？
　更能确保大和和平的展望。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　这番追问太辛辣了。

　确保大和和平的道路。
　没错——要是这么简单就能找到答案的话，
大家就不必辛苦了。不管是舞殿宫还是养父。

　连比一般人更具宽广视野及深思熟虑
的他们，都因与世故牵扯过深而败北，
最终由于迷失方向而殒落。
　要占卜国家的未来，就是如此之难。

　不必尝试，凑斗景明没有这个能耐。
　
　但是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200700a00">
「我没有展望。
　但是，<RUBY text="··">执着</RUBY>的话，倒是有一个。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200710a03">
「执着？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200720a00">
「以现在的世界情势来看，大和的和平很难保住。
我们一定会和军事上的紧张情势扯上关系。
　但，就算有一天，我们无法避免战争——」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200730a00">
「我认为这须是本国人民执掌自己国家
所带来的结果。
　大鸟大尉。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200740a03">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200750a00">
「被他国耍得团团转而导致这种后果，
令人不快至极。
　最重要的是，配合他国的情况而开战，
那么战争结束也会为他国行方便。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200760a00">
「付出骇人的损失后，大和却一无所获
……最糟的情况就是，还会让这个国家
背负这种历史。
　这无论如何都让人难以接受。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200770a00">
「大和的盛衰至少要让大和自己决定。
　我所执着的就是这件事。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200780a03">
「…………
　……那么……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200790a03">
「为了景明大人的那份<RUBY text="··">执着</RUBY>——
　现在还不能摧毁六波罗军。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200800a03">
「您是这个意思吧？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200810a00">
「……是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　的确。

　先不论善恶，现在的大和，
最大最有力的现有兵力只有幕府军而已。
　只有他们能牵制诸国的介入，
守护大和国民的独立自主权。

　要是失去他们，大和就会成为外国人的角斗场。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200820a00">
「与卡农中佐论及战略时，他也说了。
六波罗有可能在短期内被击破。
　但我无法想象。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200830a00">
「他说，比较进驻军与幕府军——两方的阵容，
六波罗绝对是处于劣势……
　大尉阁下，如此作战构想，真的实际存在吗？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200840a03">
「是的。」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200850a00">
「……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200860a03">
「但我也不清楚详情。
　我们有严峻的情报限制，似乎只有上层及
实行部队知道而已。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200870a03">
「我千辛万苦才打听到的是，作战日期和
……为作战而准备的一项兵器。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0200880a00">
「……兵器？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0200890a03">
「锻造雷弹。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_021.nss"