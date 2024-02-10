//<continuation number="550">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_007.nss_MAIN
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
	#bg026_普陀楽山塞a_01=true;
	#bg100_天守閣_01=true;

	#ev803_戦争マップ１_a=true;
	#ev803_戦争マップ１_b=true;
	#ev803_戦争マップ１_c=true;
	#ev803_戦争マップ１_d=true;
	#ev803_戦争マップ１_e=true;
	#ev803_戦争マップ１_f=true;
	#ev803_戦争マップ１_g=true;
	#ev803_戦争マップ１_h=true;

	#ev805_戦争絵シリーズその３_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_008.nss";

}

scene md04_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_006.nss"

//あきゅん「演出：素材確認のため一部仮仮打ち」

//◆普陀楽

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg100_天守閣_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);


//◆爆撃。どがーんどがーん。
	CreateSE("爆撃", "se戦闘_破壊_爆発04");
	MusicStart("爆撃", 0, 1000, 0, 1000, null,false);

	Shake("絵板写", 2000, 0, 2, 0, 0, 1000, DxlAuto, true);

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(1000, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070010a07">
「哦哦。
　排场真大。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070020a08">
「真是耻辱……
　居然这么快就控制了普陀乐的领空！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070030a07">
「他们似乎利用隐形龙骑兵的特性，
用奇袭突破了防空网。
　我们无能为力啊。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070040a09">
「隐形龙骑兵吗。
　贫僧确实知道他们的存在……」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0070050a09">
「却没想到进驻军居然准备了这么多啊。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070060a08">
「是啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆また爆撃
	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);
	OnSE("se戦闘_破壊_大爆発01", 1000);
	Wait(500);
	Shake("絵板写", 3000, 0, 3, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	CreateTextureEX("絵背景100", 2000, @0, @0, "cg/ev/ev805_戦争絵シリーズその３_b.jpg");
	Request("絵背景100", Smoothing);
	SetBlur("絵背景100", true, 1, 500, 100, false);

	Fade("絵背景100", 1000, 1000, null, false);


	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070070a08">
「——啊啊，真是的！
　话说回来吾等这边的龙骑兵也太不中用了吧！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070080a08">
「到底想让<RUBY text="那玩意">大型飞行舰</RUBY>在自己头上待多久啊！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070090a07">
「没办法啊。
　刚开战高空就被占领的话
对我们是绝对不利的。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070100a07">
「而且那个隐形龙骑兵，雷达几乎无法找到它。
  即使知道它的位置，一不小心也会跟丢的。」

{	FadeDelete("絵背景100", 500, false);
	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070110a08">
「话说回来……
　啊啊，真是急死人了！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070120a08">
「吾要出击!!」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070130a07">
「那么……
　准备怎么做，童心和尚？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070140a09">
「……这样啊。
　我们也做好出战准备了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070150a09">
「由我们打头阵，来领导士兵吧。
　这样如何？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070160a07">
「好。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070170a08">
「没问题！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆鎌倉周辺地図
//◆进驻军の侵攻状況を矢印と凸とかで図解

//■着手前からの状態にしています inc櫻井

	PrintBG("上背景", 30000);
	CreateSE("SE01","se日常_物_紙をめくる02");
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵ＥＶ戦場ａ", 2000, Center, Middle, "cg/ev/ev803_戦争マップ１_a.jpg");
	FadeDelete("上背景", 1000, true);
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("絵暗転", 1000, 100, "blind_03_00_0", true);

	WaitKey(500);

	CreateTextureSP("絵ＥＶ戦場ｂ", 1990, Center, Middle, "cg/ev/ev803_戦争マップ１_b.jpg");
	DrawDelete("絵ＥＶ戦場ａ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(300);

	CreateTextureSP("絵ＥＶ戦場ｃ", 1980, Center, Middle, "cg/ev/ev803_戦争マップ１_c.jpg");
	DrawDelete("絵ＥＶ戦場ｂ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(300);

	CreateTextureSP("絵ＥＶ戦場ｄ", 1970, Center, Middle, "cg/ev/ev803_戦争マップ１_d.jpg");
	DrawDelete("絵ＥＶ戦場ｃ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070180a09">
「敌人突袭了七里之浜及由比之浜。
　看来他们通过空袭和舰炮射击除掉炮台后，
利用登陆舰进行登陆了。」

//嶋：修正（防衛隊）【090930】
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070190a09">
「在这么短时间内我们的海岸防线就被攻破了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。上陸
	CreateTextureSP("絵ＥＶ戦場ｅ", 1960, Center, Middle, "cg/ev/ev803_戦争マップ１_e.jpg");
	Request("絵ＥＶ戦場ｅ", Smoothing);

	DrawDelete("絵ＥＶ戦場ｄ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(200);

	Zoom("絵ＥＶ戦場ｅ", 1000, 1200, 1200, Dxl1, false);
	Move("絵ＥＶ戦場ｅ", 1000, 91, 40, Dxl1, true);
	WaitKey(500);


	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070200a09">
「从七里之浜登陆的军团通过藤泽街道北上了。
　从由比之浜登陆的部队穿过若宫大路，离开
镰仓街道朝普陀乐来了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070210a07">
「……穿过若宫大路吗？
　这不是突破了镰仓市中央吗？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070220a07">
「他们不惜被市民憎恨也要侵吞大和吗？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070230a09">
「不不，非也非也。
　进驻军首先派了龙骑兵占据若宫大路。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070240a09">
「大队人马趁此期间行进，一口气<RUBY text="···">填满了</RUBY>大路。
　这样一来，就不会有市民会去接近
那满是军队和装甲车的大路……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070250a09">
「结果上没有造成市民伤亡。
　先行的龙骑兵呼吁市民减少外出及禁止通行
的措置也奏效了。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070260a07">
「……手段高明得让人火大。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。普陀楽へ進撃する二軍集団
	CreateTextureSP("絵ＥＶ戦場ｆ", 1950, Center, Middle, "cg/ev/ev803_戦争マップ１_f.jpg");
	Request("絵ＥＶ戦場ｆ", Smoothing);
	Zoom("絵ＥＶ戦場ｆ", 0, 1200, 1200, null, true);
	Move("絵ＥＶ戦場ｆ", 0, 91, 40, null, true);

	DrawDelete("絵ＥＶ戦場ｅ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070270a09">
「两个军团不久就会到达普陀乐周边。
　然后还有另一个军团刚刚突破了朝比奈峠……
看来他们想通过金泽街道，袭击镰仓吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。金沢街道から来る一軍

	Move("絵ＥＶ戦場ｆ", 1000, -91, 40, AxlDxl, true);


	CreateTextureSP("絵ＥＶ戦場ｇ", 1940, Center, Middle, "cg/ev/ev803_戦争マップ１_g.jpg");
	Request("絵ＥＶ戦場ｇ", Smoothing);
	Zoom("絵ＥＶ戦場ｇ", 0, 1200, 1200, null, true);
	Move("絵ＥＶ戦場ｇ", 0, -91, 40, null, true);

	DrawDelete("絵ＥＶ戦場ｆ", 1000, 100, "blind_01_01a_0", true);
	WaitKey(700);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070280a07">
「这是后方部队。
　是负责确保镰仓的占领和补给线的吧。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070290a08">
「是啊。
　总之这个先不管了。」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070300a08">
「问题是即将到来的两支军队。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070310a07">
「大船口和藤泽口吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070320a09">
「嗯。
　那现在该怎么办呢……」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070330a08">
「请童心大人留在城中心，
　指挥普陀乐城众进行防空。」

{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070340a08">
「吾就率领小弓领众前往大船方向。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070350a07">
「那我和堀越领众去藤泽口吧。
　古河和篠川领众做预备军。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆図解。大船と藤沢に軍配置
	Zoom("絵ＥＶ戦場ｇ", 1000, 1000, 1000, Dxl1, false);
	Move("絵ＥＶ戦場ｇ", 1000, 0, 0, Dxl1, true);

	CreateTextureSP("絵ＥＶ戦場ｈ", 1930, Center, Middle, "cg/ev/ev803_戦争マップ１_h.jpg");
	DrawDelete("絵ＥＶ戦場ｇ", 1000, 100, "blind_02_01a_0", true);
	WaitKey(500);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070360a08">
「嗯。
　童心大人，怎么样？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070370a09">
「……好吧。
　二位，拜托你们了。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070380a09">
「任务艰巨。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070390a08">
「交给吾吧。
　父亲建起的城怎么能交予夷狄之手！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);
	FadeDelete("絵ＥＶ戦場*", 500, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070400a07">
「呵呵……」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070410a08">
「……干嘛？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070420a07">
「没什么。
　总觉得雷蝶神采奕奕啊。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070430a07">
「比起政治事务和阴谋活动，你还是比较适合
单纯明了的战争吧？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070440a08">
「……………………」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070450a08">
「是啊。
　或许正是如此。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070460a09">
「呵呵……」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070470a07">
「好。
　我也打起精神吧。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070480a07">
「策略就这样行吗？
　在狮子吼回来之前死守城门，
援军来了就反攻——」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070490a07">
「狂扁攻城军然后攻打横浜。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0070500a08">
「……可以啊？
　这样一来胜利就是吾等的了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0070510a09">
「就是这样。
　策略就这么定了。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070520a07">
「嗯。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070530a07">
（……不过，没必要做到这个地步）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　茶茶丸用只有我能听到的声音接着说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0070540a07">
（对手也真是的。
　这么认真地开战，
能不能打个平手还不知道呢）

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0070550a00">
（……是啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　国际联盟大和进驻军。
　首先兵力超过六波罗，除去龙骑兵之外几乎全部兵种
装备都更优越——

　是强敌。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_008.nss"