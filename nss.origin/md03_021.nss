//<continuation number="1420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_021.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;
	#bg027_普陀楽評議の間_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_022.nss";

}

scene md03_021.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md03_020.nss"


//◆廊下


	PrintBG("上背景", 30000);


	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm20", 0, 1000, true);

	StL(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStR(0, true);
	FadeStL(0, true);


	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0210010b37">
「关于您吩咐的那件事……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210020a07">
「……有结果了？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md03/0210030b37">
「是。
　还有意想不到的<RUBY text="··">收获</RUBY>。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210040a07">
「哦？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆評議の間

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DeleteStA(0,true);
	Delete("@OnBG*");

	OnBG(100, "bg027_普陀楽評議の間_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210050a08">
「接下来决定典礼时的任务分配吧。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210060a06">
「得先商量军队配置吧。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210070a09">
「嗯……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210080a07">
「不～对。
　都要往后放。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210090a08">
「茶茶丸？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210100a07">
「要攻打建朝寺哦。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210110a09">
「……什么？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210120a08">
「攻打舞殿宫!?」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210130a06">
「你脑子进水——」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210140a06">
「看样子不是这样吧？　茶茶丸。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210150a07">
「他们想以少数精锐攻入普陀乐。
　为了阻止宣旨典礼。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210160a07">
「总之是恐怖行动。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210170a09">
「…………」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210180a08">
「————」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210190a06">
「……哦。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0210200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——这样啊。
　那亲王现在开始行动了吗。

　但是如今没有我，他想使唤谁……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210210a08">
「怎——怎么可能？」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210220a06">
「不。
　并非不可能吧。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210230a08">
「等等，怎么连你也……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210240a06">
「舞殿宫一派还是有分辨形势的眼光的。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210250a09">
「……正是如此。
　他不会不明白宣旨典礼的举行意味着
六波罗和进驻军的开战。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210260a09">
「如此一来……那位庶民派的宫大人会为阻止
典礼而行动也不奇怪。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210270a08">
「童、童心大人。但是——」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210280a09">
「对策呢？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210290a06">
「要静候他们过来也行……不过，
这样事情就会闹大。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210300a07">
「举行宣旨典礼时当然想避免骚乱。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210310a09">
「没错。
　可以的话最好暗地里解决掉。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210320a08">
「那个……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210330a07">
「咱们反过来先动手吧。
　因为得到了倒幕势力企图绑架舞殿宫以利用
的情报，所以前去保卫——以这个名义围住建
朝寺。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210340a07">
「然后秘密地把危险分子全处理掉。
　将宫大人就地监禁。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210350a06">
「哼。不错。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210360a09">
「贫僧也没有异议。
　问题是派谁去……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210370a06">
「既然对方是皇族，人选便须谨慎挑选。
　绝对不能出差错。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210380a07">
「但是没时间慢慢选了。
　对方可是随时都会行动的。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210390a09">
「只有在我们四个之中选了。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210400a06">
「我去。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210410a07">
「反对～」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210420a06">
「……你是说我不够格吗？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210430a07">
「倒不是不够格。
　要是有更合适的家伙，就让那人去呗！」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210440a06">
「谁啊？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210450a07">
「这家伙。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210460a08">
「——哈？」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210470a08">
「吾？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210480a07">
「就是你。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210490a08">
「为什么!?
　……话说你们全部都给吾等一下!!」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210500a08">
「结论下得太早了吧！
　比起这个，还是先确认情报的真伪——」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210510a06">
「白痴。
　你脑子里装的是砂糖吗？」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210520a08">
「你说什么!?」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210530a07">
「不不。
　是的，是这样啊。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210540a07">
「雷蝶说得对。
　有件事必须先做。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210550a09">
「……哦？
　茶茶丸大人，那是何事？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210560a07">
「Ｔｅａｍｗｏｒｋ！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210570a06">
「那是什么啊？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210580a07">
「你不知道吗？
　友情、团结，然后胜利。这是世人所谓的
通往胜利之道。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210590a07">
「首先来稳固我们的团结吧。」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210600a08">
「这种事怎样都好！
　吾是在说——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210610a07">
「确认一下～
　我们之中没有跟舞殿宫暗中勾结的人吧？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210620a07">
「没有被以朝廷权威为靠山手握幕府主导权
这种甜蜜的诱饵钓上钩的笨蛋吧？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210630a08">
「————————」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210640a06">
「……哼。
　那倒是有必要确认啊。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210650a09">
「……贫僧同意。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210660a07">
「宣誓。
　我绝对不是～」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210670a06">
「我也不是。
　赌上大鸟家前代当主——时治大人的名义。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210680a09">
「贫僧也问心无愧。
　向佛祖起誓。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210690a07">
「哇，这怎么信得过。
　不过算了。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210700a07">
「喂，雷蝶。你呢？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210710a08">
「哎？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210720a08">
「啊，那个……」

//◆笑み
{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210730a06">
「怎么了。
　赶紧回答。」

//◆笑み
{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210740a09">
「您在招致无端的怀疑哦，雷蝶大人。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210750a08">
「嗯、嗯。
　当——当然，吾也不会那么做的！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210760a07">
「是～吧～是～吧。
　因为你是刚去世的大将领护氏的儿子啊。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210770a07">
「而且还是下任大将领——四郎邦氏的叔父呢。
　这样的你怎么可能会背叛幕府呢～！」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210780a08">
「当、当然了！」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210790a09">
「哈哈哈。
　贫僧放心了。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0210800a09">
「这样我们就团结一心了。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210810a06">
「没错。
　真令人欣喜。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210820a06">
「我很高兴，雷蝶。」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210830a08">
「是、是吗？
　哦呵、呵呵呵呵……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210840a07">
「那你去吧。
　建朝寺。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210850a08">
「哎!?」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210860a07">
「去控制住舞殿宫。
　你不会说不要吧？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210870a07">
「这是为了斩除六波罗的祸根。
　忠勇烈将今川雷蝶肯定会勇猛前往的吧～？」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210880a06">
「哈哈哈……
　忠勇烈将！」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210890a08">
「是、是是、是啊。
　但——但是……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210900a08">
「吾果然……那个……觉得应该更慎重地行事！
　他可是皇帝的弟弟啊？　万一误杀了可就
麻烦了——」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210910a07">
「没关系。
　我跟你一起去，我会多加注意的。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210920a08">
「而且……对了，如果真相败露的话可就糟了
哦!?
　大将领的宣旨或许会撤销。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0210930a07">
「我～说～啊～」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0210940a00">
「您不用担心。
　今川中将阁下。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我插嘴了。

　理由只有一个。
　因为很有趣。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210950a08">
「干嘛！
　初出茅庐的小小中佐居然敢在公方的会议里
多嘴!?」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210960a06">
「提个意见也没什么。
　雷蝶，别这么冲。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210970a06">
「虽然身份有别，却同是忠臣。
　……呵，呵呵！」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0210980a08">
「……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0210990a06">
「凑斗中佐，说说看。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211000a00">
「是。
　万一对舞殿宫的压制被察觉——或是
失手杀害了舞殿宫。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211010a00">
「只要对外宣布如此行动的正当性
就可以了。」

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211020a09">
「正当性是指？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211030a00">
「舞殿宫春熙亲王是大将领足利护氏公暗杀
事件的主谋。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211040a07">
「————」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211050a00">
「下官愿做证人。」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211060a06">
「……怎么回事。
　我是听说过你以前属倒幕派，
原来竟是舞殿宫的属下吗？」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211070a06">
「然后在舞殿宫麾下参与了足利护氏暗杀
的计划与行动？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211080a00">
「下官确实在短期追随着舞殿宫。
　然而并没有什么暗杀计划。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我同时说了真话和假话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211090a06">
「没有？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211100a00">
「是的。
　但是<RUBY text="····">就当做有</RUBY>。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0211110a00">
「下官通过镰仓警察署的署长与舞殿宫相识的
事，已有物证，任谁都会承认。
　然后由下官来做暗杀计划的证言。」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0211120a00">
「无论舞殿宫一派怎么解释，人们都会认为
是在强词夺理。」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211130a09">
「……嗯……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211140a06">
「是吗……
　好。挺好的。不错。」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211150a06">
「这个<RUBY text="··">保险</RUBY>不错。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211160a07">
「……是啊。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211170a07">
「听到了吧，雷蝶？
　已经不需要任何的担心了。」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211180a08">
「啊，嗯……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211190a06">
「你在慌什么？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211200a08">
「才、才没有慌！」

{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211210a06">
「哈哈哈……！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211220a08">
「你、你啊……从刚才就一直就把人当笨蛋。
　当心吾把你整到想笑都笑不出来哦!?」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211230a06">
「哦。
　不能笑吗……」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211240a06">
「难得……人家想笑笑就让这件事过去的。
　怎么，这顾虑多余了吗？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211250a08">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211260a06">
「是吗，我不用笑了啊。
　那就把奸贼<RUBY text="····">一网打尽</RUBY>收拾掉吧！」

{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211270a06">
「这才叫斩除祸根……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211280a07">
「嗯。
　我倒是……无所谓哦？」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211290a09">
「这个嘛。
　贫僧也没有理由反对，吧……？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211300a08">
「童……童心大人……？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211310a09">
「就看雷蝶大人了。
　我童心和尚无论何时都尊重雷蝶大人的想法。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211320a06">
「哈……哈哈……！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211330a07">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0211340a00">
「…………」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211350a08">
「…………」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211360a08">
「去……
　去——建朝寺……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211370a07">
「ＯＫ，ＯＫ。
　我就知道你会这么说，雷蝶。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211380a07">
「好～开心地旅行去吧～」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md03/0211390a09">
「拜托您了。」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/md03/0211400a06">
「好好地当雷蝶的<RUBY text="···">保护者</RUBY>啊，茶茶丸。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0211410a07">
「好的～」

//◆敗北
{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/0211420a08">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_022.nss"