//<continuation number="810">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_027.nss_MAIN
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
	#bg096_八幡宮地下岩窟_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_028.nss";

}

scene md01_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_026.nss"

//◆下宮
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　道路突然结束了，我面前出现了广阔的空间。
　里面是和地上类似的祭祀宫殿。

　这是下宫。

　……我已来到了这里。
　已经，不得不作出决断了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270010a05">
「众神住于<RUBY text="根之国">地底界</RUBY>。
　此类神话亦存于世。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270020a00">
「————？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　大将领缓缓开口。
　如果不是自言自语，就是在对我们说吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270030a05">
「金色之神长眠于地底……
　待时辰一到，届时将临于现世。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270040a05">
「此为虾夷之信仰吧。」

{	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0270050a01">
「…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270060a05">
「汝作何感想。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270070a00">
「……啊？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270080a05">
「神存于地底之信仰。
　此祭殿特建于地下……似乎也未对荒唐之
传说笑而不屑。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270090a05">
「汝可有此感。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270100a00">
「是。
　您说得对。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270110a05">
「哼哼哼……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270120a00">
「……？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270130a05">
「汝不是此社之神官吗。
　轻容常人之想法，一语不驳，有违
汝之立场。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270140a00">
「……臣惶恐。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270150a05">
「若有意见，说与余闻。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270160a00">
「…………那么。
　既然得到了您的许可。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270170a05">
「嗯。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270180a00">
「据某种说法，八幡神原本为外来之神……
　于是，其存在一种作为寻求新国家人们之
守护神的性质。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270190a05">
「嚯……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270200a00">
「这种八幡信仰，便以此种形式表现出来……
应该可以这样考虑。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270210a05">
「造于地下异空间之下宫，象征八幡神铸造之
新世界。
　此为汝意。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270220a00">
「是。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270230a05">
「不愧为本职。
　了解如此之深。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270240a00">
「在您面前炫此浅学，汗颜之至。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　事前我就以防万一，学习了和八幡宫关联的一系列知
识，果然派上了用场。
　临考熬夜学习的功夫也不可小看。

　刚才险些进入了危险的局面……
　算是平安度过了吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270250a05">
「汝棋错一招。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270260a00">
「————」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270270a05">
「汝不该斗胆还嘴。
　若为真正神官，无论余如何试探，亦必将惶
恐而一言不发。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270280a00">
「……臣失礼——」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270290a05">
「致命之失败，乃汝降至此处之步法……
　保持距离之法。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270300a05">
「把握余之<RUBY text="····">斩击范围</RUBY>而自然远离，
　神官怎能做到。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270310a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……糟了！
　我下意识地暴露了习惯?!

　我太天真了。
　纠结于暗杀的是非，甚至没有考虑到这种危险。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270320a05">
「舞殿宫属下有汝般武人？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270330a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270340a05">
「担刺客之任是因忠义？
　或诱于奖赏？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270350a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270360a05">
「事到如今沉默已晚。
　说与余闻。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270370a00">
「……那么。
　我来问六卫大将领殿下。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270380a05">
「嚯？
　刺客意欲问余？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270390a00">
「对于王将之人，有一个问题，无论对方
是谁都必须回答。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270400a05">
「说。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270410a00">
「您是怎样的王者。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270420a05">
「————」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270430a00">
「您要将这大和怎样。
　您要将国民怎样。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0270440a00">
「您是怎样的王。
　……请给予我答案。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270450a05">
「哼，哼……」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270460a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270470a05">
「很遗憾，刺客。
　余并无此问之答案。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270480a00">
「什么？」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270490a05">
「余仅为霸者。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270500a05">
「将一切夺取、征服、统治……
　此为足利护氏。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270510a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0270520a00">
「那么您……目的只为<RUBY text="··">统治</RUBY>吗。
　不关心治理之事？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270530a05">
「并非完全无心治理。
　但只作为……进行征服之手段。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　颠倒了。

　这个男人不是为了政治而期望支配。
　而是作为完成支配的手段，进行政治……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270540a00">
「那么您已经达到目的了吗。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270550a05">
「哼……蠢话。
　余怎会至此满足。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270560a05">
「现今大和之中，不从六波罗旗帜者白昼尚且
堂然阔步。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270570a00">
「……进驻军？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270580a05">
「若不将其驱逐，余霸业不成。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270590a00">
「即是说今后要开启战端……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270600a05">
「并非今后之远。
　即刻开战。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270610a05">
「怎能允许众白猪于余之庭继续肥大。
　余将遣其返回彼岸之畜舍。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270620a00">
「应该没有胜算。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270630a05">
「余必胜。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270640a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270650a05">
「此时不同于六年之前。当时无论如何亦无法
战胜。
　所以选择恭顺之道。」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270660a05">
「但六波罗今非昔比。
　此次必胜……也许会令国土荒芜，国民
牺牲半数，但必定胜利！」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270670a00">
「……怎么可能……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270680a05">
「嗯……？」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270690a00">
「半数国民？
　以如此的牺牲为代价，
这样的胜利没有任何意义！」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0270700a00">
「即使让进驻军撤退，大和自己也会崩溃……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270710a05">
「确实。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270720a00">
「……?!」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270730a05">
「无碍。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270740a00">
「您是说，即使是什么都没有留下的胜利，也
想要——？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270750a05">
「会留下。
　留下余称霸大和之事实。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270760a00">
「…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270770a05">
「此外之事，余无兴趣。」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0270780a00">
「大将领……
　您……仅仅为了这个目的……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateSE("SE01","se人体_動作_後ずさり01");
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeStC(300,true);

	SetFwL("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270790a05">
「那么。
　余度过了无益的时间。」

{	FwL("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270800a05">
「作为与汝送死之礼，似已过多。
　也好……顺便再送与汝一份荣誉。」

{	FwL("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0270810a05">
「须切！」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md01_028.nss"