//<continuation number="880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_003.nss_MAIN
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
	#bg051_湊斗家居間_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_004.nss";

}

scene ma05_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_002.nss"

//◆食卓風景·回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");

	FadeDelete("絵暗転", 2000, true);

	FadeDelete("エフェクト１", 500, true);

	SetFwC("cg/fw/fw光三年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/ma05/0030010a14">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030020a00">
「…………」

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030030b46">
「……啊～我的孩子们啊。
　你们为何拿着筷子纹丝不动地
盯着对方呢？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030040a00">
「没……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030050a14">
「没什么事。母亲大人。
　请不用在意。」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030060b46">
「抱歉。我非常在意。
　在意得连我都吃不下饭了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030070a00">
「给您添麻烦了。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030080b46">
「你是怎么了，景明。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030090a00">
「是……
　那个，光的视线……从刚才……」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030100a14">
「…………」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030110b46">
「……真是不放过一举手一投足的眼神呢。
　我的亲生女儿居然看上去和野兽没有区别。」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030120b46">
「喂～那边正当花季的少女～
　这阴沉的斗气到底是为什么？」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030130a14">
「我都说什么都没有了。
　别管我了，快点像猪一样大口吃完了
就去像牛一样酣睡吧！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030140b46">
「……越来越让人吃不下去了。
{	FwC("cg/fw/fw統_通常a.png");}
　嗯？　啊……难道说，是这样的吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030150a00">
「统大人？」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030160b46">
「跟你说哦。
　今天，这孩子久违地帮忙做饭了，
这个——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("絵白", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("絵白", 100, false);

	SetFwC("cg/fw/fw光三年前_冷たい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/ma05/0030170a14">
「……母亲大人。
　用餐时间的嘴不是用来闲聊的，是为了
进食。」

//【光】
<voice name="光" class="光" src="voice/ma05/0030180a14">
「废话还是少说比较好。」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030190b46">
「噫、噫……！
　景、景、景明，我、我的脑袋，
还、还在……脖……脖子上吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030200a00">
「是的。没事的。
　不愧是统大人……竟能躲开方才的
一击。昔日的钢铁巫女好像威风依旧呢。」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030210b46">
「不用这么佩服吧，儿子！
　再靠过来一点。这样一来那像割草机一样的
手刀再飞过来的话就可以保护妈妈啦。那样的
进攻不是每次都能避开的！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030220a00">
「……非常抱歉。我做不到。
　刚才一击，我就连指尖都没看清。」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030230b46">
「噫……
　这孩子究竟为何会变成这么恐怖的
生物啊……」

//【統】
<voice name="統" class="統" src="voice/ma05/0030240b46">
「妈妈就要对家庭暴力屈服了。
　这种就是所谓的ＤＶ吧？」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030250a14">
「景明。
　虽说是只有两个人的饭桌，但也
不用过分拘束。快点吃吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030260a00">
「两个人？」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030270b46">
「咦……我被当作空气了吗……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030280a14">
「就是两个人。
　如果你无论如何都很在意那个<RUBY text="·····">根本不存在</RUBY>的
第三者的话就告诉我。就算无视物质守恒定律，
我也会将她从这个宇宙完全抹消的。」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030290b46">
「对不起。我会静下来吃饭的。
　我是不存在的……妈妈并不在
这里……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030300a00">
「……」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030310a14">
「吃吧，景明。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030320a00">
「唔……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030330a14">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030340a00">
「…………」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030350a14">
「景明。下筷犹豫不决是很不礼貌的。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030360a00">
「我也不是故意的。」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030370b46">
「还不是每次景明要夹什么东西你都用
十字枪一样的视线扎在人家身上……」

{	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030380a14">
「有什么烦人的苍蝇在吗？ 灭了它吧。」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030390b46">
「这哪是对母亲说的话……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030400a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030410b46">
「啊～景明。
　再这样下去只会让饭菜冷掉。
总之，先吃这煮鱼吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030420a00">
「煮鱼？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030430b46">
「那个。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030440a00">
「……啊。这是煮鱼吗。
　这奇形怪状，不复原貌的东西完全
看不出是什么啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("絵白", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("絵白", 100, false);

	SetFwC("cg/fw/fw統_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/ma05/0030450b46">
「呜哇！
　刚才矛头是不是指错人了啊女儿！」

{	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030460a14">
「闭嘴，母亲大人。」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030470b46">
「呜哇～！ 我不要这种杀气腾腾的母女
关系呀～！ 我要回老家～！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030480a00">
「就在这里。」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030490b46">
「无路可逃了！」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030500a14">
「景明。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030510a00">
「唔、嗯。
　那我开动了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「SE：要望：食器カチカチとか、食事用の音」
	CreateSE("SE01","se日常_食器_お茶準備_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);
	SetVolume("SE01", 200, 0, null);
	OnSE("se日常_食器_カップ置く",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　咀嚼咀嚼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030520a00">
「……嗯？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030530a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030540a00">
「哎呀……唔。
　虽然卖相不怎么样……这道煮鱼……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030550a14">
「……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030560a00">
「很好吃。
　虽然和以往的调味不同……哎呀，
但真是不错。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030570a14">
「是吗！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030580b46">
「哎？ 真的吗景明？
　别勉强自己哦。觉得不对劲的话可以吐出
来哦。我就想着也可能会发生这种事情的，
所以你看，妈妈细心地准备了木桶。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵震",110);

//◆閃光
//◆ずがーん。ヒット。
//◆ＳＥ：ひゅー……。どっか飛んでく音。終了待ちしない
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("絵白", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("絵白", 100, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030590a00">
「……？
　统大人去哪里了？」

//◆ＳＥ：どぼーん。終了待ちしない
{	SetVolume("SE*", 100, 0, null);
	Shake("絵震", 600, 0, 6, 0, 0, 1000, Dxl2, false);
	CreateSE("SE01","se人体_動作_水中飛び込み02");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030600a14">
「去洗手间了吧。
　你不用在意。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030610a00">
「刚才，有咚砰一下的声音……
　简直就像是有人被风猛得卷起，
掉到里面的水洼里去了……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030620a14">
「是青蛙之类的吧。
　来吧，别在意那个，吃饭。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030630a00">
「唔……」

{//あきゅん「SE：要望：食器カチカチとか、食事用の音」
	CreateSE("SE01","se日常_食器_お茶準備_L");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030640a00">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030650a00">
「嗯。果然很好吃。
　虽然有点奇怪，但这正是它的独到之处。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030660a14">
「是吗是吗……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030670a00">
「谢谢你，光。」

{	FwC("cg/fw/fw光三年前_唖然.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030680a14">
「……」

//【光】
<voice name="光" class="光" src="voice/ma05/0030690a14">
「怎、怎么了？
　这么突然。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030700a00">
「是你做的吧？」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030710a14">
「……你知道？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030720a00">
「嗯。
　因为没有统大人的<RUBY text="··">气息</RUBY>。
只有这盘没有。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030730a14">
「…………」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030740a00">
「尝了下味道，就确信不是了。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030750a14">
「可是……没吃的时候就知道了吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030760a00">
「嗯。
　不知为何就是能辨别出统大人的气息。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030770a14">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030780a00">
「好了。快点把饭吃完。
　再这样下去真的要冷掉了。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030790a00">
「光，你也是。」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030800a14">
「哦……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030810a00">
「怎么了。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030820a14">
「不，什么事都没有！
　吃吧！」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030830a14">
「呣……啊呜。是这个味道吗。
　景明喜欢这种味道吗？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030840a00">
「是的……说得更具体点的话，我更喜欢
稍稍刺激的调味。」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030850a14">
「刺激的调味……你的话好费解。
　说得再详细点。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030860a00">
「唔。就是说——」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030870a14">
「嗯嗯——」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030880b46">
「……孩子们啊。
　不要忘了你们的和睦幸福团圆，
都是建立在母亲伟大的牺牲之上的
呀……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"ma05_004.nss"