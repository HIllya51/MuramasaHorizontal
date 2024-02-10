//<continuation number="1040">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_014.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;
	#bg089_普陀楽城内高級士官用食堂_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_015.nss";

}

scene md03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_013.nss"


//◆廊下·昼

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg057_普陀楽城廊下_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　报告完毕，退了出来。
　今天还有必须解决的文件。

　快步朝办公处走去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140010a06">
「凑斗中佐。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼

	StL(1000, @0, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStL(500, true);

	Wait(300);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140020a00">
「大鸟中将阁下。
　……报告内容有问题吗？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140030a06">
「不，不是。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140040a06">
「你吃过饭了吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140050a00">
「不，还没。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140060a06">
「那就一起吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆士官食堂。bg089a

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStL(0,true);
	OnBG(100, "bg089_普陀楽城内高級士官用食堂_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　与篠川公方龙军中将同桌吃饭——
　话虽如此也不是什么大不了的事，没有任何同席者，
地点是在城内的士官用食堂。

　为人既不冷漠也不好表现自我，
这便是狮子吼其人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140070a00">
「……阁下要即刻回篠川吗？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140080a06">
「嗯。
　今晚便出发。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140090a06">
「如果现在不抓紧，让京都的公家众再起反抗
之心的话，一切努力都会化作泡影。
　而且还要就与进驻军的开战事宜进行准备。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140100a00">
「……在如此繁忙之际您还要为下官抽出时
间，下官的感激之情难以言表。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　注意语气不显得讽刺，我小心应答。

　他的开战准备如今应该正为茶茶丸所妨碍——
为了使一切照<RUBY text="···">我们的</RUBY>目标发展。

　具体怎么做我不知道，但是那变化肯定不会给六波罗
带来利益。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140110a06">
「我只是找你吃个饭而已。
　别在意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大鸟狮子吼中将冷冷地丢出一句话。
　但是，声调中却感觉不到敌意或是嫌恶感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140120a06">
「说到底，是我找你有事的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140130a00">
「是。
　您有什么事？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140140a06">
「一句话就完。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140150a00">
「是……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140160a06">
「那我开门见山地说了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　放下筷子，用餐巾拭擦嘴角——
　中将眼神锐利地盯着我的脸，说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140170a06">
「砍了茶茶丸。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト
	WaitKey(800);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140180a00">
「……」

{	SoundPlay("@mbgm35", 0, 1000, true);
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140190a00">
「阁下……？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140200a06">
「是我听错了吗——可别对我说这种老套的话。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140210a00">
「被您抢白了我就无法这么说了……
　不过方才的话虽然没听错，却是何意呢？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140220a06">
「哼。
　随你怎么想……」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140230a06">
「你可以真的砍掉那家伙的脑袋。
　由我来善后。」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140240a00">
「您开玩笑了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　这可不能一笑置之。
　这里是食堂，不是房间——隔墙有耳也未可知。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140250a06">
「从今天的行事看来，你足以胜任公方一职。
　将茶茶丸除而代之也没什么问题。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140260a06">
「我也做了类似的事。就连茶茶丸也是杀了自
己的亲人才夺得了如今的地位。
　就算你做了同样的事，如今也没人说三道四。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140270a00">
「……阁下。
　您的玩笑有点过火了。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140280a06">
「哼……是吗？
　那就算了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140290a06">
「那么我换个说法吧。
　我所说的“砍”即是让你放弃茶茶丸。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140300a00">
「放弃？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140310a06">
「舍弃茶茶丸来我麾下。
　我会厚待你的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140320a00">
「…………」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140330a06">
「给你一个团。
　当然是让你升上大佐之后。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140340a06">
「怎么样。
　作为男人，率领自己的军队驰骋疆场可说是
毕生夙愿吧？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140350a00">
「这……无法否定。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　小时候我也曾幻想过成为这样的人。
　就像男人都梦想过的一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140360a00">
「但是到了这个岁数，我不得不认清自己的能
力。
　下官自认并非担任连队指挥官之材。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140370a06">
「谦虚过度可不像你啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140380a00">
「这是发自真心的自我评价。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140390a06">
「净是瞎话。
　不然就是……你意外地不了解自己。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140400a06">
「真无趣。
　凑斗，你想让我失望吗？」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140410a00">
「很遗憾。
　若是不能回应大鸟阁下的期待，
刚才您的贵言我也只能当做没听过。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140420a06">
「……切。
　你个厚脸皮！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　大鸟狮子吼勾起嘴角。
　很是愉快。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140430a06">
「茶茶丸有那么好吗？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140440a00">
「她对市井出身的我有知遇之恩。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140450a06">
「说什么违心话呢。
　简直让人酸掉大牙。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140460a00">
「我并非有意……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140470a06">
「你这家伙一直在糊弄人啊。
　哼，可恨！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140480a06">
「我跟茶茶丸那个混账小妮子比
应该不会太差的……
　在你看来有差距吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140490a00">
「不，决无此事。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140500a06">
「那到底为什么。
　你执着于茶茶丸的理由是？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140510a00">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140520a06">
「是吗。说过呢……
　利害一致什么的。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140530a06">
「是有什么缘由让你无法离开茶茶丸吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140540a00">
「……您可以自由解释。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140550a06">
「如果说我来接手那个缘由呢？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140560a00">
「大鸟阁下……
　在下官看来，阁下这样位高权重的人对一介
小官如此执着，着实不可思议。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140570a00">
「下官可以对您的真心想法
略做探寻吗？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140580a06">
「怎么。你想转移话题吗？
　哼……算了，今天就放过你。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140590a06">
「穷追可是用兵的大忌啊。」

{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140600a00">
「……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140610a06">
「招揽你是因为我看好你的才能。但是……
　也不是没有别的理由。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140620a00">
「是什么理由？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140630a06">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140640a00">
「……？」

{	SoundPlay("@mbgm26",0,1000,true);
	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140650a06">
「一看到你，我总会想起我弟弟。
　真奇怪。我明明连那家伙长什么模样
都不记得了。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140660a00">
「您有弟弟？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　我从没听说过这件事。
　大鸟狮子吼原本就不是大鸟家的人，而是收养来的
养子——<k>这样啊。也就是在被收养之前，在本家有弟弟
吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_遠想.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140670a06">
「小时候生离了。现在他在哪儿做些什么……
甚至连他是否还活着我都不清楚。
　如果还活着，年纪应该和你差不多。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140680a00">
「……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140690a06">
「仅此而已。
　哼，我居然动摇了。跟你差不多岁数的
男人明明多得是。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140700a06">
「但是，只有你……莫名地令人觉得怀念。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140710a00">
「阁下……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140720a06">
「哼。无聊。真愚蠢。
　这样下去会得妄想症。啊啊，无聊。哼
……看来我也没多少时日了。真蠢。」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140730a06">
「看来我是想将你放在身边，感受与同根生的
弟弟一起生活、一起战斗的感觉。
　无聊……无聊！」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140740a06">
「我真失态！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140750a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　看着仰望天花板自嘲的大鸟中将，我一时
无言以对。
　只有壁挂的钟表在滴答作响。

　不知何时，食堂的人渐渐走光了。
　气氛渐冷。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140760a00">
「……无论隶属哪个军队，都同属六波罗。
　阁下与下官都是在并肩作战。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140770a00">
「如果您能容许下官说出这样
高攀的话。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140780a06">
「哼。
　油嘴滑舌……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140790a06">
「你战斗的理由可不是对六波罗的忠义吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140800a00">
「…………
　如果以大鸟阁下为忠臣的典范的话，
原来如此，我无话可说。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140810a00">
「阁下确实是六波罗正义的体现。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140820a06">
「哦。
　你这么认为吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140830a00">
「不对吗？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140840a06">
「没有不对。
　虽然没有不对。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140850a00">
「……？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140860a06">
「正义。
　忠义。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140870a06">
「但说到底还是私心。
　只不过是做自己想做的事罢了。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140880a06">
「这样想来……哼，一样吗。
　不管你脑子里有什么企图，
我都没资格责备你。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140890a06">
「都是私心。
　都是私利私欲。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140900a00">
「……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140910a06">
「人有一样值得无条件信任之物便可。
　倘若有好多个，那么不是笨蛋就是圣人。」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140920a06">
「或是家人，或是挚友。
　现在的我虽然二者都没有……但是我有国家。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140930a06">
「我只信赖大和这个国家。
　为将其保护到底，我愿舍弃身家性命。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140940a00">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140950a06">
「你也有的吧？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140960a00">
「……是。阁下。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140970a00">
「我有。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0140980a06">
「那么我们是同类。
　就算不是同胞……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0140990a00">
「…………」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0141000a06">
「……哼。无聊。
　说了很不像我的话啊。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0141010a06">
「我真是的，无聊。愚蠢。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0141020a00">
「阁下……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0141030a06">
「占用你的时间了。
　我该走了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がた。立ち上がって去る獅子吼

	OnSE("se日常_物_椅子鳴る02", 1000);

	StL(1000, @0, @50, "cg/st/st獅子吼_通常_制服.png");
	Move("@StL*", 300, @0, @-50, Dxl2, false);
	FadeStL(300, true);
	
	WaitKey(400);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　就连起身敬礼的空当都没有。
　龙军中将的身姿已然自视野中消失，走出了食堂。

　我被留在原地，呆然地望着眼前的空席。

　…………私心。

　值得无条件信任之物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0141040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md03_015.nss"