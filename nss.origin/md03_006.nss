//<continuation number="1090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_006.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_007.nss";

}

scene md03_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_005.nss"


//◆評議の間

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　统领六波罗幕府的四将军聚集在议事间。
　各有数位幕僚立侍于身后及左右。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心
	StL(1000, @100, @0, "cg/st/st童心_通常_私服a.png");
	FadeStL(300, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　古河公方，游佐童心中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雷蝶

	StR(1000, @-50, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　小弓公方，今川雷蝶中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼

	StCL(1000, @-100, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStCL(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　篠川公方，大鸟狮子吼中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸
	StCR(1000, @100, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStCR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　堀越公方，足利茶茶丸中将。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆消し

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　四者所掌握的权利极大。
　除了唯一的例外——进驻军，在这大和的土地上，没
有哪股势力能够与他们抗衡。

　如果四人意见一致，甚至能轻易毁灭一整座都市。
　就像他们曾经做过的那样。

　然而，若要他们统一步调去参加
规模和意义皆重大的行动，
就必须解决或调和四者的分歧。
　……而这就是当下正要做的事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060010a09">
「最优先的是让邦氏殿下就任大将领之位。
　各位，对这点应该没意见吧？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060020a08">
「嗯。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060030a06">
「没有异议。
　群龙无首，将兵的士气和军纪只会不断
变差。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060040a07">
「因为自从发出<RUBY text="老爷子">护氏</RUBY>的死亡公告后，
我们一直都太松懈了。
　连死因都不予说明，光宣布死亡，会动摇
倒也是理所当然的。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060050a08">
「实话实说就好了。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060060a06">
「难道告诉他们，看来是暗杀但详情一切不明，
连尸体都没发现？
　这才会成为混乱的源头吧。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060070a09">
「就是如此。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0060080a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大将领护氏失踪被当做未解事件，我当然知道其中真
相，却没有说出口。
　包括我在内，各公方的幕僚团虽然列坐与此，
却没有发言权。

　虽说就算有也不会说的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060090a06">
「稳定军心的方法有一个。
　拥戴邦氏殿下开创新体制，
让整个旧体制成为历史。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060100a06">
「像奉刀参拜事件……
　从根本上将足利护氏当做不曾存在过。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060110a08">
「怎、怎么可能做到啊!?
　那种事!!」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060120a06">
「……笨蛋。别吵。
　我知道过去的历史无法改变。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060130a06">
「我想说的是，要做好以这种想法为基础
面对今后的精神准备。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060140a08">
「你明知道还这样说！
　全部当做没发生过!?　你把
父亲平定天下的业绩当成什么了——」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060150a09">
「雷蝶大人，雷蝶大人。
　请您冷静。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060160a08">
「是可忍孰不可忍！
　就算童心大人发话……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060170a09">
「您的反应乃人之常情。
　贫僧理解，非常理解。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060180a09">
「然而狮子吼大人的意见虽然有些蛮横却有一
定道理……如今不该沉迷于昔日的荣耀中，而
是必须告知万民，明日的荣耀亦属于我等。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060190a08">
「话虽如此……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060200a09">
「将护氏公<RUBY text="····">视为忌讳</RUBY>也不过一时之事。
　只要邦氏殿下能顺利承袭六卫大将领之位，
再度巩固幕府的支配，就会重新追加护氏公故
人之荣誉。」

//【童心】
<voice name="童心" class="童心" src="voice/md03/0060210a09">
「到那时也必须办一场盛大的葬礼。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060220a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060230a09">
「总之眼下要务是要重建幕府体制……
　聪慧如雷蝶大人，理应明白这个道理的。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060240a08">
「……是。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060250a09">
「对您的理解不胜感激。
　哎呀哎呀，这就放心了。我等四人若不先团
结起来，重振幕府简直就是白日梦！」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060260a09">
「哈哈哈哈哈哈！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060270a08">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060280a07">
「和尚真卖力啊！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060290a06">
「嗯，很卖力。」

{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0060300b21">
「高僧，加油。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060310a09">
「呵呵，好了。
　那就必须像什么都没发生过那般
重新振作起来。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060320a09">
「若要邦氏殿下承袭大将领之位，自然需要
朝廷的许可。
　室町探题至今都在京都为此进行着准备工作，
然而……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060330a08">
「遇到阻碍了吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060340a09">
「公家众的态度，实在是……
　因此徒劳无功，只是在白费力气啊。」

//【童心】
<voice name="童心" class="童心" src="voice/md03/0060350a09">
「如今的天皇总说心情忧郁，又说要另择吉日，
一直顾左右而言他。
　根据室町的报告，他似乎不愿给予口头上的
具体应允。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060360a06">
「哼。
　不过……这也是意料之中吧？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060370a07">
「如果说我们希望尽早平息混乱的话，<RUBY text="··">他们</RUBY>所希
望的肯定与我们相反。
　他们大概是想拖延现在的局势，让动摇
进一步扩大吧。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060380a07">
「不知道他们对未来的<RUBY text="ＶＩＳＩＯＮ">展望</RUBY>到底
有多远。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060390a09">
「还是打算集结各地的倒幕派发起暴动呢……
　或许是在期待进驻军的介入吗。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060400a06">
「甚至不考虑<RUBY text="··">最终</RUBY>大和会变成怎样吗。
　如果是那些不负责任的策士
还真能干得出来……」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060410a06">
「稍微帮帮忙如何？
　和尚。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060420a09">
「怎么帮？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060430a06">
「我将率领全军上京。」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060440a08">
「等等！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060450a07">
「你这可是火上浇油啊！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060460a06">
「——为此我们在篠川开始准备了。
　只要流传出这种情报就行了。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060470a09">
「想威吓他们吗？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060480a07">
「被看穿的话怎么办？」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060490a06">
「到那时大不了真的上京去。
　就说是来报告逆贼冈部赖纲的讨伐结果之类
的，随便编一个名义就行了。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060500a08">
「你以为这么做会平稳无事地收场吗？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060510a06">
「不会平稳地收场。
　但总比六波罗被公家众蔑视来得好。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060520a09">
「嗯……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060530a06">
「不必担心。
　我清楚那群老女人的底细。」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060540a06">
「幕后黑手暂且不说，大半的公家只在乎眼前
的利害。
　遮遮掩掩地让室町探题看到，也只是想提高
价码来做交涉的意图而已。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060550a06">
「我是想借此机会多少改善下我们的待遇。
　如果在威胁的同时抛出诱人的饵食，他们肯
定会立马贴过来。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060560a08">
「所谓的糖果加鞭子？
　真传统。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060570a07">
「传统的方法不也挺好吗？
　那些家伙脑子里的想法打千年前就没变过。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060580a09">
「……原来如此。
　没有异议？」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060590a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060600a09">
「那么，这件事就交给狮子吼大人了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060610a06">
「明白。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060620a08">
「要是能奏效就好了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060630a07">
「就算奏效了，还有下一个问题呢。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060640a06">
「……进驻军吗？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060650a08">
「<RUBY text="日内瓦">国联本部</RUBY>的谍报班有报告了。
　ＧＨＱ的院外活动似乎有结果了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060660a09">
「是说镇压叛乱的方式使我们的残虐性更
加被夸大了吗。
　虽然并非无中生有，却也没理由让他们
抱怨。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060670a07">
「联合国决议也快要出来了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060680a06">
「对大和再宣战——不对。
　对<RUBY text="···">六波罗</RUBY>宣战布告吗？」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060690a06">
「尽管来吧……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060700a09">
「战火随时都会燃起。
　……不如说他们没趁先代驾崩之时
马上攻过来才让人觉得不可思议。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060710a07">
「大概是考虑到政治时机和军备条件吧？
　或许他们想在六波罗巅峰之时击溃我们。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060720a08">
「那样的话会更受民众好评呢。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060730a06">
「我们被小看了。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060740a09">
「如此一来，战火的狼烟升起之时，就是邦氏
殿下成为大将领，立下重建幕府体制的目标之
时。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060750a08">
「几乎是同时……呢。
　想要演出效果的话这样最好了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060760a06">
「是啊。
　我们也有必要为此做好准备。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060770a06">
「如果对方没有动作……那就是绝好的机会。
　我们主动进攻，一口气攻下<RUBY text="横滨">进驻军本部</RUBY>！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060780a09">
「……嗯……」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060790a06">
「六年的屈辱会在一朝洗净。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060800a08">
「既然这么说，应该很顺利吧？
　那个的准备。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060810a06">
「当然了。
　这种事用不着你操心。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060820a07">
「哦……是一七连队吧。
　我想趁现在看看他们呢。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060830a07">
「狮子吼，之后你会回篠川去吧？
　我也一起去。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060840a06">
「用不着。
　这种事也用不着你操心。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060850a07">
「要操心的，要的要的。
　为那一计划出钱出人最多的可是我啊～」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060860a07">
「在这世上出钱的人就是老大。
　这是常识，是真理。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060870a06">
「…………
　军务怎么办？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060880a07">
「全权交给能干的副官。」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060890a06">
「……你吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0060900a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　冷不防被搭话，我不动声色地作答。
　和上次一切都出乎意料的情况不同，这次事先连这种
情况都设想过了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0060910a06">
「虽说确实比茶茶丸要可靠得多……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060920a07">
「是～吧～是～吧～」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060930a08">
「这是讽刺你呢。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060940a09">
「但是说到底也是刚提拔上任的新任副官。
　茶茶丸不在，全部的工作对你来说还是
难以负担吧。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060950a07">
「没问题的吧，中佐？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0060960a00">
「下官会竭尽全力以回报阁下的期待。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0060970a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0060980a09">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0060990a07">
「唔，反应中规中矩啊。
　要用更有说服力的说法来表达比较好哦。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0061000a00">
「明白了。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0061010a00">
「堀越公方在的话反而会妨碍办公。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0061020a07">
「哇～啊说服力太强了～！」

{	FwC("cg/fw/fw茶々丸_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0061030a07">
「我要远走高飞，请不要找我。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0061040a08">
「不会去找的。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0061050a06">
「呵呵呵……！
　是吗？这就好。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0061060a06">
「我期待你的表现，凑斗中佐。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0061070a00">
「是。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0061080a09">
「……那么换个话题吧。
　接到了关于倒幕派动向的报告。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0061090a09">
「最近，形似冈部残党的一派在——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_007.nss"