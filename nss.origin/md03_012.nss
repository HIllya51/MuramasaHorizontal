//<continuation number="790">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_012.nss_MAIN
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
	#bg026_普陀楽山塞a_01=true;
	#bg045_普陀楽城公方の間_01=true;
	#bg065_普陀楽城内郭_01=true;
	#bg066_普陀楽城内のどか_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_013.nss";

}

scene md03_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_011.nss"


//◆普陀楽
//◆公方の間

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg026_普陀楽山塞a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

	WaitKey(1500);

	OnBG(101, "bg045_普陀楽城公方の間_01.jpg");
	FadeBG(1000, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　在普陀乐代堀越公方办公其实没什么困难之处。
　并没有自己觉悟到的那么困难。

　理由有几个。
　最大理由是因为有茶茶丸准备的辅佐集团在吧。

　对这位出身不明的空降中佐，他们很冷淡，
不过依然忠实地给予辅佐。
　……说奇妙也不奇妙。阳奉阴违乃理所当然。

　或许这就是堀越公方府的个性吧。
　在茶茶丸这样的人手下当幕僚或许就必须有这样的习
惯，即是就算上司偶尔发出异常的指示也要<RUBY text="····">不假思索</RUBY>地
服从。

　还是说这单纯是因为茶茶丸临行之前特地嘱咐过呢。
　不管怎样，他们对我的<RUBY text="··">忠勤</RUBY>都不会持续太久，
这点我也不甚在意。

　代堀越公方办公自不用说，副官中佐的地位都只是图
一时方便。
　以构筑军内的良好人际关系为目标而努力只会是白费
力气。

　只要在必要的时候和他们相处好就够了。

　对于每天都会送来的诸多文件，我向他们征求意见，
他们就会做出相应的回答。
　他们是经验老道的军官，其判断应该不会有错。

　我的工作有一半是和他们对话。
　剩下的是签名和盖章。

  虽然办公方式既单调又没半点创新性，不过我知道所
谓将帅就应该这样，什么工作都能胜任。
　想发挥个性的将帅，且不说遇上非常事态，平时肯
定很难相处。

　当年被征兵在军内的时候我在司令部付当执勤兵。当
时所侍奉的对象就是个没个性的将军。
　在近距离将他的一切行动事无巨细地收入眼底，感觉
比起靠自己想办法，他更多是听取别人的意见。

　但是他却被称为军政界的名人。再没有比他更优秀的
领地治理者了。
　他最终转任了。接任的将军是秀才型的，他的新体制
没多久就招致了本地人民的反抗。

　那是他仰仗自己是秀才，不听幕僚意见，一意孤行的
结果。
　作为将军谁才是对的，至少从结果来看是毫无疑问的。

　所以我才模仿那位名为樋口的将军。
　在某种程度上这既是讽刺又是复仇
——樋口将军在六年前由于抵抗了
六波罗的谋反而被处刑了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120010e247">
「这件事这样处理可以吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120020a00">
「交给你了。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120030e247">
「是。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120040a00">
「物资明细表在哪？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120050e247">
「在这里。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120060a00">
「…………
　木材没达到订购的数目啊。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120070e247">
「是的。
　一部分被用来修补城门了，那些就空缺了。」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120080e247">
「需要紧急配送吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120090a00">
「是应该先筹备好……但是不必强行。
　在我看来，这个订购的数量原本就估算得
相当多了。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120100e247">
「……确实。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120110a00">
「想到预定修建会场的规模，现今储备的
数量应该足够了。
　现在就算了。等到有其他问题时再一起追订
不足的部分吧。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120120e247">
「是。
　那就照您的意思办。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　城内现在正在准备宣旨典礼。
　或许是篠川公方的威压策略有效了，京都的形势有所
好转，足利邦氏继任大将领的宣旨已经进入了倒计时的
阶段。

　典礼会场由堀越公方府负责修建。
　这该说是小小的幸运吧。在还是公司职员的时候，这
种工作我都快做到腻了。

　储备的技术知识不缺少可活用的地方。
　我能这样正经地代公方办公，也是多亏了运气。

　今天与修建会场有关的文件尤其多。
　仔细斟酌每一个问题，接受他们的意见再处理。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120130e247">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120140a00">
「怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我察觉到投在身上的视线，抬起头。
　身边的将校——他在辅佐集团中担任我的秘书官——
似乎有些犹豫。

　但是停顿片刻后他还是开口了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120150e247">
「恕我无礼。
　我听说中佐大人前几天还是个普通百姓，
对军政却如此得心应手，很是出乎我的意料。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120160a00">
「我好像有模仿的才能。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120170e247">
「……模仿？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120180a00">
「虽然是第一次当职业军人，但是我曾经被征
兵，在军队里待过。
　那时做了将军的勤务兵，经常在他身边看他
办公。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　回想起刚才心中所想，就用声音重复了一遍。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120190e247">
「……原来如此。
　所谓的耳濡目染吗？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120200a00">
「就是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……说出的话意外地很不客气。
　我不在意地回答，一边窥探着他的表情。

　冷淡的话语中透着某种不分明的色彩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120210a00">
「你好像还有什么话要说啊。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120220e247">
「…………」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120230e247">
「我是不知道您是什么人。
　但是……」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120240e247">
「您在茶茶丸大人的身边。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120250a00">
「……？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120260e247">
「与我们不同。
　与不能理那位大人……只会觉得恐怖
……只会盲从的我们不同。」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120270e247">
「……茶茶丸大人希望您在她身边……」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120280e247">
「您……
　如果能做我们做不到的事的话。」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120290e247">
「无论以什么形式……
　只要能拯救茶茶丸大人……」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120300e247">
「那真是……喜事一桩。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120310a00">
「…………」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120320e247">
「……非常抱歉。
　说了这种无聊的话。」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120330e247">
「我继续工作了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120340a00">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　视线再次回到文件上。
　确认内容…………没问题。

　翻过一页，到下一个文件。
　我低头边看边说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120350a00">
「……你是个笨拙的男人吗？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120360e247">
「……不知为何，总觉得很不能容许
被您这样说。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　确认文件。
　签名盖章。

　确认文件，询问身边的将校。
　签名，下一个——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どたどたどた。
	SetVolume("@mbgm*", 2000, 0, null);

	OnSE("se人体_足音_走る02", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);


	SetNwC("cg/fw/nw伝令.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／伝令兵】
<voice name="ｅｔｃ／伝令兵" class="その他男声" src="voice/md03/0120370e224">
「副官大人！」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120380e247">
「蠢货，也不看看场合！」

{	NwC("cg/fw/nw伝令.png");}
//【ｅｔｃ／伝令兵】
<voice name="ｅｔｃ／伝令兵" class="その他男声" src="voice/md03/0120390e224">
「是，失礼——」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120400a00">
「没关系。
　怎么了，出问题了吗？」

{	NwC("cg/fw/nw伝令.png");}
//【ｅｔｃ／伝令兵】
<voice name="ｅｔｃ／伝令兵" class="その他男声" src="voice/md03/0120410e224">
「是的，稍微有点……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg065

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("bg65", 15000, @0, @0, "cg/bg/bg065_普陀楽城内郭_01.jpg");
	Fade("bg65", 0, 1000, null, true);
	Delete("@OnBG*");

	SoundPlay("@mbgm35", 0, 1000, true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);



	WaitKey(1000);
//◆bg066

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("bg66", 16000, @0, @0, "cg/bg/bg066_普陀楽城内のどか_01.jpg");
	Fade("bg66", 0, 1000, null, true);
	Delete("bg65");

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120420a00">
「……就是说材料失踪了吗？」

{	NwC("cg/fw/nw伝令.png");}
//【ｅｔｃ／伝令兵】
<voice name="ｅｔｃ／伝令兵" class="その他男声" src="voice/md03/0120430e224">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我被一群满脸困惑的工人和警备兵围着听取报告。
　只看表面的话，事态很简单明了。

　一部分材料自材料堆放地失踪了。
　当然不是被搬到该用的地方用掉了。

　已经确认过了。材料毫无使用的形迹便
失踪了。

　明显是没经过<RUBY text="····">正当手续</RUBY>拿走的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120440a00">
「不见的是金属部品……
　和机械部件吗？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120450e247">
「是的。
　木材和食品都没事。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120460a00">
「……只有好拿，并且好卖钱的东西
消失了？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120470e247">
「可以这么说。
　但是也并不怎么值钱。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　说是偷东西的话被盗物却很奇怪……吗？
　他说得对，失踪的物资卖不了多高的价钱。

　如果想卖钱的话应该偷别的更贵重的东西。
　但是也不能妄下定论……也有可能犯人衡量了偷去卖
的风险和实际收入，就选择了合适的东西下手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120480a00">
（还要查明事件……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　还得筹备物资填补空缺。
　这方面或许更麻烦。

　失踪的材料是建设典礼会场的必需物品。无法用别
的东西代替。
　而且，虽然钱不成问题，不过从订货到收货要花费
一定的时间。

　要是想避免延长工期的话会相当费工夫。

　事态稍微变得麻烦了——<k>——？

　…………

　延长工期？
　这才是……目的吗？

　这样一来——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120490e247">
「可有过可疑人物出入？」

{	NwC("cg/fw/nw伝令.png");}
//【ｅｔｃ／伝令兵】
<voice name="ｅｔｃ／伝令兵" class="その他男声" src="voice/md03/0120500e224">
「在这附近工作的人好像没发现什么异常。
　要喊仓库管理员过来吗？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120510e247">
「是啊。
　……中佐大人？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120520a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス一度消して小ウェイト
//◆ざわざわ。低い囁き合い

	CreateSE("ざわざわ", "se背景_ガヤ_ざわめく01_L");
	MusicStart("ざわざわ", 2000, 1000, 0, 1000, null,true);


	WaitKey(1000);

	SetNwC("cg/fw/nw工兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ｅｔｃ／作業兵Ａ】
<voice name="ｅｔｃ／作業兵Ａ" class="その他男声" src="voice/md03/0120530e077">
「小偷竟然偷到这里来？」

{	NwC("cg/fw/nw工兵Ｂ.png");}
//【ｅｔｃ／作業兵Ｂ】
<voice name="ｅｔｃ／作業兵Ｂ" class="その他男声" src="voice/md03/0120540e078">
「奇怪的东西被偷走了。
　我们很头疼啊……除了钱还有
别的目的吗？」

{	NwC("cg/fw/nw工兵Ｃ.png");}
//【ｅｔｃ／作業兵Ｃ】
<voice name="ｅｔｃ／作業兵Ｃ" class="その他男声" src="voice/md03/0120550e079">
「或许不是小偷呢。」

{	NwC("cg/fw/nw工兵Ｂ.png");}
//【ｅｔｃ／作業兵Ｂ】
<voice name="ｅｔｃ／作業兵Ｂ" class="その他男声" src="voice/md03/0120560e078">
「那是什么人？」

{	NwC("cg/fw/nw工兵Ｃ.png");}
//【ｅｔｃ／作業兵Ｃ】
<voice name="ｅｔｃ／作業兵Ｃ" class="その他男声" src="voice/md03/0120570e079">
「……或许是不想让邦氏大人继任
大将领的家伙想妨碍典礼……」

{	NwC("cg/fw/nw工兵Ａ.png");}
//【ｅｔｃ／作業兵Ａ】
<voice name="ｅｔｃ／作業兵Ａ" class="その他男声" src="voice/md03/0120580e077">
「……有可能啊。」

{	NwC("cg/fw/nw工兵Ｂ.png");}
//【ｅｔｃ／作業兵Ｂ】
<voice name="ｅｔｃ／作業兵Ｂ" class="その他男声" src="voice/md03/0120590e078">
「喂喂。
　难道倒幕派的家伙潜入到城里了——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス一度消して小ウェイト


	SetVolume("@mbgm*", 500, 0, null);
	SetVolume("ざわざわ", 1000, 0, null);
	WaitKey(800);


	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120600a00">
「逮捕仓库的管理员。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　我用周围的人都能听到的声音说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120610e247">
「……哈？
　中佐大人，您说什么？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120620a00">
「这是军队内部人员作案。
　失踪的物资正在黑市里流通着。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0120630a00">
「刚才收到了报告。
　别一脸呆样——<RUBY text="·······">贵官也听到了吧</RUBY>？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120640e247">
「————」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120650e247">
「是！
　正是如此。」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120660e247">
「本应交给普陀乐的材料在黑市里流通……
　确实，如果是管理员私吞的话一切都说得
通了。」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120670a00">
「倒幕派那些人没可能会潜入到这普陀乐城
中，带着赃物逃走更是白日做梦。
　那么答案只有一个。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120680e247">
「马上拘捕管理员。
　……势必要严惩啊，中佐大人。」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0120690a00">
「当然了。
　在此等重要时期扰乱军心的家伙
一定要让他受到相应的处罚。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120700e247">
「是。谨遵命令！」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120710e247">
「马上处置。
　……喂，听到了吧？」

{	NwC("cg/fw/nw伝令.png");}
//【ｅｔｃ／伝令兵】
<voice name="ｅｔｃ／伝令兵" class="その他男声" src="voice/md03/0120720e224">
「是……是？」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120730e247">
「逮捕私吞犯！
　逮捕这仓库的管理员！」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120740e247">
「听好了，没必要听他辩解。
　什么都不用说直接解除武装，关进牢里。」

//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120750e247">
「事后我们再审问。
　好了，去吧！」

{	NwC("cg/fw/nw伝令.png");}
//【ｅｔｃ／伝令兵】
<voice name="ｅｔｃ／伝令兵" class="その他男声" src="voice/md03/0120760e224">
「明——明白！」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md03/0120770e247">
「你们也是。
　回去干活！」

{	NwC("cg/fw/nw工兵Ａ.png");}
//【ｅｔｃ／作業兵Ａ】
<voice name="ｅｔｃ／作業兵Ａ" class="その他男声" src="voice/md03/0120780e077">
「……」

{	NwC("cg/fw/nw工兵Ｂ.png");}
//【ｅｔｃ／作業兵Ｂ】
<voice name="ｅｔｃ／作業兵Ｂ" class="その他男声" src="voice/md03/0120790e078">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_013.nss"