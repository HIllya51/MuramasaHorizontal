//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_025.nss_MAIN
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
	#bg008_教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_026.nss";

}

scene md02_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_024.nss"


//◆教室

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg008_教室_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm29", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　虽然发生了让人悲伤的事，但时间同往常一样推进，然后到了午休。
　同学们三三两两地开始吃午饭。

　我没带便当，因此要去饭堂或者小卖部买点什么。

　今天吃什么呢……

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetNwH("cg/fw/ny美人の同級生.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆顔ＣＧ使わずネームＣＧ「美人の同級生」
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250010e015">
「呐，凑斗君。」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250020a00">
「是。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆スピカ？
	StC(1000, @0,@0,"cg/rec/stRec_スピカ戸惑い.png");
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　转过身，一名女学生很奇怪地，无聊地伫立在那里。
　学校无人不晓，财团的千金，理事长的女儿，文化祭
选美大赛优胜者。

　她手上不知为何抱着两盒便当。

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250030a00">
「什么事？」

{	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250040e015">
「现在要去……吃午饭吗？」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250050a00">
「是的。」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ通常.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250060e015">
「凑斗君没带便当吧？」

{	FwH("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250070a00">
「是啊。
　去食堂或小卖部。」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ笑顔.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250080e015">
「这、这样。
　那太好了……」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250090a00">
「是？」

{	SetVolume("@mbgm*", 1000, 0, null);
	StC(1000, @0,@0,"cg/rec/stRec_スピカ呆れ２.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250100e015">
「咳咳。」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカツン.png");
	FadeStC(300,false);
	SoundPlay("@mbgm28", 0, 1000, true);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250110e015">
「其、其实……
　如、如果你不介意的话，要吃这个吗……？」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250120a00">
「……？
　那个便当吗？」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ怒る.png");
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250130e015">
「嗯、嗯……
{	FadeStC(300,false);}
　啊，不是哦？不是那样！」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250140a00">
「究竟是什么？」

{	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250150e015">
「这个是给社团活动的朋友做的啦！
　她、她今天没来学校，所以……」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ呆れ.png");
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250160e015">
「扔掉的话又太浪费了……
　碰巧凑斗君在，可以的话能请你吃吗？」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ怒る.png");
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250170e015">
「事情就是这样子！」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250180a00">
「原来如此，
　我明白了。」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ戸惑い.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250190e015">
「……你会吃吗？」

{	FwH("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250200a00">
「那我就不客气了。」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ通常.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250210e015">
「好、好的。
　那……就请用。」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカ主張.png");
	FadeStC(300,false);}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250220e015">
「啊，但不要误会！
　才不是特意给你做的！」

{	FwH("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250230a00">
「……？　是。
　那是当然。」

{	StC(1000, @0,@0,"cg/rec/stRec_スピカツン.png");
	FadeStC(300,false);
	NwH("cg/fw/ny美人の同級生.png");}
//【ｅｔｃ／ヒロインＥ】
<voice name="ｅｔｃ／ヒロインＥ" class="その他女声" src="voice/md02/0250240e015">
「是……是真的啦！
　真的不是那样……」

{	FwH("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250250a00">
「我明白的。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　对方不知为何多次叮嘱我后才离开。
　似乎是不希望我认为是为我而做的。

　被讨厌了吗？
　还是说，本来这便当想要送人的，
因为我没带便当才给我。
如果是这样的话，不得不说是个好人。

　她在学院内人气很高我也认同。

　打开便当盒一看，里面有张小卡片。
　内容只有一句话。

　
　　　　　　　　　『我喜欢你。』

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0250260a00">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　原来如此。
　我都明白了。

　这本来是她想送给喜欢的人的便当。
　所以多次叮嘱说不要误会是理所当然的。

　明白了一切的我，绝不会误会那信是写给我的。
　内心感谢将这么重要的便当给我的她。

　便当里的食物显然是亲手制作的，而且还都是我喜欢的食物。
　就像是特意为我准备好的那样。

　当然，这单纯只是偶然。

　我并没误会。
　绝对没有。

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500,1500);

}

..//ジャンプ指定
//次ファイル　"md02_026.nss"