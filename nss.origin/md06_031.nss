//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_031.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg113_駅のホームa_01=true;
	#bg037_競技場ガレージa_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_032.nss";

}

scene md06_031.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_030.nss"

//◆隣駅前。bg009
	SoundPlay("@msong05_short", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　徒劳地浪费了很长时间，总算到达附近的车站。
　
　……自村正被夺走后，过了多久呢？

　没空去思考，也不想去思考。
　屏息凝神，闯入车站中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg113
	CreateColorSP("黒幕", 25000, "#000000");
	DrawTransition("黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(100, "bg113_駅のホームa_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕", 150, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("黒幕");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　可想而知，列车早已不在。
　人倒是有几个——但没见雪车町的身影。村正也是。

　在哪里。
　到底去了哪里!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310010a00">
「请问有没有人——！」

{	NwC("cg/fw/nw通行人Ａ.png");}
//【ｅｔｃ／通行人Ａ】
<voice name="ｅｔｃ／通行人Ａ" class="その他男声" src="voice/md06/0310020e213">
「……？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310030a00">
「在这里看到过一个虾夷的女性!?」

{	NwC("cg/fw/nw通行人Ｂ.png");}
//【ｅｔｃ／通行人Ｂ】
<voice name="ｅｔｃ／通行人Ｂ" class="その他男声" src="voice/md06/0310040e214">
「…………」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310050a00">
「还有一个握着手杖的无赖……？」

{	NwC("cg/fw/nw通行人Ｃ.png");}
//【ｅｔｃ／通行人Ｃ】
<voice name="ｅｔｃ／通行人Ｃ" class="その他男声" src="voice/md06/0310060e215">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　众人从我身边走过。
　除了抱怨地嘟哝着我的吵闹之外，
只是瞥了我一眼。

　没人看到吗!?
　不，一定有人……至少会有一个人！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310070a00">
「长发的虾夷女性和……脸色病怏怏的
无赖！
　有人看到了吗!?」

{	NwC("cg/fw/nw通行人Ｄ.png");}
//【ｅｔｃ／通行人Ｄ】
<voice name="ｅｔｃ／通行人Ｄ" class="その他男声" src="voice/md06/0310080e216">
「…………」

{	NwC("cg/fw/nw通行人Ｅ.png");}
//【ｅｔｃ／通行人Ｅ】
<voice name="ｅｔｃ／通行人Ｅ" class="その他男声" src="voice/md06/0310090e217">
「…………」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310100e218">
「……啊……
　刚才我见过一个无精打采，
像个流氓一样的家伙。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　沉默的人群中，只有一人传来低语。

　找到了……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw通行人Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310110e218">
「好像扛着个大箱子呢。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310120a00">
「在哪!?
　去哪了!?」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310130e218">
「唔……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310140a00">
「……」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310150e218">
「出了车站……
　接着去哪儿了呢？」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310160a00">
「请好好想想！
　……快想起来！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310170a00">
「快一点!!」

{	NwC("cg/fw/nw通行人Ｆ.png");}
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310180e218">
「……喂喂，什么意思。
　你这是问别人事情的态度吗？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310190a00">
「别管这些了！
　在哪里！　那两人……村正在哪里！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村正。
　说出这个名字，才刻骨铭心意识到失去。

　她不在我的身边。
　本是片刻不离身的存在，现在却不见了。

　想要她守在身边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310200a00">
（村正）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　巨大的缺失。
　失去后，才深有感悟。

　真挚的爱情。

　热爱着。
　渴求着。

　我需要她——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw通行人Ｆ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310210e218">
「切。
　你这家伙怎么回事……」

//【ｅｔｃ／通行人Ｆ】
<voice name="ｅｔｃ／通行人Ｆ" class="その他男声" src="voice/md06/0310220e218">
「注意下你说话的语气，好好改改吧！
　再见！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310230a00">
「等……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　那人毫不买账地咂了下嘴，转过身去。
　大摇大摆地走开了。　

　为什么？
　为什么不能明白。

　明明是这么重要的时刻！
　是救出心爱之人的紧要关头！

　为什么不能理解!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵背景400", 400, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw皇路_困惑.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310240b24">
「为什么……
　为什么会变成这样……」

{	FwC("cg/fw/fw皇路_崩壊.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310250b24">
「好不容易……才取得了胜利。
　好不容易，才可以向世界挑战的。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310260b24">
「凑、凑斗先生……你明明帮过我的啊！
　你知道我的遗憾吧！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310270b24">
「我……我，好不容易才从那次挫折中走到这
一步啊！
　我受了多少的苦啊！　是你的话，应该会理
解我的啊！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/md06/0310280b24">
「请放过我吧……！
　求你了……求你……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。斬殺
//◆ずばしゅ。
	EfRecoOut1(100);
	CreateColorEX("黒", 3000, "BLACK");
	Fade("黒", 500, 1000, null, true);
	EfRecoOut2(600,true);

	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);

	SL_leftdownfade2(15);

	WaitKey(500);

	SL_centerdam(@0,@0,1600);
	OnSE("se人体_血_血しぶき01",1000);
	CreateColorEX("赤幕１", 15000, "#990000");
	Fade("赤幕１", 1500, 1000, null, false);
	SL_centerdamfade2(100);

//◆戻り
	PrintGO("上背景", 25000);
	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100,"bg113_駅のホームa_01.jpg");
	FadeBG(0,true);

	Delete("黒*");
	Delete("赤*");
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310290a00">
「等等！
　求你……求你了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　为了阻止那个男人，我伸出手去。
　够不到，于是挤过人群。

　男子越走越远。　

　等等。
　等等，等一下……！

　那两人去哪了，给我线索！
　否则——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0310300a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　刚想冲出去。
　偶然间，看到了那里……

　站内留言版。
　
　在那个角落。

{	SetVolume("@m*", 5000, 0, null);}
　雪车町的署名，还有——
　短短的文字。

　……是给我的，信息。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_032.nss"