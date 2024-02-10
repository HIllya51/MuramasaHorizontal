//<continuation number="1070">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_003.nss_MAIN
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
	#bg066_普陀楽城内のどか_01=true;
	#bg069_普陀楽城内広間_01a=true;
	#bg027_普陀楽評議の間_01=true;
	#ev803_戦争マップ１_a=true;
	#ev803_戦争マップ１_b=true;
	#ev803_戦争マップ１_c=true;
	#ev901_銀星号天座失墜小彗星_c=true;
	#ev124_江ノ島航空図_c=true;
	#ev804_戦争マップ２=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_004.nss";

}

scene md04_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_002.nss"

//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

//あきゅん「演出："md04_006.nss"の時間がまだ午前五時五七分なので夜にしました」
	OnBG(100, "bg066_普陀楽城内のどか_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm19", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我和茶茶丸早已离开舞殿宫那里，解除了对建朝寺
的包围奔回普陀乐。
　小弓公方应该也正通过别的路途往回赶。

　途中遇到一个长相奇异的男人。
　似乎是在等我们回来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆城内
//◆常闇斎


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg069_普陀楽城内広間_01a.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030010b37">
「——以上就是沃尔夫教授传来的消息。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030020a00">
「…………」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030030a07">
「是这样啊……
　可恶。这下麻烦了！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030040a07">
「到底是谁在捣乱坏我们的事！」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030050a00">
「既然锻造雷弹不能使用——」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030060a07">
「我们的打算落空了呢。
　六波罗又不会困扰，进驻军要想正式决胜负
不使用雷弹也没关系，但是<RUBY text="··">我们</RUBY>就头疼了。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030070b37">
「那个可是关键。
　带来黎明曙光的……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030080a00">
「那该怎么办？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030090a07">
「只能照沃尔夫预先布置的来了。
　抵抗吧。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030100a07">
「我们要制造危急形势，逼联盟本部使用锻造
雷弹。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030110b37">
「挫败进驻军的攻势，将他们逼入胶着状态。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030120a07">
「今天是……十一月三〇日吗？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030130a07">
「公主殿下会在十二月四日苏醒。」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030140b37">
「还有四天吗。
　这天数确实正合适……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030150b37">
「花这么久的时间都无法攻下普陀乐的话，足
够让他们下定决心使出杀手锏了。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030160a07">
「是啊。
　将时机调整得正好是沃尔夫的
分内之事。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030170a07">
「我们要在四天之内守住普陀乐。」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0030180b37">
「嗯……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030190a00">
「…………
　能办到吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　国际联盟大和进驻军——其真实身份是大英联邦军。
　总而言之，是世界最強且拥有最新装备的军事势力。

　六年前……
　六波罗不战而败，投入大英联邦军门下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030200a07">
「只能一战了。
　……我们别无退路了，哥哥。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030210a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030220a00">
「是啊。
　别无退路了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　如果没有别的方法。
　就只能在唯一的路途上拼命奔跑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆評議の間
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm20",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　古河、小弓、堀越各公方聚集在议事间。
　但……看不到篠川公方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030230a07">
「狮子吼怎么了？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030240a08">
「已经飞到会津了。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030250a09">
「篠川的援军究竟能多快地到达普陀乐
呢……
　这会成为胜败的关键。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030260a07">
「是吗……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030270a09">
「不过，被摆了一道啊。
　我们都以为，在邦氏殿下就任大将领的旨意
颁布，六波罗复兴之时，进驻军的战斗与胜利
才有意义。」

//【童心】
<voice names="童心" class="童心" src="voice/md04/0030280a09">
「实在想不到会在此之前就攻打过来……」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030290a08">
「嗯。
　被<RUBY text="那群家伙">ＧＨＱ</RUBY>高明地钻了空子！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030300a09">
「战略上来说，确实趁对方兵力分散之时下手
更有利……但是他们不把<RUBY text="我们">六波罗</RUBY>看做平等的
对手，所以我们就以为他们会先考虑从政治方
面入手。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030310a08">
「或许有什么内情。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030320a07">
「……现在再胡乱猜测也于事无补吧。
　不管有什么内情，敌人都打到相模湾来了。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030330a07">
「看样子不是来出席宣旨典礼的，那就只能
郑重地请他们回去了。
　想想方法吧，好让那群混蛋在相模湾的冰
水里进行冬泳大赛。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030340a09">
「嗯……是啊。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030350a08">
「童心大人，敌人的动向呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉周辺～相模湾地図

	PrintBG("上背景", 30000);
	CreateSE("SE01","se日常_物_紙をめくる02");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵ＥＶ戦場a", 2000, Center, Middle, "cg/ev/ev803_戦争マップ１_a.jpg");
	FadeDelete("上背景", 1000, true);
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("絵暗転", 1000, 100, "blind_03_00_0", true);

	Wait(500);

	CreateTextureEX("絵ＥＶ戦場b", 2100, Center, Middle, "cg/ev/ev803_戦争マップ１_b.jpg");
	Request("絵ＥＶ戦場b", Smoothing);
	Fade("絵ＥＶ戦場b", 1000, 1000, null, true);
	Delete("絵ＥＶ戦場a");

	Zoom("絵ＥＶ戦場b", 1500, 1500, 1500, AxlDxl, false);
	Move("絵ＥＶ戦場b", 1500, -251, -138, AxlDxl, true);


	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030360a09">
「似是进驻军横须贺舰队舰群在突破相模湾的
内防线后，突袭了小坪军港。
　重创驻守小坪的我方主力舰队——」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0030370a09">
「算准小坪的军队做好反击准备的时机撤退。
　现在在饭岛崎与大崎之间布下封锁线，将
小坪的残存舰队压制在港内。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030380a08">
「……只是压制？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030390a09">
「正是如此。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030400a07">
「哈？
　他们想干什么啊？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030410a07">
「小坪的舰队被困住是很麻烦。
　不过如果对方只是封锁的话，那就没有
动用舰队的必要。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030420a09">
「或许封锁舰队是为了阻止他们对其他行动的
妨碍……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030430a08">
「难不成他们的目的不是镰仓？
　而是想袭击别的都市？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030440a07">
「怎么可能！」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030450a09">
「占领镰仓、攻陷普陀乐、将六波罗逼入绝境。
　ＧＨＱ既然已经有所动作，就不可能有其他
目的。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030460a09">
「但是——」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030470a07">
「那又是为什么不快速拿下小坪港登陆呢。
　……佯攻小坪？」

{	Zoom("絵ＥＶ戦場b", 1500, 1000, 1000, AxlDxl, false);
	Move("絵ＥＶ戦場b", 1500, 0, 0, AxlDxl, false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030480a09">
「主力……
　会从横浜基地走陆路，翻越朝比奈要塞
攻过来？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030490a08">
「也可能会这么来……
　但是在这路线上难以快速展开大量兵力。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030500a08">
「就是说主力在别处？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030510a09">
「……嗯。
　这样————一来……」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0030520a09">
「是这儿吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("上陸予想", 3000, @0, @0, "cg/ev/ev803_戦争マップ１_c.jpg");
	Request("上陸予想", Smoothing);

	Fade("上陸予想", 500, 1000, null, true);
	Move("上陸予想", 1500, -54, -51, AxlDxl, false);
	Zoom("上陸予想", 1500, 1200, 1200, AxlDxl, true);
	Delete("絵ＥＶ戦場b");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　游佐童心粗大的手指描绘着地图上的<RUBY text="·">线</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030530a08">
「……湘南海岸？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030540a07">
「喂喂喂。
　大军到底要怎么从那种地方登陆啊。
真是胡扯——」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030550a07">
「我是很想这么说，不过总觉得他们会不会有
什么能在这种情况派上用场的武器？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030560a09">
「当然有。
　登陆舰……大英联邦自上次大战时就开
始使用了。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030570a08">
「虽然听说并不怎么有效。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030580a09">
「不知是不是对缺点做了改良。
　因为对侵略国家来说，这兵器有很大的
研究价值。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030590a09">
「如果要进攻防御周全的港口，就必须做好
会有重大牺牲的心理准备。
　但是，从防御薄弱的海岸登陆的话，损失
就会轻微得多。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030600a07">
「……确实很薄弱。
　材木座、由比浜、七里浜。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030610a07">
「虽然不是全无防备，却也不是固若金汤。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030620a08">
「那儿的防备不够对抗大规模的军队登陆。
　这些ＧＨＱ还是知道的。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030630a09">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030640a07">
「就是说……会来吧。」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030650a08">
「嗯。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030660a07">
「要对海岸进行增援吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030670a09">
「没用的。
　如今受到奇袭，没有能即刻增援的充足
兵力。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030680a09">
「就算派出兵力成功在海岸线上布防，我们对
迎击大规模登陆的知识经验还很不足。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030690a07">
「你是说我们在海滩上手忙脚乱
的时候就会被打得溃不成军吗。
　我倒是觉得用不着这么悲观。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030700a08">
「对方无疑是经过充分训练有备而来的。
　如果靠<RUBY text="····">失败次数</RUBY>来决胜负的话，
我们很不利。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030710a07">
「……那倒是。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030720a09">
「只好放弃海岸防卫战。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030730a00">
「失礼了。
　……各位大人不考虑突破
小坪港封锁的方法吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Zoom("上陸予想", 1500, 1500, 1500, AxlDxl, false);
	Move("上陸予想", 1500, -251, -138, AxlDxl, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　我无法继续保持沉默，开口问道。
　看来这些首脑们最初就放弃了这一选择。

　我则不能理解。
　无需让小坪港残存的舰队孤注一掷——让附近的其他
舰队支援，做内外夹攻便可。

　相模湾近海的幕府舰队应该不至于全部集结到小坪了
吧。
　小坪解放的话，进驻军的登陆作战就会难以成功了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030740a07">
「要是有能用的舰队就这么做。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030750a00">
「……没有吗？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030760a07">
「舰队倒是有。
　附近有江之岛的高速舰队。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030770a00">
「那就用——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　…………………………………………

　<RUBY text="···">江之岛</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆銀星号ウルトラキック。江ノ島吹っ飛び

	EfRecoIn1(18000,600);

	CreateTextureSP("ウルトラキック", 15000, @0, @0, "cg/ev/ev901_銀星号天座失墜小彗星_c.jpg");


	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoIn1(18000,600);

	Delete("ウルトラキック");
	CreateTextureSP("江ノ島", 15000, @0, @0, "cg/ev/ev124_江ノ島航空図_a.jpg");


	EfRecoIn2(300);



	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030780a07">
「江之岛的舰队，不久之前因为<RUBY text="·····">莫名的事故</RUBY>
被毁灭了。
　现在还没有修复好。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030790a07">
「这种半残废的状态可没办法去救援。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030800a00">
「…………是吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("江ノ島");
	Zoom("上陸予想", 0, 1000, 1000, null, false);
	Move("上陸予想", 0, 0, 0, null, true);

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030810a07">
「虽然也有其他舰队。
　但一说到规模足以与横浜·横须贺舰队对抗
的舰队的话……房总半岛南部的驻留舰队最合
适吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0030820a00">
「那边呢？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030830a07">
「要指挥他们很简单。
　但是……」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030840a08">
「……如果动用他们消耗了战力的话，
太平洋方面就会全无防备了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030850a07">
「就是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　原来如此。
  进驻军——联盟军的战力不仅仅在横浜·横须贺
两基地。

　他们可能从各个方向出兵增援，比如南洋，或是
大陆。
  我们不能将为防备敌军增援而设置的舰队引入
相模湾……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030860a09">
「总的来说，基本方针是在普陀乐迎击敌方，
这样吗？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030870a08">
「是的。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030880a07">
「这是用排除法得出的选择。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030890a09">
「那么，先确认我方的战力配置吧。
　首先——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　听着古河公方主导的对话。
　我反复琢磨着普陀乐军力的相关知识。

　第一是普陀乐城众。
　他们是普陀乐城主直辖的军团。现在虽然成为足利四
郎邦氏的属下了……但他的年龄和资历还不足以胜任一
军的指挥，所以由宿老游佐童心代行。

　第二是古河领众。
　他们是从古河公方府的官军中划出来留守普陀乐城的。
指挥官当然是古河公方游佐童心，或是他的代理者。

　第三是小弓领众。
　他们是小弓公方府派遣的军队。由于比起其他公方府
能较快地将兵力送往普陀乐城，该队的规模比其他的派
遣军队更大。

　第四是堀越领众。
　他们是堀越公方府的派遣军队，指挥权在茶茶丸手上。
堀越富裕的财政状况反映在充足的后勤上，所以经常受
其他部队嫉妒——现在这些倒无所谓。

　第五是篠川领众。
　他们是从大鸟狮子吼手下被誉为六波罗最精锐的会津篠
川军团中分割出来，驻守于普陀乐的官兵。

　这五个军团构成了普陀乐的常驻战力。
　他们是六波罗的中央军，也是关东地方现存的
最大军事力量。

　但——即使如此，单枪匹马也是无法与ＧＨＱ抗衡的。
　若想与ＧＨＱ匹敌势必需要地方军的支援。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆広域地図

	CreateTextureSP("でかい地図", 1900, @0, @0, "cg/ev/ev804_戦争マップ２.jpg");
	DrawDelete("上陸予想", 1000, 100, "blind_02_01a_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　就是说需要古河、小弓、篠川、堀越。
　需要关东四公方的援军……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030900a09">
「刚才已经对古河发出了指令。
　话虽如此……」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030910a09">
「应该没用吧。」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030920a08">
「也对吾的小弓发出指令了……
　嗯。没法期待啊。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030930a07">
「因为古河和小弓位置不好。
　如果ＧＨＱ的参谋头脑正常，
现在一定有所行动。」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030940a07">
「小弓现在的情况应该已经
跟小坪港差不多了吧？」

{	FwR("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030950a08">
「嗯……是吧。」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0030960a09">
「那剩下的只有堀越和篠川了。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030970a07">
「也别太期待堀越军。
　以现在的情况，是不可能将过万的兵力
立刻调到镰仓来的。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0030980a07">
「一般看来，反而是进驻军堵住东海道更快吧。」

{	FwR("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0030990a08">
「……都是冈部的造反害的。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031000a07">
「理由不光是这个。」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0031010a09">
「这样一来——」

{	FwR("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031020a07">
「还是只能寄望于狮子吼了。」

{	FwR("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0031030a08">
「…………是啊。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　大鸟狮子吼的篠川公方府军。
　是规模和实力仅次于普陀乐中央军的最大地方军。

　他们如果能赶到普陀乐，六波罗与ＧＨＱ的战力才
能算是平分秋色吧。

　但是，这需要一个条件。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031040a07">
「狮子吼奔赴会津整顿军队……再返回这里要
花几天呢。」

{	FwR("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0031050a09">
「…………」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0031060a07">
「无论怎么想，三天都不够的吧。」

{	FwR("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0031070a08">
「而且……
　古河公方府能撑到什么时候呢？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　没错。
　为了压制古河公方府，进驻军肯定会将部分兵力
派往那边。

　古河陷落的话，篠川军去往镰仓的路就断绝了。
　普陀乐将会被孤立。

　……到那时就离败北不远了。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_004.nss"