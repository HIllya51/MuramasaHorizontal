//<continuation number="690">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_009.nss_MAIN
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
	#ev144_女官達の戯れを見据える一条_a=true;
	#ev144_女官達の戯れを見据える一条_b=true;
	#ev144_女官達の戯れを見据える一条_c=true;
	#ev144_女官達の戯れを見据える一条_d=true;
	#ev160_玉簪=true;

	#bg066_普陀楽城内のどか_01=true;
	#ev144_女官達の戯れを見据える一条_a=true;
	#ev160_玉簪=true;
	#ev144_女官達の戯れを見据える一条_b=true;
	#ev144_女官達の戯れを見据える一条_c=true;
	#ev144_女官達の戯れを見据える一条_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_010.nss";

}

scene mb02_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_008.nss"


//◆城内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg066_普陀楽城内のどか_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从变得心不在焉的四郎邦氏御前
退下，我继续探查城内。
　巡南部城郭一周后，往西面走去。

　西侧外围有许多田地、仓库和工厂设施。
　是个相对来说重要度较低、较为平静的区域。不会存
在每走个十步就能撞上巡逻兵充满怀疑的目光的麻烦。

　也就是说，对我来说没有多大意义。
　我加快步伐，朝机密性更高的北部走去。一寸光阴
一寸金，岂容浪费。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090010a00">
（到底是因缘巧合……还是命中注定）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒地", 10, "#000000");
	StL(50, @0, @0,"cg/st/st邦氏_通常_私服.png");
	StR(50, @0, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　回想起来，我做此感叹。

{	FadeDelete("@OnBG*", 2000, DxlAuto);}
　足利邦氏和冈部樱子——胜者和败者。消灭者
与被消灭者。应被憎恨者与应心生恨意者。
　一名少年和一位姑娘。

　毫无期待，却遭遇这场邂逅。
　他们所处的世界都离我太远，我根本无能为力。
却又忍不住去思考。

　他们所背负的都太过沉重。以他们的年龄来看，
甚至可以说是残酷。
　他们两人的邂逅会使这种苦难稍稍缓解吗。
还是会出现相反的效果呢。

　——如果是前者就好了。
　我不禁如此希冀，忘却了自己的立场。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆花畑
//おがみ：一旦背景に戻します
//	CreateTextureEX("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_a.jpg");
//	Fade("絵ＥＶ", 1000, 1000, null, true);


	PrintGO("上背景", 5000);
	OnBG(100,"bg066_普陀楽城内のどか_01.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);

	FadeDelete("上背景", 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　在能够俯瞰花田的山道上，我停下脚步。

　几个女人一面热热闹闹地娇声叫嚷，一面采花。
　可以看出并非从事农业的下级劳动者的劳作。
而是有相当地位的女官们的游戏。

　最初吸引我注意力的是这幕光景。
　但使我不得不继续注意的，却是在不远处的那个
眺望着她们的孤影。

　不是别人。
　正是一条。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Wait(500);

	OnBG(100,"bg066_普陀楽城内のどか_01.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
　少女目光平静地注视着这平凡的一幕。
　那份平静并不意味着毫无情感
——<k>倏然，我意识到和一条之间建立的关系已经足以
令我只一眼就对她了然于胸，这让我万分感慨。

　时间应该还不算很长。
　然而时间虽然不长，却有很多机会。为了了解
绫弥一条这个人的机会。

　我觉得她是个奇妙的女孩。

　让人觉得她简直像是<RUBY text="····">人工制品</RUBY>。
　但又不同于人偶的感觉。

　最贴切的说法是「像机器一样」。

　有如人偶般的人类，首当其冲的便是空洞。
　与巨大的外壳相比，却只能感受到一颗渺小的心，
虚空的大片剩余空间非常明显。

　所以看起来像是人类的皮囊——人偶。
　
　但一条不同。
　<RUBY text="·······">她没有剩余空间</RUBY>。

　固守正义一念的心渺小且狭隘。
　但<RUBY text="·······">看起来十分相称</RUBY>。

　少女的肉体之中只有唯一的意志、唯一的理念、
唯一的目的。从一开始就是。
　既不是人类。
　也不是偶人。

　而是机器。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090020a00">
（那家伙是不幸的吗）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　过去并非未曾萦绕心间，但这次是第一次将它明确地
语言化。
　这一问：机器是不幸的吗。

　人偶一定是不幸的吧。
　空有人类的外壳，却无法成为真正的人。

　可是机器呢。
　作为机器诞生，具备机器功能的机器。

　这算是不幸吗。
　
　我答不上来。

　我只知道一件事。
　无论幸与不幸，机器只能永远履行着赋予
自己的单一机能。

　直到坏掉为止。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆近付く
	StL(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStL(0,true);

	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090030a02">
「啊……凑斗先生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　一条听到脚步声回过头来，招呼着我。
　她喊的是我的真名。必须提醒她注意——但
现在我却没有那份心情，只是默默地点点头。

　反正也没人在听。
　采花的姑娘们正沉浸在她们自己的交谈之中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090040a00">
「东侧已经全部巡视完了吗？」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090050a02">
「不，还没。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一条理所当然般地答道。
　……这里是城西。和分配给一条调查的区域完全相反。
但我也没逐一挑明。

　在我让她单独行动时就预测到了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090060a02">
「凑斗先生呢？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090070a00">
「有一定的收获。
　详细情况以后再告诉你。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090080a02">
「好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　她语调开朗。
　但近距离一看，原本就是个独特少女的印象则
更加明了。

　如果这城中哪怕有一个人仔细观察一条的话，
岂不是一下子就能完全看透她的真实面目吗。
　……虽然这种想法毕竟还是有些偏执。
我抽回视线，看着花田里的姑娘们。

　无忧无虑地有说有笑的她们和眼前的一条。距离
顶多不过一〇米左右。但——
　但她们之间精神上的差距又有多远呢。

　往身旁看去，发现一条也在追随着我的视线。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SetFwR("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090090a02">
「……你怎么想？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090100a00">
「那些女官们吗？」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090110a02">
「此情此景。」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090120a00">
「和平，而且幸福。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　如果能够将此刻的时空单独割裂开来，那么用
两个词语来形容这个世界便足矣。
　无需过多的描述。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090130a02">
「我也是这样想的。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　伴随着话语吐出呸的一声不平静之音。
　少女如她所表现的那样唾弃这一切。

　路边无名的杂草发出抗议。
　左右伸展的叶片激烈地摇晃着。看起来就像是在
挥动着愤怒的手臂。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆赤面
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090140a02">
「……请不要观察我。
　只是下意识地这样做而已。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090150a00">
「太不像一个官吏了。」


{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090160a02">
「对不起。」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090170a00">
「觉得反感吗？
　对于和平和幸福。」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090180a02">
「是啊。
　<RUBY text="··">那种</RUBY>和平和幸福……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　少女咬紧嘴唇应道。
　眼睛看着<RUBY text="··">敌方</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090190a00">
「…………
　羡慕吗？　眼前这幕情景。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我并未刻意思考，抛出了一个简直有如挑衅般的疑问。
　换做别人会不明所以，但一条肯定不会弄错我的意思。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090200a02">
「……羡慕。
　是啊。」


{	FwR("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090210a02">
「那是令人羡慕的生活方式。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　果然，一条语调毫无波澜地答道。
　但其中却蕴含着愤怒——虽然并不是针对我。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090220a00">
「……」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090230a02">
「如果只是这样的话倒也无所谓。
　只是世间有贫富之差罢了。
这一切只能让人这么认为。」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090240a02">
「我又不是普列汉诺夫。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　约半个世纪前，在欧洲掀起了基于共产主义思想
建立新国家的运动。
　告别资本主义，创建一个完全平等社会的理想……
由于太过背离现实。

　因此甚至并未得到渴望救赎的贫民阶层的支持，自然而然
地受到当权者的镇压，早已消亡。
　在刑场赴死前，领导者留下一句名言——
唯愿世间再无十字架和剑冑。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090250a02">
「可是如果这些富裕的人是<RUBY text="··">强盗</RUBY>则另当别论。
　用武力抢夺他人财产，
富足自己的生活……无疑为恶。」


{	FwR("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090260a02">
「而且。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　少女纤细的指尖，指向花田中与她年纪相仿的女官。
　那动作像是法官在指定犯人。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090270a02">
「她们甚至不知其恶。
　从未考虑过换来这座城和平与幸福的代价
是什么……只是一味沉溺享受。」


{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090280a02">
「令人反感。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　一条重复着我的话。
　她的语气也像是法官在宣读判决书。

　看着这个少女，我想道。
　<RUBY text="······">应该思考什么</RUBY>。

　思来想去，我只能吐出凡庸的话语。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090290a00">
「不管在哪个国家都是一样的。
　无论何种社会形态。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090300a00">
「资本主义本身不过是有效地进行
掠夺的机构罢了。」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090310a02">
「嗯。」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090320a00">
「弱肉强食，恐怕是
<RUBY text="·····">再自然不过</RUBY>的事情了。
　只要自然界的法则仍旧如此。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090330a00">
「所有的动物都会捕食弱者。
　而且也不会去顾虑沦为自己食物的对手……」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090340a00">
「如果这样想的话，
所有的人都和那些姑娘一样。」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090350a02">
「是。
　<RUBY text="····">即便如此</RUBY>却还没有意识到掠夺之恶，
就是不知廉耻。」


{	FwR("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090360a02">
「我说错了吗？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　一条直直地仰视着我。
　用这个少女独有的目光。

　应该思考什么。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090370a00">
「没有错。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我答道。
　
　——没错。正如她所说。

　罪就是罪。
　恶就是恶。
　不管凭依任何逻辑，都不能将其正当化。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090380a00">
「你说的没错。一条。」


{	FwR("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090390a02">
「嗯。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　少女微笑了。
　是个貌美如花的女性。

　一条也能露出这种表情啊——
　并非聆听喃喃爱语时、也并非怀抱幼犬时，而是
在<RUBY text="····">这种时候</RUBY>。

　应该思考什么。
　
　什么都不应该思考吗。

　绫弥一条是机器，我只认同这一点。
　曾以非同寻常的握力勒紧我内心的某种念头，在
这个刹那，我应该将其忘却吗。

　找不到答案。
　尽管找不到答案，我却行动起来——拿出刚买的
那个东西。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090400a00">
「一条。
　你是一把刀。」


{	FwR("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090410a02">
「？　什么。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　对于我唐突的话语，一条表示不解，转而
立刻微笑起来。
　就像听到了最棒的赞赏一般。

　顿时胸腔内一阵紧缩。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090420a00">
「……这一印象有时却令人战栗。
　鉴于现状，它并非最理想的。」


{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090430a02">
「唔……是啊。
　但是，该怎么办呢？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090440a00">
「刀有钉帽装饰。还有包边。
　这些点缀缓和了凶器的色彩。」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090450a00">
「给你也……增添一点华彩吧。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_荷物あさる03",500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　我展开纸包。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ上", 5000, Center, Middle, "cg/ev/ev160_玉簪.jpg");
	Fade("絵ＥＶ上", 1000, 1000, null, true);

	Wait(500);

	SetFwR("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090460a02">
「……这是……」


{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090470a00">
「发簪。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　不说自明的事实。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ２", 2100, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_b.jpg");
	Fade("絵ＥＶ２", 0, 1000, null, false);
	FadeDelete("絵ＥＶ上", 1000, true);

	SoundPlay("@mbgm27",2000,1000,true);

	SetFwL("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090480a02">
「……」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090490a02">
「那个……」


{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090500a02">
「……这个……
　要给我吗？」


{	FwL("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090510a00">
「是啊。」


{	FwL("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090520a02">
「…………」


{	FwL("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090530a02">
「——」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090540a02">
「————」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090550a00">
「……不喜欢吗？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　少女的举动像是血液循环和心肺功能产生了重大异常，
然后她最终全身僵硬了，这副模样让我有些不知所措。
　表面涂漆的小巧玉簪。虽然不是什么便宜货但也不是
值得炫耀的高级品。

　犹豫来犹豫去，最终选了一个最平淡无奇的发簪……
　是不是让本人挑会比较好呢。仔细想想，也没有什么
不能那样做的理由。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	CreateTextureSP("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_c.jpg");

	SetFwL("cg/fw/fw一条_慌て.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090560a02">
「不……不是的！
　那个，这是……凑斗先生挑选的……？」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090570a00">
「是啊。」


{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090580a02">
「为了我……」


{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090590a00">
「是的。」


{	FadeDelete("絵ＥＶ２", 1000, false);
	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090600a02">
「哇……」


{	FwL("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090610a02">
「该、该、该说什么才好呢。
　嗯……那个……还是第一次有男人买
这种东西送给我。」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090620a02">
「非、非……非常感谢。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　一条垂着脸，那动作令人不知道是道谢还是仅仅
低头而已。
　连耳朵都红透了。

　……总觉得，连我都有点不好意思了。
　不过，总之她似乎是很开心地收下了。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090630a00">
「……」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090640a02">
「啊……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ２", 2100, Center, Middle, "cg/ev/ev144_女官達の戯れを見据える一条_d.jpg");
	Fade("絵ＥＶ２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　将发簪插入一条的秀发中。
　她乖乖地任我摆弄。

　用指尖梳理好她微乱地发丝。
　重新端详她。

　接着，我立即发觉到。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 1, null);

	SetFwL("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090650a00">
「——」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　少女仰视着我，等我开口。

　很适合你。
　也很可爱——很符合你的年龄。不输给花田里
的女官们。

　但那不是绫弥一条。
　而是比比皆是、随处可见的存在。

　那位美丽的女子不在这里。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090660a02">
「……怎么样？」


{	FwL("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090670a00">
「嗯。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　我微笑起来。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0090680a00">
「很适合你。」


{	FwL("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0090690a02">
「——!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);
	Delete("絵ＥＶ");
	FadeDelete("絵ＥＶ２", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　少女又垂下头。
　她甚至紧闭双目。就像是在说：不这样压抑住的话，
心绪就会满溢而出。

　所以——
　那一瞬间，即便我的眼中浮现出了什么，这个少女
也一定没有看到吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_010.nss"