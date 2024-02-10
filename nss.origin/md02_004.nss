//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_004.nss_MAIN
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
	#bg098_堀越御所内廊下_01=true;
	#bg031_八幡宮境内_01=true;
	#ev924_銀星号飢餓虚空魔王星=true;
	#bg001_空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_005.nss";

}

scene md02_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_003.nss"

//◆ＢＧＭ
//◆御所内
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm23", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　问过才知道，奉刀参拜已经是三天前的事。
　似乎睡了相当长的时间。

　以此来检视自己身体，
确实全身都有睡过头时特有的痛感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆こぽこぽ
	OnSE("se日常_水_注ぐ01", 1000);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040010a07">
「请喝茶——」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040020a00">
「……非常感谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　与六波罗中将足利茶茶丸，
两人一起并座于走廊喝着煎茶。
　茶香和口感都很好。
于是我想起了伊豆与茶叶的名产地很近。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040030a07">
「今天是多云，真不妙啊。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040040a00">
「？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040050a07">
「那边的天空。
　不能看清富士山。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040060a00">
「……这样啊。
　这朝北的庭院是为了观赏富士山的吗？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040070a07">
「没错。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040080a07">
「从这附近，能看到富士山<RUBY text="··">山腰</RUBY>那边
巨大的窟窿，很有趣的哟。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040090a00">
「这样啊……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040100a00">
「那么，阁下。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040110a07">
「我？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040120a00">
「是的。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040130a07">
「不用那么客气的说话方式也行啦。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040140a00">
「我是外人。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040150a07">
「好酷……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040160a00">
「想请问。
　为什么连我也带来伊豆？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040170a07">
「因为把你留在镰仓会变得很麻烦。
　我在<RUBY text="镰仓">东都</RUBY>值防护警卫月班啊。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040180a07">
「八幡宫事件可以说是我的过失。
　在被雷蝶那边追究责任之前，
决定先下手为强隐蔽在根据地内。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040190a00">
「……八幡宫事件……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040200a07">
「足利护氏死了。
　一代霸王的死也太简单了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040210a00">
「那——确实是？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040220a07">
「对外还是没有公布，
内部以失踪者名义搜索中。
　八幡宫和护卫团全灭了，
三天时间过去却毫无线索。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040230a07">
「死亡是肯定的。
　普陀乐已经开始准备继承者的事宜了。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040240a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　在银星号的冲击下被吹飞——因此不管是生是死，
大将领的身体最终将会被那黑暗的漩涡所吞噬。
　他若是没有现身，大概就是如此。

　最终，舞殿宫的企图还是达成了。
　但是……由于我无法回去报告，
把握情报想必十分艰苦。

　不过，能确保亲王免受灾害就好……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040250a00">
「知道大将领死亡的只有普陀乐首脑吗？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040260a07">
「这个嘛。
　总觉得ＧＨＱ的行动很可疑，
倒幕派也开始蠢蠢欲动……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040270a07">
「可能已经泄漏出去也说不定。
　反正，这也不是想藏就能藏住的事。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040280a00">
「嗯。
　……那姑且不谈论这个。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040290a00">
「刚才向阁下询问关于特意
将我带到这里来的事。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040300a07">
「就那样丢下不管会很糟糕的。
　哥哥，他们会把你当成案件的
主谋而进行处刑的哦？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……虽无法断言是冤罪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040310a00">
「可是，那只不过是我个人的事。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040320a07">
「也有我的原因。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040330a00">
「……到底怎么回事？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040340a07">
「这茶真好喝——」

//◆ずずー。
{	OnSE("se人体_動作_茶をすする", 1000);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040350a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040360a00">
「那么，参照阁下的情况，
今后我将是何种处境？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　目前是软禁吗？

　我想尽快回镰仓，想把八幡宫所
发生的事全部向亲王和署长报告。
　若堀越公方不同意的话，也只能强行突破了……

　这里是公方府邸，显然是军事基地。
　应该不容易。至少在村正恢复前都不能轻举妄动。

　相比强硬的手法，还是利用对方弱点为好……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040370a07">
「没什么特别的打算。
　要看哥哥你了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040380a00">
「……？」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0040390a00">
「按照我的想法也没关系？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040400a07">
「当然。
　我不是那种爱束缚男人的类型。
我比较喜欢在背后支持对方。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040410a07">
「不会添麻烦，必要时什么都会帮忙的女人。
当然是处女咯。但床技也不错。
　……哇你看，我这样挺不错的吧。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040420a07">
「漂亮小伙你真是赚到了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040430a00">
「…………
　我想回镰仓。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040440a07">
「这样我会很寂寞……
　我暂时还回不去——」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040450a07">
「但如果哥哥你想这样的话也没办法。
　要准备列车吗？ 比坐船慢悠悠的要好吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040460a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　不懂。
　这个将军——这少女对我到底有何要求？

　是敌人还是伙伴？
　像亲近人的小狗般无法感到一丝敌意和表里不一。
可是——她承认了自己是银星号的拥护者。

　那是事实吗？
　如果是事实，又为何要那么做？

　足利茶茶丸的目的究竟是什么？

　……太多谜团。

　因为太多而不知从何问起。
　想到什么就开问吧——其回答又有多少可信度呢……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040470a07">
「啊啦？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040480a00">
「……什么？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040490a07">
「我还想会有一段时间不会出现了。
　难道是因为哥哥你醒了的缘故？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040500a00">
「？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040510a07">
「太好了。
　等的人能来。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040520a07">
「在如此平静的情况下见面也很久没有过了吧？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040530a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	Wait(1000);


//◆光登場

	StC(1000, @0, @0, "cg/st/st光_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　————光。

　是光。
　光在这里。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37", 0, 1000, true);


//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("絵回想200", 2100, -200, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateTextureSP("絵回想300", 2200, 100, InBottom, "cg/st/3d村正標準_立ち_通常.png");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw光_好戦.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md02/0040540a14">
「人类应该就此斩断团结一致，互相依偎的时代。
　谁都该遵循欲望而生存、战斗、杀戮——
我要引领这样的时代！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　光。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, -240, -460, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw光_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md02/0040550a14">
「成为神，就能将我的欲望<RUBY text="···">正当化</RUBY>，
　将人世破坏，就能解放被人法囚困的父亲……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040560a14">
「没有任何阻隔，光和父亲就能面对面！
　就能将被母亲抢走的父亲夺回来！」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040570a14">
「这就是光的霸道!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　光……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("絵回想200", 2100, -200, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateTextureSP("絵回想300", 2200, 100, InBottom, "cg/st/3d村正標準_立ち_通常.png");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw光_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md02/0040580a14">
「知道村正是怎样的剑胄。」

//【光】
<voice name="光" class="光" src="voice/md02/0040590a14">
「在知道的基础上，成为我的所有物。」

//【光】
<voice name="光" class="光" src="voice/md02/0040600a14">
「然后也给予了你……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040610a14">
「为了用你的手，将母亲杀死！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040620a00">
「光!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆だっ。飛び掛かる。

	OnSE("se人体_動作_跳躍01",1000);

	SetVolume("@mbgm*", 1000, 0, null);
	Request("@StC*", Smoothing);
	Zoom("@StC*", 300, @2500, @2500, null, false);
	Zoom("@OnBG*", 300, 2000, 2000, null, true);

	CreatePlainEX("絵板写", 10000);
	Fade("絵板写", 0, 1000, null, true);

	Shake("絵板写", 500, 50, 50, 0, 0, 500, null, false);
	OnSE("se戦闘_攻撃_殴る01",1000);

//◆ずだーん。世界回る。
	CreateSE("たたきつけ","se人体_動作_叩く02");
	CreateSE("たたきつけ２","se戦闘_攻撃_殴る05");

	SetBlur("絵板写", true, 3, 500, 30, false);
	Zoom("絵板写", 300, 2000, 2000, Dxl2, false);
	Rotate("絵板写", 300, @0, @0, @180, Axl2,false);
	Wait(300);
	MusicStart("たたきつけ",0,1000,0,1000,null,false);
	MusicStart("たたきつけ２",0,1000,0,1000,null,false);
	Shake("絵板写", 500, 50, 50, 0, 0, 500, null, false);

	Wait(200);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	OnSE("se人体_衝撃_転倒03",1000);

	Wait(1);
	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg001_空a_01.jpg");
	FadeBG(0,true);

	Wait(2000);

	FadeDelete("絵白転", 1500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……恢复过来的时候。
　我躺在床上，仰望着天花板。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/md02/0040630a14">
「……景明……」

{	SoundPlay("@mbgm30", 0, 1000, true);
	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040640a14">
「被那么热烈地渴求，不仅不会让人心情不佳，
倒不如说那是光的愿望。
　但也得看清ＴＣＯ啊！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040650a00">
「……<RUBY text="ＴＣＯ">资产持有费用</RUBY>……？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040660a07">
「公主殿下，是<RUBY text="ＴＰＯ">时间地点场合</RUBY>才对。」

{	FwC("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040670a14">
「——要看清ＴＰＯ……
　现在还是清早，这里又是走廊，光才刚起来。」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040680a14">
「于是，即便再亲近的关系也该懂礼仪。
　首先是早晨的问候。」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040690a14">
「景明，你早。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040700a00">
「…………早。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040710a07">
「早啊，公主殿下。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040720a14">
「唔，早。
　今天能看到青空，心情很舒畅。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040730a07">
「这种天气就想打棒球啊。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040740a14">
「也不错。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040750a07">
「中午的时候玩么？
　召集有闲的武者吧。」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040760a14">
「好。
　正好想试试新的怪球。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040770a07">
「哥哥也要来玩吗？
　全身装甲棒球。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040780a00">
「……全身装甲？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040790a07">
「这可不是普通的游戏哦。公主殿下投的球
没有人能打中，<RUBY text="ｃａｔｃｈｅｒ">捕手</RUBY>每接一球就得
送医院。如果她是在击球员位置进行<RUBY text="ｐｉｔｃｈｅｒｌｉｎｅｒ">投球反</RUBY>的话，
会连投手一起击出场外变为<RUBY text="ｈｏｍｅｒｕｎ">本垒打</RUBY>。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040800a07">
「全部选手均是穿上剑胄的武者，<RUBY text="公主殿下">银星号</RUBY>则
解除重力操控，勉强能进行比赛。
　这样的棒球很有<RUBY text="ａｓｔｒｏ">宇宙</RUBY>感。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040810a00">
「…………」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040820a14">
「让人相当兴奋的有趣竞技啊。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040830a07">
「兴奋过度，比赛结束的时候，将近一半的
选手都无法双腿直立。
　哥哥，怎样？有没有兴趣？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040840a00">
「一点兴趣也没有。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040850a07">
「真遗憾。
　不过，剑胄还在修复中，这也没办法。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040860a07">
「哥哥好像是还蛮喜欢棒球的吧？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040870a14">
「那是当然。
　呼呼呼，景明相当厉害的哟。」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040880a14">
「在当地可被称为触击魔王。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040890a07">
「冷面大王般的宝座啊。」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040900a14">
「说什么啊。
　他作捕手也是一绝呢，判断边际击球是否
在界内这方面可是达人级的哦。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040910a07">
「……满是微妙才能的人啊。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆景明、起き上がる
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStR(0, false);
	FadeStL(0, true);

	OnSE("se人体_動作_立ち上がる_畳",1000);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　一边理解着上面的对话，一边支起身来。
　激动的情绪已散去。

　但也不显平静。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040920a00">
「光……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040930a14">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	SoundPlay("@mbgm32", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　呼其名字，光爽朗地回应。

　隔膜。

　若无其事的态度，更让人感觉违和。
　为何能有如此自然的态度？

　这两年来的事，对光来说到底是怎样的？

　身披剑胄对立之时尚且无法避免会感受到的
心理隔膜，赤身相对时更加毫无遮掩。
　光用两年前同样的目光看着我。

　就像在说，和我的关系依旧不变。

　那是不可能的——一切都变了。

　要是相信没变，那样的盲信才是疯狂。
　光果然疯了。<k>
　我这么认为。<k>
　<RUBY text="······">单方面地认为</RUBY>。

　希望她是正因为疯狂才变为杀戮的银星号。
　如此，只需叹息光不幸的命运就好。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//■以下の演出をするため、↑↓のウィンドウは櫻井がいじっている inc櫻井
//　修正する場合、上のウィンドウコマンド末端、下のウィンドウ先端を削除すればOK

	CreateColorSP("黒幕１", 50, "BLACK");
	Fade("黒幕１", 3000, 1000, null, false);
	FadeDelete("@OnBG*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　但是。

　假若……她没有疯。
　正如本人所说，一切乃<RUBY text="··">理智</RUBY>之下。

　会怎样？

　那般杀戮。
　那般灾祸。

　并不因其失常——

　而是愿望所引起的话。

　光若只是在这两年间纯粹活着的话。

　……那可能吗？

　没有<RUBY text="··">疯狂</RUBY>。
　没有<RUBY text="··">憎恨</RUBY>。

　只是追寻夙愿按其<RUBY text="·">理</RUBY>而杀戮人类——

　毁坏世界。

　……那有可能吗？

　假若有这个可能——<k>
　
　
　　　　　　　　　　……我该怎么做？

　养母的死，
　以及在关东散播的灾厄。

　若是由于光渴求父亲而造成的话————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(500, 500);

}

..//ジャンプ指定
//次ファイル　"md02_005.nss"