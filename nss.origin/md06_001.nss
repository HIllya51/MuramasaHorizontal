//<continuation number="1190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_001.nss_MAIN
{

	$TITLE_NOW=" ————　终章　———— ";

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
	#ev257_大和北方地図_a=true;
	#ev257_大和北方地図_b=true;
	#bg047_景明故郷町a_01=true;
	#bg018_知事執務室_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_002.nss";

}

scene md06_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_037vs.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	FadeDelete("上背景",1500,true);

//◆テロップ「Ｅｐｉｌｏｇｕｅ」
	CreateTextureEX("终章", 6000, 20, Middle, "cg/sys/Telop/lg_エピローグ.png");
	Fade("终章", 1000, 1000, null, true);
	WaitKey(2000);
	FadeDelete("终章", 1500, true);

//◆北方の町並み。だが例によってbg047
//◆テロップ「陸奥」
	OnBG(100, "bg047_景明故郷町a_01.jpg");
	FadeBG(0, true);

	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureEX("テロップ", 6000, Center, InBottom, "cg/sys/Telop/tp_陸奥.png");
	Fade("テロップ", 1000, 1000, null, true);
	WaitKey(1000);	
	FadeDelete("テロップ", 1500, true);

//◆ばたん。扉を殴り開ける勢い
//◆知事室。bg018
	CreateTextureEX("絵背景01", 100, @0, @0, "cg/bg/bg018_知事執務室_01.jpg");
	Fade("絵背景01", 1500, 1000, null, true);
	Delete("@OnBG*");

	OnSE("se日常_建物_扉開く07", 1000);

	WaitKey(500);

	SetNwC("cg/fw/nw秘書.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010010e229">
「知事！」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010020e201">
「怎么了？
　由此表情推测，看似有何
大喜讯？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010030e229">
「……很遗憾。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010040e201">
「我明白啦。只是随口说说。
　自我受任陆奥国知事一年以来，
未曾听闻任何喜讯。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010050e201">
「那么是？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010060e229">
「是从大间崎处传来的紧急报告。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010070e201">
「关于北曾的形势？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010080e229">
「是。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010090e201">
「露帝军有动静？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010100e229">
「是的……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010110e201">
「稍等。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010120e201">
「…………可以了，已经做好准备。
　即便听到北曾的镇台军全军覆没的消息
也不要紧。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010130e229">
「此话当真？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010140e201">
「……不，这就看你如何禀报了。
　不要过于尖酸，要语气略带柔和，
如同安抚小鸟般地传达……我也就没有
掏枪自尽的冲动了。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010150e229">
「请把子弹取出来。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010160e201">
「知道啦。真是的，真够豁达。
　把紧急报告如实上报于我。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010170e229">
「是。」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010175e229">
「据说函馆有大量舰艇入港。
　除了战舰甘古特和战舰英培拉特里沙外，
可能至少有１０艘以上的军舰下碇——完毕。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010190e201">
「……是嘛。
　也就是说，并不是露帝<RUBY text="··">已经</RUBY>
完全占领北曾的报告，
而是即将<RUBY text="··">执行</RUBY>这样的通知吗。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010200e201">
「那么，至少还有可以让我逃避现实
的时间吧？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010210e229">
「不，知事。
　这……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010220e201">
「？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010230e229">
「陆军似乎也正前往函馆集结。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010240e201">
「……那个地方，如今正有露帝的陆军集结？
　为什么？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010250e229">
「大概是为了实施海陆两军
共同作战的方案吧。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010260e201">
「这我也知道，但要如何与之抗衡。
　目前北曾有尚未沦陷，且可以对抗如此大规模
的大和军据点吗？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010270e229">
「据我所知，在北曾
　……并没有……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010280e201">
「…………」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010290e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010300e201">
「陆奥吗!?」

{	NwC("cg/fw/nw秘書.png");}
//嶋：修正（論理）【09930】
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010310e229">
「理论上是。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010320e201">
「……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010330e229">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010340e201">
「手枪……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010350e229">
「知事。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆渡島半島と陸奥地方
	CreateTextureSP("絵背景02", 200, Center, Middle, "cg/ev/ev257_大和北方地図_a.jpg");
	DrawTransition("絵背景02", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　大和北方领域的枢纽——北曾。
　当前的形势十分混乱。

　趁着大和国内动乱渡海进犯的露帝军，虽身处劣势
但仍坚守奋战的北曾驻留军——还有奋起的原住民，
以及败北于本州战争而逃亡至此的军阀残党也加入混战。

　势力图每日都有变动，已经陷入谁都无法准确拿捏
形势的窘境。
　只有压制着渡岛半岛，以确立与本国补给线的露帝军
的优势一目了然。

　时间长短暂且不说，由此看来露帝终究将控制北曾，
继而着手进攻本州。
　
　只是————

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵背景02", 1000, 1000, "blind_02_01a_0", true);

//◆知事室

	SetNwC("cg/fw/nw秘書.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010360e229">
「知事，镇守府传来回报。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010370e201">
「终于来了……
　说了什么？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010380e229">
「露帝军是企图占领北曾，
以将其作为进攻本州的踏板。
因此依我看，他们此行的目的只是
为了确保航行安全而在津轻海峡举行的示威。」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010390e229">
「无需动摇，待确认详细情形后，
会派去必要的援兵。
　——完毕。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010400e201">
「…………」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010410e201">
「要是玩笑倒挺有趣，但如果是认真的，
那可就难办了。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010420e229">
「真是棘手呢。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010430e201">
「就这些吗，到底什么意思？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010440e229">
「要再重复一遍吗？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010450e201">
「……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010460e229">
「总之他的意思是，只是威吓而已，
不必在意。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010470e201">
「……啧……！
　蠢货吗？　那些家伙是蠢货吗？」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010480e201">
「露帝征服北曾后就会攻来本州——
这不用你来告诉我！　
　我们也早有预见！
　但是，目前形势不同了！」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010490e201">
「他们的想法已经变了……！
　同中途开始采取游击战术的北曾大和军对峙
就等于以卵击石——东北被夺的话，北曾
的士兵也将孤立无援逐渐衰败，只得投降！」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010500e229">
「嗯……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010510e201">
「怎么可能只是示威。
　自他们进攻北曾以来，威吓这样
天真的举动他们有过吗!?」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010520e201">
「只是来炫耀军事行动的准备，
实际上却没有行动，这种事情有过么!?」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010530e229">
「真是……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010540e201">
「派来必要的援军!?
　是等敌军攻进陆奥以后吗？
　那在援军赶来之前，
我们又该如何是好？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010550e229">
「是啊……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010560e201">
「……镇守府的人是怎么了……
　所有人的脑子都出问题了吗？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010570e229">
「说的没错。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010580e201">
「…………
　再联系一次镇守府？」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010590e201">
「我要直接和将军谈话。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010600e229">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆北部六州と鎮守府
	CreateTextureSP("絵背景02EX", 190, Center, Middle, "cg/ev/ev257_大和北方地図_a.jpg");
	DrawTransition("絵背景02EX", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);

	WaitKey(1000);

	CreateTextureSP("絵背景02", 200, Center, Middle, "cg/ev/ev257_大和北方地図_b.jpg");
	DrawTransition("絵背景02", 1000, 0, 1000, 100, null, "cg/data/blind_02_01a_1.png", true);
	Delete("絵背景02EX");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　镇守府是为保卫北大和而建立的军事组织。
　设置在陆奥、陆中、陆前、羽后、羽前，以及北曾这　
六个州的管辖区域之中。　

　因为完全是将露帝的极东军作为假想敌而设立的
军队，纵使无法立刻击退露帝的进攻，但支撑战线的
战斗力理应尚存。镇守府先行抵挡——待
中央的援军一到，从而大举反攻获胜。

　这是镇守府的基本设想。
　而此次，设想完全化作泡影。

　大和军不断败退，北曾的沦陷已不可避免。
　由此看来，虽说是露帝的顽强抵抗超出意料之外，
实则不仅于此。

　倘若镇守府有两手两足，而用来应付北方的
却只有一半——甚至不及一半——那结果自是可想而知。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵背景02", 1000, 1000, "blind_02_01a_0", true);

//◆知事室

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010610e201">
「不行……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010620e229">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010630e201">
「没有谈妥。
　仍然重复着会在判明形势后，
才会派来必要的援兵这种话。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010640e229">
「现在急需援军……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010650e201">
「镇守府并不知情。
　……不……其实心知肚明！」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010660e201">
「但对于他们来说，争夺中央霸权
才是当务之急。
　为了抢夺关八州，想要舍弃北方六州……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010670e229">
「怎么会这样。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010680e201">
「倘若此事是误测便好。
　我也不愿相信镇守府和露帝已私下
缔结密约，要割让北曾和东北地区这种事。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010690e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010700e201">
「露帝军跨越海峡袭来了。
　镇守府仍无动于衷。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010710e201">
「能听命于我，且还保有战斗力的，
顶多只剩警卫队之类的了。
　阻止露帝登陆的办法……没有……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010720e229">
「知事……还不如……
　在进攻之前投降？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010730e201">
「……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010740e229">
「自镇守府介入关东的抗争，北曾的形势
开始恶化起，津轻地方的各市就开始
寻求露帝保护。
　并且陆奥国全体趁此之际——」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010750e201">
「言之有理。
　如若毫不抵抗就向露帝投降，
至少不会生灵涂炭。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010760e229">
「是。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010770e201">
「掠夺市区，残杀成百上千抵抗的市民。
　尽管如此却还要做无谓的抵抗。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010780e229">
「……是。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010790e201">
「只是。
　之后会怎样？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010800e229">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010810e201">
「露帝是一个拘泥于封建制度的国家。
　皇帝和贵族世代秉持着
这种思想……虽说这也未必有错。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010820e201">
「因而他们要扩张领土，将占领地作为
耕地，住民用作农奴使唤。
　大和也是如此。已经在北曾有所行动。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010830e201">
「有朝一日，陆奥也是，我们也无法幸免。
　畏惧枪支而去耕田。不，说不定还会
去挖掘煤矿，成为工厂的工作机器……」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010840e201">
「即便是抵抗、投降，
命运也不会有所改变。
　因为结局都是一样的。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010850e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010860e201">
「我们的生活又退化回德川时代。
　不……有过之而无不及。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010870e229">
「……无计可施吗？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010880e201">
「有的话我也想知道。
　孑然一身投降也未曾不可……只是
家人尚在，即便不顾及家人，
陆奥也还是我出生的故乡。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010890e201">
「想要放弃的话代价未免太重了，
  实在有些过于沉重。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010900e229">
「……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010910e201">
「和你一样啊。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010920e229">
「是。
　这里是故乡……也有家人。」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010930e229">
「就算走投无路，
也不会弃他们于不顾。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010940e201">
「走投无路啊……
　住民也没有可以避难的场所。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010950e229">
「说起来，陆奥本来就有很多从北曾和关东
迁移而来的人……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010960e201">
「除了东西方的大海之外，无处可逃。
　要向上苍祈祷，把海劈成两半吗？」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010970e229">
「如果这样能到达约定之地的话。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0010980e201">
「顶多能到上个世纪起便战乱不断的大陆吧。
　这种状况下，竟然连祈求神佛庇佑
的梦都不允许做。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0010990e229">
「这就是报应啊。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011000e201">
「……」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011010e201">
「…………」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011020e229">
「……知事？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw知事.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011030e201">
「即使是无神论者也有自己信仰……吧……」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011040e229">
「？」

{	NwC("cg/fw/nw知事.png");}
//嶋：修正（防げる）
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011050e201">
「必要的武装力量。
　只求抵御侵略。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011060e229">
「这样啊……」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011070e201">
「只要能成为战斗力，就算是恶魔也无所谓。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011080e229">
「…………」

//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011090e229">
「知事，这是？」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011100e201">
「那个佣兵帝国，似乎只要接受了他们的
特定条件，不管怎样的委托都不会拒绝。
　无论是怎样的强国、怎样的军队，
都能与之抗衡。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011110e229">
「有所耳闻。
　只是，这个条件——」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011120e201">
「嗯。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011130e201">
「幸而方才没有用枪。
　这条命应该用在更有价值的地方呢。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011140e229">
「……知事。」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011150e201">
「别露出这样的表情，苦大仇深的多难看。
　这并不是为了什么崇高的自我牺牲精神……
只不过是完成自己的使命。」

//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011160e201">
「或者说是食君之禄，忠君之事。
　守护陆奥是我的职责，如此而已。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011170e229">
「…………」

{	NwC("cg/fw/nw知事.png");}
//【ｅｔｃ／知事】
<voice name="ｅｔｃ／知事" class="その他男声" src="voice/md06/0011180e201">
「我要前往“武帝”。
　之后就交给你了。」

{	NwC("cg/fw/nw秘書.png");}
//【ｅｔｃ／秘書】
<voice name="ｅｔｃ／秘書" class="その他女声" src="voice/md06/0011190e229">
「……是……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_002.nss"