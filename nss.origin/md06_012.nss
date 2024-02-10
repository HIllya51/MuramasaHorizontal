//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_012.nss_MAIN
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
	#bg049_景明故郷住宅地a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_013.nss";

}

scene md06_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_011.nss"

//◆bg049
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg049_景明故郷住宅地a_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm26", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　出门。
　从眼前的景象看来，这里似乎是靠近镰仓市中心外
的周边地带。

　沿着尚未全面铺修过的街道行走，一座座狭小的屋舍　
并排坐落。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStL(300, true);


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120010a00">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120020a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……局促不安。
　到现在我们还未有所交谈。

　对于村正来说，应该对我怀恨在心吧。这是
理所当然的。
　而我，一想起昨晚的丑态，话到嘴边
顿感沉重，有口难言。这也自是必然。

　究竟该如何是好。
　虽深知只有拼命道歉才行，但是……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120030a01">
「我说。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120040a00">
「……？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120050a01">
「稍微……有点精神了？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120060a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120070a00">
「啊。
　大概……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120080a01">
「哦……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120090a00">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120100a01">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120110a00">
「村正。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120120a01">
「什么？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120130a00">
「……昨天的事。」

//◆赤面
{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120140a01">
「————」

//◆平静？
{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120150a01">
「哎，啊。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120160a00">
「……啊，那个……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120170a00">
「抱歉。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120180a01">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120190a00">
「我知道不是道歉就能了事的，但……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120200a01">
「……算了吧，没什么。
　别在意。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120210a00">
「不行。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120220a01">
「……我……」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120230a01">
「我、我呢。
　只要是你希望的事都……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120240a00">
「总之，约好了。
　放肆的举动就到此为止了。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120250a01">
「…………哎？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120260a00">
「那样的举动我不会再犯了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　是啊，不能再那样失态了。
　仿佛要铭刻于心一般，我坚定地断言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120270a01">
「…………」

//◆コミカル怒
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120280a01">
「这……这样……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120290a00">
「绝对。」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120300a01">
「啊，嗯？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120310a00">
「对天起誓。」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120320a01">
「唔呼呼呼呼呼呼呼呼呼呼呼呼呼。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120330a00">
「……村正？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120340a01">
「怎么？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120350a00">
「果然……在生气吗？」

{	FwC("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120360a01">
「哪、哪里？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120370a00">
「不，总觉得……」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120380a01">
「我，哪里，像在生气？
　明明是这样的、灿烂的、笑脸、不是吗？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120390a00">
「是、是呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　那如同仁王像的嘴角，像是被惠比寿取代般的
笑靥如花。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120400a00">
「是……是错觉吧？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120410a01">
「是、是啊。
　是错觉哦？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120420a00">
「那……就好……」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120430a01">
「呵、呼呼呼。
　主君真是的，净说奇怪的话。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120440a00">
「啊，哦……抱歉。」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120450a01">
「呼呼、呼呼呼呼呼呼呼呼呼呼。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　这里是哪儿？
　北极海吗？

　虽然算不上暖湿气候的国家，但这股
寒气究竟来自哪里？
　这也算是气候的异常现象吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120460a01">
「……啊，真是的。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120470a01">
「行啦，快回去吧主君。
　没什么事要做吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120480a00">
「啊……不是。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0120490a00">
「还有点，想要做的事。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0120500a01">
「？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　首先要帮小恩人弄点吃的。
　然后——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md06_013.nss"