//<continuation number="1430">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_001.nss_MAIN
{

	$TITLE_NOW = "　";

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

	$GameName = "ma04_002.nss";

}

scene ma04_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_029.nss"

	PrintBG("上背景", 30000);
	Delete("上背景");

//◆横書きノベル

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　致亲爱的赛西莉<k>

　洁白而又寂静的季节已又到来。你身体是否安好？
对远在东端岛国，日复一日愁闷不堪的我而言，
唯有在思念你的时候，内心才能得到片刻的慰藉。
然而，冬季的到来又为其蒙上了不安的阴影。<k>
望你早日向我告知平安。万一情况并非如此——<k>
现在即刻丢开这封家信，前往达克松博士的诊所。
不用担心金钱方面的问题。我在远渡大和之前都
已向他交代妥当。

　抑或是身体康健，却在为其它事情忧心伤神？遇到
麻烦就去找佛罗里达的母亲帮忙。<k>
你知道虔诚的她痛恨异教徒，那你知道还有更加令她
憎恨的东西吗？若是她所认定的家人遭到无理伤害，
她定会爆发出连十字军都无法匹敌的战意。<k>
无论敌人是盗贼还是提着收费袋的女王骑士——抑
或是抱着今天最后一个白面包漫天要价的面包店主。
她就像爱我一般深爱着你。
无论是多么琐碎的烦恼，都可以向她倾诉。

　啊，可我到底在说些什么。既然如此为你担心，
我明明应该现在就立刻越过这可恨的大海回到你
身边，把你拥入臂弯，保护你远离一切伤害与丑恶。
我未能如此，是否让你对我大失所望？
你是否认为，我对你的爱还远远不够？<k>
赛西莉，只属于我的赛西莉，希望你能够理解只倾
心于你的我。在拥有人形的世间万物当中我最爱你。
然而我也深爱自己的故乡。爱着养育你我的故乡
大地。<k>
　啊，我伟大的故乡！　这份爱不能将我对你的爱
减少一分一毫。绝不！

　所以我接受了与你暂时的离别，从事与异教的劣等
人种打交道的任务。每日心情何其忧闷。<k>
既没有美丽悠久的文化，又无品格高洁之人，也没有
你——狭小的岛国里竟只有一群黄种猴子在视野里
蠢动不已。这种生活大概已经连人性都得不到保障。<k>
　然而，如果对故乡的爱——对你的爱要求我忍耐下
去的话，即便持续百年我也将咬牙忍受。
当然，如果斗争能使得这个百年缩短为一年，那就最
好不过。相信你也能够理解我。我们——
不错，我们需要这个岛国。<k>
　为了自由与和平。

　希望你也能替我告诉小达尼。<k>
　丢下刚出世的他去往遥远的异国的父亲，绝不是
想要逃避自己应尽的神圣责任——而是为了让你
的将来幸福美满，为了开拓美洲大陆的崭新未来。

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//―――――――――――――――――――――――――――――

//◆ノック。コンコン
	CreateSE("SE01","se人体_動作_ドアノック01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
//◆ＧＨＱ、ガーゲット少佐の執務室
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg029_ガーゲット少佐執務室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm21",0,1000,true);

//◆横書きボックス（英会話を示す）
	SetNwH("cg/fw/nyＧＨＱ兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0010010e004">
「少佐。」

{	StL(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStL(300,false);
	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010020b02">
「……什么。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0010030e004">
「Ｄ８号来见。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010040b02">
「放行。」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0010050e004">
「是。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆雪車町
//あきゅん「SE：要望：ドアの開く音」
	CreateSE("SE01","se日常_建物_扉開く01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitKey(300);
	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(300,true);

//◆縦書ボックス
	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010060a12">
「嘿嘿……
　疏久不见啊。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010070b02">
「就算有段时日没见，必要的时候还是
时有联络。
　说疏久不太合适啊。还是说，刚才那
句又是出于冗繁的谦逊美德之类？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010080a12">
「诶嘿。
　您还是这么深谙大和语的内涵。」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010090b02">
「这是自然。熟习当地语言也在任务范畴。
　你们好像坚信自己国家的语言很晦涩
难懂吧？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010100a12">
「难道并非如此？」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010110b02">
「一派胡言。大和语只是原始而已。
只要掌握要领，轻而易举就能理解。跟新大
陆土著人使用的图画文字并无不同。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010120a12">
「在下真是五体投地……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010130b02">
「我花时间见你不是要你向我致敬。
我还没闲到时间没处打发。
　叫你来是要听你的说明。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010140a12">
「说明吗……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010150b02">
「你说成是解释也可以。
　我更倾向于那种说法。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010160a12">
「嘿、嘿、嘿……
　那请容我向您解释。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010170b02">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010180a12">
「话虽如此……真是不知从何说起。
　只能说被他摆了一道……」


{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010190b02">
「用这话就想打发我？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010200a12">
「如果可能的话就好了。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010210b02">
「我给了你两副剑胄……
　是真改跟月山吧。失掉这两副剑胄却
一无所成，你要我对这个事实一笑而过？」


{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010220b02">
「性能价格比的原则你还不至于不懂吧？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010230a12">
「按照我们这里的说法就是，
　不合算……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010240b02">
「剑胄是贵重物资。
　一副剑胄可是比数台<RUBY text="ｔａｎｋ">战车</RUBY>，
一个步兵中队的编成费用更为昂贵。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010250a12">
「是……
　<RUBY text="······">从大和没收的</RUBY>贵重物资呢。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010260b02">
「失去它们，换回了什么结果？
　几桩杀人案跟一个村子的毁灭。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010270a12">
「还远远不够吧。那今后如何？」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010280b02">
「投入成本也毫无意义，这是个问题。
　灭了那个村子的是银星号，与你
的部署毫无关系。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010290a12">
「从结果来看，的确如此。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010300b02">
「我就是在就结果而言。
　你有异议？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010310a12">
「不敢……」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010320b02">
「而且银星号至今依然来历不明。
无论它如何到处逞凶，也无法帮助
我们达到目的。
　我希望<RUBY text="····">大和武者</RUBY>四处行凶。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010330b02">
「也就是，你的成果几乎为零。
　有无异议？」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010340a12">
「……没……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010350b02">
「很好。
　那我再问你最后一句。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010360b02">
「雪车町一藏。
　你是无能之辈？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010370a12">
「嘿、嘿、嘿……」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010380b02">
「……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010390a12">
「如果我回答是的话，就轻松了吧？」


{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010400b02">
「不错。
　你愿意的话就随你去吧。
我不会拦你。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010410a12">
「嘻，嘿……
　我就占用您一点时间做个简短说明吧。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010420a12">
「请问可否？　卡杰特少佐。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010430b02">
「我已经把选择权给了你。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010440a12">
「嘿嘿。
　什么嘛。即便银星号不来，我在那个村子的
工作也已经失败了……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010450b02">
「大鸟香奈枝吗。
　她的行动的确是出乎我的意料。
然而你没能妥当地处理掉她，这还是
你的能力不足。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010460b02">
「所以？
　只要银星号跟大鸟大尉不再出现，
你就不会再次失手？
　你是这个意思？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010470a12">
「不，不。
　请您不要这么着急……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010480b02">
「哼？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010490a12">
「银星号现下拿它无可奈何。
　大鸟小姐就请少佐加以钳制。
然而还有一个问题，必须解决……」


{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010500b02">
「你是说失败另有原因？」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010510a12">
「真正打败月山的是<RUBY text="·">他</RUBY>。虽
不是我亲眼所见，不过不会有错。
　真改可能也是。我正在调查当中。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010520b02">
「什么人。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010530a12">
「是警察。
　不过，他好像不对外公开身份……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010540b02">
「你刚才说是他打败了月山？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010550a12">
「不错。
　他可是武者。使用赤色的剑胄。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010560a12">
「名字似乎叫做……
　村正。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010570b02">
「村正？」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010580a12">
「……真是不祥的名字。
　非常不祥……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010590b02">
「警察局暗地里拥有武者吗？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010600a12">
「不错……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010610b02">
「给我从头道来。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010620a12">
「那我就失礼了。
　大鸟中尉……不，大尉在村中出现时，
被她用枪所指的地方官员怒发冲冠。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010630a12">
「想要斩杀大尉。
　问题是，那一刻介入其中并驱逐地方官员的
就是这村正。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010640b02">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010650a12">
「不知是从那开始，还是最初就是一伙……
　他们联手起来开始与地方官员对抗。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010660a12">
「最后大概是诱出地方官跟月山，将他们击
毁了吧……
　我在那之前就被打败，没能亲眼见证。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010670b02">
「那就不要一口咬定。
　你从哪点判断出击败地方官员他们的
是那个村正而不是银星号？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010680a12">
「地方官跟村正都在山附近。
银星号没有去到那里。
　此事千真万确。我在山里活了下来，
所以不会有错。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010690b02">
「嗯……
　但作为一种可能性，也可以认为他和地方官
一起被银星号击毁了不是吗。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010700a12">
「不。
　没有那种可能。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010710b02">
「为什么？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010720a12">
「我前几日见到了他。
　在镰仓附近。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010730b02">
「在做什么？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010740a12">
「……谁知道呢。
　好像是在惩戒恶人。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010750b02">
「…………
　这就是村正的行动原理？」

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010760a12">
「嘿嘿嘿嘿嘿……！」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010770b02">
「……」

{	FwC("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010780b02">
「虽然你的笑声总是令我感到不快……
　今天更是变本加厉呢。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――


	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010790a12">
「嘿嘿，嘿嘿嘿……
　失礼了……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010800b02">
「驾驶村正的骑士叫什么名字？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010810a12">
「凑斗景明。
　我在村子事发之前就曾见过他。
当时听到他自称警察……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010820b02">
「哦？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//嶋：修正（してた）【090930】
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010830a12">
「凑斗当时好像在搜查些什么，我只是与他在
镰仓的大街上有过一面之缘。
　之后不久真改就被打败了……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010840a12">
「……有趣的是……
　当时跟他一起的三个学生，正是真改
——铃川令法的学生，
而且被他选作猎物。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010850a12">
「<RUBY text="····">不知为何</RUBY>却保住了性命……
　不，有一人死于<RUBY text="··">别案</RUBY>。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010860b02">
「就是说，真改在折磨他们三人之时，被
<RUBY text="·····">别的什么人</RUBY>歼灭了？
　其余二人已经供述了事发情况吗。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010870a12">
「那个无法做到。
　其中情况较好的一人被真改刺瞎了
双眼。重要场合什么都没有看到。」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010880a12">
「还有一个小姑娘……
　身心俱毁。实在是……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010890b02">
「嗯……
　不过，村正参与其中的可能性很高是吗。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010900a12">
「正是……
　真改也好月山也好，恐怕都是被他所杀。
如果他是出于履行警察责任而为，
今后可能还会上钩……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010910a12">
「跳进我所布下的<RUBY text="··">陷阱</RUBY>。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010920b02">
「哼……
　我知道你想说什么了。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010930a12">
「嘿……」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010940b02">
「……他是警察？
　不可能。那群废物怎有胆量与六波罗
为敌？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010950a12">
「……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010960b02">
「不过……正因如此才会有<RUBY text="··">内幕</RUBY>？
　不论怎样，他是障碍。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010970a12">
「嘿嘿……」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0010980b02">
「不管他是警察还是别的什么人，他这种
<RUBY text="···">正义的</RUBY><RUBY text="··">化身</RUBY>一样的行动如果
流传开来……
　对我们的计划都是障碍。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0010990a12">
「他已经是我们的障碍了。
　他好像在各处都很活跃。」

{	FwC("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011000b02">
「……已经不容拖延了吗。
　等到村正成了英雄就为时已晚。」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011010b02">
「英雄一旦诞生便永垂不朽……即便本人已
死，在人们心中的英雄形象却永难磨灭。
　村正会永存于大和人民的心中。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011020a12">
「那就难办了……」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011030b02">
「……嗯。
　英雄只要有我们进驻军就足够了。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011040a12">
「…………」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011050b02">
「对付他，你有何意见。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011060a12">
「如果是正派的警察，给他随便安个罪名
送到警署关进大牢即可……
　但是他的名字不在警署名册里……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011070a12">
「若他们假装没有此人，事情就
没法进行。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011080b02">
「……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011090a12">
「尽管如此，如果强行……
　他好像住在镰仓署长的官邸里。
如果硬闯，会演变成大问题……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011100b02">
「那是自然。
　太过强硬会引起市民反感，那就
本利全无了。」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011110a12">
「不错……
　考虑到这点，等他外出再进行伏击也不
太好呢。大街上太过惹眼。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011120a12">
「大街上……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011130b02">
「……所以，把他引诱到郊外进行处理。
　是这样吧。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011140a12">
「嘿嘿……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011150b02">
「具体办法呢。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011160a12">
「他好像对银星号很是执着。
如果是『正义的化身』就更是如此。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011170b02">
「……哦？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011180a12">
「他好像问过之前那个村子的地方官是
否知道银星号。
　然后，根据那个村子的遭遇来考虑
……他的出现并非是为了地方官。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011190a12">
「可能是在追赶银星号的过程中，
偶然间顺便来到那里的……
　若是如此，又为何杀死地方官呢……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011200b02">
「……哼。
　总而言之，『银星号』也许可以成为引
他出现的诱饵是吧？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011210a12">
「不错。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011220b02">
「那么还有一个问题。
　就算成功引他出现，你要怎么解决他。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011230a12">
「嘿嘿。
　会很麻烦吧……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011240a12">
「井上真改，就算骑手是个外行，也
是名物中的名物……
　地方官长坂跟月山老爷子也不是普通人。」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011250a12">
「他却杀死了他们。
　一个完全编成的龙骑兵大队……能
否借来一用？」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011260b02">
「……少胡言乱语。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011270a12">
「嘿、嘿、嘿。
　既然如此……只能找外援来对付他了吧？」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011280b02">
「你是说去找六波罗帮忙吗。
　你大可去找那些贪婪的恶犬商量看看，
真不知他们会乘机提些什么要求。」


{	FwC("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011290b02">
「说不定比一个大队花费更高。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011300a12">
「如果他们能自己打起来就最好不过了。
　选好诱敌场所……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011310b02">
「哪里？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011320a12">
「活用一下之前到手的奇怪情报，如何？」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011330b02">
「…………原来如此。
　不错。」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011340b02">
「如果能顺利进行可谓一举两得。
　一次性除去两个眼中钉。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011350a12">
「正是……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011360b02">
「……好吧。就照这个方针进行。
　明天之前再进一步讨论详细计划。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011370a12">
「了解……」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011380b02">
「雪车町。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011390a12">
「在。」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0011400b02">
「你不觉得失败两次就已经足够了么？
　忍受别人的失败，也是如此。」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011410a12">
「嘿嘿……！
　我倒是失败三次四次也无所谓呢。
不过，我也没期待少佐能有那种程度
的忍耐力……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

//◆横浜基地
//◆雪車町
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg028_横浜ＧＨＱ基地_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	StC(1000, @0,@0,"cg/st/st雪車町_通常_私服.png");
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　雪车町一藏并不厌恶人类。

　就连那个坚信自己的正义毫不怀疑——虽然
只能认为是一种癫狂！——的少佐也不例外。
　即便嗤笑侮蔑他们的愚笨，也不会心生厌恶。

　雪车町喜欢人类。
　每日每日简朴过活的市民，榨取市民中饱
私囊的官员，收买官员大发不义之财的企业
家，还有憎恨着他们并决意战斗的人。

　雪车町一视同仁地爱着他们。

　然后，与他们或交谈，或战斗，或利用，或遭到
利用，或把对方打倒使其匍匐于泥泞之中，
又或者自己被人踹翻丢入沟渠——
　他无比喜爱这种羁绊。

　无论善恶。
　无关敌我。
　人类<RUBY text="····">努力生存</RUBY>的样子，让雪车町很是快乐。

　所以。
　如果说雪车町一藏厌恶着谁。

　从心底——
　憎恨着谁的话。

　那就是。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011420a12">
「……嘿、嘿、嘿……」

{	FwR("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0011430a12">
「嘿嘿嘿嘿嘿嘿嘿嘿嘿……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_002.nss"

}





