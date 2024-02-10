//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_020.nss_MAIN
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
	#bg049_景明故郷住宅地a_03=true;
	#bg112_川沿いの道b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_021.nss";

}

scene md06_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_019.nss"

//◆bg049
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg049_景明故郷住宅地a_03.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("黒", 300, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm34", 0, 1000, true);


	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200010a00">
「知道人数吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200020a01">
《四人哦。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200030a00">
「这种程度还是可以应付的……
　好，把那边的警钟敲响。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200040a01">
《可以吗？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200050a00">
「嗯。
　有必要让大家得知真相。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200060a01">
《明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かんかんかんかん。

	CreateSE("SE01", "se背景_ガヤ_緊急鐘の音_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


	WaitKey(1500);

	SetNwC("cg/fw/nw大柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200070e227">
「怎么了!?　失火了!?」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200080e109">
「哇！别开玩笑了!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざわざわ
//◆どやどや

//◆川沿い、bg112a_夜

	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("SE01", 1000, 0, null);

	CreateSE("SE02", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE02", 0, 1000, 0, 1000, null,true);


	OnBG(100, "bg112_川沿いの道b_03.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　没有比猝不及防的火灾更可怕的事了。
　火灾警报的钟声惊醒了附近一带正酣睡中的人们，
众人纷纷飞奔而出。

　——然后，可想而知。
　亲眼目睹了眼前的一切。

　即将竣工的桥……
　与在其周围的四个蠢蠢欲动的男人。

　他们手中拿着工具。
　锯子、砍刀、斧头……

　因为被挡住了逃跑的路线而茫然失措的样子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetVolume("SE02", 1000, 500, null);


	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200090e110">
「你们……」

{	NwC("cg/fw/nwその他.png");}
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200100b54">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200110a00">
「不是雇来维持这一带治安的
<RUBY text="？？？">地头蛇</RUBY>的那伙人吗？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200120e110">
「就、就是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　这样就水落石出了。
　真相其实并不是什么<RUBY text="····">稀罕的事</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200130a00">
「推销手段还真是有违伦理呢。」

{	NwC("cg/fw/nwその他.png");}
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200140b54">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200150a00">
「为了使治安的恢复成为必要，
首先要将之破坏。
　该说这个主意很不错吗？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200160e110">
「这是怎么一回事？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200170a00">
「破坏桥的正是这些人。
　现在又试图故伎重演……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200180a00">
「为了分裂原住民和难民。」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200190e110">
「什……什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ざわざわ

	SetVolume("SE02", 1000, 1000, null);


	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200200b54">
「……啧……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200210a00">
「这一切都是为了骗取这个地区
居民的资金来源吧……不过
枉费心机了。
　请死心吧。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200220a00">
「什么都不用说，就那样回去。
　而且今后永远也不要再插手此事，
这样住民方和难民方应该也不会
问责你们吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200230a00">
「这样对自己也好有个交代。」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200240b54">
「不劳你费心。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆第一話のヤクザ
	SetVolume("SE02", 1000, 0, null);

	StL(1000, @0, @0, "cg/st/st野木山組_通常_私服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw野木山組_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200250b54">
「现在已经不是打着被六波罗雇佣
的旗号就能衣食无忧的时代了。
　不自己另谋出路，就揭不开锅了。」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200260b54">
「就算你叫我收手，我也难以从命！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200270a00">
「无谓的意气用事。」

{	FwC("cg/fw/fw野木山組_通常.png");}
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200280b54">
「少废话！
　别多管闲事——」

{	FwC("cg/fw/fw野木山組_怒り.png");}
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200290b54">
「否则莫怪刀剑无眼!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅらっ。



	DeleteStL(300,true);

	OnSE("se擬音_雰囲気_抜刀01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　似是四人中头目的男子拔出佩刀。
　手持锯子的男子改持短刀，手持斧头的男子亦将锋刃
转向我，两人分立于我的两侧。

　四周惊叫声哗然，人群纷纷后退。
　
　……打斗场面无论如何理应回避——但身处这种场合
就另当别论了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200300a00">
「村正，把虎彻拿来！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200310a01">
《明白！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　手无寸铁地面对四个见过场面的流氓有点不妙。
　不过使用剑胄也未免太小题大做，用一柄太刀恰好。

//◆しゃきーん。
{	OnSE("se戦闘_動作_刀構え01", 1000);}

　这四人还真不可小觑，看到我手中突然
出现的太刀，虽然吃了一惊，但未露出丝毫破绽。
　两人向前迈进，另两人左右徘徊欲伺机而上。

　四对一的局势。
　暂且先拉开距离，防止被包围——
应该是正手吧。

　但是这次必须速战速决。
　他们向周围的人发动进攻就糟了。

　绝对不能让住民和难民受伤。

　因此不能后退。
　前进。

　向着前方右手边拿着砍刀的男人——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	OnSE("se人体_動作_一歩", 1000);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200320a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　向前，<k>直至被看穿的一瞬，再突然改变攻击的方向。
　迎击右腋下因中计而纵身跃出的手持斧头的男子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。ぼく。

	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	OnSE("se戦闘_攻撃_殴る03", 1000);

	DrawDelete("絵背景500", 100, 100, "slide_01_00_1", true);

	CreateTextureSP("絵背景501SP", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureEXadd("絵背景501", 9010, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Fade("絵背景501", 0, 500, null, true);
	Zoom("絵背景501", 0, 1200, 1200, null, false);

	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	FadeDelete("絵背景*", 500, true);
	Delete("黒幕１");

	CreateSE("SE01","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]

　用刀背砍击的一刀没有落空，猛击在男子的锁骨上。
　哀鸣被吐出的大量空气取代，最先一人
倒地不起。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw野木山組_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200330b54">
「……可恶!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_攻撃_刀振る02", 1000);

	CreateTextureSP("縦", 15000, @0, @0, "cg/ef/ef008_汎用上下軌道.jpg");
	DrawTransition("縦", 100, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　声音中尽显悲愤之意。
　在将视线投向另一边的刹那，额头中央正面临的
危机如电流般窜至全身。

　凌厉的一击袭来。
　猛烈到足以将我的躯体斩成两段——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆がきーん
	OnSE("se戦闘_攻撃_刀衝突01", 1000);

	CreateTextureSPadd("かきーん光", 16010, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureSP("かきーん", 16000, @0, @0, "cg/ef/ef040_汎用衝突.jpg");
	FadeDelete("かきーん光", 300, false);
	DrawTransition("かきーん*", 50, 0, 1000, 100, null, "cg/data/circle_04_00_0.png", true);
	Delete("縦");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　幸而太刀及时防御，险险避过。
　正面吃下这么一招估计扛不住。于是倾斜身体，
避开这一击。

　刀刃自耳际呼啸而过。
　斩落了几缕发丝。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200340a00">
「……啧！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("かきーん",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我将手腕一转。
　旋转太刀于头顶一周——挥落直击
男子腋下。

　一击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずごっ。
	OnSE("se戦闘_攻撃_殴る03", 1000);
	CreateTextureSPadd("斜め", 15000, @0, @0, "cg/ef/ef010_汎用斜め軌道.jpg");
	DrawTransition("斜め", 50, 0, 1000, 100, null, "cg/data/beam_02_00_1.png", true);

	DrawDelete("斜め", 50, 100, "beam_02_00_0", true);

	CreateTextureSP("絵背景501SP", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	CreateTextureEXadd("絵背景501", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景501", 0, 1200, 1200, null, false);
	Fade("絵背景501", 0, 500, null, true);

	FadeDelete("絵背景501", 500, false);
	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵背景501SP", 750, true);

	SetFwC("cg/fw/fw野木山組_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【野木山組】
<voice name="野木山組" class="野木山組" src="voice/md06/0200350b54">
「呜啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景501",1000,true);

	OnSE("se人体_衝撃_転倒05", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　为避免他受到重伤，已经控制了力道。
　即便如此要害处仍受了重击。就算对于打架斗殴
是家常便饭的流氓来说，应该也难以忍受。

　男子痛得满地打滚，口吐白沫。
　已然失去了战斗的能力。

　这样一来，首领也被击倒了。

　还剩下两个人————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(1500, 1000);

//◆フェードイン
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg112_川沿いの道b_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　边大口喘着气，边拭去汗水。
　短暂而激烈的战斗，令我精疲力竭。

　勉强支撑住没有受伤的身体。
　四个流氓全部瘫倒在地，但都不是
危及生命的重伤。

　……总之，结果还算不错吧。
　如果不用动手就能解决这事就好了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200360a00">
「村正……还有其他同伙吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0200370a01">
《放心吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　听到她的回答，我松了一口气。
　不管怎么说，事情总算解决了。

　立刻让住民和难民勾肩搭背、谈笑风生
是不太可能，但至少关系会好转吧。
　对立的原因，已经解决了一个。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200380a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　蓦地，惊觉四下出奇的寂静。
　我注视着周围——

　眼下的情形实在难以言喻。
　
　的确……刀具之类的东西，并不是用来卖弄的。

　对于既不是军人亦不是罪犯的平民百姓来说，
刀光剑影的必然具有威胁性。
　我命村正收回虎彻。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅいん。
	CreateSE("SE01","se特殊_雰囲気_発光03");
	MusicStart("SE01",0,750,0,1300,null,false);

	WaitKey(500);

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200390e109">
「消失了……!?」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200400e110">
「喂，喂。
　难道——那件事……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……糟糕。

　因为形势所迫而用错了方法。
　刚才的情景在常人眼中，就如同
太刀凭空消失一般。

　居然又在火上浇了一把油。
　必须想办法掩饰过去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200410e110">
「……你……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　不过——
　在我正思考怎么解释这件事之前，
有一个人先开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200420e110">
「你……」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200430e110">
「听说是迄今为止弑人无数，被称作
杀人鬼武者……
　这——是真的吗!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(800);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200440a00">
「……咦？」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200450e110">
「不管对方是谁……
　就算是女人和小孩也残忍杀害。」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200460e110">
「听说……是这样……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200470a00">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm15", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　是谁？

　是谁，说出了这一切！

　将那些————事实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw小柄な難民.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0200480e228">
「突……突然间，说什么啊！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200490e110">
「不、不是。
　我本来也不相信。」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200500e110">
「但是都看到了吧！
　把刀变出来，轻而易举地解决掉那些流氓，
又把刀变没了！」

//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200510e110">
「这样的能力，只有武者才能做到！」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0200520e228">
「这……的确如此……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200530e227">
「等、等一下！
　就算这位巡警先生有可能是武者
……也不一定就是杀人魔吧！」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200540e227">
「是吧!?」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200550a00">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200560e227">
「…………」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200570e227">
「喂、喂。
　怎么不说话了？」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200580e227">
「至少说点什么啊？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200590a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　说话？
　要说些……什么？

　说自己不是杀人魔？

　扯这种……谎言？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200600a00">
「…………」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200610e227">
「你……难道？」

//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200620e227">
「难道是真的？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200630a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　——瞬间。
　
　空气沸腾了。

　比流氓们拔刀之时更为人声鼎沸。
　“噫——”地，人们声嘶力竭地叫嚷着，仿佛是为了
逃离火源般远远地围住我。

　为了尽可能的远离我，为了扫除后方挡道的阻碍而
互相责骂对方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200640e109">
「闪、闪开啦你这家伙。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200650e227">
「少啰嗦，别推我！」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0200660e109">
「什么!?
　说起来那个怪人根本就是你们
带来的吧！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200670e227">
「我什么都不知道！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0200680e110">
「是想教唆他来对付我们的吧!?」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0200690e227">
「都说了我不知道！
　打算让他杀了我们的是你们才对吧——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　争执。
　好不容易才有所改善的人们。

　争执。
　都是因为我。

　争执……
　互相推搡、互揭伤疤、互相斗殴——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック·銀星号事件

	EfRecoIn1(18000,600);
	CreateTextureSP("イベ絵10", 10000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	EfRecoIn2(300);

	WaitKey(500);
	EfRecoOut1(300);
	Delete("イベ絵*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200700a00">
「住手！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200710a00">
「住手啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆シーン。
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE01", 1000, 0, null);

	WaitKey(1500);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200720a00">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　人群顷刻凝结。
　一齐将视线投向我。

　每一个瞳孔都饱含恐惧。
　无限的畏惧感。

　面对沾满鲜血的杀人魔鬼，有这种想法也是理所当然。

　恐惧。
　恐惧。
　恐惧。
　恐惧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200730a00">
「呜……」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0200740a00">
「呜哇啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だっ。逃げる
//◆フェードアウト
	OnSE("se人体_足音_走る03", 1000);

	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	SetVolume("OnSE*", 1000, 0, null);
	WaitKey(1000);

	Fade("絵色黒", 1500, 0, null, true);

//◆小光
	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	WaitKey(800);

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0200750b34">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_021.nss"