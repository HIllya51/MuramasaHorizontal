//<continuation number="1240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_023.nss_MAIN
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
	#bg005_山中_02=true;
	#bg004_鄙びた村a_02=true;
	#bg001_空a_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_024.nss";

}

scene ma02_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_022.nss"

//◆山道？
//◆車が止まる音

	PrintBG("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg005_山中_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 0, true);

	CreateSE("SE01","se乗物_車_停止01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	Wait(1000);

	FadeDelete("絵暗転", 2000, true);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetVolume("SE*", 200, 0, null);
	OnSE("se乗物_車_ドア開閉01",1000);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	StR(1000, @0, @0,"cg/st/stさよ_通常_私服.png");

	FadeStL(300,false);
	Wait(150);
	FadeStR(300,true);

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230010a03">
「哎呀哎呀，真够受的。
　婆婆，我们又回到同一个地方来了——」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230020a04">
「哎，真奇怪。
　大小姐，这会不会是伴天连的妖术？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230030a03">
「或许是孔明的计策。
　先不说这个，现在我们要怎么办？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230040a04">
「已经傍晚了。
　再晚的话，借口也颇为难找了。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230050a03">
「是啊。我们也该走了吧？
　……事情一定，已经了结了吧。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230060a04">
「同感。
　话说回来，大小姐……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230070a03">
「什么？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230080a04">
「沃尔夫教授所委托的那事……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230090a03">
「……啊。
　完全忘记了。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230100a04">
「因为麻烦事接二连三地出现啊……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230110a03">
「加上又没有太放在心上。
　连理由都不加说明，自顾自地拜托人。我们
跟教授明明不同部署。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230120a04">
「是啊。
　究竟<RUBY text="····">水质调查</RUBY>到底该怎么进行呢。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230130a03">
「我们怎么可能知道呢。
　算了，反正已经从那附近的小河取过水了，
就靠这个糊弄过去吧。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230140a04">
「依您所言。
　那么……大小姐。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230150a03">
「什么？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230160a04">
「那个叫凑斗景明的人。
　您怎样看？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230170a03">
「……这个嘛。
　还不能一概而论。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230180a04">
「离看透还为时尚早？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230190a03">
「嗯。
　到底……他是不是<RUBY text="··">那样</RUBY>，还不好说……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230200a04">
「哈……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230210a03">
「但是。
　……那样无比血腥的人我还是第一次见。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230220a04">
「他让您有那样的感觉吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230230a03">
「他就像是用尸蜡制成的一样。
　第一次四目相对时，窜走脊梁的恐惧。
一时是不可能忘记的。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230240a04">
「……但是。
　大小姐……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230250a03">
「嗯。我知道你在想什么，婆婆。
　你想说，他是<RUBY text="····">正经人家</RUBY>养育长大的人类吧？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230260a04">
「……是。一言概之的话。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230270a03">
「我也同感。
　……所以才不明白。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230280a04">
「……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230290a03">
「……更多地。
　我需要更加了解他才行。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230300a04">
「没错。
　……嗯？　大小姐。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230310a03">
「怎么了？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230320a04">
「请看那边。
　我的老花眼看得不太清楚，那是……人吗？」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230330a03">
「……哎呀，确实是。
　表情凛凛的美少年……似乎不是？  女孩？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230340a04">
「往这边来了啊……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	StCL(1000, @-30, @0,"cg/st/st香奈枝_通常_制服c.png");
	StL(1010, @90, @0,"cg/st/stさよ_通常_私服.png");

	Move("@StML*", 300, @-30, @0, Dxl1, false);
	FadeStCL(300,false);
	Wait(150);
	Move("@StL*", 300, @-30, @0, Dxl1, false);
	FadeStL(300,true);

	OnSE("se人体_動作_後ずさり01",1000);

	StR(1000, @30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StR*", 300, @-30, @0, Dxl1, false);
	FadeStR(300,true);

	SoundPlay("@mbgm17",0,1000,true);

//◆一条

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230350a02">
「喂！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230360a03">
「什么？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230370a02">
「看你这副打扮，是进驻军的人？
　你有没有什么武器？　枪或者是剑什么的。
没有的话铁管也可以。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230380a03">
「哈。
　枪的话，我这有。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230390a02">
「好，帮大忙了。
　借给我。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230400a03">
「你要做什么？」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230410a02">
「六波罗的走狗在那边山里！
　现在跟警察在战斗。我要去协助。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230420a03">
「……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230430a04">
「……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230440a02">
「放任那些恶犬的是你们吧。
　我可是来帮你们擦屁股的。没意见吧。借我。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230450a03">
「被这么说还真无以言对……
　这枪虽然是我的私有物，但也算是军用物品。」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230460a02">
「啊？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230470a03">
「不能擅自借给民间的人。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230480a02">
「不能借吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230490a03">
「是的。不能借。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230500a02">
「那你放那边。我偷走就是。
　那就没问题了吧？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230510a03">
「哎呀？
　事情变这样子了啊？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230520a04">
「大小姐，不要被骗了哟。
　这位气势凛凛的姑娘……」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230530a02">
「……唔。
　……又是老家伙……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230540a04">
「想要协助正在山里战斗的警察的话。
　这是那警官所希望的吗？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230550a02">
「……不。
　他……没有，不过……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230560a04">
「他是说要让你逃走的吧？」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230570a02">
「……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230580a04">
「要是那样的话，我想你就依他所言便是。」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230590a02">
「但是！
　我无法饶恕六波罗那混蛋！　就这样
逃跑的话，我——」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230600a04">
「为了自己的自尊，而无视警官大人的关心吗？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230610a02">
「……不、不是啦。这……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230620a04">
「如果需要支援的话，警官大人自然会说的吧？
　如果没有说的话，
也就表示说不需要支援的吧。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230630a02">
「……嗯。
　但是，万一……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230640a04">
「你觉得有这可能吗？」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230650a02">
「……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230660a04">
「我这老太婆就觉得没有。
　大小姐呢？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230670a03">
「直通有马温泉的铁路已经开通了。」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230680a04">
「……即是？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230690a03">
「有马线（“没有”的发音与“有马线”相同）。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230700a04">
「在此隆重地无视您。
　这位气势凛凛的姑娘，你也是这么想的吧？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230710a02">
「……切。是啊是啊，没错。
　我也这么想！　<RUBY text="····">那个武士</RUBY>是不会输给
六波罗的窝囊武士的。」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230720a02">
「可恶……
　跟老家伙真是合不来啊。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230730a04">
「哎呀哎呀，年轻人不要泄气。
　给你泡点红茶吧。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230740a02">
「不用了。
　但听你们的口气，好像认识那个人一样。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230750a04">
「是啊。我们认识他。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230760a03">
「我们是一起合作与那混蛋战斗的啊。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230770a02">
「……是那样的吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230780a03">
「是的。
　这是即将揭开的，冲击性事实。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230790a02">
「但你们是……吃闲饭的ＧＨＱ吧？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230800a03">
「有时候也会减肥顺便工作哦。哎呀，这些话
一边走一边说吧。
　你家住哪里？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230810a02">
「？　镰仓。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230820a03">
「上来吧。
　我送你去。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230830a02">
「哈？　不、不用了。
　我要回村子……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230840a03">
「你想帮那个人吧？
　那么，请上来。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230850a02">
「什么意思？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230860a03">
「要简单地说就是。
　若是去救因迷失在夜路上而左右为难的你的话，
我们就会绕了远路，从而无法及时回本部。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230870a03">
「而那样呢，与帮助村子又或者与景明大人——
也就是那警察，是有关的。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230880a02">
「……完全不懂。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230890a03">
「这个也边走边说吧。
　来吧。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230900a02">
「好吧。看起来你不像在说谎。
　……但是……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230910a03">
「什么？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230920a02">
「我才没迷路什么的。
　你们就当作我是受伤了吧。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230930a03">
「嗯？ 明白了。
　那就出发吧。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230940a02">
「拜托了。
　……哈啾！」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230950a04">
「哎呀，感冒了吗？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230960a02">
「不，应该不是……
　这是怎么了呢，刚刚忽然感到冷。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0230970a04">
「逢魔之刻。
　或许是被什么脏东西抚了背啊……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0230980a02">
「……婆婆你不要说些毛骨悚然的话啊。太
有你的风格了。
　真是的……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0230990a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	DeleteStA(300,true);


//◆村
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 5000, "#000000");

	OnBG(100,"bg004_鄙びた村a_02.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	Wait(2000);
	WaitPlay("@mbgm*", null);

	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm32",0,1000,true);

	SetNwC("cg/fw/nw村人Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231000e156">
「变得安静……了。」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231010e158">
「……怎么样了？」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231020e157">
「不清楚啊……」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231030e156">
「喂，谁去看看啊。」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231040e157">
「你去啊！」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0231050e160">
「大家冷静点。
　静静地等待吧。再等一下的话，武者警察
大人一定会回来的。」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231060e156">
「……要是回不来呢？」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0231070e160">
「…………」


{	NwC("cg/fw/nw村長.png");}
//【ｅｔｃ／村長】
<voice name="ｅｔｃ／村長" class="その他男声" src="voice/ma02/0231080e160">
「会回来的。」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231090e156">
「……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231100e157">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆きらーん。
	PrintGO("上背景", 15000);

	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	OnBG(100,"bg001_空a_02.jpg");
	FadeBG(0,true);

	Delete("上背景");

	SetVolume("@mbgm*", 300, 0, null);

	FadeDelete("絵フラ", 300, true);

	SetNwC("cg/fw/nw村人Ｃ.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231110e158">
「啊！」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231120e156">
「怎么了？」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231130e158">
「是彗星……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231140e157">
「彗星？」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231150e156">
「真的耶……」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231160e158">
「……是吉兆吧？」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231170e156">
「不是凶兆吗……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231180e157">
「你啊！」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231190e156">
「不、不是啦，因为我爷爷以前——」


{	NwC("cg/fw/nw村人Ｃ.png");}
//【ｅｔｃ／村人男Ｃ】
<voice name="ｅｔｃ／村人男Ｃ" class="その他男声" src="voice/ma02/0231200e158">
「好了好了……
　就信它是吉兆吧。」


{	NwC("cg/fw/nw村人Ａ.png");}
//【ｅｔｃ／村人男Ａ】
<voice name="ｅｔｃ／村人男Ａ" class="その他男声" src="voice/ma02/0231210e156">
「是啊……」


{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人女Ａ】
<voice name="ｅｔｃ／村人女Ａ" class="その他女声" src="voice/ma02/0231220e155">
「……银色……」


{	NwC("cg/fw/nw村人Ｂ.png");}
//【ｅｔｃ／村人男Ｂ】
<voice name="ｅｔｃ／村人男Ｂ" class="その他男声" src="voice/ma02/0231230e157">
「嗯？」


{	NwC("cg/fw/nw村人Ｄ.png");}
//【ｅｔｃ／村人女Ａ】
<voice name="ｅｔｃ／村人女Ａ" class="その他女声" src="voice/ma02/0231240e155">
「那彗星……
　漂亮的银色…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒
	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_024.nss"


