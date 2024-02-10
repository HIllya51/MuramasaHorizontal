//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_047.nss_MAIN
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
	#ev001_銀星号事件イメージ１=true;
	#bg047_景明故郷町b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_001.nss";

}

scene md02_047.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_046.nss"


//◆銀星号災厄
//◆殺戮と汚染。狂乱。


	PrintBG("上背景", 30000);

	SoundPlay("@mbgm37", 0, 1000, true);

	CreateColorSP("黒幕１", 5000, "BLACK");
//	CreateTexture("狂乱", 3000, @0, @0, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureSP("狂乱", 3000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureSP("狂乱2", 3000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Zoom("狂乱2", 0, 1200, 1000, null, true);
	Fade("狂乱2", 0, 300, null, true);

	DrawEffect("狂乱2", 50, "LowWave ", 0, 100, null);

	SoundPlay("@mbgm37", 0, 1000, true);
	CreateSE("SE01", "se戦闘_銀星号_精神汚染波_L");
	CreateSE("SE02", "se背景_ガヤ_合戦01");
	MusicStart("SE01", 3000, 500, 0, 1000, null,true);
//■狂っているっぽさを出すため、50%速度で再生　inc櫻井
	MusicStart("SE02", 3000, 300, 0, 500, null,true);

	CreateColorEX("薄黒幕", 4999, "BLACK");

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(1000);
	Fade("薄黒幕", 1000, 300, null, true);


//《生と死の選択を己に課す命題として自ら問う》
//《されば嘲笑の歓喜する渦に喜劇の幕よいざ上がれ》

	CreateTextureEX("唄1", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
	CreateTextureEX("唄2", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");


	Move("唄1", 0, @0, @-80, null, true);
	Move("唄2", 0, @0, @-40, null, true);


	Move("唄1", 600, @0, @-10, Dxl1, false);
	Fade("唄1", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄2", 600, @0, @-10, Dxl1, false);
	Fade("唄2", 600, 1000, null, false);

	WaitKey();

	Fade("唄1", 500, 0, null, false);
	Fade("唄2", 500, 0, null, true);
	Delete("唄*");

//《嵐の夜に吼え立てる犬は愚かな盗賊と果敢に戦う》
//《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》
//《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》
//《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》

	CreateTextureEX("唄3", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
	CreateTextureEX("唄4", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
	CreateTextureEX("唄5", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
	CreateTextureEX("唄6", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");


	Move("唄3", 0, @0, @-80, null, true);
	Move("唄4", 0, @0, @-40, null, true);
	Move("唄5", 0, @0, @0, null, true);
	Move("唄6", 0, @0, @+40, null, true);

	Move("唄3", 600, @0, @-10, Dxl1, false);
	Fade("唄3", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄4", 600, @0, @-10, Dxl1, false);
	Fade("唄4", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄5", 600, @0, @-10, Dxl1, false);
	Fade("唄5", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄6", 600, @0, @-10, Dxl1, false);
	Fade("唄6", 600, 1000, null, false);

	WaitKey();

	Fade("唄3", 500, 0, null, false);
	Fade("唄4", 500, 0, null, false);
	Fade("唄5", 500, 0, null, false);
	Fade("唄6", 500, 0, null, true);
	Delete("唄*");


//《生の意味を信じる者よ道化の真摯な詭弁を聞け》
//《死の恐怖に震える者よ悪魔の仮面は黒塗りの鏡》
//《生命に問いを向けるなら道化と悪魔は匙を持ち》
//《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》
//《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
//《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

	CreateTextureEX("唄7", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
	CreateTextureEX("唄8", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
	CreateTextureEX("唄9", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
	CreateTextureEX("唄10", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
	CreateTextureEX("唄11", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
	CreateTextureEX("唄12", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");

//もとは-80　そこから＋40ずつして位置を調整　inc櫻井
	Move("唄7", 0, @0, @-100, null, true);
	Move("唄8", 0, @0, @-60, null, true);
	Move("唄9", 0, @0, @-20, null, true);
	Move("唄10", 0, @0, @+20, null, true);
	Move("唄11", 0, @0, @+60, null, true);
	Move("唄12", 0, @0, @+100, null, true);


	Move("唄7", 600, @0, @-10, Dxl1, false);
	Fade("唄7", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄8", 600, @0, @-10, Dxl1, false);
	Fade("唄8", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄9", 600, @0, @-10, Dxl1, false);
	Fade("唄9", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄10", 600, @0, @-10, Dxl1, false);
	Fade("唄10", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄11", 600, @0, @-10, Dxl1, false);
	Fade("唄11", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄12", 600, @0, @-10, Dxl1, false);
	Fade("唄12", 600, 1000, null, false);

	WaitKey();

	Fade("唄1", 500, 0, null, false);
	Fade("唄2", 500, 0, null, false);
	Fade("唄3", 500, 0, null, false);
	Fade("唄4", 500, 0, null, true);
	Delete("唄*");

//表示しないようにしておく inc櫻井
/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
《生死抉择，应死赋予自我的课题，扪心自问。》
《故于嘲笑的欢喜漩涡中拉开喜剧之幕吧》

《暴风骤雨之夜，野犬怒吠，勇斗愚贼》
《温暖巢穴待母而归之雏鸟，以蛇腹而席，无比安宁》
《阳光穿透树林洒落而下，新生之狮饱享千头鹿》
《听闻潺潺水声之蛙卵，被孩童拾起惨遭踐踏》

《虔信生命意义之人啊，听听小丑真摯的诡辩吧》
《震颤于死亡恐怖之人啊，恶魔的假面乃是黑漆之镜》
《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙》
《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子》
《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧》
《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块》

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//―――――――――――――――――――――――――――――

*/

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 2500, 1000, null, true);
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);
	Delete("狂乱");
	Delete("狂乱2");
	Delete("薄黒幕");

	Wait(2000);

	CreateSE("歩く", "se人体_足音_歩く02_L");
	MusicStart("歩く", 0, 1000, 0, 1000, null, false);
	WaitKey(2000);


//◆破壊跡。bg047a_夜


	OnBG(100, "bg047_景明故郷町b_03.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",1500,true);

	SetVolume("歩く", 1000, 0, null);


	Wait(1000);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470010a00">
「……啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm15", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　伤亡惨重。
　众多的生命只是无端被撕裂，失去意义，
而后散去。

　——是谁惹的祸？

　——是谁引起了这场灾难？

　银星号？

　……不对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470020a01">
「…………」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470030a01">
「我跟着你追来……
　察觉到了银星号的气息。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470040a01">
「我抱着万一的心情来看看……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470050a01">
「……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470060a01">
「对不起……
　来得……太晚了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不知何时，村正站在了身旁并道歉。

　不过，她在为何而道歉呢。
　村正是这场灾难的原因吗？

　不对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470070a00">
「我……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470080a01">
「……主君。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470090a00">
「……我的误断……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　明明可以防止的灾难，却没能防止。

　本可以阻止！
　要是我杀了光的话！

　我是可以办到的。
　但我却没那么做。

　所以才变成了这样!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470100a00">
「…………杀。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470110a01">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470120a00">
「杀了……
　光……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。病床の光·現在
//■つい先ほどのことなため、回想はおかしいから別方法 inc櫻井

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	OnSE("se擬音_回想_フラッシュバック01", 1000);
	
//ev128_病床の光_g

	CreateTexture("絵回想100", 2000, Center, Middle, "cg/ev/ev128_病床の光_g02.jpg");
	Fade("フラッシュ白",300,500,null,true);
	WaitKey(1500);

	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵回想*");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	Wait(500);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470130a00">
「…………」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470140a00">
「啊——啊啊啊啊。」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470150a07">
「办不到。
　……哥哥办不到的。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470160a01">
「!?」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470170a07">
「嘿咻。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸出現
//◆村正を組み伏せる

	StCR(900, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStCR(300,false);


	OnSE("se人体_衝撃_転倒03", 1000);


	DrawDelete("@StR*", 150, 100, "slide_02_01_1", true);


	Wait(1000);

	DeleteStA(300,true);


	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470180a01">
「……你！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm04", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　堀越公方——足利茶茶丸。
　她就在那里，突袭村正将她按到在地。

　但眼睛却没看膝下的村正。
　而是直直地凝视着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470190a07">
「哥哥爱凑斗光爱得死心塌地。
　就好像……诅咒一样。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470200a00">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470210a07">
「哥哥杀不了公主殿下。
　既然这样……我能准备的命运，
就剩另一种了。」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470220a01">
「你要做什么!?」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470230a07">
「这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　她的掌中——
　炫白般闪烁的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	CreateColorEXadd("たまご", 15000, "WHITE");
	CreateColorEXadd("たまご２", 1500, "WHITE");
	DrawTransition("たまご２", 0, 200, 200, 500, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se特殊_その他_卵生成01", 1000);

	Fade("たまご", 500, 1000, null, true);
	Fade("たまご２", 0, 700, null, true);

	Fade("たまご", 1000, 0, null, true);


	Wait(500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470240a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

// ボックス分け
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
“卵”!?
　为何会在堀越公方的手中。

　难道……这是光想给我用的东西吗。
　说是污染波结晶的，那个——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470250a07">
「机会来了呢。」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470260a01">
「不……不会让你得逞!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ばちばち。発電音


//◆ef035


	CreateSE("SE01", "se戦闘_攻撃_電撃帯電01");
	MusicStart("SE01", 0, 1000, 0, 1000, null, false);

	CreateColorEXadd("たまご", 3000, "WHITE");

	Fade("たまご", 300, 1000, null, true);
	Fade("たまご２", 0, 0, null, true);
	Delete("たまご２");

	CreateTextureSP("蜘蛛の巣", 2000, @0, @0, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	CreatePlainSP("絵板写", 2000);
	Fade("絵板写", 0, 500, null, true);
	DrawDelete("たまご", 100, 100, "beam_03_00_1", true);
	SetBlur("絵板写", 8, true, 400, 200);

	Fade("絵板写", 0, 500, Dxl1, true);
	Zoom("絵板写", 100, 1100, 1100, Dxl2, false);
	Fade("絵板写", 500, 800, null, true);

	Zoom("絵板写", 1000, 1000, 1000, Dxl1, false);
	Fade("絵板写", 1000, 0, null, true);

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470270a07">
「吵死了。
　别在这种好时机……妨碍我!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆ずばーん。より強い力で吹き散らす。

	CreateSE("SE01", "se特殊_その他_茶々丸衝撃波");
	Delete("絵板写");

	MusicStart("SE01", 0, 1000, 0, 1000, null,false);
	EffectZoomDXadd(10000, 1000, 200, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	DrawDelete("蜘蛛の巣", 300, 100, "circle_01_00_1", true);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE02", "se特殊_陰義_発動03");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470280a01">
「什……!?」

{	SetVolume("SE*", 1000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470290a07">
「没有操控者的话，半斤八两。
　不对……我稍占上风。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470300a01">
「你，难道说。」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470310a01">
「<RUBY text="···">怎么会</RUBY>。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470320a07">
「那么……
　哥哥？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470330a07">
「心理准备差不多ＯＫ了吗？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470340a00">
「————」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470350a01">
「主……主君！
　<RUBY text="···">呼唤我</RUBY>！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470360a01">
「把我————
　装甲上吧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　被封住行动的剑胄呼唤着我。

　没错。
　这样下去很危险。

　装甲剑胄，在铁甲的保护下防御卵的力量！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲アクションＡ。但し周囲の金属片無し

	StL(1000, @0, @0, "cg/st/st景明_装甲_私服a1.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470370a00">
「鬼——」

{	FadeStR(300, false);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470380a07">
「有一个能救凑斗光性命的方法。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクションＢ。但し周囲の金属片無し

	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @0, "cg/st/st景明_装甲_私服b1.png");

	Shake("@StL*", 300, 5, 0, 0, 0, 1000, Dxl2, false);
	FadeStL(0, false);
	Wait(12);
	FadeDelete("絵板写", 300, false);

//◆ウェイト

	WaitKey(500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470390a00">
「什、」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0470400a00">
「什么……？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470410a07">
「你想救她不是吗？
　不管是魔王还是杀人犯，你希望凑斗光
能活着不是吗？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470420a07">
「她撑不了一个月就会衰弱而死。
　但是，在那之前有救她的方法……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470430a00">
「————」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470440a01">
「不行啊！
　不能听！」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470450a01">
「不管有什么理由……
都不可以丢弃你的心魂——」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470460a07">
「闭嘴!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆なんか力使った。

	CreateSE("SE01", "se特殊_陰義_幻影02");
	MusicStart("SE01", 0, 1000, 0, 1000, null,false);

	CreatePlainSP("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	DeleteStA(0,false);
	Fade("フラッシュ白",300,0,null,true);
	Shake("絵板写", 500, 0, 30, 0, 0, 300, null, true);
	Delete("絵板写");
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470470a01">
「啊唔!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470480a00">
「村正！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470490a07">
「<RUBY text="··">哥哥</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆茶々丸以外にシャドー

	CreateColorSP("絵色白", 2000, "WHITE");
	CreateStencil("マスク１",1000,0,0,128,"cg/bg/bg047_景明故郷町a_03.jpg",false);
	SetAlias("マスク１","マスク１");
	CreateColor("マスク１/logoM001", 400, 0, 0, 1024, 576, "WHITE");
	SetAlias("マスク１/logoM001","マスク１/logoM001");
	Fade("マスク１/logoM001", 1000, 800, Dxl1, false);
	SetShade("マスク１", HEAVY);
	Fade("絵色白", 100, 0, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	StC(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStC(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　那一瞬间，一切声音皆被夺去。
　静寂——犹如沉入深海之底。

　唯有足利茶茶丸的声音，像神谕般回响。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470500a07">
《想救凑斗光。
　……那是哥哥毫不虚假的真心。》

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470510a07">
《对吧？》

{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470520a00">
「——————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　那是，

　那是……

　————的确无法否定，那是我的————

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆復帰

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	FadeDelete("マスク１/logoM001", 1000,true);

	SetFwR("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470530a01">
「不行!!」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470540a07">
「……我收下了。
　你的心魂!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆卵
//◆きゅいーん。光が
//◆汚染エフェクト

	CreateColorEXadd("たまご", 15000, "WHITE");

	OnSE("se特殊_雰囲気_共鳴01", 1000);
	Fade("たまご", 500, 700, null, true);
	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	CreateTextureEX("汚染", 14000, @0, @0, "cg/ef/ef034_精神汚染.jpg");
	Fade("汚染", 1000, 1000, null, false);


	DeleteStA(500,true);
	Fade("たまご", 1000, 0, null, true);

	CreateSE("SE01", "se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470550a00">
「……哦……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0470560a00">
「哦……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470570a01">
「主君!!」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470580a07">
「卵会让人的灵魂变得坦率。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470590a07">
「来吧——哥哥!!」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470600a07">
「你的愿望是!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅぱー。更に強い光

	CreateColorEXadd("たまご", 15000, "WHITE");

	OnSE("se特殊_その他_辰気流蒸発", 1000);
	Fade("たまご", 500, 1000, null, true);

	DeleteStA(0,true);
	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	Fade("たまご", 1000, 0, null, true);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470610a00">
「哦哦哦哦哦哦哦哦哦哦哦哦哦啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　愿望。

　我的……愿望？

　那种东西————————当然是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470620a01">
「……主君————————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カキーン。ホワイトアウト。
//◆洗脳完了！っぽく。
	SetBlur("汚染", true, 3, 500, 100, false);
	CreateColorEXadd("汚染完了", 15000, "WHITE");

	OnSE("se特殊_雰囲気_崩壊音", 1000);
	OnSE("se特殊_その他_卵生成01", 1000);
	Zoom("汚染", 3000, 2000, 2000, Axl1, false);

	Wait(1500);
	Fade("汚染完了", 0, 1000, null, true);
	DrawTransition("汚染完了", 1500, 0, 1000, 500, null, "cg/data/zoom_01_00_0.png", true);
	Delete("@OnBG*");
	Delete("汚染");

//念のための inc櫻井
	CreateColorSP("下敷き", 50, "WHITE");
	FadeDelete("汚染完了",3000,true);
	SetVolume("SE*", 3000, 0, null);

	Wait(4000);

//◆Ｂパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
//あきゅん「演出：外注部分退避」
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("上背景");

	CreateColorSP("絵色黒", 1, "#000000");

	FadeDelete("上背景",3000,true);

	Wait(1000);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"md03_001.nss"