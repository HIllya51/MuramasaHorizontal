//<continuation number="1000">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_020.nss_MAIN
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
	#ev145_桜子を犯す童心_a=true;
	#ev145_桜子を犯す童心_b=true;
	#ev145_桜子を犯す童心_b02=true;
	#ev145_桜子を犯す童心_c=true;
	#ev145_桜子を犯す童心_d=true;

	#ev145_桜子を犯す童心_a=true;
	#ev145_桜子を犯す童心_b=true;
	#ev145_桜子を犯す童心_b02=true;
	#ev145_桜子を犯す童心_c=true;
	#ev145_桜子を犯す童心_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_021.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	#mb02_020=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene mb02_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

..//ジャンプ指定
//前ファイル　"mb02_019.nss"

//◆邦氏サイド
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 100, -170, -520, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200010b49">
「……童、童心！
　童心和尚!!」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200020b49">
「快……快停下！
　怎么可以这样——强人所难！」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200030a09">
「那么……」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200040b49">
「……」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200050a09">
「方才说了什么，
　殿下？」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200060b49">
「什、什么？」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200070a09">
「很遗憾，贫僧正舞在兴头上。
　所谓艺伶，就算闻得双亲濒死也绝不可离开
舞台，这是规矩。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200080a09">
「殿下之事，待<RUBY text="··">这曲</RUBY>结束后洗耳恭听。
　此刻，请您谅解。」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200090b49">
「混账！
　我就是让你停止这种举动!!」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200100a09">
「哎呀，哎呀。
　真是不解风雅的年轻殿下啊，令人为难……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200110a09">
「如果殿下实在坚持的话，
　何不下命令试试看呢？」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200120b49">
「你说什么……」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200130a09">
「看谁能把我古河公方，
　游佐童心高僧，」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200140a09">
「从舞台上拉下来……
　殿下请命令众侍从吧。」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200150b49">
「…………」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200160b49">
「去——
　上去!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵数人。動かず

	StL(1000, @-120, @0,"cg/st/3d八八式竜騎兵_立ち_通常.png");
	StCR(1000, @-30, @0,"cg/st/3d九〇式竜騎兵_立ち_通常.png");
	StR(1000, @180, @0,"cg/st/3d八八式竜騎兵_立ち_通常.png");
	FadeStL(300,false);
	Wait(50);
	FadeStR(300,true);
	Wait(50);
	FadeStCR(300,false);

	WaitKey(1000);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200170b49">
「你们！
　不听余的命令吗！」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200180b49">
「快上去阻止童心和尚!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆動かず
	WaitKey(1000);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200190b49">
「你、你们……」


{	NwC("cg/fw/nw奉公衆Ａ.png");}
//【ｅｔｃ／奉公衆Ａ】
<voice name="ｅｔｃ／奉公衆Ａ" class="その他男声" src="voice/mb02/0200200e250">
「我等奉公一众负责保护殿下的安全。


{	NwC("cg/fw/nw奉公衆Ｂ.png");}
//【ｅｔｃ／奉公衆Ｂ】
<voice name="ｅｔｃ／奉公衆Ｂ" class="その他男声" src="voice/mb02/0200210e251">
「与古河中将大人兵戎相见，已超出我等职责
范围。」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200220b49">
「……呃。」

{	StCL(1000, @0, @30,"cg/st/st邦氏_通常_私服.png");
	Move("@StML*", 300, @60, @-30, DxlAuto, false);
	FadeStCL(300,false);
}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200230b49">
「任——任谁都行！
　快阻止童心！」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200240b49">
「来人！
　阻止童心!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆しーん
	WaitKey(1000);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200250b49">
「……为何无人应答！
　来人！　来人——」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200260a09">
「太丢人了，你这黄毛小儿!!」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200270b49">
「!?」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200280a09">
「想知道为何无人听从<RUBY text="··">自己</RUBY>的命令吗……？
　那还用说。只有你自己最清楚其中缘由啊。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200290a09">
「<RUBY text="······">摆设用的神轿</RUBY>突然开口说话，又有
谁会听从呢!?
　只会觉得厌烦罢了！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200300a09">
「身为神轿就该有神轿的样子，闭嘴端坐着！
　不要给我们这些抬轿子的人添麻烦！」

//嶋：修正（引き据え）【090930】
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200310a09">
「颐指气使的口吻……
　还是等到你不需要依靠任何人，可以亲手将
我童心和尚逮住的时候再说吧!!」


{	FwC("cg/fw/fw邦氏_自失.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200320b49">
「……啊……
　………啊唔…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。腰を抜かす邦氏
	CreateSE("SE01","se人体_衝撃_転倒05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StML*", 1000, 3, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StML*", 300, @-10, @30, null, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw童心_頼政.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200330a09">
「……哈。被无端打扰了。
　樱子小姐，久等了。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200340a09">
「那么重新来过……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆桜子姫を襲う童心
	CreateTextureEX("絵ＥＶ", 5000, Center, Middle, "cg/ev/ev145_桜子を犯す童心_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	DeleteStA(0,true);


	Wait(500);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	//状態定義
	CreateTextureSP("絵ＥＶ", 5000, Center, Middle, "cg/ev/ev145_桜子を犯す童心_a.jpg");

	//リコ背景抹消
	RecoIn();
	SoundPlay("@mbgm36",0,1000,true);
}
//========================================================

	SetFwR("cg/fw/fw桜子_恐怖b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200350b28">
「呀……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200360b28">
「不要！
　你干什么！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200370a09">
「舞中必须有华美光彩之处。
　而小姐似乎带有这份华丽气质。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200380a09">
「那就为诸位展示一番吧。」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200390b28">
「把我放下来！
　快放下，混账！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200400a09">
「嚯。
　真动听，真动听！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　樱子小姐的反抗只是徒然。
　反而更如舞蹈般艳美动人，雪肌之躯裸露在外。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw桜子_恐怖b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200410b28">
「呀……！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200420a09">
「哦哦，不用这么害臊。
　秘藏之花才最美丽……然而世人却不容许。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200430a09">
「就算风吹散落也要展示出来！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
[text0090]
　她打算至少蜷起身体避开众人视线——但那恶毒的和
尚却不放过她。
　他用力抱住小姐的身体，向上举起。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_衣類脱ぐ01");
	CreateTextureSP("絵ＥＶ２", 4990, Center, Middle, "cg/ev/ev145_桜子を犯す童心_b.jpg");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵ＥＶ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　因暴虐而颤抖的双乳，暴露于舞台苍白的灯光下。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw邦氏_自失.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200440b49">
「——」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200450b28">
「——」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　遭受不应有的狠毒对待的小姐。
　以及失魂落魄的消沉少年。

　两人的视线，刹那之间——
　射穿了对方，毫无交点。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_悪笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200460a09">
「嚯嚯！　很不错哦，小姐！
　多么华丽，多么优美。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200470a09">
「一丝不挂的裸体上，绽开着一朵紫罗兰花！
　这是多么美妙的画面！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200480b28">
「……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ２５", 4980, Center, Middle, "cg/ev/ev145_桜子を犯す童心_b02.jpg");

	CreateSE("SE01","se人体_動作_締める02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵ＥＶ２", 500, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　小姐勉强伸出尚且自由的左手，扯下发间所戴之花。
　紧紧攥在手中，狠狠捏碎。

{	CreateSE("SE01a","se人体_血_たれる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
　也许已经失去了理智。
　即使指缝间已经渗出汁液，她仍没有停下手中的动作。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_悪笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200490a09">
「花又何罪之有。
　小姐真是残忍。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200500a09">
「没办法，那就换朵花吧。
　来吧！　张开双腿！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200510b28">
「停下！
　你……太无耻了！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200520a09">
「哈哈哈！
　要说无耻，怎能比得上现在的小姐。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200530a09">
「看看你自己……
　待字闺中的千金小姐，却要在众人面前露出
私密之处！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200540b28">
「——!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200550a09">
「真是大饱眼福！
　上为大朵，下为小花。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200560a09">
「都是可爱至极的花哟！」


{	FwR("cg/fw/fw桜子_羞恥.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200570b28">
「呜……呜呜……！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200580a09">
「真是可惜，花儿都还含苞未放。
　令人有些扫兴。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200590a09">
「就由我和尚……
　使娇花绽放，让诸位欣赏吧！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200600b28">
「——！」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200610b28">
「住……住手……」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200620a09">
「呵呵呵。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ずぶっと。
	CreateTextureSP("絵ＥＶ３", 4970, Center, Middle, "cg/ev/ev145_桜子を犯す童心_c.jpg");
	FadeDelete("絵ＥＶ２５", 1000, true);

	SetFwR("cg/fw/fw桜子_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200630b28">
「呜……！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200640a09">
「哟。看啊。
　真是不错，真是不错。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200650a09">
「还以为会很困难呢……
　没想到轻松就插入了嘛。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200660a09">
「那么，小姐。
　在众人面前裸露交欢，让你很愉悦吗？」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200670b28">
「……呃……你……这！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　面对气息奄奄的樱子小姐。
　古河公方笑得十分得意，想连她的心也一并侵犯。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200680a09">
「哈哈哈！
　小姐就爽快承认吧！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200690a09">
「贫僧也要动真格的了……
　像这样！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200700b28">
「啊——」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆破瓜。血がつーっと。
	CreateTextureSP("絵ＥＶ４", 496, Center, Middle, "cg/ev/ev145_桜子を犯す童心_d.jpg");
	FadeDelete("絵ＥＶ３", 1000, true);

	SetFwR("cg/fw/fw桜子_恐怖b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200710b28">
「呜……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200720b28">
「呜……呜呜……!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200730a09">
「太好了，花开了！
　开得多么美！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200740a09">
「雪白映衬着殷红……
　多么雅致的花!!」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200750b28">
「……古河……公方……！」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200760b28">
「游佐……童心……!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200770a09">
「哦？　嚯。
　怎么声音都变了。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200780a09">
「那么，我也要配合一下吗？
　……嗯……樱子小姐。方才小姐
同意由六波罗之口传扬冈部事迹了
吧？」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200790b28">
「…………」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200800a09">
「既然不能由小姐本人诉说冈部，
　那你就诉说我等六波罗如何。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200810a09">
「说吧。
　如果话卡在喉咙里说不出来，那就让我助你
一臂之力……！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200820b28">
「唔唔……！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200830a09">
「冈部的千金啊！
　咒骂六波罗吧！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200840b28">
「——禽兽!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200850a09">
「诚然！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200860b28">
「人面兽心!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200870a09">
「诚然！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200880b28">
「畜生！　恶魔！
　地狱而来的杂碎!!」


{	FwR("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200890a09">
「诚然!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　被迫赤裸身体，在众人面前遭到侵犯的小姐斥骂着。
　侵犯小姐的高僧却听得陶然自得。

　那是一场骇人的<RUBY text="··">愤恨</RUBY>交合。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200900a09">
「何其乐乎！　何其爽乎！
　这是多么挑逗神经的唱曲！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200910a09">
「令人欲仙欲死！
　小姐，你可要紧紧缠住我，别让我成佛升天
啊！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200920a09">
「这份喜悦唯人间有。
　尝过这个滋味，贫僧就算去往极乐世界，也
会再回来的！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200930a09">
「好啦，我来了！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200940b28">
「呜……啊啊啊!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200950a09">
「请你的父兄好好看看吧！
　看着你被仇人播下种子的模样……
仔细瞧着吧！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200960b28">
「!?
　不——不可以！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200970a09">
「哦哟，不要乱动。
　不用这么开心嘛。」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200980a09">
「不用着急，我会让你怀孕的。
　之后呢……就轮到<RUBY text="···">后庭花</RUBY>了。」


{	FwR("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200990a09">
「那里也别有一番情趣哦？
　哇哈哈哈哈哈哈哈哈哈!!」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0201000b28">
「不要——!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
	//◆フェードアウト
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"mb02_021.nss"