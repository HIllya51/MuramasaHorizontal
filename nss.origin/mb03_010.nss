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

scene mb03_010.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_011.nss";

}

scene mb03_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_009.nss"

//◆普陀楽
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm24",0,1000,true);

	Wait(500);
	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100010a08">
「——就是这么一回事！
　明白了吗!?」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100020a07">
「…………」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100030a06">
「…………」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100040a08">
「……喂。
　为什么不说话！」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100050a07">
「啊……什么嘛。那些话。
　也就是说，把你的话总结一下就是——」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100060a07">
「王者之剑即ＥＸ黄金之剑……？」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100070a08">
「被你听成什么了啊!?」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100080a06">
「……你说杀了童心和尚的是舞殿宫？」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//嶋：修正（なのっ）【090930】
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100090a08">
「是、是的！　就是这样的！
　这是对幕府的挑衅！　是危机！」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100100a08">
「必须集结吾等兵力与之对抗。
　不，这种时候，也要喊上太宰府的足利幸行
……虽会因此欠他一个人情，但也顾不得了。
还要让室町探题压制住朝廷。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100110a07">
「要再来一杯茶吗？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100120a06">
「我要。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100130a08">
「你们听吾说啊！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100140a06">
「听着呢。
　不过好歹让我们喝点茶吧。聆听你妄想梦物
语可并不轻松。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100150a07">
「嗯。拜托尽量精简一点。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100160a08">
「既不是妄想也不是做梦更不是物语!!
　舞殿宫企图毁灭六波罗哦！他第一个杀的就
是童心大人啊！」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100170a08">
「不……说不定父亲也是他们杀的！
　对！　绝对没错！」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100180a08">
「这不是危机是什么!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100190a06">
「是被害妄想。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100200a07">
「假想战记？」


{	SetComic(@0,@0,9);
	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100210a08">
「不是啦！
　气死了——!!」


{	DeleteComic();
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100220a06">
「……」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100230a07">
「我说你啊。
　亲王他是怎么做到的？那位大叔，他连贴身
警卫队都负担不起哦？」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100240a08">
「所以呀，他是深藏不露！
　虽然难以置，但不这么想的话没法解释啊。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100250a08">
「可以肯定的是，也有武者的存在……
　嗯嗯，他到底拥有多少战斗力呢。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100260a07">
「哎哟。」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100270a06">
「嚯。」


{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100280a08">
「你们认真听!!」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100290a07">
「听着呢。
　……你觉得呢？」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100300a06">
「那么。
　也就是说，<RUBY text="····">没法解释</RUBY>，对吧？」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100310a07">
「是啊。
　是这么说的。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100320a08">
「啊？」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100330a07">
「为什么不那样想就会无法解释呢。
　明明可以有更多更有可能的推测啊，比如说
太宰府造反啦、ＧＨＱ阴谋啦，对吧？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100340a06">
「你的话真叫人难以理解。」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100350a08">
「——！」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100360a07">
「听上去只有<RUBY text="······">凶手是舞殿宫</RUBY>这个部分，
是你确定的哦？　雷蝶君。」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100370a08">
「啊……不是的，那个是……嗯。
　因为吾的手下掌握到了情报。」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100380a07">
「那就从这一点开始说不是挺好吗。
　为什么不能理清头绪好好说呢？」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100390a08">
「是、是啊。吾居然犯这错误。
　好像有点惊慌失措了。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100400a06">
「不过还真厉害。
　明明城内的混乱还未平息，而你已经收集到
那么多情报，甚至如此确信真相，真让人意外。」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100410a06">
「看来你拥有一支相当优秀的谍报队啊？」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100420a08">
「算、算是吧……」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100430a07">
「我怎么全然不知。
　比厩众还优秀？
常暗也因此脸面全无呐。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100440a06">
「他肯定会想向你请教的。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//嶋：修正（今は）【090930】
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100450a08">
「这、这种事，现在根本无所谓啦！
　好好想想怎样对付舞殿宫吧！」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100460a08">
「既然对方已经诉诸武力，那我方也只有以牙
还牙了。
　不知道对方会从哪里调来多少兵力。
只有将当下可调动的兵力派往建朝寺——」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100470a07">
「你来干吧。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100480a08">
「……啊？」


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100490a07">
「集合小弓军管区的兵力。
　带领他们袭击亲王，杀了他。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100500a08">
「吾……去吗？
　仅凭吾的军队？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100510a06">
「是啊。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100520a08">
「为、为什么啊？」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100530a07">
「啊？
　我这可是为你考虑啊？」


//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100540a07">
「如果让我等军队进攻的话，我可不敢保证会
怎样对付亲王哦？
　或许会不杀他。说不定<RUBY text="·····">会稍微和他</RUBY>
<RUBY text="···">聊一聊</RUBY>哦。」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100550a06">
「这样吧。
　问问他是怎样令他的普陀乐城袭击这一暴行
一举成功的……之类的哦。」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100560a08">
「!!」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100570a07">
「你怎么打算呢？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100580a08">
「呃……
　虽——虽然莫名其妙，不过吾答应了。」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100590a08">
「就让吾率领部卒解决此事吧……」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100600a07">
「动作要快。
　我可等不了多久哦。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100610a06">
「一个星期吧。
　如果超过这个时限——」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100620a06">
「堀越和筱川两军，将对<RUBY text="···">叛逆者</RUBY>进行处分。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100630a08">
「——」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100640a08">
（为……为什么……）


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mb03/0100650a08">
（为什么事情会变成这样……）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆一度フェードアウト
//◆フェードイン
	ClearWaitAll(2000, 1000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg027_普陀楽評議の間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	Wait(1000);
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100660a07">
「那家伙会干吗？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100670a06">
「他非干不可啊。
　就算是傻子也有他自己的打算。不过我并不
认为他能同时与你我为敌还能取胜。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100680a07">
「……傻子吗。
　他与傻子不太一样。只是因为披着过大的衣
服导致脑袋被遮住，看不清前方而已。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100690a06">
「这正是傻子的证明啊。」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100700a07">
「我也不否认。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100710a06">
「你不怎么讨厌雷蝶嘛。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100720a07">
「是。算是吧。
　那家伙无所谓人前背后……准确说来他根本
就是表里如一。我并不讨厌这样的蠢货。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100730a07">
「所以，善后事宜就交给我处理了。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100740a06">
「……是吗。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100750a07">
「六波罗也要终结了。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100760a06">
「不会让它终结的。
　只要我还活着。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100770a07">
「哎哟。你很有干劲嘛，狮子吼。
　那就是说，会把时王也带走吗？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mb03/0100780a06">
「正有此意。
　镰仓就随你怎么折腾了。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mb03/0100790a07">
「是吗。
　那么……就大干一场吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_011.nss"