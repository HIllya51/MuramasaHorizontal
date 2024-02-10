//<continuation number="660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_009.nss_MAIN
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

	$GameName = "mc04_010.nss";

}

scene mc04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_008.nss"

//◆獅子吼襲撃。妙なとこから。
//◆組み伏せられる香奈枝

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	CreateTextureSP("絵背景30", 150, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	StL(1100,@0,@0,"cg/st/st花枝_通常_私服.png");
	StR(1100,@0,@0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(0,false);
	FadeStR(0,false);
	Delete("上背景");

	OnSE("se人体_動作_跳躍01", 1000);
	WaitKey(550);
	OnSE("se人体_衝撃_転倒01", 1000);
	StC(1000, @350, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStC(200,false);
	Move("@StC*", 150, @0, @30, Dxl2, true);
	Wait(200);
	Move("@StC*", 100, @0, @-30, Axl1, true);
	SoundPlay("@mbgm34", 0, 1000, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se人体_動作_掴む01", 1000);
	Fade("フラッシュ白",100,1000,null,true);
	WaitKey(200);
	StR(1100,@0,@30,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(0,false);
	DeleteStC(0, true);
	WaitKey(200);
	OnSE("se人体_衝撃_転倒03", 1000);
	Move("@StC*", 100, @0, @-30, Axl1, true);
	Fade("フラッシュ白",300,0,null,false);

	CreatePlainEX("絵板写", 9990);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw花枝_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090010b18">
「狮子吼!?
　……姐姐！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090020a03">
「呜……！」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090030a06">
「三分五十秒前就在你身后了。
　没注意到吗，你这个白痴……」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090040a06">
「你的邪眼还是和以前一样，
只有该看到的东西看不到。
　眼里没有大义和信义。结果总是会带有多余
的东西……」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090050a06">
「那是愚蠢的劣等人的眼睛！
　你即使卑贱，也还是大鸟家系中的人，为什
么你没有王者之眼！」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090060a03">
「……
　王者之眼……？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090070a03">
「如果有的话……那我就不用被一个动作比蝾
螈还厉害的变态<RUBY text="···">从墙上</RUBY>袭击了？
　那真是很贵重啊……」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090080a06">
「别说笑了。
　吾只是算准了能一招命中你的距离。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090090a06">
「现在不是该遵守武者礼节的时候，而且对象
也不对……！」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090100a03">
「哎呀……那么。
　为什么不赶快把我杀了呢……？」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090110a06">
「吾也想要尽早把你送入冥府。
　但是——」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090120a06">
「你刚才说出了一句让吾无法忽视的话。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090130a03">
「……什么呢……？」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090140a06">
「吾先声明，不是你那廉价的复仇。
　想要我的命？　嗯，随你喜欢吧。」



{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090150a06">
「你流有大鸟嫡系的血，却只能看到自身的复
仇，只要你不为自己的心胸狭窄感到害臊，随
你怎么报复都可以！
　你以为吾会把首级留给你这种小人吗!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090160a03">
「…………」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090170a06">
「花枝大人说的话，我也没有在意……
　听到她想要为了大和而利用我，最后再把我
灭口，我反而安心了。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090180a06">
「有这种雄心壮志，
才配让本人狮子吼向其低头。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090190b18">
「……」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090200a06">
「比起只能看到眼前事物的你，
她的眼睛要优秀太多！
　前代当主舍弃了你，留下了花枝大人，
只有这一点值得吾肯定。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090210a06">
「不过想要抵消背叛前前代当主的罪名，这到
底还是不够啊……」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090220a03">
「呃……呜。
　那么……要问什么……？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090230a06">
「是那之前说的话。
　……雄飞大人在镰仓遭到杀害的事，
你都知道些什么？」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090240a03">
「…………」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090250a06">
「吾一直认为是你干的。
　为了守护妹妹的地位，你杀死了正当的继承
者……你这么愚蠢，做得出手。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090260a06">
「现在吾也有着同样的疑念。不过……
　还是先听你说一句吧。」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090270b18">
「……」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090280a06">
「说吧，香奈枝。
　你知道些什么。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090290a03">
「你问错人了吧……？
　那种事问警察吧。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090300a06">
「镰仓市的警察吗。他们甚至没有公开这件事。
　说是为了搜查而做的措施……
　无法理解。肯定有内情。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090310a06">
「我总有一天会让他们坦白。
　……不过，现在你坦白的话，就能让吾省心
了吧？」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090320a06">
「别想隐瞒，女狐狸。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ぎり。締め上げ
	OnSE("se人体_動作_締める01", 1000);
	CreatePlainEX("絵板写", 9990);
	FadeFR2("絵板写",0,500,300,@0,@0,40,Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090330a03">
「呜……」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090340a06">
「谁杀了雄飞大人。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090350a03">
「……这件事，
　你问了之后……想要怎样？」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090360a06">
「这还用问。
　无论那人藏在哪里，吾都要将其找出，
亲手砍下首级。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090370a03">
「哼……哼哼……！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090380a06">
「笑什么。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090390a03">
「那么……不行。
　我不能告诉你……」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090400a06">
「——香奈枝。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ばたばた。足音数人

	OnSE("se人体_足音_踏み込み01_L",1000);
	WaitKey(500);

	SetNwC("cg/fw/nw大鳥軍兵士Ｇ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0090410e177">
「阁下!?」

{	SetVolume("@OnSE*", 1000, 0, null);
	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0090420e178">
「这……这是……」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090430a06">
「……太慢了。
　你们不抓入侵者，都在哪里干什么呢。」



{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0090440e178">
「是，那个——
　因为联络有些错乱。」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0090450e177">
「似乎除了香奈枝大人以外，
还有其他人在干扰——」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090460a06">
「……算了。
　反正已经解决了。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090470a06">
「留下两个人，其余的人跟在花枝大人身边。
　你们在里面静静等着，
直到这无聊的骚动结束。」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0090480e178">
「是。」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0090490e177">
「首领，请随我们一起。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090500b18">
「……」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090510b18">
「姐姐。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090520a03">
「一会儿见。」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0090530b18">
「……大蠢货。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆花枝と兵士去る
	OnSE("se人体_足音_複数歩く02_L", 1000);
	DeleteStL(300, false);
	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);
	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090540a06">
「那么——」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090550a03">
「……」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090560a06">
「你说一会儿见？
　你以为我还会让你活多久。」



{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090570a06">
「还是说，你想要全部坦白，向我求饶？」



{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090580a03">
「如果你能听成这个样子——」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090590a06">
「现在去耳鼻喉科还来得及。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090600a03">
「不……
　还是去脑外科吧。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090610a06">
「…………」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090620a06">
「喂。
　你。」


{	NwC("cg/fw/nw大鳥軍兵士Ｉ.png");}
//【ｅｔｃ／大鳥兵士Ｉ】
<voice name="ｅｔｃ／大鳥兵士Ｉ" class="その他男声" src="voice/mc04/0090630e179">
「是。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0090640a06">
「拿剪子来。
　还有结实的绳子、钉子。还有锤子。」


{	NwC("cg/fw/nw大鳥軍兵士Ｉ.png");}
//【ｅｔｃ／大鳥兵士Ｉ】
<voice name="ｅｔｃ／大鳥兵士Ｉ" class="その他男声" src="voice/mc04/0090650e179">
「……？
　遵命。立刻就去。」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0090660a03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆だだん。そこへ誰かが現れた。
//◆場面転換

	SetVolume("@mbgm*", 300, 0, null);

	CreateSE("SE01","se日常_建物_扉開く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ClearWaitAll(0, 0);

}

..//ジャンプ指定
//次ファイル　"mc04_010.nss"