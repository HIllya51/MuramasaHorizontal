//<continuation number="600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_015.nss_MAIN
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
	#bg001_空a_03=true;
	#bg023_弥源太の家_01=true;
	#bg202_旋回演出背景山_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_015_routeFlag==true){$ma02_015_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_016.nss";

}

scene ma02_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_014a.nss"
//前ファイル　"ma02_014b.nss"
//前ファイル　"ma02_014c.nss"

//◆合流

//◆家の中
//◆夜空
//◆ＢＧＭ：コントラバス独奏

	PrintBG("上背景", 30000);
	SetVolume("@mbgm*", 2500, 0, null);
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);
	SoundPlay("@mbgm06",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……夜深了。

　一吃完饭，香奈枝就开始弹奏起她带来的乐器。
　……从最初的相遇开始，我就一直在疑惑那个从不
离身的巨大乐器盒里到底是什么，不过盒盖一开答案
就毫无悬念了。那就是，低音大提琴。

　进驻军士官为什么会带着那种东西呢。
　或许不应该感到不可思议。毕竟对方是带着侍从的
女性。

　大概她在任何事情上都是与众不同的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150010a01">
《……？》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150020a00">
「好音色。」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150030b05">
「确实……」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150040b06">
「哇啊……」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150050b55">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　外有棘手的敌人，
　身负严重的伤。

　但是，这是温暖平和的一刻。
　……不经意间，我几乎要回忆起不该回忆
的事了。

　不该回忆起——遥远的光景。
　不能忘却掉——当战的现实。

　今天休息。

　但是，我不应该沉浸在安乐之中。
　为了明天的战斗。

　现在，
　睡吧————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ゆっくりフェードアウト
//◆アナザー好感度＋
//$Another_Flag = $Another++;
	$ma02_015_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

	SetVolume("@mbgm*", 4500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 4000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(3000);

//◆弥源太家

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	SoundPlay("@mbgm23",0,1000,true);

	Wait(1000);

	OnBG(100,"bg020_山脈_01.jpg");
	FadeBG(1000,true);


	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150060b06">
「哎嘿！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150070a00">
「喝！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆薪割り。かこーん。
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150080b06">
「哎嘿！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150090a00">
「喝！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　将柴刀沉重的刀锋，向着鲋放在台子上的木柴
劈去。
　接着将劈好的柴火堆到一旁，鲋再度摆好木柴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150100b06">
「哎嘿！」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150110a00">
「喝！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150120b05">
「对不起，武士大人……
　劳烦您帮我们劈柴了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150130a00">
「这是我自己要求的，你无需在意。
　像这样稍微做点运动对身体康复有好处。」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150140b05">
「那就好……
　但是您不会太辛苦吗？　我只要一劈柴，
第二天一定会肌肉痛的哦。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150150a00">
「那是因为你是用臂力挥动柴刀
的缘故吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150160b05">
「武士大人不是吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150170a00">
「是的。
　像这样，放松手臂的力量。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0058]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150180a00">
「……利用柴刀自身重量<RUBY text="···">就这样</RUBY>砍下去。
　这样就足够劈开柴火了。」


{	FwC("cg/fw/fwふき_呆気.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150190b05">
「哦……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150200a00">
「这并不难。
　若用臂力挥动沉重的柴刀，会导致肌肉疼。
还是这样做比较好吧。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150210a00">
「如果你有空的话，我待会儿教你。」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150220b05">
「这、这样吗？
　那就拜托您了……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　在好像有点心不在焉地继续洗着衣服的蕗的旁边，
我继续劈柴。
　虽然早就劈够了这几日需要的用量。但是，再多增
加一些库存也不错吧。

　弥源太老人在家中工作。清晨修缮家中的各处是他
每天必做的事。
　大鸟主仆不在。昨天夜里她们就返回村子了。

　——总觉得，不能不考虑对策呢。

　香奈枝临走前留下的话突然掠过我的脑海。
　是啊。事已至此，地方官们应该会使用一边对ＧＨＱ
采取行动一边拖延时间的战术。

　若是任他们行动，就救不了村子了。
　这样一来，恐怕我的目的也会无法达成。再那样
悠闲下去的话就没有<RUBY text="··">时间</RUBY>了。

　……我需要计策来引出潜藏于树海中的敌人。
　我一边想着对策，一边劈着柴。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150230a01">
《身体状况不错呢……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150240a00">
（是啊。伤口已经愈合了。有些血气不足
……不过总会有办法吧）

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150250a00">
（之后只剩恢复身体活动了。
　你呢？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150260a01">
《装甲损伤已恢复完毕。
　我也只剩调整内部机能了。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150270a00">
（知道了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150280a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150290a00">
（……？　怎么了？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　一阵沉默传来——虽然这么说也很奇怪。
　和通信中断不同，沉默不语的气氛，传达到了
连结我和剑胄的脑髓的某处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150300a01">
《……我希望，你能责备我。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150310a00">
（责备……？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150320a01">
《你不可能忘记的吧。
　我昨日的过失。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック·例の奇襲
//あきゅん「演出：仮入れ、超適当」

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);

	CreateTextureSP("絵演回想背景", 4000, Center, -576, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演回想立絵", 4010, Center, Middle, "cg/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	Zoom("絵演回想立絵", 0, 750, 750, null, true);
	Request("絵演回想立絵", Smoothing);

	Wait(500);

	Fade("絵フラ", 400, 400, null, true);



	Wait(1000);

	Fade("絵フラ", 100, 1000, null, true);

	Delete("絵演回想*");

	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150330a00">
（当然）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150340a01">
《疏于探查，发觉的时候敌人已在眼前……
　过去不曾有过如此出丑的剑胄吧。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150350a00">
（若能预测到新对手来袭的话，我便会命令你
探查周边的情况。这样就没事了。
　但是，我却没能预测到这一情况）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150360a00">
（出丑的并不是你，而是我）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150370a01">
《不对。操控者的职责是打败眼前的敌人。剑
胄的职责是辅佐他。这就是武者的职责分担吧。
　作为剑胄，警戒周边情况是理所当然的义务。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150380a00">
（…………）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150390a01">
《我懈怠了那份理所当然的义务……要是<RUBY text="母亲">二世</RUBY>
和<RUBY text="外公">始祖</RUBY>知道了的话不知会多失望。
　我也不知道该怎样向你赔罪才好。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　传来的剑胄传音伴随着震动。
　含着屈辱和愤怒。它把一切都揽到自己身上。

　……原来如此。
　是这样啊。但是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150400a00">
（不需要赔罪。
　别误会，剑胄）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150410a01">
《……主君？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150420a00">
（你从一开始就没有职责。
　既无义务也无责任。你只是一把刀）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150430a00">
（<RUBY text="·····">只是个道具</RUBY>）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150440a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150450a00">
（我作为操控者有熟练自如地操控剑胄的
义务。剑胄只要被使用就好了。
　昨天晚上我使用你的方法错了。没有尽到
义务。所以失败的责任在于我）

//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150460a00">
（你明白了吗？　义务也好权利也好责任也罢，
全部都是我一个人的事。<RUBY text="·······">跟你无任何关系</RUBY>。
　当然了。让奴隶承担责任的主人是不存在的）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150470a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150480a00">
（舍弃那个愚蠢至极的想法。
　你只要将你的刀刃磨利就行了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150490a01">
《……是吗。
　你这样说的话……那就这样办吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　脑内回响着的硬质的声音终止了。
　意识返回到视野——突然发觉堆积起来的柴火
达到了相当大的分量。

　仅仅三人的日常生活，有这么多柴火短时间内生火
做饭就不用愁了吧。
　我对着仰面好像在问接下来要不要把柴火堆起来的
稚嫩视线，点了点头。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150500a00">
「就先到此为止吧。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150510b06">
「真多哇！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150520a00">
「是的。
　谢谢你帮忙。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se日常_建物_スライド開く01");
	MusicStart("SE01",0,1000,0,500,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　就在我这么说着施了一礼的时候。
　沉闷的摩擦声响起，大门打开了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150530b55">
「御堂。
　……这还真是，相当大量啊。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150540a00">
「多亏了有您孙女帮忙。
　很快就整理完了。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150550b06">
「帮～上～忙～了！」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150560b55">
「是吗。做得很好。
　……那么御堂。再拜托您看一下家可以
吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150570a00">
「您要出门吗？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150580b55">
「嗯。我要去山脚一会儿。
　大概到明天白天就会回来了。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150590a00">
「知道了。
　我来看家。」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150600b55">
「抱歉啊。
　拜托您了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　迈着坚实的脚步，走下山道的老人。
　腋下抱着个小小的随身行李。小小的包袱。

　其一端露出了白色的物体。
　白色的——花。

　是要去扫墓吗？
　但扫墓时节已经过去有些时日了……


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_016.nss"

