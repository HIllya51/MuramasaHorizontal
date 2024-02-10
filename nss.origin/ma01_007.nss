//<continuation number="950">




chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_007.nss_MAIN
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
	#bg013_鎌倉俯瞰a_02=true;
	#bg013_鎌倉俯瞰a_03=true;
	#bg006_雄飛の部屋_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_008.nss";

}

scene ma01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma01_006.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 1500, "#000000");

	Delete("上背景");

//◆夕暮れの鎌倉
//◆夜の鎌倉
//◆雄飛の部屋

	CreateTextureSP("絵背景30", 1030, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_02.jpg");
	CreateTextureSP("絵背景20", 1020, Center, Middle, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg006_雄飛の部屋_03a.jpg");

	StL(1000, @0, @0,"cg/st/st忠保_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st小夏_通常_制服.png");

	FadeStL(0,false);
	FadeStR(0,true);

	FadeDelete("暗転", 600, true);
	WaitKey(300);

	FadeDelete("絵背景30", 1000, true);
	WaitKey(400);

	SoundPlay("@mbgm27",1000,1000,true);
	FadeDelete("絵背景20", 1000, true);

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070010b56">
「……也就是说。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070020b43">
「律似乎至少回到了竹林附近。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070030b33">
「是弁天殿下附近的竹林吧？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070040b43">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　结束一天的调查，和小夏交换情报的报告会。
　场所是我的房间。

　小夏当然不会让男性进入自己的房间，忠保家稍微有点
门槛太高——跟他这么说他也只会侧头不解吧
——没办法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070050b43">
「雄飞，你的猥亵杂志都好好藏起来啊。
真丢人。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070060b56">
「藏起来了啊！　别乱说！」

{	FwC("cg/fw/fw小夏_怒りb.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070070b33">
「……藏过吗？」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070080b43">
「呜哇，自掘坟墓了雄飞。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　是你给我挖的吧混蛋！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070090b56">
「言归正传。
　……循着足迹只能追踪到竹林为止。之后
便不知所踪了。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070100b43">
「不过说之后，其实离律家也只有
眼睛到鼻子这么短的距离了。」

{	FwC("cg/fw/fw小夏_通常a.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070110b33">
「挺厉害的嘛。
　一天时间就得到这么多情报。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070120b56">
「自己都觉得吃惊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　与大提琴女子和老妇人的二人组合相遇之后的搜查，
顺利得简直可以用一帆风顺形容。
　日落前我们已经确认，律在车站前逛了几家店铺之后，
就踏上回家的路。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070130b43">
「但是不可思议呢。如果进了那片竹林，
接下来应该只能去往住宅区域才对。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070140b56">
「那边也没有目击者。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070150b33">
「确定她进竹林了吗？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070160b56">
「问了对面的小酒馆街。有好几个人前天夜里
看到她进去了。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070170b43">
「律一直经过那里回家，或许是他们
搞错了日期，也不是没有这种可能……吧。」


{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070180b56">
「明明每天都看见偏偏昨天没有出现，
还觉得不可思议……都这么说了，
应该是确定了吧？」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070190b43">
「嗯。」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070200b33">
「调查竹林里面了吗？」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070210b56">
「不，那个……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　当然，本来是准备去调查的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070220b56">
「那里，是田中爷爷的土地吧。」


{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070230b33">
「啊啊。那个雷霆爷爷。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　小夏愁眉苦脸起来。理所当然。

　律家附近的竹林是我们四人组儿时的绝佳游玩地，
我们曾经尝试侵入过好几次。

　每次堵住我们去路的，都是竹林的拥有者，
田中爷爷。
　人称雷帝。

　将竹林作为道路通行使用还可以容忍
（为了能在那里通行，附近的居民也和他有过
激烈的斗争，被称为第一次雷帝动乱），但用作
孩子们的游乐场爷爷却坚决不予认可。

　他可以集结十只野狗，使出传说中能致人心脏麻痹的
雷鸣怒叫对侵入者进行攻击。
　与之对战的我们则活用兵力优势，选择了
散开战术。虽然为了拖累敌方战力展开了游击战，

　但后来通过附近居民的仲裁（雷鸣的流弹也会
波及到我们啊）总算是和睦了。以八个蒸番薯为交换
全线撤退。
　第二次雷帝动乱宣告终结。

　因为发生过那种事，至今那个爷爷对我们来说都是个
鬼门关。
　近来不知是不是上了年纪的缘故，听说他大多数时间
都老实呆在家里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_沈むb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070240b56">
「凑巧昨天还挺精神的样子呢。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070250b43">
「而且就在最近好像还有毁坏竹林的家伙。
他一看到我们就认定我们是犯人一通怒吼。
　哈哈哈，完全谈不上话啊。」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070260b33">
「不是什么好笑的事吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　真是的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070270b56">
「总之，我们瞄准爷爷不在的时候
再去调查那边吧。
　否则调查就无法进展了。」

//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070280b56">
「那么，你那边的情况如何？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070290b33">
「啊，嗯。
　我虽然试着把律的朋友都找了一遍……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　一看小夏的表情就已经大概知道后续。
　又不能不问。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070300b56">
「虽然？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070310b33">
「成果为零。前天律和忠保分开以后，
没有人看到她。
　倒是听到了很多不负责任的传言，
是不是和谁谁谁私奔了之类的……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070320b43">
「私奔对象呢？　有没有某个特定的男人？」

{	FwC("cg/fw/fw小夏_呆れ.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070330b33">
「根据不同人的说法对象千奇百怪。
　顺带一提，你和雄飞也在候补者之列。」

{	FwC("cg/fw/fw雄飛_沈むb.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070340b56">
「……我们又没失踪。」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070350b43">
「只有一方消失掉的私奔，那是不是
也就可以认定是绑架监禁呢。
　雄飞，可否开一下你的柜子给我们看看？」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070360b56">
「总感觉和你清算友情让你支付精神损失费的
这一时刻终于要来了？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070370b33">
「请你们等会儿再清算。
　还有……一件事，也在我听到的传言里。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070380b56">
「嗯？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070390b33">
「有点……不太好的传言。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070400b43">
「……唉，谁让律不管做什么干什么总是
万事引人注目呢。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070410b56">
「爱说她坏话的家伙从以前开始就有吧。
　如今发生这种事，在意他们的话也不是办法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　就像是显眼人物的宿命一般的存在。
　虽然以前也曾常常生气，但当事人却
说着『嗬嗬嗬，这就是所谓名人税的东西呢。』，
渐渐也就不再那么在意。

　虽然那些没被放在眼里的人在背地里的行动
更加活跃。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070420b33">
「不是那样。
　不是关于律的传言……」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070430b56">
「什么啊。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070440b33">
「……说不定是和律有关系的不好的传言。
　最近，有人消失这类事件很多对吧？」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070450b43">
「有稳步增加的倾向。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070460b56">
「不能叫什么稳步吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　虽然确实稳步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_怯え.png");
	SetVolume("@mbgm*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070470b33">
「消失的理由……
　很多人都在传，
是不是六波罗的奴隶贸易之类的。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070480b56">
「…………」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070490b43">
「…………」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070500b33">
「所以说小孩子啊，还有看起来不错的
年轻女子经常失踪。虽然实际如何并不清楚。
　但运到大陆去卖刚好……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　小夏说到这里沉默了。
　也没有人再开口。

{	SoundPlay("@mbgm35",2000,1000,true);}
　——六波罗的奴隶贸易。
　恐怕，只是毫无证据的传言吧。

　只要是对六波罗抱有反感的人，谁都可能想到那样
的说法。而且对六波罗毫无反感的市民根本不存在。
　可以说，那样的谣言满天飞也是理所当然。

　也就是所谓偏见的东西。

　然而即使如此。
　六波罗的奴隶交易，如此话语所含带的现实意义——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070510b43">
「……也不是完全不可能呢。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070520b56">
「忠保……」


{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070530b43">
「原来如此。那样的话，绑架犯不
联络家人就变得没那么不可思议了。
　因为利益不是来自被害者家人，而是
来自购买者嘛。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070540b33">
「等等——」

{	FwC("cg/fw/fw雄飛_怒りa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070550b56">
「忠保！」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070560b43">
「希望你们平静地听我说。
　生气只是浪费时间。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　对于激动起来的我和小夏，忠保的声音就像
满满一大铁桶水。
　浇灭了我们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070570b43">
「目标是女人和孩子……这也很合理。
　不仅抓捕所需要花费的功夫少，运输也比较
轻松。虽然不能期待他们成为和成年男性一样
的劳动力……」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070580b43">
「应该也不是用作劳动力的奴隶吧。」

{	FwC("cg/fw/fw雄飛_沈むa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070590b56">
「……」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070600b33">
「…………」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070610b43">
「如果是奴隶市场，会在哪里呢。
上海、香港……还是澳门。
　目的地不得而知……也可能是
中南美，或者大陆中部。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　忠保淡淡地继续说着。
　虽然想阻止他——却无法阻止。

　我明白，这和在难闻的东西上盖上
盖子是同样的道理。
　即使盖上，污物也无法消失。

　真的……像那样。
　污物一般的事实。
　他想要说，降临到律身上了吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_沈む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070620b33">
「如果……」


{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070630b43">
「嗯。」

{	FwC("cg/fw/fw小夏_怯え.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070640b33">
「如果，只是如果哦？　如果那种事情
真的发生了……
　我们该怎么办呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　该怎么办呢。
　面对那种事态。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070650b43">
「……总之，先调查清楚真相吧。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070660b33">
「……」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070670b43">
「律的实际情况如何，我们其实还
一无所知。
　首先要确认这个。」

//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070680b43">
「靠着臆测胡乱激动也无济于事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　忠保没有回答。
　我心里很清楚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雄飛_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070690b56">
「总之继续调查律之后的行踪吧。」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070700b43">
「是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　意见相同。忠保点点头。
　小夏沉默。

　思考着的问题，一定，全员一致。

　<RUBY text="·······">无法抵抗六波罗</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_驚き.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070710b43">
「小夏。」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070720b33">
「……」

{	FwC("cg/fw/fw忠保_通常.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070730b43">
「还打听到其他什么吗？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070740b33">
「诶……啊，嗯。
　说起来，还有一件事我比较在意。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070750b56">
「什么事？」

{	FwC("cg/fw/fw小夏_通常b.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070760b33">
「是今天早上，我在来学校的途中
听说有人看到了怪人。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070770b43">
「怪人？」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070780b56">
「忠保那种程度吗？」

{	FwC("cg/fw/fw忠保_笑顔b.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070790b43">
「哈哈哈雄飞，好好用开玩笑的神态来说啊。
表情这么认真说出来是要怎样。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070800b56">
「？　我可是认真的。现在也不是开玩笑的
场合吧。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070810b33">
「是呢。仅限我所听到的，似乎应该是有
大约４倍忠保那么奇怪。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070820b56">
「相当怪呢。」

{	FwC("cg/fw/fw忠保_困惑.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070830b43">
「为了会话顺利进行我暂且沉默，
但我并没有接受这个事实，要留在议事录上哦。
　那么，是什么样的人？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070840b33">
「唔——嗯。好像是……给人
非常阴暗感觉的。」

{	FwC("cg/fw/fw雄飛_通常b.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070850b56">
「哦？」

{	FwC("cg/fw/fw小夏_沈む.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070860b33">
「该说是暗黑大将军呢，还是暗黑星人呢，
是被那种程度黑暗气场笼罩浸透的人。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070870b43">
「没怎么听过的人物评价呢。」

{	FwC("cg/fw/fw小夏_怒りa.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070880b33">
「一边散发着令人害怕的凶恶眼神，
一边在学校周围徘徊之类的。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070890b56">
「那可真够可疑的……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我不禁抱起胳膊低语了一句。
　这家伙今天在学校附近，也就是说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小夏_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小夏】
<voice name="小夏" class="小夏" src="voice/ma01/0070900b33">
「有什么……关系吗？」

{	FwC("cg/fw/fw忠保_冷徹.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070910b43">
「如果和之前的传言联系起来，可以考虑为
绑架执行犯在瞄准下一个猎物呢。」

{	FwC("cg/fw/fw雄飛_驚くa.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070920b56">
「！　那，只要抓住他。」

{	FwC("cg/fw/fw忠保_驚き.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070930b43">
「有可能就能找到律的行踪了……只是
有可能哦。
　现阶段不管什么都只是推测呢。」

{	FwC("cg/fw/fw雄飛_悩む.png");}
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0070940b56">
「虽然我也明白……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　但是终于感到，看见了一条通向前方的道路。
　即使那条道路并不光明。

//◆夜の鎌倉
{	CreateTextureEX("絵背景50", 1050, 2000, 0, "cg/bg/bg013_鎌倉俯瞰a_03.jpg");
	Move("絵背景50", 0, Center, Middle, null, true);
	Fade("絵背景50", 2000, 1000, null, false);}
　结果今天，律也没有回家。

　焦虑开始膨胀。
　从没想过，习惯在身边的亲近同伴不在
是如此煎熬之事。

　近乎难以忍耐的焦虑。
　说实话，就连睡觉的时间都舍不得。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw忠保_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0070950b43">
「在夜里调查也没什么用哦。
　要是被镰仓大番抓到就什么都做不了了。
冷静点，雄飞。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　我明白。
　我很明白，可是。

　律她……现在没事吧？
　肯定只是在哪里玩着吧？

　赶快回来啊。
　现在回来的话，我就笑着原谅你。

　还是说，你真的被六波罗那些畜生给抓走了吗。
如果是那样，那我，
　我就……

　可恶。

　……那一天的夜里，我做了一个梦。
梦见自己和不认识的暗黑星人展开了庞大的战斗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000,3000);


}

..//ジャンプ指定
//次ファイル　"ma01_008.nss"
