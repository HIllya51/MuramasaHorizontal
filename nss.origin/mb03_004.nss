//<continuation number="610">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_004.nss_MAIN
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
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_005.nss";

}

scene mb03_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_003.nss"

//◆建朝寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040010a00">
「——汇报完毕。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040020a10">
「…………」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040030a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　汇报完毕后，
　我依然没有抬起头。

　由于某些未经仔细查明确认的原委，普陀乐城遭受严
重损失，沿边小城之一被烧毁燃尽——这其实也无碍。
那里并没有士兵聚集，损失的主要是建筑物。

　与舞殿宫原先的打算——引起大规模骚动这一计划也
相符合，从这个意义上来说与我原本谋划的袭击邦氏相
比，并无逊色之处。
　甚至可以说弥补了我计划的失败。

　但前提是，事态发展到<RUBY text="··">此处</RUBY>
就结束的话。
　理想中的成功因为那里唯一一名死者而变成了空想，
不再是现实。

　游佐童心。
　由于他的死亡，导致舞殿宫的策略落空。

　亲王原本希望制衡幕府力量使其对己有利。
　因此才将<RUBY text="····">推波助澜</RUBY>这一任务交给了我和一条。

　然而，这次推过头了。
　原本为亲王利用的幕府继大将领后再失一位耆宿，如
今已是摇摇欲坠。

　完全是打击过头。

　……正确的情况必须等待一条的汇报，恐怕那时——
在我突破包围之后，一条没有按照我的期望逃脱，而是
去追赶游佐童心。
　交战之后将其击落了吧。

　沿边小城被烧毁就是这个原因造成的吧。
　不管怎样，一条亲手杀死了古河公方这一事实，既然
是从她本人口中说出，那就毋庸置疑了。

　我知道在能乐堂发生的事情引起了一条对那恶僧的杀
意。所以我才叮嘱她务必打消这个念头。
　如果说我自己毫无杀意，那是谎言。但那股杀意我并
没有想过要最终付诸行动。

　既然明白不可为，那就只是将想杀之心——将这份愤
怒埋藏于胸中。
　然而恐怕我那半吊子的心理才正是事件的元凶。

　对一条的制止不够彻底。
　我那言不由衷的话语轻薄而敷衍……没有成功阻止与
游佐童心对抗的一条。

　所以一条才会追赶古河公方，将他逼得无路可走，最
终要了他的性命。
　……是的，我没有料到这种事有可能发生，这也是我
没有全力制止的原因之一。

　利用厚实防备迫近游佐童心，与这位神武勇猛扬名天
下之人正面交战，而且竟然打败了他——
　我做梦也没有想到那位少女竟有如此实力。我完全看
错了。

　终究，这次事情是我的失误。
　我不光受面前二位所托，一条本人也要求过我，嘱咐
我要从旁辅助这位尚未成熟的少女，必要的时候加以控
制，然而我根本没有完成任务。

　我究竟是为何才跟去行动的呢。
　只能为自己感到羞愧不已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040040a10">
「……景明君。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040050a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　持续了几分钟的沉默过后，亲王沉重地开了口。
　但并不是想叱责我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040060a10">
「伤势如何？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040070a00">
「……是。
　被切断的左手想要完全恢复眼下还需要些时
间，其他并无大碍。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我依旧低着头回答道。
　撑在地上的左手从外观上看已经没有任何伤痕——但，
其实并没有痊愈。神经系统与筋肉组织仍处于再生阶段。
现在，左手握力还不及个孩子。

　明天或者后天才能握起太刀。
　就算是武者的恢复能力，想要再生完全丧失的部位也需
要相当一段时日。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040080a10">
「一条君呢？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040090a00">
「……正在恢复过程中。
　但距离能够活动仍需一段时间。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　想到一条的身体状况，心中便翻腾起复杂的情绪。
　惨烈的重伤看在眼里时的战栗——预感少女将死时的
恐慌及害怕——逐渐恢复的现状带来的安心——以及对
于现状抹消不去的疑问。

　她负伤的程度远不是我能比的。
　不仅四肢残缺，而且全身焦黑。

　从常识来讲，这是致命伤。
　即使是<RUBY text="······">常识性的武者</RUBY>，也将致死。

　尽管正宗是一流装甲之佼佼者，其装甲优势无可比拟，
但这一切都无法构成解释。
　只能认为一条自身拥有战胜死亡的力量。

　究竟，绫弥一条是何许人也。
　从心底燃起对为人“正义”的追求，对邪恶的憎恶，这
样的灵魂真的可以诞生出如此不可估量的坚强吗——

　若是如此——那位少女，<k>
　
　　　　　　　　　才是英雄。

　……我因升腾而上的敬畏之情而颤抖。
　这是让人不由得想要宣誓效忠的畏惧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040100a10">
「是吗。明明传唤了两人却只有景明君一人前
来，所以有些担心。
　没想到伤势如此严重。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040110a00">
「是。不，重伤确是事实。
　但不管伤势有多严重，只要没有致命伤，对
于武者来说等同于擦伤。只是完全康复所需要
的时间不同而已。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040120a00">
「宫殿下，请放宽心。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040130a10">
「是吗……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　没有驾驭过剑胄的人会感到不解也是正常的，但事实
就是这样。因此古时把献上武者首级这一行为——给以
敌方无法恢复的致命伤的证明——作为战场之上最高战
功。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040140a00">
「估计下周就可基本痊愈。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040150a10">
「如此甚好。
　不要勉强。如果需要医生，就马上告诉我。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040160a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　总之得感谢这份关心。
　我把头埋得更深。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040170a11">
「那么，大人……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040180a10">
「啊，嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　向亲王简短求得同意之后，署长面向我。
　……谈正事吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040190a11">
「我想你大概也能猜想到了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040200a00">
「是。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040210a11">
「小弓公方切断了与我等的联络。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　——啊。
　果然。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_沈黙.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040220a11">
「虽然我方主动尝试了各种方法……
　但想必恢复合作的可能性很小。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040230a00">
「这已经不是道歉就能解决的了……但还是非
常抱歉。
　今川中将会生气也是自然的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　直接意义上来说，我和一条的<RUBY text="··">暴行</RUBY>所产生的损失，
比起亲王，同盟者的今川雷蝶蒙受的更严重。
　因为我们的行为摧毁了他所依靠的立足之处。

　他一定是觉得自己被背叛了，当然会愤怒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040240a11">
「不。生气……可能不是生气吧。
　恐怕他是害怕了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040250a00">
「害怕？」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040260a11">
「我等亲王阵营协助小弓公方赋予其朝廷权威，
推动他对政权的掌控。
　他以吸收包含我等意志的政治作为回报……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040270a11">
「虽说算是结成了平等的同盟关系，但小弓公
方一定是蔑视我等的。
　认为我们不过是一介武者。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040280a11">
「利用这份蔑视，为了更鲜明地向其展示村正和
正宗的存在，隐瞒了你们的真面目——」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040290a10">
「到了起事关头，我方突然陆续派出武者，惊
他一惊。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040300a00">
「是。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040310a11">
「——如今这点伎俩竟适得其反。
　我等亲王阵营破坏普陀乐城，杀死了古河公方，
这让今川中将认为我们<RUBY text="·········">隐藏了战略与战斗力</RUBY>。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040320a00">
「——!!」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040330a11">
「也就是说……
　我等起初就无意与小弓公方联手。只是企图
利用他而已。因为我们的目的是<RUBY text="·····">幕府的灭亡</RUBY>。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040340a11">
「我们<RUBY text="····">按照计划</RUBY>，利用雷蝶公方
成功杀掉游佐童心，大大动摇了幕府的根基。
　接下来只需将其推倒……就是这样吧。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040350a00">
「……对于今川中将而言，此刻我方的战斗力
是无限的未知数。
　若是业已动摇的幕府，可能有足以讨伐它的
力量——会这样认为……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040360a10">
「也许会怀疑我们吧……
　以一种寝食难安的心态。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　当然，事实并非如此。
　舞殿宫手下的军事力量只有我与一条二骑。六波罗虽说
衰退，但若要与其全军对阵，兵力几乎相差四位数。

　但是今川雷蝶并不知晓。
　正相反，在他的幻想中，建朝寺上集合着高举倒幕旗帜
的雄大军队……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040370a00">
「……何其惭愧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　如果对方只是生气的话，只要我方让步就能修复彼此
的关系。
　但人一旦疑心生暗鬼，再怎么解释也无济于事吧。

　看来事态比我想象的更严重。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040380a10">
「不，景明君无须挂怀。
　这一点要和你说明白呢。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040390a00">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040400a10">
「将景明君和一条君送入普陀乐城的人是本王
啊。
　因此最后所有责任都在本王。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040410a10">
「这一点，你可不要误会。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040420a00">
「……是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　道理上来讲是这样。
　发出命令之人对于结局负有全部责任。

　我知道这理应如此。
　但是……很难认同。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040430a00">
（如果我能想得更周到的话）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我会不由自主地这样想。
　控制不了自己。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040440a10">
「不过，事态也不是完全无法解决。
　雷蝶怕就怕吧，我们还是有办法的。
……对吧，署长？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040450a11">
「的确如此。但既然对方不回应我们的联系，
那我们就只能暂且等待对方有所行动。
　有两种可能性。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　亲王为圆场而言语偏向于积极的一面，而署长的回话
则充满了现实意义。
　眉间深深的皱纹纹丝不动，传入我耳中的声音比表情
更严厉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_沈黙.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040460a11">
「对方得出结论认为与我等联手有利，重新请
求继续彼此的同盟关系……或者。
　认为让我等活下去就是自掘坟墓，而前来了
结了我等性命。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040470a00">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040480a10">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040490a11">
「大体上就是这两种可能。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040500a00">
「署长认为哪种可能性更大？」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040510a11">
「不知道。对小弓公方的思维还没有清楚到这
个程度。
　但两者都有可能。有必要针对两种情况考虑
好对策。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040520a10">
「是啊。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040530a00">
「那么，如果是前者的话——」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040540a11">
「会很棘手。
　与今川中将合作，支配幕府的同时必须再建
幕府。」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040550a11">
「而且此事紧急。
　面对当下情况，ＧＨＱ会如何决断、作何行
动我们不得而知。比小弓的动向更难猜测。正
因为如此，只得加急行事。」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040560a11">
「如果最糟糕的事态明天就会来临，只能在今
天之内做好准备，别无他法。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040570a00">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040580a00">
「那么……
　如果是后者呢？」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0040590a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　如果小弓公方今川雷蝶，
　将舞殿宫春熙亲王，视为必须毁灭的敌人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0040600a10">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　到时候——我们能做什么。
　仅凭其一人之力即可动员兵力不下四万，其中更有三
百余骑武者。这就是六波罗四天王之一，我们要面对的
对手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0040610a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　……再无人开口言语。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_005.nss"