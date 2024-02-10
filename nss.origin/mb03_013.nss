//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_013.nss_MAIN
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
	#bg073_船上船縁付近_01=true;
	#bg001_空b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_014.nss";

}

scene mb03_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_012.nss"

//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg073_船上船縁付近_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　趁夜策划制定行动方针，黎明破晓之际开始行动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海
//◆船上
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　计划相当粗糙。
　
　——潜入至所能达到的极限之处，而后强袭。完毕。

　简直不能称为作战。
　不过，行动执行者是并非暗杀专家的我和一条，时间
限制具体不明但要尽快，仅凭这些条件原本就不可能形
成什么像样的作战。

　所谓时间限制具体不明但要尽快，即在小弓幕军准备
好攻击舞殿宫之前……如是之意。
　因为不管怎么考虑，不，不用考虑也知道，凭借二骑
袭击作战行动中的军队并取其主将之命是不可能的。

　只有当今川雷蝶滞留在小弓公方府内时才是唯一的机
会。……不。这一点也值得怀疑。
　公方府是历代军事重地，况且而今聚集了大批军队。
袭击该有多么困难。

　但是紧急召集军队多少会给公方府带来些许混乱。那
就一定会有漏洞。
　
　——那是唯一的希望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　这是场形势于我方不利的较量。
　或者说，作战计划甚至更劣于惨败的普陀乐城一战。

　但不可思议的是，这次没有危机感。
　对这次希望渺茫的作战，略带着预知般的感觉。确信
着它的胜利……<k>虽并非如此。很遗憾，我不曾有过这
种精神上的麻痹。

　意识到成功率会很低。
　尽管如此，迫不得已的烦躁并不会作痛——当然，考虑
到作战的失败对于我和一条，以及亲王们意味着什么，也
会焦急，也会感到危机重重。

　暗杀今川雷蝶计划的破败，这事本身并不会引起任何的
焦躁。
　
　反而——觉得失败也有失败的妙处…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ばふっ。抱きつき音
	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE01","se人体_動作_抱きつき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130020a00">
「…………」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130030a02">
「…………」


{	SoundPlay("@mbgm27",0,1000,true);
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130040a00">
「光天化日之下被女子抱住的男人，旁人会怎
么看啊。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130050a02">
「多有福气呀。
　我要是看到了这样的男人，肯定一脚踢到海
里。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130060a00">
「那肯定会冻死的。放开我。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130070a02">
「没关系。
　现在的我又不是围观的旁人。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130080a00">
「……你这样紧贴着我的话，很容易激起雄性
的欲望。」


{	FwC("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130090a02">
「现在可是大白天哦，而且是在船上哦？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130100a00">
「所以我才觉得困扰。
　你想让我怎么解决呢？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130110a02">
「……凑斗先生啊，
　其实很没有节操？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130120a00">
「才不是。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130130a02">
「怎么可以这样自信满满……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130140a00">
「只是对自己的自制力不抱任何幻想罢了。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130150a02">
「不过我也明白个中情况……
　……已经明白了呢……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	StR(1000, @-30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　叽叽咕咕地絮叨着，一条离开了我。
　令人舒适的体温渐行渐远。

{	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, DxlAuto, false);
	DeleteStR(300,false);}
　不料，又马上回来了。
　她绕到我跟前，想要钻进我的大衣里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130160a00">
「更不像话了。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130170a02">
「也许吧。」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130180a00">
「如果激起我的欲望，怎么办？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130190a02">
「到时再说。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130200a00">
「……真是不负责任。」


{	FwC("cg/fw/fw一条_笑顔b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130210a02">
「呵呵。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130220a00">
「冷吗？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130230a02">
「是啊。
　海上的风也很强劲。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130240a00">
「而且冬天快到了。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130250a02">
「是啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　船速不快，海风也很适宜。
　但仍能感觉到耳边<RUBY text="····">寒风凛冽</RUBY>，
果然还是因为冬季正式来临之前，气温本身有所下降了
吧。

　我拉开大衣的边缘，裹住一条的脑袋。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130260a02">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130270a00">
「……」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130280a02">
「没问题的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130290a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　怀中的少女突然冒出这么一句话。

　凝视。
　眼前是为我鼓气的微笑，以及不知怀疑为何物的明眸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130300a02">
「因为凑斗先生看上去有些不安。
　……没问题。只要我陪着凑斗先生就没事。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130310a00">
「…………」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130320a02">
「一定会赢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　——正是这<RUBY text="··">胜利</RUBY>之中隐藏着我的不安。
　但这句话说不出口。

　少女是美丽的。
　拥有无垢纯洁的信念，并且为此奉献上躯体灵魂，这
样的人是如此耀眼。

　光彩夺目。
　高贵至上。
　
　这份心绪果然至今未变。

　这位少女就是我曾放弃的梦想。

　明明是这样，但为何——
　我无法沉浸于这种光辉之中呢。

　为何我要驻足呢。

　如今的大和，所有拥有力量的人们皆在肆意而为，欺
侮弱者榨取他们的生命，其中唯一一位站在弱者一方，
向挥舞暴力的不逊强者发起挑战的少女——
　认同正义。俯首遵从。与之融合。

　……就在这一切的面前。
　为何我停下了脚步呢。

　何故如此在意。
　少女发出的闪耀光芒背后是什么……

　被这种光辉冲昏头脑的<RUBY text="····">某些东西</RUBY>。
　隐于暗处、看不清道不明的东西，却为何让我如此挂
心。

　究竟为何——
</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130330a02">
「我们就这样直接去小弓吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130340a00">
「……不。
　虽然很想这样做，但也不会那么顺利。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130350a00">
「平时的话大概会有班轮去小弓港，但现在恐怕
只有军事用船才能入港。
……就算有班轮，如果不通过严格的盘问也是无
法上岸的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　根据与署长牵连的当地警察官的联络所称，小弓军管
区正处于正式临战前的戒严状态中。
　主要道路业已封锁。

　空中当然还有龙骑兵巡逻队在回旋徘徊。这样一来，
海路不可能没有防备。
　今川雷蝶考虑到遭受先发制人的攻击时的危险性，所
以才有了这番警戒态势的布局吧。

　……真是反应过度。不过这是亲王身边了解实情之人
才能说出的判断。
　对于小弓公方来说，这必是理所当然的安排。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130360a00">
「房总半岛几乎全域都在小弓军的管辖之下。认
为所有港口皆已无法使用才是万全的考虑。
　我们的船在浦安靠岸。」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130370a00">
「从那里到浮桥可以乘坐巴士。之后徒步行走。
　会稍微花费些时间，但这办法最不起眼也最灵
活变通。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0130380a02">
「要是能装甲后直接飞过去的话就轻松了呢。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0130390a00">
「一旦进入小弓领空就会被察觉。
　等到达公方府就会完全处在包围之中。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateStencil("絵演型",1000,center,Middle,128,"cg/st/3d銀星号_立ち_戦闘b.png",false);
	SetAlias("絵演型","絵演型");
	CreateColorEX("絵演型/色", 1050, "#000000");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");

	Move("絵演型", 0, @256, @0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　但，其实根本到不了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵背景100", 1000, 1000, null, true);
	Fade("絵演型/色", 2000, 500, null, false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0165]
　……如果是<RUBY text="···">那家伙</RUBY>，或许会被一举驱散。
　
　考虑到去往小弓的另一个目的。

　白银之星在六波罗的——青江留下的遗言，我并没有
忘记。
　在普陀乐城没有得到任何情报。那么，接下来该找的
就是公方府。

{	FadeDelete("絵演型/色", 500, false);}
　首先是，小弓……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_014.nss"