//<continuation number="800">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_008.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;
	#bg065_普陀楽城内郭_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_足利邦氏=true;

	$PreGameName = $GameName;

	$GameName = "mb02_009.nss";

}

scene mb02_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_007.nss"

//◆城内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg057_普陀楽城廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　今天比昨天多少放松了些，通过重新观察，发现城内
的气氛非常凝重。

　往来的士兵们个个全身紧绷，充血的眼球彰显着他们
高度亢奋的神经。
　文官与女官们埋头工作，有时则一副像是觉得微寒似
的样子眺望别处。

　把大将领护氏遭暗杀一事作为旧事尘封了记忆还为时
尚早——吧，很明显，这件事十有八九——如一场冬雨
将他们的内心浇得冰冷。
　既无益于他们的健康，也不利于我。

　在比平时警备更森严的状况下，完成派给我和一条的
任务就更为困难。
　尽管开始并没有这种打算，还是需要严防疏忽大意。
无从知晓什么时候会从哪里露出马脚。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆本丸中庭
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg065_普陀楽城内郭_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080010a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//	StL(1000, @0, @0,"cg/st/st邦氏_通常_私服.png");
//	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　当走近主堡城郭的中庭时，一幕奇妙的光景映入眼帘。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @0, @0,"cg/st/st邦氏_通常_私服.png");
	FadeStC(300,true);
	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　几位女官与一名少年。
　少年的年龄看起来大约十一、二岁。

　从女官们的装束可看出与之相应的地位，不过她们明
显是在侍奉那个少年。
　她们看着少年玩耍，同时空洞地称赞着他。

　仅是这样就足够惹人注意的了，但更离奇的是，
周围还被龙骑兵围得严严实实。
　一个中队全周警戒——当然，还有三架处于
飞行状态，以防空袭和狙击。

　并非寻常光景。
　但，根据这些事实加以推测，自然就会明白
其中深意。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080020a00">
（那少年是足利四郎邦氏……吗）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　霸王足利护氏的嫡孙。
　幼名时王丸。

　今年春天戴冠，以从五位和左马头开始步入
朝廷社会，现在身兼左近卫大将、左马御监、
权大纳言数职，同时拥有位阶。
　除皇族外，大和地位最高的少年。

　近日将袭大将领之位，立于幕府顶点。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);
	CreateSE("SE01","se人体_動作_リフティング01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Wait(800);
	SetVolume("SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
　背负着王者宿命的他，此刻正在高贵女官们的服侍
中，在强大武者的保护中——玩着球类游戏。
　球约有人头那么大，球身黑白相间。

　……是足球吗。
　尽管无法与发源地欧洲相比，此项球技在大和也日渐
受到人们的欢迎。其特点是原则上规定禁止用手，而用
脚踢球。

　原本是两支由十一人组成的队伍之间争夺得分的体育
比赛，当然现在眼前展现的并不是那种场面。
　四郎邦氏在独自一人踢球玩。

　大概是被称为颠球的基础练习吧。
　颠球就是持续踢球使球不落到地面……但，
就算奉承也不能说足利四郎邦氏颠得很好。

　在大和最盛行足球的东海地区，体育少年颠个两三百
下都不算稀罕，而他好几次都颠个约十几次球就失去平
衡滚落在地。
　像是不知道颠球的窍门。

　他的运动神经似乎并不差。如果有谁恰当地指导他，
想必很快就能有所长进。
　但不能指望那些不管是踢球还是球落在地上都
只会说真厉害、好棒的女官们。

　负责警卫的武者连句奉承话都不说。
　也有集中精神执行任务的因素——还隐约带有
一丝冷淡和疏远、一丝嫌麻烦的感觉。

　虽然看不到他们被铠甲遮住的脸，但隐隐约约还是能
感觉到。
　乖乖待在屋子里警卫工作也能轻松些——
他们大概是想这么说吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080030a00">
（那样一点乐趣都没有吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　少年似乎并没有愚钝到很享用女官们好似烂化妆术
般的赞赏，也没有迟钝到察觉不出警卫队冷淡的态度。
　从他的表情可以看出，他什么都明白。

　但他仍没有停下，恐怕是因为这种微不足道的游戏时
光对少年来说也是十分珍贵的，——大概吧。
　因为他平时总是像警卫兵所期待的那样，被关在厚重
的墙壁与屋檐内吧。

　虽说符合地位、身份和当前形势，但对一个处于成长
期的男孩子来说无疑是残酷的行为。
　年幼的殿上人表情僵硬地一个人玩着孤独的游戏，那
身影令人不忍相看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080040a00">
（完全不知道幸福在何处）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　虽然也不能说平民百姓的孩子比他幸福。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぽーん
	CreateSE("SE01","se人体_動作_リフティング02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw邦氏_通常a.png");

	#voice_on_足利邦氏=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080050b49">
「啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　……似乎因为勉强去踢方向偏离的球而失败了。
　邦氏的鞋从脚上脱落，飞上高空。

　朝我这边飞来。

　噗的一声，不知是谁失笑出声。
　似乎是女官中的某人。虽然笑声并未扩散开来，
但周围的人也没有特意去责备的迹象。

　肯定伤害到他了。
　少年狠狠地甩手拒绝了想过来取鞋子的女官们，
低着涨红的脸<RUBY text="····">一跛一跛</RUBY>地朝我这边走来。

　我从脚边拾起运动鞋，跪拜静候。
　……鞋子干净如新。甚至令人觉得矫揉造作。
像是象征着它的主人般一尘不染。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st邦氏_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080060b49">
「谢谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　少年伸出脚，小声说道。
　这是在让我给他穿上吧。平日里一定是受人精心伺候，
但他命令我的动作却并不特别傲慢。

　我感到头顶上一阵<RUBY text="··">发痒</RUBY>。
　
　不用看也知道有一骑龙骑兵移动到了我的头顶上。
包括自己正被口径七·七毫米的机关枪对准的现状。

　只要做出一丁点危险的动作，我全身上下就会立刻被
打成马蜂窝吧。
　不——连马蜂窝的形状都不会留下。只会变做一堆肉块。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080070a00">
「失礼。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　可不能在此时此刻被扫射成一堆猪食。我缓缓地把
鞋子套在邦氏脚上，系上鞋带。
　我突然想到，这个少年大概连怎么系鞋带都不知道
吧……不会有人教他的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080080b49">
「嗯……略有些紧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080090a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我不过是按照极为普通的松紧程度系的罢了。

　我犹豫起来。
　依言重新系好后退下便万事大吉——
只是这样的话，此刻在我头顶上空神经紧绷
的武者也不至于不小心扣下那小小的板机。

　虽然我是这么想的……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080100a00">
「可是，殿下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我犹犹豫豫地开了口。
　一瞬间，不仅上空——连地面上的龙骑兵都加强了
戒备。

　在这里我的身份是政所公职人员——下级官吏。
从所穿的服装就一目了然。
　超出单纯的礼节性应答与足利四郎邦氏进行对话，
是不可能被允许的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080110a00">
「鞋带如果过松，您穿着这鞋就踢不好球。
　再者，恐有致您受伤的危险。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　少年一脸惊讶地眨了眨眼。
　从未有过被小官吏顶撞的经验，也难怪他如此
反应。

　不……没有被任何人顶撞过吧。
　或许正是如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw女官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0080120e123">
「无礼之徒！　你可知道这位大人是谁——」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080130b49">
「无妨。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　女官尖声斥责，但少年制止了她。
　他饶有兴趣地看着我，开口说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080140b49">
「余乃时王……不，四郎邦氏。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080150a00">
「是。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080160b49">
「……你果然知晓。
　此番与卿乃初见……」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080170b49">
「卿名为何？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080180a00">
「小人姓改。殿下。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080190b49">
「那，改……
　方才所言可否属实？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080200a00">
「是。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080210b49">
「鞋带不可系得过松吗……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080220a00">
「还有其他注意事项。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080230b49">
「快讲。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080240a00">
「殿下踢球时脚尖是伸直的。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080250b49">
「嗯。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080260a00">
「那样无法很好地<RUBY text="··">控球</RUBY>。
　因此，球总是很快便落地。」


{	NwC("cg/fw/nw女官.png");}
//【ｅｔｃ／女官】
<voice name="ｅｔｃ／女官" class="その他女声" src="voice/mb02/0080270e123">
「这……这小子！
　区区一个公职人员居然敢挑殿下的毛病，
也不看看自己是什么身份！」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080280b49">
「住口！　我已准了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　邦氏厉声一喝，将再度袭来的斥责堵了回去。
　……按照常识来说，女官会发怒也是理所当然的。
想到这里我不由得有些歉疚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080290b49">
「改，继续说。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080300a00">
「……是。
　踢球时请将脚踝伸展开。脚背放平，
用脚背踢球。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080310b49">
「将脚踝伸展开……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　足利四郎不解。
　一副虽然理解意思，却<RUBY text="···">想不通</RUBY>的模样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080320a00">
「殿下，球请借我一用。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080330b49">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　我接过递来的球。
　……是普通的标准产品。原本担心若是什么高级货，
我就不便踢了，看来是我多虑了。

　接下来就是能不能充分发挥过去的本领了——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ぽーんぽーん
	CreateSE("SE01","se人体_動作_リフティング01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	Wait(700);

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080340b49">
「哇……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　超乎我的期待，身体都还记得。

　先用脚背颠了四下。
　再用膝盖接住飞向手边的球，颠了三下。
接着又让球回到脚背上，颠了两次后，第三次
用力稍强。

　头球一次。
　当球又回到脚背时，将它踢至背后。然后立即
以左脚立轴转身，用右腿接住。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080350b49">
「好厉害好厉害！
　和茶茶姐一样棒！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　邦氏兴奋起来。
　口气也变得与他的年龄相符。

　恐怕——这才是他的真实面貌吧。
　在公卿、足利嫡孙、下代六位大将等层层厚重的外衣
遮隐之下……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080360b49">
「那种我也能学会吗!?」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080370a00">
「当然。
　殿下马上就能掌握。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　我的回答并非恭维话。
　学好颠球就是掌握窍门和勤加练习。
这少年运动神经不错，
想必进步会很快。

　我把球还给他，复述着要点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080380a00">
「脚踝伸展开。
　膝盖也不能弯曲。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080390b49">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ぽーん
	CreateSE("SE01","se人体_動作_リフティング02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆一度フェードして戻り
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	WaitPlay("SE*", null);

	ClearWaitAll(2000, 1000);


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg065_普陀楽城内郭_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080400b49">
「……做到了！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080410a00">
「恭喜您。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　终于颠到了二十下，少年欢呼起来。
　超乎预想的迅速进步，令我由衷地赞不绝口。

　实际上，邦氏的理解能力的确令我意外。
　在不到三十分钟内就可持续颠球十次，而现在更是突破
二十次大关，向更高的目标进发。

　说不定他相当有才能。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st邦氏_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080420b49">
「厉害……完全不一样。
　这样做就可以了吗。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080430b49">
「谢谢你，改！
　是你教得好。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080440a00">
「……您过奖了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　足利家的嫡子沉迷于颠球的同时，
还不忘出声感谢我。
　我略有些惊讶，回谢的话说得迟了些。

　……身份如此高贵的少年，却能率直地对地位卑微者
表示感谢。

　足利四郎邦氏具备与生俱来的优良品质。
　鉴于他身处六波罗幕府这种环境之中，拥有这样的品
质简直有如奇迹一般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080450a00">
（如果这位少年照此成长下去……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　大和国的将来或许也没那么悲观。
　我如此想道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080460b49">
「改怎么会这么了解呢？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080470a00">
「因为小人上学时加入了足球部。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　这是事实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080480b49">
「踢哪个位置呢？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080490a00">
「中后卫。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080500b49">
「是防守关键之处呢。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080510a00">
「有时也充当前卫。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　因为个子高而有所超群之处。
　如果在临射门前接到传来的球，身高够高的话就能
以头球定胜负。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080525b49">
「真不错！
　我也想当前卫。右翼很好呢。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080530a00">
「像松永选手那样吗？」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080540b49">
「没错没错！」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080550a00">
「殿下如此优秀——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　「一定能行」，这话才到嘴边又慌忙咽了回去。
　少年并未追问——只是，刹那间眼角闪过一丝
寂寞的神色。

　真是个聪明的少年。
　聪明得令人心酸。

　……足利四郎邦氏是绝对不可能去当足球选手、
驰骋赛场的。
　就算他有此才能。

　也绝对不会被允许。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080560a00">
「……就这样。
　颠三十下。」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080570b49">
「嗯。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080580a00">
「您的膝盖弯曲了。请留意些。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　我站在少年身旁，继续给予指导。
　不管是女官们刺痛的视线、还是护卫兵们愕然的神态，
我都已经不在意了。

　少年用脚尖接住偏离方向的球，将球带回。
　再用大腿接住，又颠了一次。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080590a00">
「三十！」


{	FwC("cg/fw/fw邦氏_通常b.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080600b49">
「好——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆ぽーん
//あきゅん「SE：要望：リフティングミス、ぼん、ぼぼんころころ」
	CreateSE("SE01","se人体_動作_リフティング02");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　似乎是因为太过意气高昂。
　被用力踢起的球飞向高空，划出了一条弧线。

　然后沿着抛物线轨道落下。
　掉落地面的球嘭、嘭地弹跳着滚远——

　一只白皙的手臂，将球捡起。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆桜子姫
	StR(1000, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStR(300,true);
	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　……樱子小姐。
　被前后数名男子夹在中间，像是要被带往何处。

　男人们注意到这边——准确地说是注意到邦氏，
便立即当场跪下。
　领头的男人我在报纸上看到过。京极善门。幕府
武士所长官，也是接收冈部千金的人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0080610b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　樱子小姐抱着球，凝视着邦氏。
　一脸难以言喻的复杂表情。

　六波罗是她的仇敌。
　尽管她努力地并未表露于外，但仇恨和痛苦并不是一下子
就能消失的。

　足利四郎邦氏正是仇敌的顶峰。
　可以说，如果幕府有罪，全部罪恶的责任都得归咎于
他——尽管冈部之乱时他还未继位。

　寻遍天涯海角也没有理由可以让樱子小姐对其抱有
除了敌意之外的情感。
　
　但——樱子小姐应该也很清楚。

　现在，站在她面前的不过是个热衷于玩耍的少年。
　而令人意想不到的是，是我让这个少年沉迷至此。

　就算眼中暗藏利刃凝视对方，也不会有反击。
　只是任由利刃贯穿……直至心底。

　冈部的遗孤，能做得到吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0080620b28">
「……呼。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　冈部樱子轻阖双眼，叹了口气。
　看起来像是放弃了什么似的。

　接着她用眼神向京极善门示意后，朝邦氏这边
走来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＣＧ：桜子と邦氏
	StL(1000, @0, @0,"cg/st/st邦氏_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080630b49">
「……啊……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0080640b28">
「踢得真棒呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　对着说不出话来的少年，樱子小姐微笑着。
　发自内心的微笑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0080650b28">
「是……足球吗？」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080660b49">
「是、是啊。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0080670b28">
「我不是很了解……
　就好比是西洋蹴鞠之类的游戏吧。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080680b49">
「不……不对。不是的。
　刚才只是练习罢了。」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080690b49">
「实际上是一种队伍之间……争夺分数的
体育运动。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　邦氏的说明完全不足以使一个外行人理解。
　并不是嫌麻烦，只是词汇量太少——大概
是因为<RUBY text="··">突然</RUBY>被问及的缘故吧。

　小姐明显很困惑。
　但脸上还是露出一副温柔地眯起眼睛的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0080700b28">
「注意不要受伤哦。」


{	FwC("cg/fw/fw邦氏_恋情.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080710b49">
「……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0080720b28">
「给，请拿好。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080730b49">
「谢……
　谢谢……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　樱子小姐把球递出。
　邦氏畏畏缩缩地伸手接过球。

　亡家之女与
　应成为霸者的少年。
　
　双方的指尖——在那一瞬间，微微碰触。

{	DeleteStR(300,false);}
　樱子小姐施礼后返回。
　在她转身离去的动作中，混杂着向我示意并询问
——<k>“你在干什么呢？”般的苦笑，
我也只能回以苦笑。

　真是的，我到底在干什么啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080740b49">
「……改……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080750a00">
「在。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　我立即应声。
　但之后却久久没有开口说话。

　他凝视着那远去的背影。

　当樱子小姐回到那群男人之中后，他们立即起身。
　再次迈开步伐。

　他们的目的地似乎是主堡一角——向着游佐童心以
下的阁老们聚集之所的方向走着。
　不知是否在配合樱子小姐，他们走得很慢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080760b49">
「那……是谁。你知道吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080770a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　邦氏似乎并不知道她的来历。
　由于樱子小姐明显认得邦氏，令我有些吃惊。

　不过细细想来倒也理所当然。
　樱子小姐认识足利四郎邦氏的机会要多少有多少。而
邦氏，只要没有人特意为他引见败军遗孤，连相识的机
会都没有。他不知道也没什么可奇怪的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0080780a00">
「那位是弹正尹从三位冈部赖纲的女儿，
樱子小姐。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080790b49">
「!!
　冈部的……女儿。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　少年满脸震惊，身体不由颤抖。
　——是他的六波罗、他的幕军消灭的一族之女。

　看着她斜后方的背影越走越远。
　一副沉着的姿态。虽然并不完美。
从举止细微之处透出的僵硬，使人能够猜到
她的内心。

　冈部赖纲的女儿将被带往各位幕阁面前。
　等待她的绝不是一场愉快的会面。

　恐怕就是岩田女士告诉我的——就有关谋划夺取樱子
的反幕势力一事对她进行盘问。
　虽然不至于发展到拷问，但很有可能进行过度严厉
的讯问。

　在这普陀乐之内，没有她的同伴。
　
　远去的樱子小姐十分美丽。
　那是荒野之中孑然绽放，美丽的孤独之花。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw邦氏_失意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0080800b49">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　少年呆立着。
　用指尖碰触脸颊。

　那轻轻的动作，像是在确认残留在指尖的温度。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_009.nss"