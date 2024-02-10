//<continuation number="3140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_001.nss_MAIN
{

	$TITLE_NOW = "　";

//嶋：フラグ初期化
	if($その他死亡){$その他復活=true;SetHex();}

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
	#bg026_普陀楽山塞a_03=true;
	#bg027_普陀楽評議の間_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_足利護氏=true;
	#voice_on_大鳥獅子吼=true;
	#voice_on_遊佐童心=true;
	#voice_on_今川雷蝶=true;
	#voice_on_足利茶々丸=true;
//嶋：初期化
	$Others_Flag = 0;
	$OthersFav_After = 0;

	$PreGameName = $GameName;

	$GameName = "ma03_002.nss";

}

scene ma03_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma02_024.nss"

//◆普陀楽山塞·夜
//◆ＢＧＭ：六波羅

	PrintBG("上背景", 30000);

	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_03.jpg");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetNwC("cg/fw/nwその他.png");

	#voice_on_大鳥獅子吼=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010010a06">
「……冈部赖纲拒绝我们的劝降。
　他亲率旗本众出兵，我方以迎击回应——」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010020a06">
「虽然在猪苗代湖上空展开了激战，不过两小
时后就基本歼灭了敌骑，成功掌握了制空权。
　大约在同一时间地面上的叛军也宣布投降。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内·奥殿

	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	FadeBG(2000,true);

//◆獅子吼
//◆テロップ：篠川公方　大鳥獅子吼　竜軍中将

	StC(1000, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st獅子吼_通常_制服l.png");
	Move("絵ＳＴ", 0, @-170, @200, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-40, "cg/sys/Telop/tp_大鳥獅子吼.png");
	Move("絵テロ１", 0, @150, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);


	SetFwR("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010030a06">
「首领冈部赖纲死亡，嫡子十兵卫赖良放火烧
馆并切腹。
　大村玄信、高野喜三郎也已死亡，冈部的次
子六曜丸在逃跑时被击毙。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010040a06">
「其余的主要人员也不外乎战死、被捕、
投降等这些结果。
　可以断言冈部一党已经被瓦解了。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆護氏
//◆テロップ：六衛大将領正三位　足利護氏　元帥竜軍大将

	DeleteStA(300,true);
	WaitKey(500);
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStC(300,true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_足利護氏.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//	WaitKey(2000);

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st護氏_通常_私服_l.png");
	Move("絵ＳＴ", 0, @-190, @170, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-40, "cg/sys/Telop/tp_足利護氏.png");
	Move("絵テロ１", 0, @100, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

	SetFwR("cg/fw/fw護氏_通常.png");

	#voice_on_足利護氏=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010050a05">
「……支持叛乱，供给物资与兵力的村镇应
尚有数个。
　那些，如何了。」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010060a06">
「和以往一样。
　居民全部处死，房屋彻底烧毁，已经成了寸
草不生的荒地。」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010070a05">
「甚好。
　受累了。」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010080a06">
「是！」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010090a05">
「赖纲这厮……
　长年，公然对余阳奉阴违的可恨之徒，
但见其如此身首异处，亦异常感慨。」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010100a05">
「一念及再也勿需听其刻薄毒辣之言……
呵呵，却也真真寂寞到不可思议。
　思及其恶毒，也颇有一番乐趣。」

{	#voice_on_遊佐童心=true;
	NwR("cg/fw/nwその他.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010110a09">
「哈哈哈！
　大人您也会说这种随性的话！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//「哈哈哈！
//　殿も勝手なことを申される！」

//◆童心
//◆テロップ：古河公方　遊佐童心　竜軍中将

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStC(300,true);


//	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
//	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st童心_通常_私服a_l.png");
	Move("絵ＳＴ", 0, @-190, @160, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-30, "cg/sys/Telop/tp_遊佐童心.png");
	Move("絵テロ１", 0, @100, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_遊佐童心.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw童心_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010120a09">
「前几日一有些事您就反复说什么提冈部的
首级来见您，若不拿他的脑袋喂狗的话，您就
彻夜难眠。
　吾听得耳朵都要长茧了哦。」

{FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010130a09">
「人一旦死了，就这样说了。
　啊呀，还真是让人头疼的大人啊！」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010140a05">
「童心和尚何出此言。
　余也明白……一旦拔掉眼中刺，得以
暂缓一瞬之后，此类想法自会浮出水面。
以前从未如此考虑过。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010150a05">
「且夫生存之时追求死亡，将死之时渴求生存
……这简直，勿需和尚汝多言。人心实乃任意
妄为之物。无论如何都无法满足。」

{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010160a09">
「正因如此，人才会不停地追求满足，不断提
高自我。
　易于满足之人则与草木无异，虽有大彻大悟
的境界，但对这个世间毫无用处。」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010170a09">
「您成为如此的活佛是我国的大事。
　不，任性的说法完全可以！
大人以后也请继续任性下去！」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010180a06">
「……这是什么话啊。」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010190a05">
「真敌不过童心和尚。
　呵呵呵……」

{	#voice_on_今川雷蝶=true;
	NwR("cg/fw/nwその他.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010200a08">
「啊，不管怎么说。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆雷蝶
//◆テロップ：小弓公方　今川雷蝶　竜軍中将

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st雷蝶_通常_制服.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st雷蝶_通常_制服_l.png");
	Move("絵ＳＴ", 0, @-190, @250, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-30, "cg/sys/Telop/tp_今川雷蝶.png");
	Move("絵テロ１", 0, @100, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st雷蝶_通常_制服.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_今川雷蝶.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010210a08">
「这样关东附近的反幕府实力可以说已全部
扫除。
　首先要恭喜您，父亲大人。」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010220a05">
「嗯。
　汝也受累了。」

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010230a08">
「您言重了！
　这次的战斗吾并未做出太大的贡献……」

{	FwR("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010240a06">
「说得没错。
　您担任的铁路方向补给，连最终一次都没有
运送到前线。」

{	FwR("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010250a08">
「那……那也是没办法的事啊！
　铁路被倒幕派的游击队炸坏了啊！
　这段时间，他们都已经被打得七零八落，
因此吾觉得应该没有问题的……」

{	FwR("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010260a06">
「您是笨蛋吗？
　这种家伙有多少就会来多少。怎么可能
没有问题呢。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010270a06">
「松懈了应有的警戒，您的责任十分重大。」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010280a08">
「呜……」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010290a06">
「虽然不至于要您切腹，但也请稍微剃一下您
那花里胡哨的脑袋如何？　雷蝶。
　您那寒碜的样子已经让我觉得不堪入目，忍
无可忍了。」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010300a08">
「你这是在找茬吗!?　居、居然说如此美丽的
吾，非非非常寒碜!?
　不可饶恕！　明明只是个家臣！　你以为吾
会轻易放过你吗!?」

{	FwR("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010310a06">
「就算您不轻易放过我也没关系。
　如果是您的话，无须做好代价高昂
的思想准备。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010320a06">
「什么时候都行。
　如果您想一战的话，随时奉陪。」

{	FwR("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010330a08">
「什、什、什……」

{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010340a09">
「算了算了，雷蝶大人。
　先冷静下来。坐下吧。」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010350a08">
「但是，童心大人！
　您听到刚才的话了吧，他对身为足利家直系
的吾口出暴言！
　这已经是造反了吧，马上将他斩首——」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010360a05">
「安静。」

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010370a08">
「父、父亲大人……」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010380a05">
「汝有无功劳余自会考量。
　但此次战役，功劳最大者乃亲自率兵镇压住
叛乱的狮子吼。稍有放肆亦可容之。」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010390a05">
「如若不然余便要怀疑汝的器量。」  

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010400a08">
「……是，是。」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010410a06">
「哼……」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010420a08">
「呜……」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010430a05">
「狮子吼。汝且收敛一点。
　虽然余明白汝所言皆是出于对余的忠义，但于
他人眼中便是骄傲自满。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010440a05">
「这必会于汝不利。」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010450a06">
「了解。
　铭记在心。」

{	FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010460a09">
「哈哈哈。算了，年轻人这么有精神是好事。
稍微吵几句也没事的没事的。
大人您一直得保持立场当个调停人，总觉得，
是件麻烦事啊。」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010470a05">
「……」

{	#voice_on_足利茶々丸=true;
	NwR("cg/fw/nwその他.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010480a07">
「就是说。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆茶々丸
//◆テロップ：堀越公方　足利茶々丸　竜軍中将

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st茶々丸_通常_制服a.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st茶々丸_通常_制服a_l.png");
	Move("絵ＳＴ", 0, @-250, @270, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-30, "cg/sys/Telop/tp_足利茶々丸.png");
	Move("絵テロ１", 0, @70, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 105, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st茶々丸_通常_制服a.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_足利茶々丸.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010490a07">
「把贬义方面极具个性的一家统合起来的
劳苦老爹的感觉。不，根本就是吧？
　老爷子也真是辛苦啊。」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010500a08">
「你乱说什么！
　平素最给父亲大人添麻烦的，怎么看都是
你吧?!」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010510a07">
「诶。我怎么了？」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010520a06">
「……比起雷蝶，你更加没做什么啊。
　到最后你既不派兵也不运送物资来……
到底想怎么样？」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010530a07">
「我也没得选择啊。
　我的营部在哪你知道的吧。从伊豆半岛
突破中央关东，
将东西送到会津？　胡说什么啊。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010540a07">
「铁路不行，空路或者海路又这么乱，
根本无法输送。
　有意见的话就跟那提灯鮟鱇鱼还有
台风十五号说去。别跟我说，别跟我说。」

{	FwR("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010550a08">
「谁、谁……谁是提灯鮟鱇啊!?」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010560a06">
「是您。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010570a06">
「不用说也该知道，即便如此，
想办法送去可是统帅六波罗一军之人
的义务啊。茶茶丸。
　实际上，童心大人都运送了车辆。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010580a07">
「要我也那样做？
　才不要，烦死了。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010590a07">
「好了嘛，都已经轻松收拾好了。
结果也很满意。仅此一次了。」

{	FwR("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010600a06">
「你……」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010610a07">
「啊，别生气别生气。热得很。
　狮子吼啊。我也不是什么都没做啊。」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010620a06">
「说谎。
　无论是对前线还是后勤都没有做出贡献的
你到底做了些什么。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010630a07">
「宣传工作。」

{	FwR("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010640a08">
「……哈？
　那是啥啊。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010650a07">
「大和南北新闻刊登了社论。
　我写的东西以社员名义发布。啊呀，
民间没太大反感也是因为这个啊，稍微拥护了下
这次的事件。」

{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010660a09">
「呵，呵。
　茶茶丸大人，那是怎样的社论？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010670a07">
「就像这样的。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆ばさっ。
//◆ノベル表示

	CreateColorEX("絵暗幕", 1500, "#000000");

	OnSE("se日常_衣類_落ちる01",1000);//ダミー注意
	Fade("絵暗幕", 150, 750, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
『友情的虐杀』<k>
　
　冈部赖纲于会津猪苗代发起的叛乱，迎来了杀尽其一族党羽的结局。
虽说是在反逆国家下的不得已处置，但想起面临凄惨死期的人们的痛苦，
还是无法抑制悲伤的情绪。

　民间对六波罗的愤怒和不满似乎有渐强的趋势。 
但希望大家等一下。怨恨国家能得到什么？相反，
不是应该思考、理解作为国民守护组织的幕府，
为何要采取那样的行动，并且今后为不让他们做出那样的举动，
我们该忍耐的就去忍耐，从而为构筑新和平关系而努力不是吗？

　那样的话，杀害冈部党羽的事件就不会被后世当作悲剧，
而是作为官与民拴合起来的契机，作为『友情的虐杀』，
也是作为幸福时代的开端被传颂吧……
　我认为，那正是活着的人的义务，回报冈部等人宝贵牺牲之道。

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗幕", 1000, true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010680a05">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010690a06">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010700a07">
「怎么样。
　这巧妙至极的错位论点。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010710a06">
「哪里啊?!」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010720a08">
「只觉得是在挑衅而已!!」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010730a07">
「诶。没那回事。
　看嘛。」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010740a09">
「嘎哈哈。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010750a07">
「还引人发笑。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010760a06">
「童心大人！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010770a08">
「说来，这完全没联系啊!?
　你是为了引人发笑而写的吗!?」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010780a07">
「只靠武力的政治已经结束。
　今后是娱乐的时代！」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010790a08">
「简直莫名其妙！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010800a06">
「撤回前言。你还是什么也别做了。
无论怎样也不要做。
　可以的话连呼吸也不要。脉搏也停了吧。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010810a07">
「老爷子。
　这些孩子气的家伙欺负人啊。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010820a05">
「……算了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010830a06">
「虽然大人您刚才这么说,但不能算了啊。
　这关乎幕府的威信。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010840a08">
「总之把这没脑子的家伙流放去火星，
然后回收报纸吧。父亲大人。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010850a05">
「好了。狮子吼、雷蝶。
勿要对茶茶丸所做之事太吹毛求疵。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010860a06">
「……既然您都开口了。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010870a07">
「别吹毛求疵。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010880a06">
「闭嘴。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010890a08">
「去死吧你。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010900a07">
「老爷子，这些家伙违反命令，杀了行吧？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010910a09">
「好了好了。
　……接下来，真过意不去，好听的话说完后，
让贫僧报告一件不好的事情吧。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010920a05">
「唔？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010930a07">
「海蜇滋长大爆发了？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010940a09">
「不是不是。
　前不久，得到某管区内发生一村庄
全灭的事件调查报告。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010950a06">
「……啊啊。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010960a08">
「不好的事，是意料中的吧？　童心大人。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010970a09">
「换个视角，会发现没有比这更好的事了。
　无一生还。干净利落地全部杀掉。
不论男女老少，最终皆为沉默的尸骸。」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010980a09">
「报告说，事件如此异样的特殊性，看作是
“银星号”出现的证据应该不会有错。」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010990a06">
「……银星号！」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011000a08">
「这都第几次了……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011010a05">
「目击情报呢？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011020a09">
「又跟以往一样……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011030a05">
「没有么。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011040a09">
「可以相信的是。
　有若干附近住民、行人们说看见银色的流星，
但有多少是真的，又从哪里开始是后来附上的
胡言乱语。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011050a07">
「总之你的意思就是，
没有人清楚看见杀戮现场对吧？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011060a09">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011070a06">
「多么愚蠢的对话……！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011080a07">
「一点也不愚蠢。
　在说看到的家伙全部死掉的事而已。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011090a06">
「哪里不蠢了？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011100a07">
「啊哈哈。是啊。蠢货。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011110a08">
「……这是该笑的状况吗？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011120a07">
「啊呀，就只能笑了。
　谁都这么认为吧？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011130a07">
「那谣言已经在关东扩散开去，
一个武者中队被银星号全灭了。
　虽然市民们在半信半疑间稳定下来。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011140a07">
「那其实是假的。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011150a07">
「据我所知，其实并非一个中队，而是一个<RUBY text="·">大</RUBY>队，
　除了笑还能怎样？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011160a08">
「…………」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011170a06">
「确实。
　五十骑的武者仅被一骑武者斩尽杀绝么……
哼。若非古代神话或是疯子的妄想，绝无可能。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011180a09">
「唐国传说中讴歌的项霸王也不过如此吧。
　啊呀，为何那种东西会出现于此世啊。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011190a08">
「那到底是何方神圣……？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011200a07">
「——其有终结、有死灭、有不留灰烬的消失。
　汝若不想绝命，就勿碰也勿看……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011210a08">
「这什么啊。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011220a07">
「马可福音的别记。
　魔王降临的一节。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011230a08">
「……嗯……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011240a07">
「胡说而已。」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011250a08">
「竟然胡说?!」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011260a07">
「噗。这人居然信了！
　竟然还有这样的家伙。
随便说说那种话就盲目信了。
之后在别处吹嘘可是会丢尽脸面。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011270a08">
「我要杀了你……」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011280a09">
「好了，好了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011290a06">
「殿下。事态果然甚为严峻。
　就现在的应对组是不足的。我认为该将
规模扩大，我们之中一人作为负责人。
认真地应对才是。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011300a05">
「嗯……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011310a07">
「那家伙虽然淡淡地无视了，但肯定有
一瞬间相信了吧……？
　太好了雷蝶，有伴了。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011320a08">
「白痴是肯定的。哼。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011330a05">
「童心和尚。
　狮子吼的提议如何？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011340a09">
「难说。
　以后会成为必要措施，这一点
无可厚非……」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011350a06">
「你想说时机尚早吗？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011360a09">
「正是。
　幕府以不明来路的凶贼为对手，
投入如此多的力量——
这种事情，恐怕现阶段……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011370a05">
「煽动火种吗？
　民众中的反幕分子。以及ＧＨＱ……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011380a06">
「会给内外的敌人有机可乘
……这点我也不是没有担心。
　要是将“银星号”置之不理也会是极大的灾难。
多少牺牲一些也应将其击溃不是吗？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011390a09">
「问题是先解决哪个方面。敌对势力，抑或是
灾难……但，狮子吼大人。你应该
没有忘记，银星号灾难的受害者
不仅仅是我们吧？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011400a06">
「……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011410a09">
「六波罗的主要敌人，进驻军也受到不少损害。
考虑到这点，如今仅让我们成为标靶
出面解决麻烦事，
是不是有些不合算呢。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――


	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011420a06">
「……原来如此。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011430a08">
「但是，童心大人。
　要是六波罗将不亚于ＧＨＱ的银星号击溃的话，
不就是幕府拥有统治大和能力的证明吗？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011440a09">
「但，那样的话也难办。
　不见效果的话就徒劳。即便效果好，那也只会
激怒进驻军而已。」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011450a09">
「窥视着<RUBY text="····">完全支配</RUBY>大和机会的家伙们，
绝不会忽视我们支配力的强化。
　因应对银星号而疲惫之时，招来ＧＨＱ
的重兵……不觉得有点毛骨悚然吗？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011460a08">
「…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011470a05">
「甚好。依童心和尚之见解。
　对于银星号的问题以现今之体制对付足矣。
至于不久是否扩充应对部署，就留作余实现
完全支配后的课题吧。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011480a06">
「是……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011490a09">
「遵命。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011500a08">
「就遵从父亲所言。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011510a05">
「……不满吗？　狮子吼。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011520a06">
「不，绝对没有。
　但有一点……无论如何也非常在意。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011530a05">
「且说。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011540a06">
「……银星号，在关东防空圈内，
没有被雷达探测到一次。
　那<RUBY text="··">是否</RUBY>看作那家伙从关东之外而来比较妥当。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011550a08">
「以低空骑航来扰乱雷达的可能性……几乎没有。
　要是那样的话，没被人肉眼发现也很奇怪。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011560a07">
「在关东什么地方出现，然后又回去什么地方。
……雷达不单覆盖关东的外沿，
要是全区域追踪的话，
事情就简单了啊。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011575a09">
「人员和经费有点跟不上。
要是雷达无法改良使其性能提高的话，
就颇为……
　目前都竭尽全力于重要地方的配备。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011580a06">
「确实，如果有关东全区域绵密监视的雷达，
事情就容易收拾。
　但即便没有那样的东西，应该说，
事情没得到解决也是奇怪的。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011590a06">
「因为武者是<RUBY text="····">引人注目</RUBY>的。
　——大人。这点是我怎样也无法理解的。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011600a05">
「唔……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011610a06">
「过去有过数次看见那家伙于犯罪现场
飞上天空的报告。
　但，着陆现场的目击一次也没有。
这实在奇怪。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011620a09">
「……呼唔。
　武者着陆之际产生的轰鸣声以及喷烟的轨迹，
于相当距离的地方也该能确认到。
明明如此……却？」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011630a08">
「也许只是降落在远离人烟的深山中而已？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011640a06">
「于这关东『远离人烟的深山』是指多远？
　当然，有是有。那样的地方，
已派调查组重点调查了。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011650a06">
「毫无成果。
　没有发现任何痕迹。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011660a08">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011670a05">
「童心和尚。汝作何感想？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011680a09">
「无法理解。确实如狮子吼大人所说的，
确实可疑……
　然而对方是超越常识的怪物。
或许不应用理所当然的标准去衡量。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011690a05">
「唔……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011700a07">
「是么。
　说不定只是件很简单的事哦？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011710a08">
「你就闭嘴吧。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011720a07">
「是～」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011730a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011740a06">
「不，且慢。
　茶茶丸有什么想说的就说吧。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011750a07">
「可以吗？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011760a06">
「嗯。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011770a08">
「浪费时间而已……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011780a07">
「唔。无法否定真让人难受啊。
　啊呀。我说的真是简单的想法而已。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011790a07">
「也许只是因为银星号所着陆的场所，
是个即使出现武者也不足为奇的地方吧？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011800a08">
「……哈？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011810a07">
「比如说有树木遮盖的森林之中。
　那样的话谁也不会觉得奇怪了吧。」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011820a06">
「……我说。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011830a08">
「你啊……
　那样的地方，也就普陀乐城、
关东四军的驻屯基地——
就是说只有吾等公方府吧！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011840a07">
「也是啊？
　啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011850a05">
「………………」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011860a09">
「………………」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011870a06">
「…………什么？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011880a08">
「…………诶？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011890a07">
「啊哈。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011900a08">
「等、等……等下！
　你这么说，就等于说这五人当中的
……谁…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011910a05">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011920a09">
「……呵呵……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011930a08">
「荒、荒谬！
　到底，那是为了什么……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011940a06">
「……茶茶丸。
　你刚才的发言……有什么根据。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011950a07">
「唔。
　蛋糕真好吃。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011960a06">
「好好听啊！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011970a07">
「……或者这座城，或者我们四公方的司令部。
　要不然的话。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011980a07">
「嗯嗯……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011990a07">
「果然蛋糕还是文命堂的好……」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012000a06">
「……吃东西和说话选一个！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012010a07">
「那我选吃。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012020a06">
「快说啊！」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012030a07">
「不就是ＧＨＱ吗？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012040a06">
「…………」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012050a09">
「……呼唔。原来如此。
　因为横滨的进驻军总司令部
也经常有龙骑兵出入。」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012060a09">
「银星号混入其中，
旁人看来也不会觉得奇怪……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012070a07">
「就是说如果ＧＨＱ是幕后黑手的话，
可能最初以银星号必定于关东内起飞
着陆的前提也就没有意义了啊。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012080a07">
「银星号事件实质是ＧＨＱ的新兵器实验么？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012090a06">
「……隐形龙骑兵吗？
　那样的话，“银星号”的据点在海上吧。
那里的隐藏性很高。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012100a08">
「躲过防空圈的雷达从太平洋舰队飞来，
联盟军最新型龙骑兵……
　但是，茶茶丸。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012110a07">
「嗯？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012120a08">
「进驻军也受到银星号的祸害啊。
　这怎么说明。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012130a07">
「……哈？
　你啊，怎么明知故问？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012140a08">
「什、什么……？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012150a07">
「为了避开嫌疑而装成被害者，
这不是再简单不过的阴谋吗？
　我们平时不也这样做吗？　这种程度的。」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012160a08">
「……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012170a06">
「哈。果然。
　弑杀兄弟，
夺取继承权的人说的话就是不一样。」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012180a07">
「没有道理被你说吧。
　……而且。大英联邦还真完全不愁物资。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012190a07">
「二三百小士兵，一次性用掉也不痛不痒啊。
　就那样的牺牲来实验新兵器并使治安恶化——
谋求幕府统治力的减退。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012200a07">
「对那些家伙来说，
是便宜到笑不拢嘴的买卖吧？」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012210a08">
「……对……啊。
　确实…………」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012220a06">
「有一番道理。
　现阶段的毕竟只是揣测……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012230a07">
「呐。可以吃蛋糕了么？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012240a06">
「随便你。
　……大人。怎样？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012250a09">
「刚才茶茶丸大人说的话，虽欠缺明确的根据，
但很多地方都能认可。
　如果是事实的话，放任不管会很危险……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012260a05">
「不。
　方针不作改变。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012270a05">
「假设这全为进驻军的阴谋，
不，若是如此，首先更需对付的应是ＧＨＱ主体。
　身入其境则无法兼顾大局。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012280a05">
「如若将ＧＨＱ这根基击溃，
枝叶也便会很快枯萎。
　切勿忘记。吾辈之敌人在横滨。
夙愿只余一个————」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012290a05">
「<RUBY text="···">大攘夷</RUBY>啊！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012300a09">
「遵命。
　为了六波罗！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012310a06">
「为了神州大和！」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012320a08">
「为了父亲的天下！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012330a07">
「真不愧是老爷子。
　嗯啊嗯啊。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012340a08">
「你看下场合啊?!
　要吃蛋糕到什么时候！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012350a07">
「承您款待了。
　那，换个话题。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012360a08">
「还主导谈话……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012370a07">
「啊啊，你吵死了。
　不要打破现场的气氛啊。好好听人家说话。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012380a08">
「咕……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012390a09">
「是重要的议题？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012400a07">
「不，也不至于。
　最近，稍微有些巷间传闻。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012410a07">
「“赤色武者”的事。
　知道吗？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012420a06">
「……不。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012430a09">
「银色之后又是赤色吗？
　这到底？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012440a07">
「锄强扶弱。
　主张正义战斗的<RUBY text="ｈｅｒｏ">英雄</RUBY>。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012450a08">
「……哈？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012460a07">
「听说是这样哟？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012470a08">
「这完全不清楚哦。
　那家伙在干什么？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012480a07">
「都说了，帮助弱小正义，
周旋于强大恶势力之间啊。
　Ｈｅｒｏ就是这样嘛。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012490a08">
「谁是恶势力？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012500a07">
「我们六波罗。
　还有，那些<RUBY text="····">工作人员</RUBY>们。」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012510a05">
「……即是说，是四处狩猎祸害
民众之武者的武者吗？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012520a07">
「对对。不知从哪里来，
将坏的武者打倒后又不知所踪。
　到底还是个传说啊。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012530a07">
「即是，都市传说吧？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012540a08">
「……是吗？
　这样的报告。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012550a06">
「……也不是不可能。
　以事故死亡处理的龙骑兵死亡事件中，
也有很多可疑之处。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012560a06">
「要么是私斗，要么是银星号干的，
被无差别地这样解决了……
　那赤色武者要是真的存在，
或许当中的牺牲者也包含其中。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012570a09">
「……呼唔。或许……
　刚才报告的，那全灭掉的村子的地方官……
……是死在那英雄大人的刀刃下。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012580a08">
「那是银星号的所为吧？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012590a09">
「不，那个嘛。雷蝶大人。
　那是村子被破坏前一日的事……」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012600a09">
「贫僧的古河公方府收到那派遣官的联络。
说出现一名所属不明的武者，驾驶深红色的剑胄，
那家伙跟ＧＨＱ的巡查官
一起涉嫌逆反行动什么的。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012610a05">
「哦……？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012620a09">
「所以要求增援。
无奈正值冈部叛乱不可开交之时，
没有空闲理会，也就无视了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012630a06">
「童心大人，失敬了。
　若此为告知谋反的通报，
这应对岂不是有些疏忽了。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012640a08">
「……你这臣下之臣！
　稍微也辨别一下自己的立场再说啊！」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012650a09">
「啊呀啊呀，确实如他所说，完全无以作答。
贫僧也反省过。
　但要说借口的话，置若罔闻的理由也是有的。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012660a06">
「是什么？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012670a09">
「那个派遣官啊。老早就对赴任地的山非常执着，
根据久远的古书记载，那里采出很多宝石，
所以再三申请，认为务必应该开发。」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012680a09">
「知道行不通，最终自费挖掘，
怎么说呢……怪人啊。
　虽然作为武士还有点用处。」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012690a06">
「……想在中央发迹而赚分数吗？
　挺有手段的嘛。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012700a09">
「谁知道。时至今日也无从得知了。
　不管怎样，人尽皆知是有那么点奇怪的家伙，
所以在古河也就没有谁真的理会他的报告。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012710a07">
「呼。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012720a08">
「赤色武者啊……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012730a05">
「此事颇有意思。
　那……童心和尚？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012740a09">
「是。如今，梦里还是现实都不知道的事，
就无需烦恼了吧。
　而且……」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012750a09">
「要是赤色武者真的连<RUBY text="····">工作人员</RUBY>也四处砍杀的话。
　对那家伙比我们更加郁闷的，是ＧＨＱ。
那些家伙会收拾的吧。」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012760a05">
「狮子吼。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012770a06">
「赞同童心大人。
　但，在这样的传言广布下，
市民对英雄的祈愿过高，
不会有些担心吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012780a09">
「……积聚那么多的不满。
　所以在如今的状况下，
放松对民众的管理也是不行的……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012790a06">
「是的。
　我认为，反倒该强化镰仓大番的警察体制，
对不稳分子的揭发应较之前更加彻底。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012800a05">
「嗯。此建议可行。
　雷蝶，尽快去部署。
也给厩众下达命令。
从内外两方面控制。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012810a08">
「是，父亲大人。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012820a07">
「啊呀。烦死了。
　老爷子。差不多结束了吧？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012830a05">
「……也对。
　若是没有其他议题，今日的磋商就到此……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012840a09">
「啊呀，大人，稍等。
　狮子吼大人，那件事怎样？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012850a06">
「……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012860a08">
「那件事？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012870a07">
「……啊，啊啊。关于大鸟本家的户权继承，
好像是想承认还是怎样。
　对了是有说过吧？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012880a07">
「那个怎么样了？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012890a06">
「……那个事。
　日后再说。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012900a09">
「……呼唔？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012910a08">
「什么嘛。不是找到了你一直在意的
本家正统嫡子吗？
　怎么了？　果然改变主意了？
想要跟花枝结婚，夺取本家吗？」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//嶋：ボイスなし
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012920a06">
「……哧……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012930a08">
「开、开玩笑啦！
　不要那样盯着吾啦！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012940a07">
「心情不好啊。
　似乎是有什么不好的事？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012950a06">
「…………」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012960a05">
「……呼唔。
　详细状况也不甚明了，
若有不便也不必勉强询问。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012970a05">
「那件事就改日再议吧。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012980a06">
「非常感谢您的安排……
　不胜惶恐。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012990a05">
「今夜就到此。辛苦诸位了。
　可以退下了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0013000a09">
「是。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013010a07">
「噢，对了。
　老爷子，时王还好吗？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0013020a06">
「不该称时王，茶茶丸。
　大人的嫡孙，时王丸君已经戴冠，
该称呼四郎邦氏。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0013030a06">
「至少也要称呼四郎大人吧。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013040a07">
「哎。
　这没什么的吧。不管戴冠还是切腹，
时王还是时王嘛。」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0013050a06">
「你这家伙……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0013060a05">
「好了，好了。狮子吼。
　于四郎而言茶茶丸是姐姐一般的存在。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0013070a05">
「亲属之中与其年龄相仿者只有茶茶丸。
　最近汝辈都未曾碰面，他颇感寂寞。
若是可以不妨去见见他吧。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013080a07">
「好啊。我和他约好要借他书呢。
回去之前顺道过去一趟。
　朝下一任大将军献媚也不坏。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0013090a05">
「呵呵。
　勿要太宠溺于他。虽然这孩子很早就丧失父母，
但必须好好地成长。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013100a07">
「好的。」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0013110a08">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013120a07">
「嗯？　怎么一脸无趣啊。
　雷蝶叔父？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0013130a08">
「没、没什么……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0013140a09">
「……唔。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_002.nss"