//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_013.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_014.nss";

}

scene md03_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_012.nss"


//◆評議の間

//■景明のみ立っていると想定し、公方達は立たせていません。 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm20", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大致处理完毕后，我去向幕阁首脑汇报情况。
　古河公方游佐童心、小弓公方今川雷蝶，以及暂时回
城的篠川公方大鸟狮子吼在听我的报告。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_遠想.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130010a06">
「嗯……这样啊，
　我明白了。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130020a06">
「处理得很妥当嘛。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130030a09">
「嗯……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130040a00">
「是。
　多谢夸奖。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130050a08">
「……是吗？
　光凭材料失踪并且有报告说它们流通到别处，
就把这二者联系起来起来是不是太武断了？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130060a06">
「从你嘴里听到武断这个词，
总觉得有种难言的违和感……」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130070a08">
「为什么啊!?」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130080a09">
「流通到外面的报告是捏造的吧？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130090a08">
「哎？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130100a09">
「是吧，凑斗中佐。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130110a00">
「大人明察。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130120a08">
「……怎么回事？」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130130a06">
「中佐，说明一下。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130140a00">
「是。
　真相恐怕是反幕府势力所做的妨害工作。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130150a00">
「通过拿走建设会场的必需品，拖延工事
——使典礼延期。
　虽然是小手段，却很有效。」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130160a00">
「下官认为失踪的物资可能已经在城内
处理掉了……
　因为如果不是偷去卖钱，就没必要冒
着风险带出城。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130170a08">
「……？
　那为什么？　以侵吞材料嫌疑而逮捕的仓库
管理员就完全是被冤枉的。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130180a08">
「你本来就知道真相还把他
抓进大牢？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130190a00">
「是。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130200a08">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130210a08">
「哦……原来如此！
　是这么回事啊。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130220a06">
「终于理解了吗。
　没错，将真相照实说明很容易。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130230a06">
「但是倒幕派潜入城内进行捣乱这一事实如果
传出去……在八幡宫事件余韵未散之时，肯定
会使官兵强烈动摇。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130240a09">
「如果将其作为私吞事件处理便无此顾虑了。
　严正的处分反而能整顿军纪……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130250a09">
「哎呀，真亏你能在短时间内想这么多啊。
　你的胆识也相当过人嘛！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130260a00">
「不甚惶恐。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130270a08">
「呵呵，是啊是啊。
　像你这样的男人竟会受茶茶丸支配，吾觉得
还挺不可思议的。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130280a06">
「还真是。
　我无意细究，不过你们到底是怎么认识
的……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130290a00">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130300a09">
「话说，凑斗中佐。
　你之后打算怎么处理？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130310a00">
「向被逮捕的仓库管理员说明缘由，
然后把他调到城外随便哪个部署。
　对外就说已然处刑了吧。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130320a09">
「嗯……」

{	FwC("cg/fw/fw景明汚染_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130330a00">
「工人的调查当然也会隐蔽且迅速地进行。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130340a09">
「好。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0130350a08">
「这事交给吾吧。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130360a06">
「物资的补充呢？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130370a00">
「已经和业者联系上了。
　虽然多少会有点赶，但是不会拖延工期。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130380a06">
「很好。
　非常好，凑斗中佐。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0130390a06">
「你总是不会让我失望啊。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130400a00">
「您过奖了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130410a09">
「哎呀哎呀，贫僧也这么觉得。
　必须给你点什么奖励啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130420a00">
「奖励？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130430a09">
「义清！」

{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130440b21">
「在！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆義清

	StR(1000, @0, @0, "cg/st/st義清_通常_私服.png");
	FadeStR(300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　古河公方召入的是经常随侍他身边的小姓。
　像一条忠实的小狗一样迅速现身，候在主人身边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130450a00">
「……？」

{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130460b21">
「您叫我有何吩咐？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0130470a09">
「嗯。
　慰劳一下这位人才。」

{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130480b21">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　他行过一礼，转向我。
　然后开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw義清_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆微妙に赤顔
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130490b21">
「中佐大人。
　您喜欢攻还是受？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130500a00">
「…………………………………………………
……………………………………………………
……………………………………………………
……………………………………………不用了。」

{	FwC("cg/fw/fw義清_照れ.png");}
//【義清】
<voice name="義清" class="義清" src="voice/md03/0130510b21">
「用手用嘴，用脚也可以。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("@text0070*");

/*
//見様見真似 inc櫻井
	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("voice01",30411,Center,inherit,auto,auto,"「結構だ」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @10, @10, null, false);

	SetBacklog("「結構だ」", "voice/md03/0130520a00", 景明);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fw景明_怒りa.png");


	Fade("顔01", 150, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);

*/

/*
	CreateVOICE("景明","md03/0130520a00");
	SetFont("@黑体", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	MusicStart("景明",0,1000,0,1000,null,false);
	CreateText("voice01",30411,Center,inherit,auto,auto,"「結構だ」");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @0, @10, null, false);

	SetBacklog("「結構だ」", "voice/md03/0130520a00", 景明);
	CreateTextureEX("顔01", 30400, 451, 4, "cg/fw/fw景明_疲労.png");


	Move("絵st200", 0, @0, @0, AxlDxl, false);

	Shake("絵st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("絵背景100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("顔01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("顔01", 150, false);
	Fade("@boxCT", 150, 0, null, true);
*/

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆大フォント
//【景明】
<voice name="景明" class="景明" src="voice/md03/0130520a00">
<FONT size=40>「不用了。」</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_014.nss"