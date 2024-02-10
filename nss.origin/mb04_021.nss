//<continuation number="850">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_021.nss_MAIN
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
	#bg003_荒れ野_02=true;
	#ev269_義清と姉_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_022.nss";

}

scene mb04_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_020.nss"

//◆現実復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm32",2000,1000,true);
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　憎恨的声音回荡。
　怨恨的声音轰鸣。

　与父亲听到的声音一样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服b.png");
//	FadeStR(300,true);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev269_義清と姉_b.jpg");
	Fade("絵背景100", 500, 1000, null, true);


	SetFwC("cg/fw/fw義清_狂笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210010b21">
「问我是否知道你们所不知道的高僧吗……？
　啊，我知道！　我知道哦！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210020b21">
「他是个很温柔的人！
　双亲去世之后，就在我和姐姐想要追随父母
而去的时候，是高僧救了我们！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210030b21">
「因为高僧记得我的父母曾在一些小事上有恩
于他！
　只是因为那么简单的事，高僧就不惜冒着生
命危险救下了我和姐姐。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210040b21">
「他将我们养大。
　之后甚至给予了我武士的身份。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210050b21">
「我对高僧怀抱着无尽的感激。
　但高僧却总是笑着说……贫僧乃婆娑罗者，仅
是随心所欲做自己想做之事而已。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210060b21">
「——他是个很温柔的人!!
　怎样!?　满足了吗？
　这不就你们想听的吗？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210070b21">
「不是想知道高僧是个怎样的人吗!!」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210080b40">
《……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210090b40">
《……但……但是……
　那个男人……》


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210100b21">
「是啊，没错。
　高僧做了很多恶事。因为大人是个忠于
自身欲望的人。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210110b21">
「但即便如此，高僧于我而言的意义也不会
改变。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210120b40">
《……》


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210130b21">
「呵呵……哈哈哈哈哈！
　没用了！　事到如今，再说这些也没用了！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210140b21">
「因为他已经死了。
　高僧他……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210150b21">
「姐姐也……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210160b21">
「以及那还没来得及出生的婴儿！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210170b40">
《唔……呜……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210180b40">
《婴儿……
　……婴儿……》


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210190b21">
「被你杀了。
　是你杀了他。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210200b21">
「是你把那个<RUBY text="··">婴儿</RUBY>杀死的！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210210b40">
《不、不是……》


{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210220b21">
「就是你。
　为什么要否认呢……？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210230b21">
「刚才不是还那么振振有词的吗？
　快挺起你的胸膛啊。」


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210240b21">
「因为高僧是恶人！
　所以连带着身为孕妇的姐姐和她腹中的胎儿也
一同杀掉了。大声地说出来啊！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210250b21">
「如果你要因此将我也杀掉的话，
那我也绝无怨言！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210260b40">
《孕妇人……
　……怎么可能……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210270b40">
《这是……蒙古人的行径……！
　我……只是为了防止那种惨剧再次发生……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210280b40">
《……啊……》


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210290b40">
《啊……》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	FadeDelete("絵背景100", 1000, false);

//◆びきびき。ヒビが入る音
//◆正宗が小刻みに振動する
	CreateSE("SE01","se特殊_鎧_アベンジ_ひび割れ");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw義清_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210300b21">
「怎么了，剑胄？
　你华丽的装甲上出现裂痕了哦……？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210310b21">
「好像随时都会碎掉一样呢。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210320b40">
《啊——啊，噶啊啊啊！》


{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210330b21">
「你在干什么？
　你为什么要感到愧疚呢？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210340b21">
「你仅仅是践行了正义而已吧？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210350b21">
「你的刀刃上不是没有一丝污秽吗？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210360b21">
「对，没错！
　你蓝色的装甲真的很美呢……」


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210370b21">
「上面点缀着你所杀死的胎儿之血，就像盛开
着五彩缤纷的牵牛花的花圃一般！
　真是美极了！」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210380b40">
《噢啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ばきばきばき。
//◆ホワイトアウト
//◆ぴきっ。最後の致命的な一割れっぽく。
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateSE("SE02","se特殊_鎧_アベンジ_ひび割れ");//ダミー注意
	MusicStart("SE02",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE02");
	Fade("絵色白", $残時間, 1000, Axl2, true);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210390a02">
「冷静下来，正宗!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がしっ。力強くつかむ音
	CreateSE("SE03","se人体_動作_掴む01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210400b40">
《……主……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210410b40">
《……主君……!?》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我伸出右手，抓住了正宗的头。
　同时，牙关闭合。

　狠狠地咬住其中的肉片。
　品尝着腐烂的味道。

　那是我自身，污秽的味道。
　是我自己那腐朽不堪的内脏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210420a02">
「必须明白这一点。
　要明白正义就是这样的东西。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210430a02">
「正义并不是什么令人心情舒畅的东西。
　它腐臭而污浊。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210440a02">
「这条路上不会有一丝光芒。
　只有不断蔓延的，阴暗淤塞的沼泽。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210450a02">
「……没错。
　必须要，明白这一点。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我坐起身。
　力量集中至膝盖，站起身来。

　身体异常地沉重。
　
　因为我所犯罪恶的重量压在了我的灵魂上。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆義清
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服b.png");
//	FadeStR(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw義清_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210460b21">
「哈哈。
　若不是这般，就太无趣了。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210470b21">
「你是个正派到极致的正义者。
　可不能在我这种与恶人为伴的人面前倒下。」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210480b21">
「那么，来吧。
　将我也一并斩杀。」


{	FwC("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210490b21">
「用你的剑胄！
　将我变为一具凄惨的尸骸吧！」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210500a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回れ右。
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", true);
	DeleteStA(0,true);
	DrawDelete("黒幕１", 500, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210510b21">
「……？」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210520b40">
《主君……》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210530a02">
「走吧，正宗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　眼前的这个城镇，正遭受着惨无人道的暴力。
　无数人的生命和财产正在被残暴地掠夺。

　<RUBY text="我">正宗</RUBY>拥有能够守护他们的力量。
　所以，走吧。

　必须要快——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。一歩歩いて。
//◆銃声ずがーん。
//◆衝撃。膝を突く
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1250,null,false);

	WaitKey(200);

	CreateSE("SE01b","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE01c","se人体_衝撃_転倒05");
	$残時間２=RemainTime("SE01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateEffect("絵演震", 3000, 0, 0, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 300, 6, 0, 0, 0, 1000, Dxl2, true);
	Delete("絵演震");

	CreateTextureEX("絵演背景", 2000, -275, -516, "cg/bg/resize/bg003_荒れ野_02.jpg");//ダミー注意
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Move("絵演背景", $残時間２, @0, @-60, AxlDxl, false);
	Fade("絵演背景", $残時間２, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210540a02">
「呜……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210550b40">
《主君！》


{	FwC("cg/fw/fw義清_怒り.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210560b21">
「好过分啊。
　难得我专门来见你，你却不打算理会我吗？」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210570a02">
「……抱歉。
　我有急事。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立って
//◆歩いて
//◆また発砲。
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,750,null,false);
	Move("絵演背景", 300, @0, @60, null, false);
	FadeDelete("絵演背景", 300, true);

	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	WaitPlay("SE*", null);

	CreateSE("SE01c","se戦闘_銃器_拳銃発砲01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210580a02">
「唔……」


{	FwC("cg/fw/fw義清_狂怒.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210590b21">
「……开什么玩笑。
　事到如今……你打算只放过我一人吗？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210600b21">
「那么！
　为什么！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210610b21">
「你为什么杀了高僧!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆発砲
	CreateSE("SE02","se戦闘_銃器_拳銃発砲01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw義清_狂怒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210620b21">
「还有姐姐！
　以及高僧与姐姐的孩子！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210630b21">
「为什么杀了他们啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ずがーんずがーん
//◆弾切れ。かちかち。空打ち音。
	CreateSE("SE03","se戦闘_銃器_拳銃撃鉄01");
	CreateSE("SE06","se戦闘_銃器_拳銃撃鉄01");
	CreateSE("SE04","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE05","se戦闘_銃器_拳銃発砲01");

	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	SetAlias("絵演震","絵演震");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Wait(400);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Shake("絵演震", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Wait(600);

	MusicStart("SE03",0,1000,0,1000,null,false);

	Wait(400);

	MusicStart("SE06",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE06");
	WaitKey($残時間);
	SetVolume("SE*", 100, 0, null);

	Wait(300);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210640a02">
「呜……」


{	FwC("cg/fw/fw義清_狂怒.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210650b21">
「混……混蛋……」

{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210660b21">
「混蛋……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210670a02">
「……」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210680a02">
「抱歉……」


{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0210690b21">
「……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210700a02">
「你会憎恨我也是理所当然的。
　因为我……做了不可原谅的事。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210710a02">
「但是。
　即便如此，我也……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　即便如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210720a02">
「即便我自己都无法原谅自己。
　我已经决定了要继续战斗下去……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆一歩二歩と歩く
	CreateSE("SEL01","se人体_足音_歩く01_L");
	MusicStart("SEL01",0,1000,0,750,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　呜咽声仿佛在敲击我的后背。
　最终那声音化为了恸哭。

　一滴一滴的眼泪指责着我的罪名。
　宛若扎入皮肤的惩罚之针。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210730a02">
「正宗。
　正义最终的结局，便是如此。」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210740b40">
《…………》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210750a02">
「不为任何人所承认。
　不受任何人的欢迎。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210760a02">
「给人带来悲伤。
　为人所憎恨。」


//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210770a02">
「……这都是理所当然的。
　因为，我所做的事情并不是正确的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　因为我——
　也只不过是在追寻我一个人的理想而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210780b40">
《……那么……主君……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210790b40">
《吾之主君！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210800b40">
《请告诉吾。
　正宗的信念都是虚妄的吗……？》


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210810a02">
「……」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210820b40">
《……正义……》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0210830b40">
《<RUBY text="··········">难道正义是不存在的吗</RUBY>？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざっ。
//◆ＥＶＣＧ？　一条
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//あきゅん「演出：ここで絵出していいか整合性は要確認」
	CreateTextureEX("絵演", 4000, -542, -530, "cg/ev/resize/ev268_ヤクザと対峙する一条.jpg");
	Move("絵演", 2000, @0, -275, AxlDxl, false);
	Fade("絵演", 2000, 1000, null, true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210840a02">
「不。」


{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0210850a02">
「<RUBY text="············">即便如此，正义也仍然存在</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_022.nss"