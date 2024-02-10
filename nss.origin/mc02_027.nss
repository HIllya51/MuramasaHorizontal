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

scene mc02_027.nss_MAIN
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

	$GameName = "mc02_028vs.nss";

}

scene mc02_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_026.nss"

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateColorEXadd("白幕１", 15000, "WHITE");
	CreateTextureEXadd("移動", 16000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("移動",0,1000,null,true);
	Fade("白幕１",0,300,null,true);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Zoom("絵背景20", 0, 1050, 1050, null, true);
	Zoom("絵背景20", 50000, 1500, 1500, null, false);
	Shake("絵背景20", 50000, 3, 3, 0, 0, 1000, Dxl3, false);
	Delete("上背景");

	OnSE("se戦闘_動作_空上昇01", 1000);
	DrawDelete("黒幕１", 200, 1000, "zoom_01_00_1", true);
	FadeDelete("移動", 500, false);
	FadeDelete("白幕１", 1000, true);
	CreateSE("トンデマス", "se戦闘_動作_空走行02_L");
	MusicStart("トンデマス",0,1000,0,1500,Dxl3,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　离开了丈方密室，我逃向空中。
　从闭塞到无限开阔的急剧转变。

　体会着解放的滋味，眺望被我遗弃的牢狱，
我替飞行推进器补充热能——提升速度。
　就算守卫基地的龙骑兵再勤劳，
应该也不会立刻就察觉到来自<RUBY text="··">内部</RUBY>的突袭。

　只要不停滞不前就能甩开他们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("トンデマス", 1500, 100, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/0270010a01">
《……那么，主君。
　结果到底怎么样了？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270020a00">
「啊啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我概括要点，将之传达给剑胄。
　一方面是为了确认接下来该做的事，
另一方面好让自己反复回想。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景30", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_03.jpg");
	Delete("絵背景20");

	StL(1000,@0,@0,"cg/st/st香奈枝_通常_制服c.png");
	StR(1000,@0,@ 0,"cg/st/st景明_通常_私服.png");
	FadeStR(0,false);
	FadeStL(0,true);

	EfRecoIn2(300);

	SoundPlay("@mbgm21",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270030a03">
「十一月二十九日上午七点四十五分……
　从这横滨基地，会有一艘飞行战舰以飞航
训练的名义出击。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270040a03">
「这项预定已通知幕府，
他们不会进行迎击。
　当然，为防万一遇到空袭，想必还是
准备了警戒态势吧……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270050a00">
「飞行舰艇的外观呢？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270060a03">
「维卡斯·梅飞四式Ｃ型。
　在飞行战舰中速度较快，
但是形体较小。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270070a00">
「……最多可承载二十骑龙骑兵。
　这种程度的战力，就算能成功
奇袭普陀乐，也不会造成什么损害。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270080a00">
「这我明白。
　但六波罗的警戒也只是形式而已吧。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270090a03">
「嗯。恐怕如此。
　不过突袭当天的翌日，在普陀乐将举行大将领
的宣誓典礼，幕阁首脑们都会齐聚一堂。
我想应该会略微加强警戒才是——」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270100a03">
「说到底只是个形式而已。
　假借飞行训练暗杀／绑架要员，
骗小孩也要有个限度。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270110a00">
「同意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　区区二十骑，使用这么草率的手法
不可能会成功。
　假设防空队没看到突袭者，位于地面上的
各首要官员也拥有自己的警卫团。

　因此——
　二十九日当天，六波罗发现飞行战舰后，
也不会实行立刻猛攻将其击坠的极其蛮横
且<RUBY text="··">适当</RUBY>的处置方式吧。

　就算敌舰侵入危险领域，他们也只会睁一只眼
闭一只眼放对方通过……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270120a03">
「从横滨到普陀乐约有二〇公里。
　以维卡斯级的飞行速度……三十分钟就能抵达
目的地。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270130a00">
「不过……这只是直线前进的情况，大尉。
　为了尽量躲避六波罗的耳目，飞行舰艇
是否会采取迂回行进的方式？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270140a03">
「这个啊，应该不会。
　因为关乎那颗问题炸弹的安全性，
卡农中佐似乎还没有完全信赖。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270150a03">
「他想要缩短作战所需时间。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270160a00">
「……原来如此。
　所以，轰炸作战没有派出龙骑兵，
而是特意开出速度不快的飞行舰艇。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270170a03">
「基于同样的理由……
　他想要在安定的环境之下
使用炸弹。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270180a03">
「在无意义的地方让它爆炸，会被误以为是
送给镰仓市民的烟火祝贺礼。
　那是为了一击将普陀乐城及数十万军兵<RUBY text="··">毁灭</RUBY>
所准备的炸弹。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270190a00">
「————」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270200a03">
「您还不相信吗？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270210a00">
「一时之间……难以相信。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270220a00">
「……锻造雷弹……
　相当于一个人重量的火药，
等于ＴＮＴ火药一万吨的爆破力？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270230a03">
「怎么听都是玩笑话。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270240a00">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我笑也不笑地点了头。
　如果可以一笑了之的话，我也很想这么做。

　香奈枝小姐也和我一样吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270250a03">
「究竟是用什么原理完成这项可怕的武器，
我已经无从查证。
　只是，这似乎不是短时间内的发明
……而是经过长期研究完成的武器。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270260a03">
「契机就是因为沃尔夫
发现了制作炸弹的材料。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270270a00">
「……他发现的啊。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270280a03">
「听说是在印度西北部“死者的丘陵”遗迹中
挖掘到的。
　名为冥府矿的重金属。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270290a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270300a03">
「不过，先不论来历。
　他不顾一切地将麻烦至极的不明物
引进大和，这倒是事实。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270310a03">
「而且，景明大人。
　您认为我会因为太过无所事事而演一出戏
来嘲弄你吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270320a00">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270330a00">
「这个，我倒是能欣然接受。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　回首过往的言行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_凹む.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270340a03">
「……狼来了的悲哀……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270350a00">
「先不说这件事。
　大尉阁下，
您知道具体的爆破顺序吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270360a03">
「只是我的推测而已。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270370a00">
「麻烦讲解一下。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270380a03">
「根据预想的炸弹破坏规模，
我不认为会采用空投方式。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270390a03">
「如果低空空投，将会受到波及。
　不过，若是在高空投下，
命中度又不可信。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270400a00">
「的确……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270410a03">
「最后，还是会让龙骑兵投下炸弹吧。
　而且会选择速度较快——且拥有不被普陀乐
防空队<RUBY text="··">捕捉</RUBY>能力的骑体……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270420a00">
「就是传说中的……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270430a03">
「ＳＴ-〇九——隐形龙骑兵首次用于实战，
大概会变成这样吧。
　此次作战会在军事史上，留下许多重大
意义。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270440a00">
「已经完成了吗？
　而且，已经装备在大和进驻军的身上了？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270450a03">
「是的，景明大人。情报属实。
　完成最终运行评价试验的ＳＴ-〇九的
<RUBY text="··">部队</RUBY>已经在横滨基地待命了吧？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270460a00">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270470a03">
「这也是卡农中佐的本领……
　要是我这么说的话，您会卷起尾巴逃走吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270480a00">
「如果能逃的话，我也想。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　根据从大尉那里听来的话，似乎可以断言，
在亲王与养父以卡农中佐为对手的对局中，
胜负<RUBY text="···">被逆转</RUBY>了。
　不过这也是，理所当然吧。

　凑斗景明挑战这样的对手，负担恐怕过重。
　就算有胜算……恐怕也只能是利用他不把
我放在眼里的这份疏忽。

　真是丢人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270490a00">
「来生就生为有尾巴的动物吧。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270500a03">
「那我会爱护您的。
　飞行战舰会接近刚好不会被爆炸波及的地
方，然后掉头。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270510a03">
「在那之前，他们会让装备爆破装置的
ＳＴ-〇九从射出口出击。
　接着会用最快的速度抵达普陀乐城的
上空。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270520a03">
「投下锻造飞弹后，
维持同样的速度脱离危险领域。
　炸弹——不会到落地时才爆炸。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270530a03">
「会在空中的适当位置爆炸。
　只会留下普陀乐城外围。当然，
为参加邦氏殿下大将领宣誓典礼
而齐聚一堂的军官们会全部丧命。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270540a03">
「六波罗将真正灭亡。
　大和失去了身为主权国家，
也就是军事力量的具体依靠，
会成为大英联邦的从属国。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270550a00">
「………………」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270560a00">
「若要阻止的话。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270570a03">
「请先说说景明大人您的想法吧。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270580a00">
「现在立即采取行动，夺取关键的炸弹，然后
将它解体，或是丢到无法回收的地方。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270590a03">
「太不切实际了。
　我虽然知道保管锻造飞弹的地方，
但那里戒备森严，以我们的战力是不
可能突破的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270600a00">
「那么从搬运方面下手，破坏飞行战舰。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270610a03">
「飞行战舰不只一艘。
　……您要全数破坏吗？」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270620a00">
「向六波罗密告作战计划。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270630a03">
「虽然这么做没有损失，
但不能保证对方会全盘接受，
进而采取全面的防护措施。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270640a00">
「……暗杀卡农中佐——不，限制他的行动。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270650a03">
「毫无意义。
　就算作战计划是中佐一人独创，
但实行就不同了。其他将校也可以
代理卡农中佐指挥作战。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270660a00">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270670a03">
「还有其他方法吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270680a00">
「大尉阁下似乎已经胸有成竹。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270690a03">
「是的，其实。
　我是不是有些坏心眼呢。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270700a00">
「在军队出发后阻止——的话？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270710a03">
「由于是秘密作战，所以能动员的兵力
非常少……
　一艘小型战舰，搭乘数十名士兵，应该
就是全部兵力。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270720a03">
「加上纱代，总数也只有三人的我们若
要获胜，只能趁他们在空中孤立无援时
采取行动。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270730a00">
「有道理。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270740a03">
「我和纱代先潜入飞行战舰吧。
　景明大人就偷袭正要前往镰仓的飞行船，
加入我们的作战。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270750a03">
「您就妥善运用剑胄吧。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270760a00">
「原来如此……
　我们内外夹击，扰乱他们。」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270770a03">
「是的。然后再判断是要将炸弹解体，
还是将它投入相模湾内。
　如果是不能任意丢弃的混帐物品的
话……别无他法。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270780a03">
「我们俩就去无人岛引爆它吧。
　纵然短暂的生命消逝，但我们的爱将
至死不渝。贯穿天际的火柱是我们悲恋
的纪念碑——」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270790a00">
「明白。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270800a03">
「……嗯？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270810a00">
「若您希望如此，我没有意见。
　让我陪同您吧。」

</PRE>
	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270820a03">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270830a00">
「大尉阁下？」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270840a03">
「没、没什么。
　……咳。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0270850a03">
「好了，大概不用到这一步吧。
　他们只有一次机会可以扫荡幕府。只要我们
能在宣誓典礼结束前搞到炸弹的话，就能暂时
解除危机了。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0270860a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
//おがみ：セピア処理対応
//	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆回想終了
	EfRecoOut1(300);
	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Zoom("絵背景20", 0, 1050, 1050, null, true);
	Zoom("絵背景20", 50000, 1500, 1500, null, false);
	Shake("絵背景20", 50000, 3, 3, 0, 0, 1000, Dxl3, false);

	Delete("絵背景30");
	CreateSE("SEトンデマス", "se戦闘_動作_空走行02_L");
	MusicStart("SEトンデマス",0,1000,0,1500,Dxl3,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　
　　　　　　　　　上午七点四十九分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_028vs.nss"