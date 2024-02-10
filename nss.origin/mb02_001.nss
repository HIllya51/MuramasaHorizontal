//<continuation number="480">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_001.nss_MAIN
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
	#bg026_普陀楽山塞a_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;
	#bg061_普陀楽城大手門b_01=true;
	#bg062_普陀楽城大手道_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_002.nss";

}

scene mb02_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_014.nss"

//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
  ……普陀乐城寨。
　所谓普陀乐，是指佛教宇宙观中的一方净土。

　而六波罗虔诚皈依以天龙寺派临济宗为首的佛教，所
以，这可谓是其独有的名称。
　但，围绕着命名似乎也有过一段争论。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010010a02">
「……这么说来，我从之前开始就很在意。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010020a00">
「嗯。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010030a02">
「普陀乐这个名称不都是写作普陀落、普陀洛
吗。
　在与佛教相关的书籍上……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010040a00">
「问题就在这儿。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我对着边在空中划字边发问的一条点点头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010050a00">
「作为城堡名称来说不太吉利吧。
　不管是落还是洛。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010060a02">
「……这倒也是。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010070a00">
「于是改了一个字，就成了普陀乐城。
　不知道是不是这个缘故，这座城别说没被攻
陷过，甚至从未遭遇包围袭击。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　从竣工到现在不过短短五年，没有这些遭遇是理所当
然的吧，如果这么说倒也没错。
　而城堡散发出令人丧失攻击意欲的威严，也是事实。

　威严之下到底有多强的实力，又有多少虚张声势。是
塞瓦斯托波尔还是五棱郭呢。
　……根据政局的走向，大概总有一天会被问责吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010080a00">
（政局吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　如果我和一条能够潜入这座城，完成<RUBY text="··">任务</RUBY>的话。
　就能掀起政局风波。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 5000, "#FFFFFF");
	Fade("絵白転", 1600, 1000, null, true);

	CreateTextureSP("絵回想背景", 2000, Center, Middle, "cg/bg/bg032_八幡宮奥舞殿内b_01.jpg");
	Fade("絵白転", 2000, 100, null, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010090a10">
「小弓公方今川雷蝶……
　这个男人，现正为掌握幕府主导权而
四处奔忙。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010100a10">
「没那么便宜他。
　从血脉来说他是四公方之首……
但其他三人也没蠢到会因此而首肯。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010110a10">
「最后，立高僧游佐童心为邦氏辅佐人，雷蝶
落于下风。
　于是……呢。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010120a10">
「借力予这雷蝶。
　以提升我方政治地位为交换条件。将他推上
六波罗掌权者之席……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010130a10">
「以朝廷权威给他做后盾。
　代办幕府内部不好出面的<RUBY text="··">工作</RUBY>。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010140a10">
「对。工作……
　这个任务，想拜托给景明君与一条姑娘。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010150a10">
「对现在的雷蝶来说，童心乃是眼中钉。
　但若他自己<RUBY text="····">有所行动</RUBY>，很快便会暴露。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010160a10">
「这就轮到我们上场了。
　潜入普陀乐城，制造使游佐童心权威失信的
事件。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010170a10">
「有雷蝶的部下引荐二位……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010180a10">
「具体事项就拜托二位了。
　但要注意不可过火。
操纵幕府才是我方目的。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb02/0010190a10">
「若将其击垮就功亏一篑了……
　切莫忘记，还有进驻军这一敌人的存在。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵白転２", 5000, "#FFFFFF");

//◆戻り
//◆大手門
	SetVolume("@mbgm*", 3000, 0, null);
	Fade("絵白転２", 500, 1000, null, true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg061_普陀楽城大手門b_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	StR(1000, @0, @0,"cg/st/st景明_通常_変装.png");
	StL(1000, @0, @0,"cg/st/st一条_通常_変装.png");

	WaitKey(1000);

	FadeStR(500,false);
	FadeStL(500,true);

	WaitKey(500);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010200a00">
「我是新上任的政所公职人员改景秋。
　这位是与我同职的改一媛。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010210a00">
「请通报负责人。」


{	NwC("cg/fw/nw門衛.png");}
//【ｅｔｃ／門番】
<voice name="ｅｔｃ／門番" class="その他男声" src="voice/mb02/0010220e281">
「请稍等。{WaitKey(2000);}<BR>　…………今日赴任，从印旛代官所
调来的改景秋大人。是，我明白了。」


//【ｅｔｃ／門番】
<voice name="ｅｔｃ／門番" class="その他男声" src="voice/mb02/0010230e281">
「请进。
　我马上联络政所。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010240a00">
「多谢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　朝那个很符合门卫形象、一脸耿直的中年武官点了点
头，我们穿过旁门。
　前方是与庶民无缘的世界，对于我们来说也是完全未
知的领域。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内·大手道
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg062_普陀楽城大手道_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　极目远眺，沿着山峦的形状凿开一条路——一条护城
河，在自然形成或人工建造的岩壁上筑起城郭。
　这是甲州武田流典型的平山龙堡。虽其规模较之通常
先例更为巨大。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_変装.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010250a02">
「去那里就行了吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010260a00">
「不。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　一条指着最近的城郭，说道。
　我则摇了摇头。

　普陀乐城的内部构造不可能对外公开，事先调查所得
的情报不过管中窥豹罢了。
　即便如此，按照常例还是可以推测出一些情况的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010270a00">
「那恐怕是下级武官的事务室。
　政务设施一般在最里面。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010280a02">
「……那，要爬山吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　一条惊愕般的声音，并非嫌麻烦，大概是因为想像着
幕府的官吏每天早晨成群结队爬山的情景吧。
　我苦笑着订正她的误解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010290a00">
「不需要。
　等会儿就会有人来接我们了。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010300a02">
「……接我们？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　她一副没想通的样子，鹦鹉学舌地反问我。
　我将沿着山麓延伸的大路指给她看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010310a00">
「上面铺了沥青。
　……是最新的技术。使得道路更平整。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010320a02">
「是呢…………啊，这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　几乎就在一条回过味来的同时，空荡而沉重的低音从
山坡上传了过来。
　是内燃机排气的声音。

　比我预估的还快。
　似乎正如那个正直的门卫所说，立刻与政所取得了联
系。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010330a02">
「是汽车吗？」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010340a00">
「城内这么大。
　只有徒步这一交通手段就太局限了。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010350a00">
「还有精心铺修的道路……
　从主堡到正门，大概十几分钟就能到达了。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010360a02">
「真方便啊。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010370a00">
「在发生紧急情况时，
似乎也有助于迅速布下兵力。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　不过对于攻进这座城的人来说也是一样。
　不，说不定正因此才采用沥青铺路。而不是混凝土。

　铺上混凝土的路更耐用。
　想必能够承受住超过五〇吨的重型战车。若是使用沥
青，路面的损坏就不可避免。

　但沥青处理起来较为容易。
　有可能被敌人使用时破坏掉、而自己人使用时再重新
铺设，这种灵活应用也不是不可能。

　……不过，这一切是建立在不考虑成本的前提上。
　是否切实可行，还是个未知数。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆車が来る。停車
	CreateSE("SE01","se乗物_車_停止01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010380a00">
「是国产车。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010390a02">
「啊。
　这么说来，我在报纸上看到过。这种的。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010400a00">
「富田ＡＡ型。
　第一辆国产小汽车。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆顔Ｇは露骨にケバい中年女性。雷蝶っぽい
	CreateSE("SE01","se乗物_車_ドア開閉01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw岩田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010410b20">
「这座城里使用的车全都是国产的。
　虽然价钱昂贵，不过这也算是公职人员的偏
好吧。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010420a00">
「我完全同意。没有这种姿态是无法扶植国内
工业的。
　……您是今川中将阁下的……？」


{	FwC("cg/fw/fw岩田_通常.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010430b20">
「太不小心了，凑斗大人。居然大意地在此说
出那个名字。
　因为我对外伪装出和小弓毫无关系的一介官
吏模样，暗地里进行密探活动。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010440a00">
「真是看不出来。」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010450b20">
「呵呵呵……那当然。
　不然怎么能胜任密探工作呢。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0010460a02">
「凑斗先生。
　我觉得对话两不相合。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0010470a00">
「我也这样想。」


{	FwC("cg/fw/fw岩田_微笑.png");}
//【岩田】
<voice name="岩田" class="その他女声" src="voice/mb02/0010480b20">
「来吧，请。
　先带你们去看看公馆。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ぶろろー。
	CreateSE("SE01","se乗物_車_発車01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵暗幕", 15000, "#000000");
	DrawTransition("絵暗幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitKey(1000);

	ClearWaitAll(3000, 0);

}

..//ジャンプ指定
//次ファイル　"mb02_002.nss"