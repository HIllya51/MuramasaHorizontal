//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_017vs.nss_MAIN
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
	#ev103_香奈枝演奏_b=true;
	#ev103_香奈枝演奏_c=true;
	#ev103_香奈枝演奏_d=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_ウィリアム·バロウズ=true;

	$PreGameName = $GameName;

	$GameName = "mc01_018vs.nss";

}

scene mc01_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_016vs.nss"

	PrintBG("上背景", 30000);
	OnBG(100,"bg076_建朝寺境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm13",0,1000,true);

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0010e206">
「……您似乎很愉快。
　但是，能否请您到此为止呢。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆竜騎兵×４
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_通常.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式指揮官_立ち_通常.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_通常.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_通常.png");

	CreateSE("SE01a","se人体_足音_鎧歩く04");
	CreateSE("SE01b","se人体_足音_鎧歩く04");
	CreateSE("SE01c","se人体_足音_鎧歩く04");
	CreateSE("SE01d","se人体_足音_鎧歩く04");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 1000, 1000, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);

	Move("絵演鎧２", 0, @-360, @0, null, true);
	Move("絵演鎧３", 0, @-130, @0, null, true);
	Move("絵演鎧４", 0, @150, @0, null, true);
	Move("絵演鎧５", 0, @460, @0, null, true);

	Request("絵絵鎧*", Smoothing);

	MusicStart("SE01a",0,800,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01b",0,800,0,1000,null,false);
	Fade("絵演鎧５", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01c",0,900,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Wait(100);

	MusicStart("SE01d",0,1000,0,750,null,false);
	Fade("絵演鎧４", 300, 1000, null, true);

	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆声優さんの口笛で。
//◆無理だったら「きゃっ_」嬉しそうに。
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0020a03">
「呼。」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0030e207">
「真是好像玩笑一般的画面啊……」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0040e206">
「应该叫恶梦才对吧。
　你能允许被一个女人
单枪匹马侵入至此吗？」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0050e208">
「有些过于怠慢了。
　亲王殿下的贵体，并不应该
由我们来守护吧。」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0060e209">
「但，如此轻易就被入侵者打倒，
是我们的耻辱……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0070a03">
「要珍视这样的责任意识啊。
　没有责任就是没有自尊心。男人的魅力
也会没有的哟。」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0080e208">
「说得好，这位小姐。」


{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0090e209">
「没错。
　如果场所合适，我差点就要追求你了……」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0100e207">
「这里简直就像残酷的赌场啊。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0110a03">
「不合各位的意吗？
　地狱之焰的战士们。」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0120e207">
「确实挺感兴趣的。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0130e206">
「你居然能……杀戮至此。
　而且手中的武器，只是一把破枪？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0140a03">
「是啊。
　我很爱用呢。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0150a03">
「但是，我不太喜欢枪打中对方
的感觉。
　杀人的时候，还是赤手空拳最棒了。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0160a03">
「像这样——用双手……
　掐死对方，最棒了。」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw竜騎兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0170e207">
「…………」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0180e208">
「刚才，害怕了吗？」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0190e207">
「害怕了啊……」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0200e206">
「……小姐你。
　嗜好杀人？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0210a03">
「是的。」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0220a03">
「杀人……
　我最喜欢了！」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0230e206">
「……被杀呢？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0240a03">
「哎呀呀，我都忘了呢。
　那一定比杀人更棒吧。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0250a03">
「光是想象一下就心跳加速呢。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0260e206">
「太好了。那我就放心了。
　忠于职守，我不能被杀，
但如果杀掉你的话，我想我是能够做到的。」

//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0270e206">
「——你们都听到了吧。
　把这只完全发了疯的母狗，
狠狠地揍一顿。」



{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0280e209">
「了解。」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0290e208">
「不觉得是个杀掉有点可惜的
女人吗？」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0300e207">
「我真怀疑你的喜好……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆竜騎兵、抜刀
	CreateTextureEX("絵演鎧抜刀２", 700, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");
	CreateTextureEX("絵演鎧抜刀３", 600, Center, InBottom, "cg/st/3d九四式指揮官_立ち_抜刀.png");
	CreateTextureEX("絵演鎧抜刀４", 800, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧抜刀５", 600, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");

	CreateSE("SE01a","se擬音_雰囲気_抜刀01");
	CreateSE("SE01b","se擬音_雰囲気_抜刀01");
	CreateSE("SE01c","se擬音_雰囲気_抜刀01");
	CreateSE("SE01d","se擬音_雰囲気_抜刀01");

	SetVertex("絵演鎧抜刀*", Center, bottom);
	Zoom("絵演鎧抜刀２", 0, 900, 900, null, true);
	Zoom("絵演鎧抜刀３", 0, 840, 840, null, true);
	Zoom("絵演鎧抜刀４", 0, 1000, 1000, null, true);
	Zoom("絵演鎧抜刀５", 0, 840, 840, null, true);

	Move("絵演鎧抜刀２", 0, @-360, @0, null, true);
	Move("絵演鎧抜刀３", 0, @-130, @0, null, true);
	Move("絵演鎧抜刀４", 0, @150, @0, null, true);
	Move("絵演鎧抜刀５", 0, @460, @0, null, true);

	Request("絵絵鎧*", Smoothing);

	CreatePlainSP("絵板写", 610);
	MusicStart("SE01a",0,800,0,1000,null,false);
	Fade("絵演鎧抜刀３", 0, 1000, null, false);
	Wait(50);
	MusicStart("SE01b",0,800,0,1000,null,false);
	Fade("絵演鎧抜刀５", 0, 1000, null, false);
	Delete("絵演鎧３");
	Delete("絵演鎧５");
	FadeDelete("絵板写", 150, true);

	CreatePlainSP("絵板写", 710);
	MusicStart("SE01c",0,900,0,900,null,false);
	Fade("絵演鎧抜刀２", 0, 1000, null, false);
	Delete("絵演鎧２");
	FadeDelete("絵板写", 150, true);

	CreatePlainSP("絵板写", 810);
	MusicStart("SE01d",0,1000,0,750,null,false);
	Fade("絵演鎧抜刀４", 0, 1000, null, true);
	Delete("絵演鎧４");
	FadeDelete("絵板写", 150, true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0310a03">
「哎呀呀。
　也就是说，大家要一起取悦我吗？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0320a03">
「但是死的愉悦只有一次。
　如果不能选择对手我也会很头疼的。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0330e206">
「你居然对我们感到不满？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0340a03">
「稍微有些大材小用不是吗。」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0350a03">
「啊，刚才是使用了谦虚的表现手法哟。
　并不是语法错误哦！」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0360e206">
「哼。
　被你这种女人所杀的士兵们，
也很不满吧。」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0370a03">
「真失礼。
　抓住了我这种超级美女。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0380e206">
「但是他们忍受了不满。
　啊，是这样啊。一定是这样的。这个世
界上，只有拥有力量的人才能将自己的喜
好强加于人。」

//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0390e206">
「就像接下来我将要怎样对待你那样。
　你没有怨言吧？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0400a03">
「……是吗。
　没问题啊。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0410a03">
「的确，没人会对力量强大的人刀刃相向
呢。这是相当具有说服力的正义规则。
　没错……这是你们六波罗的规则。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0420a03">
「所以我做你们的对手之时，也让自
己遵守相同的规则。
　为了表达对六波罗的敬意。从今往后一直
……嗯，当然现在也这么做。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);

//◆ＥＶ：香奈枝＋コントラバス
	CreateWindow("絵窓", 10000, 0, 138, 1024, 300, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/kana", 11000, 0, Middle, "cg/ev/resize/ev103_香奈枝演奏_bm.jpg");
	Move("絵窓/kana", 0, @-200, @-200, null, true);

	Move("絵窓/kana", 2000, @-200, @+100, Dxl1, false);

	Zoom("絵窓", 1500, 1000, 1000, null, true);

	SetNwC("cg/fw/nw竜騎兵Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0430e208">
「……？　乐器？」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0440e206">
「……什么意思？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0450a03">
「最后一曲。
　这点小事，您不会反对吧？」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0460e206">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0470a03">
「以此宣告离别。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウィリアム·テル序曲のコントラバス独奏アレンジ
//◆終了待ち
	Zoom("絵窓", 1500, 1000, 2000, null, true);
	CreateTextureSP("絵EV100", 9000, Center, Middle, "cg/ev/ev103_香奈枝演奏_b.jpg");

	FadeDelete("絵窓/kana", 1000, true);
	Delete("絵窓");

//あきゅん「演出：ユーザビリティ調整のため演出保留」
/*
	SoundPlay("@mbgm07",0,1000,false);//ダミー注意？
	$残時間=RemainTime("@mbgm07");
	WaitKey($残時間);

*/
	SoundPlay("@mbgm07",0,1000,true);

	$所有 = RemainTime("@mbgm07");
	$プレイサウンドウィリアム = true;

	$SYSTEM_l_button_down = false;
	$SYSTEM_keydown_enter = false;

	while($プレイサウンドウィリアム){

			if($SYSTEM_l_button_down || $SYSTEM_keydown_enter){
				CreateColorEX("絵黒幕１", 15000, "Black");
				SetVolume("@mbgm07", 1500, 0, null);
				Fade("絵黒幕１", 1000, 1000, null, true);
				WaitPlay("@mbgm07*", null);
				WaitKey(1000);
				FadeDelete("絵黒幕１", 1000, true);
				$プレイサウンドウィリアム = false;
			}
				$現タイム = PassageTime("@mbgm07");
			if($現タイム == $所有){
				SetVolume("@mbgm07", 1000, 0, null);
				$プレイサウンドウィリアム = false;
			}
			if($SYSTEM_skip){
				SetVolume("@mbgm07", 1000, 0, null);
				$プレイサウンドウィリアム = false;
			}
	}


	SetVolume("@mbgm*", 1000, 0, null);

	SetNwC("cg/fw/nw竜騎兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／駐屯隊Ｆ】
<voice name="ｅｔｃ／駐屯隊Ｆ" class="その他男声" src="voice/mc01/017vs0480e207">
「以献给自己的安魂曲而言，真是奇怪的选曲。」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0490e206">
「……满意了吗？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0500a03">
「嗯。
　非常满意——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ガリーン。コントラバス、鎧パーツに分離
//◆香奈枝の周囲に
	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Delete("絵EV*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev103_香奈枝演奏_c.jpg");
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0510a03">
「——所以。
　也让你们满意吧。」

{	NwC("cg/fw/nw竜騎兵Ｄ.png");}
//【ｅｔｃ／駐屯隊Ｈ】
<voice name="ｅｔｃ／駐屯隊Ｈ" class="その他男声" src="voice/mc01/017vs0520e209">
「…………什么!?」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／駐屯隊Ｇ】
<voice name="ｅｔｃ／駐屯隊Ｇ" class="その他男声" src="voice/mc01/017vs0530e208">
「剑——剑胄!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲ガキーン。
//◆贋弓聖バロウズ
//◆右手に長剣、左腕にシールドボーガン
	#av_ウィリアム·バロウズ=true;

	CreateSE("SE01","se特殊_鎧_装着02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	CreateTextureEXadd("絵ＥＶ覆", 4010, Center, Middle, "cg/ev/ev103_香奈枝演奏_d.jpg");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev103_香奈枝演奏_d.jpg");

	Fade("絵ＥＶ覆", 0, 750, null, true);
	Zoom("絵ＥＶ覆", 0, 1250, 1250, null, true);

	Zoom("絵ＥＶ覆", 3500, 1000, 1000, DxlAuto, false);
	FadeDelete("絵ＥＶ覆", 3500, false);
	FadeDelete("絵色白", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fwバロウズ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0540a03">
「忘记说了。
　这个“赝作弓圣”的装甲乐曲，是献给我的
敌人——也就是你们的安魂曲。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0550a03">
「你们似乎并不喜欢？
　不过，是我比较强嘛。就让我竭尽全力
把自己的喜好强加给你们吧。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/017vs0560a03">
「可以吧？」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／駐屯隊Ｅ】
<voice name="ｅｔｃ／駐屯隊Ｅ" class="その他男声" src="voice/mc01/017vs0570e206">
「杀了你!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,1500);
	SL_rightdownfade2(10);

	WaitPlay("SE*", null);

	ClearWaitAll(0, 0);

..//ジャンプ指定
//次ファイル　"mc01_018vs.nss"

}


