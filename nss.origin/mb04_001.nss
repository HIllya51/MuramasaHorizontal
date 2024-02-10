//<continuation number="330">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_001.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg008_教室_01=true;
	#bg015_鎌倉路地裏_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_002.nss";

}

scene mb04_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_022.nss"

//◆朝。街路。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSP("絵色血", 1000, "#CC0000");
	CreateTextureSPsub("絵演背景", 3000, Center, Middle, "cg/bg/bg009_鎌倉住宅街a_01.jpg");
	OnBG(4000,"bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm29",0,1000,true);

	SetNwC("cg/fw/nw会社員Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／会社員Ａ】
<voice name="ｅｔｃ／会社員Ａ" class="その他男声" src="voice/mb04/0010010e028">
「哟，早上好。」


{	NwC("cg/fw/nw会社員Ｂ.png");}
//【ｅｔｃ／会社員Ｂ】
<voice name="ｅｔｃ／会社員Ｂ" class="その他男声" src="voice/mb04/0010020e029">
「早上好。今天天气真不错呢。」


{	NwC("cg/fw/nw会社員Ａ.png");}
//【ｅｔｃ／会社員Ａ】
<voice name="ｅｔｃ／会社員Ａ" class="その他男声" src="voice/mb04/0010030e028">
「嗯，的确——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆画面全体にレッドマスク。ずばっと。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawTransition("@OnBG*", 200, 1000, 0, 100, Axl2, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("絵演背景", 1000, true);

/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
《生死抉择，本应是赋予自我的课题，扪心自问。》
《故于嘲笑的欢喜漩涡中拉开喜剧之幕吧。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

	WaitKey(1000);

	CreateTextureEX("絵演文字生と死", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄01.png");
	CreateTextureEX("絵演文字されば", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄02.png");

	Move("絵演文字生と死", 0, @0, @-20, null, true);
	Move("絵演文字されば", 0, @0, @+20, null, true);

	Fade("絵演文字生と死", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字されば", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵演文字*");
	FadeDelete("絵板写", 1000, true);

	SetNwC("cg/fw/nw会社員Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／会社員Ａ】
<voice name="ｅｔｃ／会社員Ａ" class="その他男声" src="voice/mb04/0010040e028">
「————————」


{	NwC("cg/fw/nw会社員Ｂ.png");}
//【ｅｔｃ／会社員Ｂ】
<voice name="ｅｔｃ／会社員Ｂ" class="その他男声" src="voice/mb04/0010050e029">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆昼。学校。教室
//◆がやがや
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSP("絵色血", 1000, "#CC0000");
	CreateTextureSPsub("絵演背景", 3000, Center, Middle, "cg/bg/bg008_教室_01.jpg");
	OnBG(4000,"bg008_教室_01.jpg");
	CreateSE("SEL01","se背景_ガヤ_学校の教室01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm22",0,1000,true);

	SetNwC("cg/fw/nw教師.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／女教師】
<voice name="ｅｔｃ／女教師" class="その他女声" src="voice/mb04/0010060e124">
「喂，保持安静！
　现在是上课时间！」


{	NwC("cg/fw/nw生徒Ａ.png");}
//【ｅｔｃ／児童男Ａ】
<voice name="ｅｔｃ／児童男Ａ" class="その他男声" src="voice/mb04/0010070e091">
「喂——今天去哪里玩啊？」


{	NwC("cg/fw/nw生徒Ｂ.png");}
//【ｅｔｃ／児童男Ｂ】
<voice name="ｅｔｃ／児童男Ｂ" class="その他男声" src="voice/mb04/0010080e092">
「就去田岛家吧。」


{	NwC("cg/fw/nw生徒Ｄ.png");}
//【ｅｔｃ／児童女】
<voice name="ｅｔｃ／児童女" class="その他女声" src="voice/mb04/0010090e090">
「老师～我想上厕所。」


{	NwC("cg/fw/nw生徒Ａ.png");}
//【ｅｔｃ／児童男Ａ】
<voice name="ｅｔｃ／児童男Ａ" class="その他男声" src="voice/mb04/0010100e091">
「又是田岛家？
　最近总是去他家啊。」


{	NwC("cg/fw/nw生徒Ｃ.png");}
//【ｅｔｃ／児童男Ｃ】
<voice name="ｅｔｃ／児童男Ｃ" class="その他男声" src="voice/mb04/0010110e093">
「啊，糟糕。忘记带课本了。」


{	NwC("cg/fw/nw生徒Ｂ.png");}
//【ｅｔｃ／児童男Ｂ】
<voice name="ｅｔｃ／児童男Ｂ" class="その他男声" src="voice/mb04/0010120e092">
「因为他家很有钱啊。
　去了有点心吃的。」


{	NwC("cg/fw/nw生徒Ａ.png");}
//【ｅｔｃ／児童男Ａ】
<voice name="ｅｔｃ／児童男Ａ" class="その他男声" src="voice/mb04/0010130e091">
「说得没错——」


{	NwC("cg/fw/nw生徒Ｄ.png");}
//【ｅｔｃ／児童女】
<voice name="ｅｔｃ／児童女" class="その他女声" src="voice/mb04/0010140e090">
「老师～我要上厕所……」


{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／女教師】
<voice name="ｅｔｃ／女教師" class="その他女声" src="voice/mb04/0010150e124">
「啊，真是的……！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆画面全体にレッドマスク。ずばっと。
//◆がやがやがぴたっと止まる
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawTransition("@OnBG*", 200, 1000, 0, 100, Axl2, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("絵演背景", 1000, true);


/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
《暴风骤雨之夜，野犬怒吠，勇斗愚贼。》
《温暖巢穴待母而归之雏鸟，以蛇腹而席，无比安宁。》
《阳光穿透树林洒落而下，新生之狮饱享千头鹿。》
《听闻潺潺水声之蛙卵，被孩童拾起惨遭踐踏。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

	WaitKey(1000);

	CreateTextureEX("絵演文字嵐の夜", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄03.png");
	CreateTextureEX("絵演文字温かい", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄04.png");
	CreateTextureEX("絵演文字木漏れ", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄05.png");
	CreateTextureEX("絵演文字せせら", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄06.png");

	Move("絵演文字嵐の夜", 0, @0, @-60, null, true);
	Move("絵演文字温かい", 0, @0, @-20, null, true);
	Move("絵演文字木漏れ", 0, @0, @+20, null, true);
	Move("絵演文字せせら", 0, @0, @+60, null, true);

	Fade("絵演文字嵐の夜", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字温かい", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字木漏れ", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字せせら", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵演文字*");
	FadeDelete("絵板写", 1000, true);

	SetNwC("cg/fw/nw教師.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／女教師】
<voice name="ｅｔｃ／女教師" class="その他女声" src="voice/mb04/0010160e124">
「————————」


{	NwC("cg/fw/nw生徒Ａ.png");}
//【ｅｔｃ／児童男Ａ】
<voice name="ｅｔｃ／児童男Ａ" class="その他男声" src="voice/mb04/0010170e091">
「————————」


{	NwC("cg/fw/nw生徒Ｄ.png");}
//【ｅｔｃ／児童女】
<voice name="ｅｔｃ／児童女" class="その他女声" src="voice/mb04/0010180e090">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆一般家庭。夜。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSP("絵色血", 1000, "#CC0000");
	CreateTextureSPsub("絵演背景", 3000, Center, Middle, "cg/bg/bg033_湊斗家一室_03a.jpg");
	OnBG(4000,"bg015_鎌倉路地裏_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetNwC("cg/fw/nw子供.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／幼児】
<voice name="ｅｔｃ／幼児" class="その他女声" src="voice/mb04/0010190e283">
「橘子、橘子……」


{	NwC("cg/fw/nw母親.png");}
//【ｅｔｃ／母親】
<voice name="ｅｔｃ／母親" class="その他女声" src="voice/mb04/0010200e248">
「好啦，别一个人吃那么多。
　爸爸的那份都要被你吃掉了。」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／幼児】
<voice name="ｅｔｃ／幼児" class="その他女声" src="voice/mb04/0010210e283">
「唔——」


{	NwC("cg/fw/nw父親.png");}
//【ｅｔｃ／父親】
<voice name="ｅｔｃ／父親" class="その他男声" src="voice/mb04/0010220e236">
「哈哈，没事没事。
　爸爸不吃了。」


{	NwC("cg/fw/nw母親.png");}
//【ｅｔｃ／母親】
<voice name="ｅｔｃ／母親" class="その他女声" src="voice/mb04/0010230e248">
「你又这么宠着他。
　偶尔也要对他严厉一点。」


{	NwC("cg/fw/nw父親.png");}
//【ｅｔｃ／父親】
<voice name="ｅｔｃ／父親" class="その他男声" src="voice/mb04/0010240e236">
「不过……」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／幼児】
<voice name="ｅｔｃ／幼児" class="その他女声" src="voice/mb04/0010250e283">
「妈妈容易生气～
　爸爸不爱生气～」


{	NwC("cg/fw/nw母親.png");}
//【ｅｔｃ／母親】
<voice name="ｅｔｃ／母親" class="その他女声" src="voice/mb04/0010260e248">
「看吧，连孩子都这么说你。」


{	NwC("cg/fw/nw父親.png");}
//【ｅｔｃ／父親】
<voice name="ｅｔｃ／父親" class="その他男声" src="voice/mb04/0010270e236">
「哈哈哈，妈妈很容易生气吗？」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／幼児】
<voice name="ｅｔｃ／幼児" class="その他女声" src="voice/mb04/0010280e283">
「嗯。」


{	NwC("cg/fw/nw母親.png");}
//【ｅｔｃ／母親】
<voice name="ｅｔｃ／母親" class="その他女声" src="voice/mb04/0010290e248">
「喂！」


{	NwC("cg/fw/nw父親.png");}
//【ｅｔｃ／父親】
<voice name="ｅｔｃ／父親" class="その他男声" src="voice/mb04/0010300e236">
「但是不可以讨厌妈妈哦。
　妈妈是因为宝贝你，
所以才生气的——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆画面全体にレッドマスク。ずばっと。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawTransition("@OnBG*", 200, 1000, 0, 100, Axl2, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("絵演背景", 1000, true);


/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
《虔信生命意义之人啊，听听小丑真挚的诡辩吧。》
《震颤于死亡恐怖之人啊，恶魔的假面乃是黑漆之镜。》
《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙。》
《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子。》
《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧。》
《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

	WaitKey(1000);

	CreateTextureEX("絵演文字生の意", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄07.png");
	CreateTextureEX("絵演文字死の恐", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄08.png");
	CreateTextureEX("絵演文字生命に", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄09.png");
	CreateTextureEX("絵演文字生命を", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄10.png");
	CreateTextureEX("絵演文字木漏れ", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄11.png");
	CreateTextureEX("絵演文字獣よ踊", 5000, Center, Middle, "cg/sys/Telop/tp_銀星号の唄12.png");

	Move("絵演文字生の意", 0, @0, @-100, null, true);
	Move("絵演文字死の恐", 0, @0, @-60, null, true);
	Move("絵演文字生命に", 0, @0, @-20, null, true);
	Move("絵演文字生命を", 0, @0, @+20, null, true);
	Move("絵演文字木漏れ", 0, @0, @+60, null, true);
	Move("絵演文字獣よ踊", 0, @0, @+100, null, true);

	Fade("絵演文字生の意", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字死の恐", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字生命に", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字生命を", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字木漏れ", 1000, 1000, null, true);
	WaitKey(5000);

	Fade("絵演文字獣よ踊", 1000, 1000, null, true);
	WaitKey(5000);

	CreatePlainSP("絵板写", 10000);
	Delete("絵演文字*");
	FadeDelete("絵板写", 1000, true);

	SetNwC("cg/fw/nw父親.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／父親】
<voice name="ｅｔｃ／父親" class="その他男声" src="voice/mb04/0010310e236">
「————」


{	NwC("cg/fw/nw子供.png");}
//【ｅｔｃ／幼児】
<voice name="ｅｔｃ／幼児" class="その他女声" src="voice/mb04/0010320e283">
「————」


{	NwC("cg/fw/nw母親.png");}
//【ｅｔｃ／母親】
<voice name="ｅｔｃ／母親" class="その他女声" src="voice/mb04/0010330e248">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_002.nss"