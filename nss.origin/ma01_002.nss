//<continuation number="630">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_002.nss_MAIN
{

	$TITLE_NOW=" ————　第一篇 鲜红骑　———— ";

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
	#bg006_雄飛の部屋_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_新田雄飛=true;
	#voice_on_来栖野小夏=true;

	$PreGameName = $GameName;

	$GameName = "ma01_003.nss";

}

scene ma01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_001.nss"

//◆タイトル「第一編　鮮紅騎」
//◆テロップ：これは英雄の物語ではない。

//◆雄飛の部屋



/*
//嶋流作成αスクリプト
	CreateTexture("タイトル", 500, Center, 50, "cg/bg/第一章Taitle.jpg");
	Move("タイトル", 0, @0, @+10, null, true);
	Fade("タイトル", 0, 0, null, false);

	CreateTexture("テロップ", 500, Center, Middle, "cg/bg/テロップ.png");
	Move("テロップ", 0, @0, @+10, null, true);
	Fade("テロップ", 0, 0, null, false);

	Wait(300);
	Move("タイトル", 700, @0, @-10, Dxl1, false);
	Fade("タイトル", 1000, 1000, null, true);

	WaitKey(2000);

	Move("タイトル", 700, @0, @+10, Dxl1, false);
	Fade("タイトル", 1000, 0, null, false);
	Request("タイトル", Disused);

	WaitKey(2000);
	WaitAction("タイトル", null);

	Move("テロップ", 500, @0, @-10, null, false);
	Fade("テロップ", 500, 1000, null, false);

	WaitKey(3000);

	CreateColor("白幕１", 19000, 0, 0, 1024, 576, "White");
	Fade("白幕１", 0, 0, null, false);

	Wait(200);

	Fade("白幕１", 1000, 1000, null, true);
	Delete("テロップ");
	CreateColor("黒幕１", 1000, 0, 0, 1024, 576, "Black");
	Fade("白幕１", 500, 0, null, true);
	Delete("白幕１");
*/

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 1500, "Black");
	Delete("上背景");


	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第一編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/tp_第一編序文.png");
	Zoom("絵テロ100", 0, 700, 700, null, true);
	Request("絵テロ100", Smoothing);
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 3000, true);

	WaitKey(2000);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……虽然有点唐突。
　想谈一谈最恶劣的醒来方式。

　不，还是先问问看。
　什么才会带来最恶劣的醒来方式呢？

「噩梦。」

　果真如此？
　不如说从噩梦中惊醒，不是更让人充满安全感吗？


「噪音。」

　原来如此，的确困扰。
不过这种小事，只要使用一下名为忍耐的武器
就能抵挡了。还是受不了的话，用名为厚刃菜刀
的武器也能搞定。不管怎样都没什么大不了。

　其他呢？

「从小玩到大的女孩早早起床一边用甜得发嗲的
清脆声音说着要迟到了哦，一边强行把被子拽走。」

　真可笑。

「——还有得到父母认可的未婚妻和邻家很会照顾人的
姐姐和亲戚家的妹妹和那过分年轻的妈妈和住在家里的
女佣和里山神社的巫女和从某国来留学的公主殿下
每天早晨也会来叫你起床。」

「用植物来打比方的话，所有人就像猪笼草一样。」

　……嗯。确实有点耸人听闻。不过如果你抛开优柔寡断，
拿出勇气和决断力来对付她们，问题肯定能解决。
这还不是最坏的状态。绝对不能放弃——要战斗。

　关键是，不能留下尸体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——那么。
　最恶劣的醒来方式是？

　只有一个答案。<k>
　就是睡得正香的时候腿突然抽筋，
于是被那份痛感疼醒。没错。

　别说这算什么答案啊。
　特别是没有经验的人。

　请试着想像一下。
　你正做着在公园散步的梦。在梦里突然受伤了。<k>好痛。<k>
不知道到底发生了什么事。<k>痛苦挣扎，好不容易醒来——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　发现自己腿抽筋了。

　这么一说就明白了吧？
　一大早，起床的瞬间，发现自己因为腿在抽筋而
痛苦不堪，是什么感觉。

　……无法忍受，难过万分，我觉得会这样想的人
才拥有正常的感觉。实际上，确实无法忍受。
好想哭。可是哭也解决不了问题，更加残酷。

　品尝那份悲伤的时间似乎来了。
　我即将从睡眠里醒来。从腿部传来的痛楚
已如此清晰，大概连十秒都不用就醒了吧。

　啊——自己的身体浮起来了。
　我是——对了，我叫新田雄飞。

　和我说话的无名君，再会了。还有谢谢。
　多亏有你这用来逃避现实对话的假想人格，
我的苦闷稍稍缓和了一点。

　虽然或许没机会再见面了，请保重。
　我要迈入现实了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColor("白幕", 150, 0, 0, 1024, 576, "White");
	Request("白幕", AddRender);
	Fade("黒幕１", 5000, 0, null, false);

	SetVolume("@mbgm35", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　虽然那里等着我的只有无尽痛苦。
　没关系。总能想想办法————

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

//◆雄飛の部屋
	CreateTextureSP("絵背景100", 50, Center, Middle, "cg/bg/bg006_雄飛の部屋_01.jpg");
	CreateTextureSP("絵背景１", 100, Center, Middle, "cg/bg/bg006_雄飛の部屋_01.jpg");


//◆顔ウィンドウ定義
	SetFwC("cg/fw/fw雄飛_通常b.png");

	Fade("黒幕１", 1000, 0, Dxl1, true);
	Delete("黒幕１");
	Fade("白幕", 1000, 0, null, true);
	Delete("白幕");

	#voice_on_新田雄飛=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020010b56">
「…………」

{	#voice_on_来栖野小夏=true;
	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020020b33">
「…………」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020030b56">
「……做。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020040b33">
「做？」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020050b56">
「做不了啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
（图解）

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆文字表示速度操作でノーウェイト表示にしたいんだ
//◆けどできたっけか？

//◆　　　　　／　　／
//◆おれ→　○□卍□○　←？
//◆　　　　　＼　　＼


SetBacklog("　　　　　／　　／", null, null);
SetBacklog("我→　○□卍□○　←？", null, null);
SetBacklog("　　　　　＼　　＼", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　　　　　＼　　＼
我→　○□卍□○　←？
　　　　　／　　／

</PRE>
	SetTextEXC();
	Request("@text0090", NoLog);
	Request("@text0090", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆　　　　　／　＼
//◆　　　　○□卍□○
//◆　　　　　＼　　＼
//◆　　　　　　↑裏四の字

SetBacklog("　　　　　／　＼", null, null);
SetBacklog("　　　　○□卍□○", null, null);
SetBacklog("　　　　　＼　　＼", null, null);
SetBacklog("　　　　　　↑四字腿部固定", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　　　　　＼　　＼
　　　　○□卍□○
　　　　　／　＼
　　　　　　↑四字腿部固定（一种姿势）

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	Request("@text0100", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆　　　　　／　＜　←ガッツポーズ
//◆　　　　○□卍□○
//◆　　　　　＼　　＼

SetBacklog("　　　　　／　＜　←振臂加油姿势", null, null);
SetBacklog("　　　　○□卍□○", null, null);
SetBacklog("　　　　　＼　　＼", null, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　　　　　＼　∧　←振臂加油姿势
　　　　○□卍□○
　　　　　／　　／

</PRE>
	SetTextEXC();
	Request("@text0110", NoLog);
	Request("@text0110", PushText);
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　——呐，无名君。
　看来我，搞错了什么。

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

//◆ズバッとワイプして空へ

	SoundPlay("@mbgm25",0,1000,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 250, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	CreateTexture("絵背景50", 500, 0, 0, "cg/bg/bg001_空a_01.jpg");
	Fade("絵背景50",0,1000,null,true);
	Zoom("絵背景50", 0, 1500, 1500, null, true);

	Zoom("絵背景50", 400, 1000, 1000, Axl1, false);
	DrawTransition("黒幕１", 250, 1000, 0, 100, Dxl1, "cg/data/slide_02_01_1.png", false);
	Request("黒幕１", Disused);

	Wait(100);

	SetFwC("cg/fw/fw雄飛_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020060b56">
「为啥啊！来栖野小夏————嘶嘶!!」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020070b33">
「雄飞，再不起床就要迟到了哦。」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020080b56">
「别用这种甜得发嗲的清脆声音说这种话！　
在这种情况下！　那不是人能办到的！
绝对不可能！　我坚信那种生物决不会是人类！」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020090b33">
「不起床的话……亲·你了哦～」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020100b56">
「可恶！　你这明明傲慢却伪装成温柔的
残忍本性！这是憎恨吗！是面对邪恶天性时
人类精神根源的憎恨吗!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	Shake("絵背景１", 500, 0, 3, 0, 0, 500, null, false);

//◆ＳＥ：床ばんばんばん
	CreateSE("SE01","se人体_動作_叩く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(200);
	CreateSE("SE02","se人体_動作_叩く01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Wait(200);
	CreateSE("SE03","se人体_動作_叩く01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(200);

	SetFwC("cg/fw/fw雄飛_驚くb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020110b56">
「那些暂且不说真的已经是极限了
啊啊啊啊啊啊啊给我下来
下来下来————————！」

{	FwC("cg/fw/fw小夏_照れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020120b33">
「你这个死赖床鬼。啾～☆」

{	FwC("cg/fw/fw雄飛_怒りb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020130b56">
「甜美声音描绘出的幸福泡影折磨着我！
不要给人看无法实现的希望！
至少让我绝望吧！　我明白了够了杀了我吧，
用你最后的慈悲杀了我吧——————!!」

{	NwC("cg/fw/nw小夏の父.png");}
//【ｅｔｃ／小夏父】
<voice name="ｅｔｃ／小夏父" class="その他男声" src="voice/ma01/0020140e125">
「哈，哈，哈，小夏果然喜欢
雄飞君呀……」

{	NwC("cg/fw/nw小夏の母.png");}
//【ｅｔｃ／小夏母】
<voice name="ｅｔｃ／小夏母" class="その他女声" src="voice/ma01/0020150e126">
「没错，连听的人都脸红了。
　真是的。」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020160b56">
「伯父！　伯母！　求你们了。稍微走到
你们女儿身边来看看这个变异生物的实态！
话说你们在听我说话吗!?　喂!?」

{	FwC("cg/fw/fw小夏_通常a.png");
	FadeFwC(0,true);}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020170b33">
「雄飞真是的。果然没有人家在身边就不行呀。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆ＳＥ：ぎり。
	CreateSE("SE01","se人体_動作_締める01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵背景１", 500, 5, 3, 0, 0, 500, null, false);

	FwC("cg/fw/fw雄飛_驚くb.png");
	FadeFwC(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020180b56">
「呀啊啊啊啊啊啊啊啊啊啊啊啊!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　这才是，最糟糕的醒来方式。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteFw(300,false);

	SetVolume("@mbgm25", 1000, 0, null);

//◆町並み
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 5000, "#000000");
	CreateTextureSP("絵背景50", 50, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	CreateSE("SE01","se人体_足音_歩く02_L");
	MusicStart("SE01",0,1000,0,750,null,true);

	SoundPlay("@mbgm22",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　镰仓是一座平和的城市。

  也许是历史悠久的缘故，即使是在充满活力的早晨，
这里也有一种深深的，能让素来神经紧绷忙忙碌碌的
人们悠然放松下来的气氛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　自源赖朝开府以来历经千年——虽准确说来
并不到八百年——如此长时间的累积，
即便有难以言表的力量寄宿其中，也并非不可思议。

　最多是不过几十年寿命的人类，无法抗衡的存在吧。

　或许也可换言之，正因如此。
　只区区一介人类，无法反抗历史的沉重
——不，此等傲慢之事，连想都不曾想过。

　即使如此宣告，又有何人能加以责备呢。
　理应没有……试图对抗历史，
错以为能够反抗的愚蠢之徒。

　无人责备。
　是这座名为镰仓的城市导致我迟到的，
学校的老师们肯定不会责备。不该责备的。

{	SetVolume("SE01", 3000, 0, null);}
　但事实是，肯定会被责备的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(500, @0,@0,"cg/st/st雄飛_通常_制服.png");

	FadeStL(300,true);

	SetFwC("cg/fw/fw雄飛_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020190b56">
「哈啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　叹了口气，不紧不慢地走着。
　虽然让自己迟到理由正当化的尝试失败了，
却完全没有让还疼着的双脚走快起来的心情。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StR(500, @0,@0,"cg/st/st小夏_通常_制服.png");

	FadeStR(300,true);
	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020200b33">
「雄飞，要迟到了哦——」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020210b56">
「……难道你想说你不知道迟到理由吗？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020220b33">
「知道倒是知道。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020230b56">
「废话。之前我就想问，为什么你这家伙
不管发生什么碰到什么
都会往那种破坏性的方向——」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020240b33">
「原本个子就矮，再一缩腿也更短了，
所以才会迟到呀。真可怜。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆攻撃軌道
//◆ＳＥ：ヒュン

	SetVolume("@mbgm22", 300, 200, null);
	CreateSE("SE01","se戦闘_攻撃_振る02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColor("フラッシュ白", 15000, 0, 0, 1024, 576, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("@fw*");
	DeleteStR(0,true);
	DeleteStL(0,true);

	CreateTexture("絵背景１", 1000, 0, 0, "cg/ef/ef015_汎用横軌道.jpg");

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　————咻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　我把肩膀从背包带中解放出来，并把包横甩了出去。
　大幅度的一击。如此便好。

　目的有三。
　其一先发制人，其二抛出重物，其三转移敌方注意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SL_centerout(@0,@0,3000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　把包扔向小夏的方向的同时，身体下沉。
　没有喘息换气的时间。用尽当前仅存的气力。

　——哈。

　吐出气团。

　三击。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	SL_rightdown(@0,@0,2000);
	SL_right(@-100,@100,2500);
	Delete("絵背景１");

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	CreateSE("SE03","se戦闘_攻撃_刀振る01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	SL_centeroutfade(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　手掌对准腹部。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_攻撃_振る02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SL_rightdownfade(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　反手手刀砍上脖颈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE02","se戦闘_攻撃_刀振る01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_rightfade(10);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　瞄准脚下的后跟出击。

　一连三手。

　出手这么多次的理由很简单。

　因为手掌也好手刀也好都没击中。

　没击中的原因也很简单。

　因为敌人已不在原地。

　徒见我的背包飞舞于空中。

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

	SL_Delete();
	CreateSE("SE02","se戦闘_攻撃_刀振る02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_down(@0,@0,3000);
	SL_downfade2(10);
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　最后一击，她的脚后跟划破空气踩向地面。

　与此同时。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SL_rightup(@0,@0,2500);

	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SL_rightupfade2(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0411]
　通过死角——恐怕是来自左肋下的攻击吧
——疾风般一闪，准确无误地击中了我的下巴。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆がす。
//◆ホワイトアウト

	CreateSE("SE02","se戦闘_攻撃_殴る02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 3000, "WHITE");

	CreatePlainSP("絵シェイク500", 500);
	Shake("絵シェイク500", 300, 5, 20, 0, 0, 500, Dxl1, false);

	Wait(100);

	Fade("フラッシュ白",500,1000,null,true);
	Wait(500);
	Delete("絵シェイク500");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　仰望天空。
　一片白色。格外明亮。

　天空，太过明亮了啊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆青空
	CreateTexture("絵背景１", 500, 0, 0, "cg/bg/bg001_空a_01.jpg");
	Fade("フラッシュ白", 1000, 0, null, true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　回过神来，我仰躺在地上。
　天空一如既往，单调地蔚蓝着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　然后，一头牛从我身上踏过。

</PRE>
	SetTextEXC();
	TypeBeginCO();//―――――――――――――――――――――――――――――

//◆町並み
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("絵背景１");


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　驮着菜，被半睡半醒的农夫大叔牵着向前的牛，
一脸无所谓的表情，俯视着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	CreateSE("SE01","se人体_動作_起きる02");
	MusicStart("SE01",0,500,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　爬起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	CreateSE("SE02","se人体_動作_拾う01");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　拾起包。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(500, @0,@0,"cg/st/st雄飛_通常_制服.png");
	StR(500, @0,@0,"cg/st/st小夏_通常_制服.png");

	FadeStL(300,false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　小跑追上在我前面十步左右走着的小夏，
与她并肩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm22", 1000, 1000, null);

	SetFwC("cg/fw/fw小夏_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020250b33">
「我说。 」

{	FwC("cg/fw/fw雄飛_笑顔a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020260b56">
「噢。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020270b33">
「从律那里听说，衣服啦、首饰啦
还是应该趁现在提前买好。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020280b56">
「很贵吧？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020290b33">
「嗯。普普通通的一件衬衫，
就要上千块了。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020300b56">
「这钱数够玩一辈子了。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020310b33">
「你的一辈子离结束只剩一周了吗？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020320b56">
「开玩笑啦。不过感觉上的确贵得离谱。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020330b33">
「是—啊。明明不久前只要十分之一的价格
就能买下的。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020340b56">
「不……
　怎么说也不是不久前。那是战前的事了吧。」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020350b33">
「是吗。
　感觉这几年价格像疯了一样往上涨。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020360b56">
「那，你要买那些东西吗？」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020370b33">
「肯定买不起啦。
　我和你一样，除了零花钱什么也没有啊。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020380b56">
「也是。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020390b33">
「不过，听说想要的话就只能现在买。
再过不久，即使有钱也
买不到了。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020400b56">
「为什么？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020410b33">
「好像是说……我也不是很清楚。制作
女人的衣服啦、饰品之类用的材料资源，
会被收回作军需产业的样子。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020420b56">
「啊……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　并非现在才开始。
　战前、战中起，这样的传言就一直不断。

　让我困惑不解的是，战争已经结束数年，
至今传言仍持续着。
　还是不要认为六波罗那些家伙的
所作所为会有什么正当理由比较好吧。


　反正都是些跟权利有关的乱七八糟的事。
　幕府万岁。越来越膘肥体壮的元帅大人。直到变得
腰腿都直不起来呢！　接下来就能烤烤吃了。

　总之就是，把受欢迎的商品从平民手里夺离，
取而代之促进军需用品、生活必需品的增产。
　古语云，骄奢为敌。到底是谁的敌人呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_呆れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020430b33">
「进口商品倒是没关系，而且那才更买不起……」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020440b56">
「好了，没什么啦。不过是衣服而已。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020450b33">
「你啊，就算我穿件带补丁的衣服
也没关系吗!?」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020460b56">
「有关系的理由到相模湾海底去找
也找不到啊……」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020470b33">
「这样啊。看来你已经抱好觉悟了呢。
　每当我因为难看的打扮被人嘲笑的时候，
你的肋骨就会无缘无故地断掉一根。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020480b56">
「这是什么暴力体系……」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020490b33">
「肋骨只有二十四根呢。
　连一个月都撑不了哦。真可怜。」

{	FwC("cg/fw/fw雄飛_怯えb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020500b56">
「一天一根吗！　不要啊！
　不想被嘲笑的话就别出门永远呆在
家里吧！」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020510b33">
「不过，真不可思议呀。虽然只是一种假设，
如果你和我共同出钱买一件衣服的话，
一个月的寿命就能变成一年了。生命真神秘呢。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020520b56">
「……啊啊。
你是为了把话题引到这上面来的吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　真拐弯抹角。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020530b56">
「行啊，也没什么不好。」

{	FwC("cg/fw/fw小夏_驚くa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020540b33">
「……诶!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
　看着这么干脆回答的我，小夏愣住了。
　之前的话多少有些半开玩笑，不过一般来说也是吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0602]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020550b33">
「为什么？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020560b56">
「也没什么为什么。
　反正我也没什么要用钱的地方。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0603]
　又不喜欢体育运动，
　也没什么爱好。

　说到用零花钱的机会……
　从学校回家路上肚子饿的时候，无聊到
想看杂志的时候。也就这点程度而已。

　跟运动全能、爱好广泛的忠保他们不同，
没有太多必要花费。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_笑顔b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020570b56">
「所以没关系。需要多少？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020580b33">
「…………」

{	FwC("cg/fw/fw雄飛_通常a.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020590b56">
「喂——？」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020600b33">
「不要了。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020610b56">
「啊？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0020620b33">
「快走吧。真的要迟到了。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0020630b56">
「……哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DeleteStR(300,false);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　我慌忙追向先行迈步匆匆向前走开的小夏。


　女人心，如秋空。
（日本谚语。形容女人心像秋空一样多变）
　完全搞不懂啊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);




..//ジャンプ指定
//次ファイル　"ma01_003.nss"

}
