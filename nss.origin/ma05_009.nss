//<continuation number="1130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_009.nss_MAIN
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
	#ev128_病床の光_b03=true;
	#ev008_赤子を抱える女=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_山賊の首領=true;
	#voice_on_首領の弟=true;

	$PreGameName = $GameName;

	$GameName = "ma05_010.nss";

}

scene ma05_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_008.nss"

//◆山
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　山贼团占领了郊外的小山作为据点。
　从地形学的角度来看，它是属于北方险峻山脉的隆起，
其实质称之为山丘的话，它过于高大，称之为山岳的话，
它过于矮小，还是只能称之为小山了。

　过去，此处理所当然地是小镇孩子们的游乐场。
　然而山贼们用枪击以及刀刃做威胁，将孩子们一个不
剩地驱逐出去，这是因为比起孩子们，山贼团更需要这
座山。


　既足够对小镇形成压制，而且出入又很自由。就算山
贼团相信这座山是圣约之地，也找不出能够否定他们的
论据来。
　不过做这种无聊约定的神可消受不起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銃器_複数構える01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090010e080">
「停下。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090020a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　当我走到仿佛污染山中景色一般耸立的壁垒的十步前，
两把枪便同时制止了我。
　让毫不遮掩地行于山道中间的我走到这么近的地方，
恐怕只是难以猜测我的意图吧。

　怀疑的视线打量着我的打扮。
　我老实地举起双手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090030e080">
「……镇上的家伙吗？
　来干嘛的？　这里可是我们的阵地。」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090040e082">
「想捉迷藏的话到公园去啊，少年。
　这里的鬼可是有点吓人啊！」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090050e080">
「嘿嘿！
　是啊。被我们<RUBY text="··">摸到</RUBY>的话，身上
可是会开洞的哦……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　其中一个守门人炫耀地对我晃了晃手枪。
　然后另一个的手伸进腰带上的小袋里——那里面是子
弹吧。是在向我炫耀可以打我好几枪吗。

　我明确说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090060a00">
「枪是犯规的。」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090070e080">
「……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090080e082">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090090a00">
「在这座小镇上曾经也有段时间的捉迷藏流行
让鬼用带子弹的枪——虽然很抱歉，发起人是
我的妹妹——但因为这会变成做鬼的人单方面
的虐杀游戏所以马上就废除了。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090100a00">
「因为这并不是全国性的现象。」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090110e082">
「……啊——
　是这样的吗……？」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090120e080">
「……话说回来，好像是有什么地区规则
的啊……在我老家。
　鬼可以使用枪的时候，把锅盖当盾用之类
的……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090130e082">
「啊～想起来了。
　没有子弹的话就算鬼输之类的。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090140a00">
「是的。
　像这样，规则的发展趋势最终会变成
单纯的战争游戏，就不再属于捉迷藏游
戏的范畴了。」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090150e080">
「是吗……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090160e082">
「…………
　不对。」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090170e082">
「我说，你到底是来干什么的啊。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090180a00">
「我想见你们的首领。」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090190e080">
「见首领？」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090200e082">
「……什么？
　难道你是来说服（追求）她的吗，帅小伙？」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090210e080">
「哈哈哈。
　这家伙真厉害！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090220a00">
「是的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


/*
//◆声用一時退避
//◆同時発声
{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090230e080">
「哎——?!」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090240e082">
「哎——?!」
*/

	CreateVOICE("その他男声1","ma05/0090230e080");
	CreateVOICE("その他男声2","ma05/0090240e082");

	SetBacklog("「哎——?!」", "voice/ma05/0090230e080", その他男声);
	SetBacklog("「哎——?!」", "voice/ma05/0090240e082", その他男声);

	MusicStart("その他男声1",0,1000,0,1000,null,false);
	MusicStart("その他男声2",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//（ｅｔｃ／山賊Ａ）（ｅｔｃ／山賊Ｂ）
　
「哎——?!」

</PRE>
	SetTextEXC();
	Request("@text0070", NoLog);
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090250a00">
「我是为了我们小镇与你们之间今后的愿景
前来劝说首领殿下的。
  请拜托代为转达。」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090260e082">
「……啊，这样啊。
　原来是这个……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090270e080">
「……我说伙计……
　我们其实是被他戏弄了吧？」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090280e082">
「…………不。
　只是和不太能扯上
关系的人扯上关系了而已……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090290e080">
「……是吗……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090300e082">
「怎么办？」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090310e080">
「要我说怎么办……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090320a00">
「…………」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090330e080">
「……总觉得比起赶走这个男人，
还是让他见一下首领比较快。」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0090340e082">
「我也这么觉得。
　……带进去吧。好像也没有带什么
武器……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　头靠头叽叽咕咕地低语着什么的两人向我转过身来。

　不知为何莫名地摆出疲惫的表情——不过我看不出
他们有什么加害的意图。

　看来，会让我通过了。
　没想到会这么简单。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090350a00">
（真是意外热心的人啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　这样的话，谈话也可以期待了。
　我的计划也更有希望了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵暗転", 2000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	WaitKey(1000);
	StR(1000, @0, @0,"cg/st/st景明_通常_社員b.png");
	FadeStR(0,true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw首領_高笑.png");

	#voice_on_山賊の首領=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090360b31">
「哦嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090370b31">
「嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090380b31">
「嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬!!」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090390b31">
「驳回。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090400a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　然后，这份希望被轻易击碎。

　被带领着踏入这座山寨之中。
　谒见的山贼团首领在听到我的话之后一阵一阵又一阵
地笑个不停，之后，丢下这么一句话。


　无从下手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st首領_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090410b31">
「让我停止掠夺？　哼……
　这也太失礼了吧。我们到底什么时候
掠夺过你们了？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090420a00">
「……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090430b31">
「一磨？
　你还记得吗？」

{	#voice_on_首領の弟=true;
	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0090440b32">
「昨天干的，姐姐。」

{//◆ぼか。
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090450b31">
「那·个·不是掠夺!!
　是因为基于大局的军事行动而让
市民随意地提供物资！」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0090460b32">
「对、对不起，姐姐……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090470a00">
「……那么，您这样认为也无妨。
　不过小镇的<RUBY text="··">随意</RUBY>也快到极限了。
再这样下去……不，现在小镇的生活
环境也已经是受到严重打击的状况。」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090480b31">
「哎呀，是吗。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090490a00">
「……能恳请您宽恕我们吗？」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090500b31">
「可以哟？
　那么今后，就比预定稍微减少一点吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090510a00">
「预定是？」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090520b31">
「这可是军事机密。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090530a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　毫无意义的许诺。
　将这像纸屑一样的话语当做礼物带回家的话，本家一
定完全无法接受的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090540a00">
「……失礼了。
　不过你们山贼团的目的究竟是
什么呢？」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090550b31">
「我们才不是山贼团！
　请叫我们志士团！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090560a00">
「志士团？」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090570b31">
「我们是为了从更自由的立场贯彻正义而
敢于脱离六波罗麾下的志士团体！
　讨伐邪恶，纠正不正当行为，发誓领导世界
有朝一日成为无战的太平盛世的独立军团——」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090580b31">
「也就是志士团!!」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090590a00">
「……哈。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0090600b32">
「是这样的啊……
　不是私吞军费暴露然后连夜
逃走的吗，姐姐！」

{//◆げし
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw首領弟_泣き.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0090610b32">
「对、对不起……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090620b31">
「怎么样？
　明白了吗，凑斗景明？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090630a00">
「明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　明白了许多。
　连多余的事都知道了。

　然而，重要的事只有一件。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090640a00">
「您没打算停止掠夺。
　是这样的吗？」

{	FwC("cg/fw/fw首領_高笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090650b31">
「……你这男人到底在听些什么呀。
我明明说了没有在掠夺呀。
　真是的，和低能的平民讲话真累啊！
哦嗬嗬嗬嗬嗬嗬！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090660b31">
「嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090670b31">
「嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬嗬
嗬嗬嗬嗬嗬嗬嗬嗬嗬！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090680b31">
「嗬!!」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090690a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　笑声响彻耳际之时，我定下了个计策。
　这原本就是我心中的方案之一。

　从昨晚与养母谈话那时起。
　无法用对话解决，然而又无法采取互相残杀的方法的
话——

　心中，悄悄地做好准备。
　做梦都没有想过自己很适合<RUBY text="··">表演</RUBY>。若是缺乏冷静，
根本无法做到。

　我在脑中反刍着工序，然后引出话头。
　首领正好面对着我，带着尖刻的表情想要重复刚才所
说的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090700b31">
「那么你请回吧！
　这种郁闷的表情我已经见够了。
快点回到田里去挖白薯——」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090710a00">
「<RUBY text="·····">山贼的首领</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我充满威压地说道。
　似是感觉到我语调的变化，女首领停下了话语。


　周围列坐的山贼们也屏住了呼吸。
　——气氛发生了变化。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090720a00">
「我要与您决斗。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090730b31">
「……哈？
　什么呀，这么突然。」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090740a00">
「您不会逃走吧？」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090750b31">
「不。喂喂。
　不要自顾自地说下去呀！」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090760a00">
「虽然您是女人，不过也算是个武人。
　原先在军队里，拥有这么多部下的话当然
是这样的吧。」

{	FwC("cg/fw/fw首領_驚き.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090770b31">
「等一下。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090780a00">
「对了……您是靠世袭制继承了父母的身份
吧。既然被称为首领。
　可是，拥有的并不仅仅是血统这个装饰吧？」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090790a00">
「那个十字架并不是摆设吧？
　虽说最近生于武家却不驾驶剑胄，
只是放在壁龛做装饰的武者似乎也多了
起来……您并非如此吧。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090800a00">
「若非如此，落到当山贼这个地步还能
当个头目也很难吧……不过如果您很能
虚张声势的话就另当别论了。
　哦，你们并不是山贼对吧？　失礼。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090810b31">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我无视对方的反应，继续说个不停。
　虽然这只是为了避免暴露弱点……但从结果上而言，
这样的效果似乎还不错。

　首领的眼神沉了下来。
　周围的山贼完全陷入沉默。

　我也沉默着，俯视首领。
　用故意让人意识到身高差的视线——而且是为了将这
一点传达给对方般地露骨。

　过了一会。
　首领勾起唇角。

　笑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090820b31">
「——然后呢？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090830a00">
「所以，与我决斗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我也弯起嘴角笑着回应。
　虽然没有做得像对方那样自信满满。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090840a00">
「如果我赢了，您就要命令部下再也
不对镇上出手。」

{	FwC("cg/fw/fw首領_冷笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090850b31">
「我赢了的话呢？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090860a00">
「嗯？　啊……
　这样啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　这一点，我并没有考虑过。
　——我摆出这样的表情来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090870a00">
「我就随您处置吧。」

{	FwC("cg/fw/fw首領_冷笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090880b31">
「……哼。
　是吗。」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090890b31">
「你们听到了？」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0090900b32">
「听到了，姐姐。」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090910e080">
「嘿嘿嘿……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　低沉的笑声在山贼之间扩散。
　事情变得有趣了——他们的神色也仿佛如此说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090920b31">
「好啊。凑斗景明。
　就依你提出的条件，接受决斗。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090930b31">
「给他太刀！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　收到指示的一名山贼，从自己腰间拔出一柄太刀。

　笑眯眯地将刀递给我。

　——井底之蛙的高傲。
　告诉你有几斤几两的话，会摆出什么样的表情呢——

{	CreateSE("SE01","se戦闘_金属_拳銃落ちる");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　用眼神代替嘴巴的言语。
　与这样的视线所传达的讯息一同，我接过了太刀。


　虽说不是什么名刀，但应该也不坏。
　至少做工精致。

　不过我也没打算砍人，所以也没什么关系。
　只要不是影响重心的劣刀就足够了。

{	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @0, @0,"cg/st/st景明_戦闘_社員.png");
	FadeStR(300,false);}
　握刀姿势尽可能装得像个外行人——并从头到尾都用瞧
不起对手般的姿态摆好架势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090940b31">
「哎呀，真勇猛！
　真是强敌啊！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090950a00">
「现在作废也没用了。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0090960b31">
「唔……」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0090970b32">
「姐姐，小心！」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0090980e080">
「尊弟，不好了。
　如果首领被打败了，你可要为她
报仇啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　山贼团全员假惺惺地热闹起来，悲壮无比。
　我装作信以为真地笑了起来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE01","se戦闘_動作_刀構え02");
	StL(1000, @0, @0,"cg/st/st首領_戦闘_制服.png");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0090990a00">
「怎么了？
　放马过来吧！」

{	FwC("cg/fw/fw首領_冷笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0091000b31">
「哎呀，可以了吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0091010a00">
「我先等您出招。」

{	FwC("cg/fw/fw首領_冷笑.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0091020b31">
「呵呵——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm09",3000,1000,true);
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　女首领怜悯地笑着吐气，向前跨出一步。
　从这一步的流畅与优美中便可知其实力的高低。

　很强。
　
　同我最初了解的一样。

　<RUBY text="····">比我更强</RUBY>。
　
　这份确信已经在五成以上。

　所以轻视她。

　如果协商无法解决的话，就提出与首领决斗来解决问
题——这份方案……
　最大的问题点就在于，能够必定胜利的方法。

　六波罗军的精锐不言而喻。
　尤其是武者——龙骑兵的强大放眼全世界也鲜有事物
可与其匹敌。正因如此ＧＨＱ也接受他们的降伏，给予
他们大和统治权作为代价。

　这位女性以前便是服役于六波罗的一员。
　而且，她拥有对部下接近完美的威信——以至于即使
失去军籍部下仍然继续追随在身边。这一点我毫不怀疑。


　在幕府军，武者担任步兵部队的指挥官时，两者
的关系在很多情况下相当于中级武家的族长（或是
继承人）与他们一族的家臣。
　这种主从关系并不是偶然的，而是传统性的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　然而，即便如此，如果那位族长是懦弱无能之辈的话，
一旦失去地位随即会遭遇背叛。
　虽说传统也许是强调忠义的，但光靠忠义什么都支撑
不了。

　首先，她拥有不愧称之为六波罗武者的实力。其次，
用这份实力维系着她的部下。
　特别是论起勇猛，绝不会是步他人后尘之人。


　堂堂正正战胜对方的希望很渺茫。
　想要胜利——就只有让对方大意了。

　只是发起挑战是不行的。
　身为武者却被一介市民挑战的话，一定会在九分嘲讽
的同时怀着一分戒心。

　就是这一分戒心让人无破绽可寻。
　胜算很小。

　<RUBY text="·····">所以轻视她</RUBY>。
　对手说到底不过是个女人——我让自己看上去像个如
此看低对方的蠢蛋。

　如果我的演技能够成功的话……
　对方会愤而蔑视我，然后并不仅仅为了胜利，更会燃起
想要压倒我的气焰。

　剑会变得粗糙起来。
　而且刀法一定不会致命。

　因为靠一击斩杀对方，是无法让对方尝到屈辱的滋味
的。
　对方的目标，恐怕是砍下一双手脚。

　
　……如果我能将局势掌握到这个地步的话。
　即使对方的技艺是多么高超——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆がきーん。撃音。
	CreateColorSP("絵暗転", 1100, "#000000");
	DeleteStA(0,true);
	Wait(10);
	CreateColorSP("絵暗転床", 100, "#000000");
	Delete("絵暗転");

	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdown(@0, @0,1500);
	SL_rightdownfade2(0);

	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE01", 100, 0, null);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 3500, "#FFFFFF");
//	StL(1000, @0, @0,"cg/st/st首領_通常_制服.png");
//	StR(1000, @0, @0,"cg/st/st景明_戦闘_社員.png");
//	FadeStA(0,true);
	CreateTextureEX("絵背景100", 1000, 419, -20, "cg/bg/bg055_山賊アジト_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵st100", 1200, 132, -74, "cg/st/resize/st首領_通常_制服_l.png");
	Delete("絵暗転床");
	Fade("絵白", 1400, 0, null, false);
	DrawDelete("絵白", 600, 1000, "slide_05_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　按理也会被我打败。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0091030b31">
「…………」

{	FwL("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0091040a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　敌方以我向前突进的左手为目标挥出一刀。

　我将重心移至后方回避……

　紧接着将重心再度前移，顺势送出一击。
　目标是对方太刀的刀身根部。

　超越太刀容许量的负荷使敌方的太刀脱手而落。
　顺着反作用力的改变我将刀尖指向了对手的喉咙。

　——胜负已决。
　如我所料，一招定胜负。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0091050b31">
「……什……」

{	FwL("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0091060b31">
「……都计划好了啊……
　你这家伙！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　真了不起。
　这只是凑巧，一定是搞错了什么——如此深信着，在
保护好自尊心之前，首先是寻求真相并充分理解了。

　尽力让这种心宽的强者无法发挥实力才是正解。


</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0091070a00">
「即使如此约定就是约定。
　请好好遵守吧。」

{	FwL("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0091080b31">
「唔……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　女首领紧咬下唇。
　与苍白起来的唇色相反，双颊泛红。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領弟_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0091090b32">
「……哎？
　什么？」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0091100b32">
「…………姐姐输了？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se背景_ガヤ_ざわめく02_L");
	MusicStart("SEL01",1600,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　好像现在才理解结果的首领弟弟向旁边的山贼问道。

　被问的一方似是无话可答的样子。

　我被数十份茫然自失与一份激愤所包围。
　……而我却莫名地感受不到胜利的滋味。


　——真的就这么结束了吗？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);
//◆夜
//◆光の部屋
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev128_病床の光_b03.jpg");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	WaitKey(1000);
	Fade("絵ＥＶ", 1000, 1000, null, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　今晚的光很安静。
　呼吸听上去都有几分安稳——虽然只是与之前相比较
而言。

　即使如此也丝毫不见恢复的征兆。
　生气只是一味地衰退着。这个速度有快有慢，只不过
今天相对而言比较慢而已。改变不了光在日复一日接近
死亡的事实。

　因为回来时已经很晚了，所以今天就没有去向本家报告。
　我直接回了家，仅仅向养母叙述了经过。

　养母虽然很高兴我安然无恙，但对在山寨的那一部
分经过好像不太开心。
　用最好的方式解决——看上去养母似乎不认为我做到
了。

　我也是这么想的。
　如果不是那样的话，我一定会冒着失礼也要半夜造访
到本家那边去。

　……虽然我觉得只有用那种方法了。

　但无须详细观察女首领的表情，我也知道她并没有认
同的意思。
　毫无疑问，比起认输，她一定更加深深地坚信再比一
次的话会胜利。

　山贼们也没有接受吧。
　恐怕比首领更无法接受。

　然而，这是在明确的约定下进行的决斗。


　虽然只是口头约定，但这并不是问题。
　约定是在众目睽睽之下确实地做出的，结果也是明明
白白地摆在那里。

　即使是脱离武家的人，也很难把确切的事实假装不知
道。
　会遵守约定的吧——应该会。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0091110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　总之明天先去向本家报告吧。
　我如此决定。

　虽说不知道本家会不会接受……
　这要看说明的方式了。

　山贼原本也是武士，拥有所谓武人的矜持。
　至少不会明目张胆地继续掠夺吧——用这种话去说服
本家或许也是有可能的。


　虽然这好像在耍骗术一样，但只要能为光的病情多争
取一刻，这都是无可奈何的。
　而且，相信武士矜持的情感也并非虚假。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0091120a00">
「……光……」

{	NwC("cg/fw/nw光.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0091130a14">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　再等一会。
　再多等我一会，我一定……把你……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 0);

//◆光の牢獄
	PrintBG("上背景", 15000);
	CreateColorSP("絵暗転", 1100, "#000000");
	CreateColorSPadd("絵白転", 1050, "#FFFFFF");
	Delete("上背景");
	WaitKey(1000);
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　……又在这里。

　禁锢<RUBY text="我">光</RUBY>的黑暗牢笼。
　在被无形的虚空所紧闭的牢狱中。

　我始终都在这里。
　像这样，做着同样的梦。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·光出生時
	CreateTextureSP("絵ＥＶ", 500, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	Fade("絵白転", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　最初的记忆。

　夺走父亲的母亲。
　被母亲夺走的父亲。
　失去父亲的自己。

　循环往复。
　再次循环往复。

　我不断地做着同样的梦。
　在没有尽头的黑暗空间中。

　只有这样光才被容许存在。

　黑暗绝不会放我逃走。
　它命令着，在这里腐朽吧。

　它命令着，不能动。

　是的。
　光在这里不能动。

　被夺走父亲的<RUBY text="我">光</RUBY>如果要让生命复苏的话，
　那是为了夺回父亲。

　被夺走父亲的我，
　只为了夺回而生存。

　然而这是不被允许的。

　——父亲是母亲的，母亲是父亲的。
　孩子从母亲那里夺走父亲，是为伦理所严禁的。

　光是人。
　无法违背人之道。

　遵守人之道的话，
　就不允许从母亲那里夺回父亲。

　即使违背人之道夺回父亲，
　父亲也不会承认光。

　所以，光在这黑暗深处无法动弹。

　作为被夺取者而开始的我，
　在没有开辟夺回的道路前，除了永远停留在最初，
别无他法。

　……所以光在这里。
　始终在这里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("絵白転", 2000, 1000, null, true);
	WaitKey(1000);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_010.nss"