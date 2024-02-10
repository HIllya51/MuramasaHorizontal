//<continuation number="1180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_009.nss_MAIN
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
	#ev171_香奈枝に跪く景明=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_010.nss";

}

scene mc02_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_008.nss"

//■memo　景明の立ち絵不要

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 11, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm06",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090010a00">
「……你此次回国是为了替父报仇？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090020a03">
「……是啊。
　如果我说自己没这种想法，那是骗人的。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090030a03">
「但如果只是要对狮子吼进行复仇，
我也不会回到这个国家吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090040a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090050a03">
「回来大和的目的有二。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090060a03">
「第一……我继承了高贵的血统，
要履行自己的职责。
　我们从民众手里获得粮食，
代价是我们要保护他们。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090070a03">
「在大和陷入前所未见的危难之中时，
我不能远在他国，悠闲地袖手旁观。
　我有义务为拯救国民
而履行自己的职责。」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090080a04">
「正是，正是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我也默默地点头回应。
　正是这样——原本，真正的贵族阶级理应如此。
但自古时诞生以来，随着光阴流逝，
义务渐渐被遗忘，只有权利一味地增强。

　大鸟家得以长久地延续下来，或许部分原因
就在于代代族人都像这位香奈枝小姐一般，
悉力不忘贵族本分……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090090a03">
「……至于另一个原因。
　是为了保护家人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090100a00">
「你指……你的妹妹吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090110a03">
「是的。
　花枝——我的最后一位血亲。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090120a04">
「与大小姐相差七岁。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　年龄差距很大。
　原来如此……所以更是分外担心吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090130a03">
「不过说句实在话，有关那孩子，
其实只是顺带而为，我根本就不在乎
她怎样。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090140a00">
「啥？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090150a04">
「正是如此。
　我还记得大小姐临近留学之前，
姐妹两人的争吵基本处于平手状态。」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090160a03">
「我在肉搏扭打中取胜，
最后却掉入陷阱里呢……」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090170a04">
「那位公主擅长使用阴谋诡计，
将来可不得了呢。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090180a03">
「没错没错。
　与我截然不同。」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090190a04">
「让人深深感叹她与善于运用残虐暴力的大小姐
之间的血缘关系。
　那么温柔的老爷和夫人居然生出了这么一对
地狱少女般的姐妹，上辈子到底造了什么孽啊。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090200a04">
「说不定其实是从桥底下捡来的孩子呢。」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090210a03">
「我说婆婆呀，我老早以前就想问你了，
你把主从关系当什么？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090220a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　到底是怎样一位妹妹啊。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090230a04">
「言而总之。
　那位小姐即使现在老实地当着
一个傀儡当家，也绝不会一直甘于现状。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090240a00">
「这样啊……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090250a03">
「即使不借助他人的援手，想必再过数年，
她便能铲除狮子吼，成为名实兼具的
当家……所以我刚才说，我不会为了
报仇而回国。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090260a03">
「与其我自己多管闲事，不如全权交给妹妹，
这才是贤明之举，对周围的搅扰也能降低
至最低程度。
　我对此心知肚明，所以无能为力。」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090270a04">
「狮子吼阁下肯定对那位小姐感到棘手。
　因为花枝大人具备着真正的残忍与暴虐，
与其一刀毙命，她绝对会选择留下活口
而不断折磨对方。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090280a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090290a03">
「我妹妹就是这样的人。
　……所以，比起她来，
我更想保护……另一个人。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090300a03">
「他是我和花枝的堂兄弟。
　狮子吼拼命追寻的大鸟本家正统的嫡子。
　……就是他。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090310a00">
「……？
　但是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　据她所言，那位伯父的嫡男应该是
香奈枝姐妹的政敌吧。
　要保护……他？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090320a04">
「政治情形并不代表人际关系的一切，
凑斗大人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090330a00">
「……是。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090340a03">
「父母之间的关系很复杂，
但孩子们就另当别论了。
　我和花枝都非常喜欢这个堂兄弟。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090350a03">
「拥抱着那个小小的男孩子，
心中就会充满幸福……
　花枝也跟我一样，所以我们还会为
今天由谁来抱着他而争吵。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090360a03">
「花枝是他的未婚妻。我是他
未来的嫂子……
　我们都宣称自己才有将那孩子
拥入怀中的权利，互不相让。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090370a00">
「……这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　对孩子来说，亲戚重于政敌。
　原来如此，那么就不会怀有敌意了吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090380a00">
「那么，你所谓的保护是指……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090390a03">
「他在大鸟一族远亲的家庭中过着平稳的生活。
完全不知道真相。
　我思前想后……维持原本的生活，
一定比被捧成大鸟当家来得幸福。 」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090400a03">
「如果他自己有意成为当家，那且罢。但狮子吼
肯定不会在意他是否出于自愿。
如果被拒绝，一定会动用武力来争取。
　我本打算在那时出手救他。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090410a03">
「为了守护他的幸福。
　也为了防止花枝被当做用完的道具
给处置掉。
　……我是打算这么做的。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090420a03">
「但是……
　我却一事无成。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090430a00">
「————」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//■セリフを聞かせるために音楽消す inc櫻井

	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　突然，一抹鲜艳的朱红色——
　将我的目光吸引过去。

　一丝鲜血从大鸟香奈枝颇为漂亮的唇际
淌下。
　应该是把嘴唇内侧，或是脸颊里面……的
某个地方咬破了。

　她现在正在舔舐名为“悲痛”之物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090440a00">
「为什么……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090450a03">
「为什么？」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090460a04">
「您问，为什么？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090470a00">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090480a03">
「景明大人。
　你听好了……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090490a03">
「那个男孩子……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090500a03">
「那个我们深爱着的孩子……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090510a03">
「他的名字……」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090520a03">
「……叫雄飞。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆ズガーン。すげえショック。


	OnSE("se擬音_シリアス_ショック01", 1000);
	
	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 1000, 1000, null, true);

//◆場面回想
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg015_鎌倉路地裏_02.jpg");
	Delete("黒幕１");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw雄飛_怒りa.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0090530b56">
「喂！　那个——阴暗的坏蛋！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆場面回想

	EfRecoIn1(18000,600);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 1000, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");
	CreateTextureSP("絵回想200", 1100, 150, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateTextureSP("絵回想300", 1101, 618, InBottom, "cg/st/st景明_通常_私服.png");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw雄飛_沈むa.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0090540b56">
「……抱歉。我语言表达不好。
　但是我想为寻找小律做些什么，
也应该去做些什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応
//	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆場面回想

	EfRecoIn1(18000,600);
	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_a.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw雄飛_笑顔b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/mc02/0090550b56">
「我相信。
　这世上有正义的伙伴，名叫村正。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応
//	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);


	Delete("絵回想*");
	Delete("Memory_cover");
	EfRecoOut2(600,true);

	SoundPlay("@mbgm33", 0, 1000, true);
	
	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090560a03">
「他死了。
　是的……他死了。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090570a03">
「他在与我，与花枝……与狮子吼都
完全无关的地方。
　突然——死去了。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090580a03">
「景明大人比任何人都清楚吧？
　对吧……？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090590a00">
「————」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090600a04">
「您不可能不知道……
　<RUBY text="··">村正</RUBY>阁下。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090610a04">
「我们调查了很多，为此我表示抱歉。
　最重要的是……虽然觉得很不礼貌，
但我们在江之岛上<RUBY text="···">偷听了</RUBY>您和雪车町阁下的
谈话。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090620a04">
「每每斩杀恶人之时，就不得不斩杀一位善人，
您所使用的剑胄还真是麻烦呀。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090630a00">
「——————」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090640a03">
「尽管如此，你仍不得不使用这剑胄。
　银星号——为了阻止那个魔物所带来的灾祸。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090650a03">
「……真让人难以置信。
　但我明白了，景明大人。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090660a03">
「接受了银星号的“卵”之人，必须得被斩杀。
除了斩杀，别无他法。
　因为如果置之不管，就会变成第二个
银星号……无论如何都只能将其斩杀。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090670a03">
「但是，若要斩……
　就必须再杀一个无罪之人。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090680a03">
「但这远没有无数人民的生命重要。
　所以，你……杀害了无辜的人。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090690a03">
「想必很难过吧。
　很痛苦吧……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　嫩白的指尖伸向呆若木鸡的我。
　它碰触着我的脸颊，并轻轻地抚摸。

　温柔得有种情色的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090700a03">
「但是我无法原谅你。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090710a00">
「……」

{	SoundPlay("@mbgm14", 0, 1000, true);
	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090720a03">
「你杀了雄飞……
　借助武力夺走了那孩子的生命。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090730a03">
「即便真的是情非得已、
无可奈何的选择。
　即使被你所拯救的大和上下
一亿人民都承认你无罪。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090740a03">
「为了那声受你所迫而发出的哀叹，
　我不会原谅你。」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演憎悪", 4100, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureEX("絵演憎悪上", 4110, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演憎悪上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演憎悪上", 250, 1000, null, true);
	Fade("絵演憎悪上", 250, 0, DxlAuto, true);
	FadeDelete("絵演憎悪", 300, true);
	Delete("絵演憎悪上");
	SetVolume("SE01", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我被轻诉爱意般炙热的眼神所凝视。
　
　我的膝盖开始发颤。感觉好像快要失禁了。

　这是何等的杀意啊。
　这是何等的憎意啊。

　这个人就算<RUBY text="··········">赌上生命与灵魂的一切</RUBY>，
<RUBY text="······">也要对我复仇</RUBY>。

　我绝对不会得到原谅。
　<RUBY text="········">我绝对会被杀死的</RUBY>。

　如今，就在这个瞬间，我也……

　害怕。
　我从未体会过这般恐惧。

　不——以前，我肯定是不知恐惧为何物的。
　<RUBY text="···">这就是</RUBY>恐惧。

　我想逃跑。
　我想呐喊。
　我想要做任何一种能够博得他人怜悯的行为。

　我想哭求她原谅我。

　……不知她会不会原谅我。
　倘若我不顾羞耻，抛弃体面，不择手段地
列举出借口、反复道歉、发誓会赎罪……
说不定……

　这位女性……会原谅我……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090750a00">
「你——你……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090760a03">
「嗯。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090770a00">
「要将我……将在下——
　杀——杀……」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090780a04">
「哎呀，凑斗大人您怎么啦？
　明明不久前还一脸坦然地问我们为什么
不杀了你，说我们若想杀你应该是轻而易举的。」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090790a04">
「您的声音在颤抖哦。
　……狐狸尾巴露出来了吧？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090800a00">
「……杀……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　侍从露骨的挑衅言辞，并不能消除束缚着
我身心的恐惧感。
　我无言以对，喘不上气来。

　我好不容易控制住颤抖的舌头，继续对
香奈枝小姐说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090810a00">
「杀——掉吗？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090820a03">
「……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090830a00">
「你……已经知道。
　有关村正——有关银星号……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090840a00">
「我为何会杀死他……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090850a00">
「你明白这一切……
　可是，你还是要，将我……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090860a00">
「……将我……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090870a03">
「我不会原谅你。
　我要杀了你。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090880a00">
「……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090890a00">
「即……即使我……
　哭着祈求你大发慈悲……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090900a00">
「发誓将自己剩下的生命全部用于赎罪……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090910a00">
「跪在你脚边，哀求你……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090920a03">
「…………」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0090930a04">
「哎呀哎呀。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090940a00">
「……即……即便如此。
　即便如此，你……」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090950a00">
「你还是……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090960a03">
「是的。
　景明大人……」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090970a03">
「我绝不原谅你。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0090980a00">
「————————————————」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　不行了。
　我不管怎样做，都是无用功。

　我不会得到原谅的。
　我会被杀掉。

　凑斗景明——即将受到惩罚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0090990a03">
「……你想必很不情愿吧。
　但雄飞同样也死得心不甘情不愿。
所以景明大人，你必须忍耐。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0091000a04">
「这是理所当然的。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091010a03">
「请放心。
　我并非即说即做，会等你把银星号一事
收拾利索的。我也会一如既往地协助你。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091020a03">
「这个问题我也不能装作视而不见。
　需要借助景明大人的力量，以求解决。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091030a03">
「所以……<RUBY text="·····">这件事一完</RUBY>，<RUBY text="······">我就立刻动手</RUBY>。
　明白了吧？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091040a00">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091050a03">
「当然，我不会无情地禁止你抵抗，
要求你去死。用那个剑胄来交战吧。
　你无需客气。景明大人也看到了，
其实我有剑胄——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明、動く
	Request("@StR*", Smoothing);
	Zoom("絵背景10", 300, 1500, 1500, null, false);
	Zoom("@StR*", 300, 1500, 1500, null, false);
	Move("絵背景10", 300, @-200, @0, null, false);
	Move("＠StR*", 300, @-500, @0, null, false);
	DeleteStL(300, false);
	DeleteStR(300, true);

//◆ＥＶ：跪いて香奈枝の手を押し戴く景明
	CreateTextureEX("絵ＥＶ", 5100, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	OnSE("se人体_動作_抱く01",1000);
	Fade("絵ＥＶ", 300, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1000);

	SetFwC("cg/fw/fw香奈枝_悩む.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091060a03">
「——————」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0091070a04">
「——————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我以双膝跪地。
　恭敬地捧起她嫩白的双手。

　冰冷而美丽的手掌接纳了我眼窝中流下的泪水。
　我已经忍不住落泪了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091080a00">
「……谢谢……你…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091090a03">
「…………哎？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091100a00">
「我感谢你的存在。
　感谢你<RUBY text="···">在这里</RUBY>。」


//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091110a00">
「感谢你……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0091120a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ＥＶ", 5110, -1556, InBottom, "cg/ev/resize/ev171_香奈枝に跪く景明lm.jpg");
	Move("絵演ＥＶ", 6000, @0, -810, DxlAuto, false);
	Fade("絵演ＥＶ", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　她说要复仇。
　她要为死于非命的新田雄飞复仇，要杀了我。

　她说绝不原谅凑斗景明，
　要杀了我。

　————啊啊。

　太完美了。

　她是完美的定罪者。

　这份死亡是属于凑斗景明的。

　这是再合适不过的处刑。

　这个人会杀掉我。
　——为帮新田雄飞报仇雪恨!!

　我所能期望得到的，最棒的结局。
　突如其来地从天而降了。

　就像上天的恩惠。

　这世间有正义。
　不容邪恶的制裁真的存在。

　除此之外，我……无欲无求。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091130a00">
「大鸟香奈枝。
　我将一切都奉献给你。」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091140a00">
「将我凑斗景明的一切献给你。」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091150a00">
「我会对你唯命是从。
　是生是死，全都听你吩咐。」

//【景明】
<voice name="景明" class="景明" src="voice/mc02/0091160a00">
「你可以随时——
　将断罪之刃挥向我这颗脑袋。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091170a03">
「………………………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　如今我一无所忧。

　我要履行职责。打倒银星号。
　就算我被村正的诅咒所束缚，
仍会再杀死某个人…………也无所谓。

　在那之前，我就会被杀的。

　——这位美丽的女性会杀掉我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);

//◆視点転換

	PrintGO("上背景", 30000);

	Fade("黒幕１", 0, 1000, null, true);

	OnBG(100, "bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(0, true);

	Delete("上背景");

	FadeDelete("黒幕１",2000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0091180a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ＥＶ", 5110, -400, -190, "cg/ev/resize/ev171_香奈枝に跪く景明lm.jpg");
	Fade("絵演ＥＶ", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　大鸟香奈枝很不解。

　她以为他也许会精神错乱、大声叫嚷。
　她以为他也许会大动肝火地袭击自己。

　她以为他也许会哭着求饶。
　她以为他也许会做好觉悟，万念俱灰地
低下头。

　但是，她唯独没预料到<RUBY text="····">这种情况</RUBY>。
　
　——感谢。

　不解。

　大鸟香奈枝弄不懂凑斗景明。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc02_010.nss"