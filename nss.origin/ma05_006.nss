//<continuation number="1130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_006.nss_MAIN
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
	#bg047_景明故郷町a_01 = true;
	#bg048_景明故郷オフィス_01 = true;
	#bg051_皆斗家居間_01 = true;
	#bg050_湊斗家門前_01 = true;

	#ev131_景明が湊斗家に来た日=true;
	#ev132_笑う統=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_007.nss";

}

scene ma05_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_005.nss"

//◆現実復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060010a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　她们根本没有注意到我。
　嬉笑着一同跑走了。

　我们的世界是不同的，我这么想着。
　她们有她们的世界。我有我和光存在着的世界。


　在这之间有一堵墙阻挡着彼此。
　即使视线相交，心灵也已然不会相通。

　我从欢乐的——遥远的光景那里移开目光，迈向公司。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆会社
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg048_景明故郷オフィス_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(1600);

//◆一度ブラックアウトして、また戻り
	CreateColorEX("絵暗転", 5500, "#000000");
	Fade("絵暗転", 1000, 1000, null, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……糟糕了。
　
　一看手表，不由在心中轻叹自己的疏忽。

　距<RUBY text="···">刹那前</RUBY>看到的时间，过了大约二十分钟。
　也就是说，在那么长的一段时间内，我什么都没做，
只是任由意识飘到某个角落去了。

　是睡得太少害的。
　只是稍稍放松了下注意力，我的心神便像解开船索的
船一般飘向大海。

　部长他们应该不会没发现我的丑态吧。
　即便如此还是没有惊动我，一定是因为对我的关照。


　他们也知道我家庭的情况。
　知道，并不着痕迹地关心我。

　虽然我对这一点十分感激，但也不能一直麻烦别人。
　我是拿着工资的。我有做好这份工作的责任。


　在这个时代，痛苦的并不仅仅只有我家。
　无论哪个家庭都有本难念的经。即便是公司也一样。


　只是标榜自己所受的痛苦，然后将负担转移到别处，
像这种行为，可以称得上是厚颜无耻了。
　一定要自我反省才行。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060020a00">
「非常抱歉，部长。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060030e238">
「嗯，不。别在意。
　你一定很累吧？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060040a00">
「并没有达到妨碍业务的地步。
　刚才是我放松注意力了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060050a00">
「以后我会注意的。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060060e238">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　部长不安地点点头。
　如果这份不安是对于我工作的进展而言的话，我的心
情也就轻松了，然而事实却明显不是那样，这让我不禁
心情沉重起来。

　被人关怀这种事，是如此痛苦。
　虽然这种说法也许十分不识好歹。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060070e226">
「前辈，请喝茶。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060080a00">
「……麻烦你了。
　谢谢。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060090e226">
「不用那么神经紧绷也没关系啦。
　现在又不是繁忙的时期。」

//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060100e226">
「呵呵呵……
　我啊，今天已经是连续迟到三天了。
刷新记录了哦。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060110e238">
「……你也给我稍微用点功吧。
　再这样下去就扣工资。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060120e226">
「哎?!
　怎、怎么这样……这个月……有我期待已久的
剧团☆超感染的新作公演啊……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　同事仿佛头晕似的，踉跄着用手搭住窗沿。
　我不禁苦笑。

　……结果，要说有什么不好的话，也许我的思考过于
严肃才是最不好的吧。

　我微微晃了下脑袋，重振精神，再次集中到手头的
文件上。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060130e226">
「…………」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060140e238">
「怎么了田中。发什么呆。
　再这样发呆下去工资就要
扣光啦。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060150e226">
「部长。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060160e238">
「……嗯？」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060170e226">
「是<RUBY text="····">那些家伙</RUBY>。」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060180e238">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060190a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　部长猛然停下了手中的铅笔，原本纸笔相触发出的令
人略感愉悦的沙沙声也随之而止。
　我拖开椅子，站了起来。

　我走到凝视着窗外的同事身旁，寻着他们的视线望去。


　公司的大门前，聚集着一群人。
　如果仅仅是这样的话，或许会看成是在进行商品的搬
入作业。

　然而如果聚集在一起的人们都摆着一副危险的表情，
手上还拿着看上去比表情更危险的筒状或棒状道具的话，
那么绝对不会是搬运商品了。
　他们所持的道具，一般来说被称之为枪炮和刀剑。

　也就是说，一群武装分子，出现在了公司前。
　在他们周围看到几个员工的身影。然而，他们好像无
法与之对抗的样子。

　并不是不理解这种情况的意义。
　正相反吧。他们是何人又所为何事，已是了解得再清
楚不过了。

　他们，是山贼。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆会社前。山賊団
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(1000,true);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　关于他们的来历，谁也不能清楚地知晓。
　然而，推测却十分容易。

　实际上，像这般规模的武装掠夺团体在现今的大和不
能说是稀有的存在。
　或许都能称得上是随处可见了。

　席卷六波罗幕府内外的权力斗争的暴风雨，理所当然
地催生着与斗争次数相同数量的失败者。
　他们被夺去地位，从政治的舞台上退场。

　然而，他们的退场并不一定意味着从尘世退场到黄泉
之世。
　虽说多数情况下两者是同时发生的，不过其中也有从
肃清的刀刃下逃脱，期望东山再起而隐于山野之人。

　或许他们也有属于他们自己的信念。
　然而对市民来说，没有比他们不愿选择干脆的牺牲
更麻烦的事。

　因为他们期望东山再起——至少他们这样主张着聚集
起同族之众——既然如此，就不可能丢下武器，既
然手持武器，就不可能想融于市井之间每天正经地工
作挣钱。

　结果，作为每天生存下去的手段，走上了以武力
从市民处夺取物资的道路。
　无论他们本人的主张如何，但在旁人眼中只可称之
为盗贼团的团体就这么诞生了。

　他们经常将幕府难以触及，几乎没有迈入都市化的地
区作为他们的根据地。
　也就是说，这座小镇也成为了他们的根据地之一。


　当然，人们也联系过幕府，请求处理。
　然而，了无回音。

　并不是幕府对这种规模的贼群贯彻宽容主义。事实上
讨伐的确在进行中。
　然而幕府的战斗力是有限的，所以理所当然，他们对
于危险度更高的敌人会优先对付。

　拥有庞大兵力的下台人士，有威望的人，与海外势力
勾结的人等等，才会成为他们迅速讨伐的对象。

　而在这座小镇中出现的他们并非如此。

　准确来说他们是属于小规模的。
　不过，他们却正好拥有使整个镇子完全屈服的战斗力。


　不至于引起六波罗的注意，却足以当山贼。
　……这样一想的话，说不定他们是最难应付的山贼团
体了。

　若是在幕府相对安定，军队有多余闲暇的时期，尚有
可能在这种小镇也派遣驱逐部队。

　不凑巧，现在的状况并非如此。

　堀越公方足利守政与镇守府将军冈部赖纲联手，欲举
兵打倒大将领足利护氏——
　这样的谣言流传开来，并且由于守政并未努力解释，
所以使得镰仓中央绷紧了神经。

　在篠川、小弓、古河的三公方府，还有镰仓的中央军
队因防备堀越的起兵而警戒起来的情势之下，怎么会有
闲暇去讨伐那些微不足道的小贼呢。
　无论怎样恳求，都不可能会出兵的。

　正因如此。
　那些山贼团占据了小镇附近的山，歌颂着不合时宜的
春之赞歌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060200e080">
「……好了，到此为止。
　能马上准备好吗？」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060210e238">
「不、不行……就算你这么说也不行。
　如果拿出那么多东西的话……
我们公司的经营也维持不下去了……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060220e080">
「是～么。
　那你该怎么办？　和我们战斗吗？」

//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060230e080">
「在这里战斗然后马上让公司倒闭？」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060240e238">
「这……
　怎么这样……可是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　不得不代替缩头乌龟的社长而去应付他们的部长，我
对他的立场只有表示同情了。
　因为他必须与那些亮着枪口，根本不期望进行什么
正常交涉的对象耐心地对话。

　交涉暂时是以对话的形式，然而这只不过是因为对方
想要折磨我们罢了。
　完全没有容许讨价还价的意思。因为他们是盗贼，这
是理所当然的。

　话虽如此，然而事实上，我并未怀有如此严峻的
——意识到公司会遭受致命损害的——危机感。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg048_景明故郷オフィス_01.jpg");
	FadeBG(600,true);

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060250e226">
「前、前辈……到底会怎么样呢？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060260a00">
「没有办法。
　不，一定要交出相应的物资才行。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060270e226">
「可、可是，他们好像提出了
很过分的要求啊……
　啊啊啊，这样下去别说工资了，都要面临
失业危机啦。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060280a00">
「做好所有员工都被扣工资的心理准备比较
好，不过也就这种程度了吧。
　不过是些无赖的手段。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060290e226">
「哎？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060300a00">
「他们寄生在小镇的经济之上。
　如果给予小镇足以破坏经济的打击的话，
他们自己也会进退维谷的，没有这种道理。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060310a00">
「先提出过分的要求，只是为了让我们
没有抵抗地接受他们之后提出的真正
要求而布下的局。
　差不多快让步了吧。」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060320e226">
「是、是这样的吗……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060330a00">
「即使从过去的经验来看也差不多没错。
　他们并不是无序的暴力团体，而是被
理性地统率的组织。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("窓", 1500, 0, 100, 1024, 376, false);
	SetAlias("窓","窓");
	CreateTextureEX("窓/絵背景100", 1500, 8, -248, "cg/bg/bg047_景明故郷町a_01.jpg");
	Zoom("窓/絵背景100", 0, 2500, 2500, null, true);
	SetShade("窓/絵背景100", HEAVY);
	CreateTextureEX("窓/絵st100", 1600, 459, 55, "cg/st/resize/st首領_通常_制服_ex.png");
	CreateColorEX("絵色100", 1000, "Black");

	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　虽然同事还有疑问，不过我已经看到他们中间的某个
角落。
　在轻装甲车的一旁，某个人物正在让一辆单轮机车空
转。

　那是在南方战线服兵役的时候，曾见过好几次的机体
——骑体。
　大和陆军的九〇式龙骑兵甲。

　剑胄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Fade("絵色100", 1000, 500, null, false);
	Fade("窓/*", 0, 1000, null, false);
	DrawTransition("窓/*", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
　也就是说，骑着那辆机车的那位女性是武者。
　一定是这个团体的头目。

　虽然显露在脸上的轻蔑笑容与其他贼兵一样，不过有
一点不同的是，她并未沉浸于用武力来威胁我们的行为。

　而是冷静地，望着部下的交涉。

　那是看准时机了吧。
　带着明显暗示的意图，她所骑的机车开始剧烈地排气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	DrawDelete("窓/*", 500, 1000, "slide_01_04_1", false);

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060340e080">
「……嘁，贫穷的家伙们。
　没办法了啊！」

//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060350e080">
「那么就准备这个和这个吧。
今天就到此为止放过你们了。
　感谢我们吧。这些东西对我们来说
可一点都不够啊！」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060360e238">
「是、是的。非常感谢。
　马上就准备好……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　生怕他们改变主意，部长立刻飞奔向了商品仓库。

　山贼们对着部长的背影露出毫无礼貌的笑容，无疑是
在嘲笑轻易上钩的部长思虑浅薄吧。

　实际上，部长并非愚蠢之人。
　他是个聪明人，对于我说与同事听的那种程度的事实
很容易便能看穿。

　然而，在持有武器的人面前，能够保持智力不退化
的，毕竟是绝对的少数人。
　即便是我，若是成为他们的众矢之的，也一定不会有
闲情去伶俐地做这种推理。

　只能说部长抽到下下签了。
　之后，还要被当缩头乌龟的社长责问吧。


　至少到那时，我想为他辩解一下……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("窓");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060370a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我慌忙收起边如此思考边从部长那边移到山贼身上的
视线。
　因为我与向这边环视的头目的视线相触了。


　在对视的那一瞬间，就给我留下了很多印象。
　高傲，坏心眼，意外纯净的容貌，过于相信力量——
多半都是负面的印象。

　所幸，对方似乎没有留意这边的样子。

　好像只是对我胆小的态度嗤笑般地哼了下鼻子，马上
便把注意力移开了。

　我安心地呼了口气。
　没有被缠上真是太好了。我生来就很不喜欢与别人争
斗。

　更何况是与这种家伙争斗。
　如果只是遭到嘲笑就能结束的话，那真合算。

　部长开始召集附近的人将物资搬运出来。

　为了帮上忙，我也向那边走去。

　工作似乎十分顺利。
　看看大家的表情就明白了。为了尽快将他们打发走
赶紧做事才是上策，不仅是我，大家都这么认识到了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆町？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_皆斗家居間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　皆斗家是在这五百年间支配这方土地的氏族。


　原本作为武士，统治一片领地，然而自德川氏一统
天下之后，武士们都相继回乡务农了。
　不过他们作为大地主，仍继续保持着实际上的统治力，
直到现在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
　凑斗家便是其中的分家。
　然而，与一般而言的分家性质不同，凑斗家并不是因
为解决继承问题而诞生的分家。


　凑斗家发源于五百年前，也就是几乎与皆斗本家同时
出现。
　原本皆斗家就是接受朝廷的圣旨，为了封印<RUBY text="··">邪神</RUBY>而来
到这片土地的一族。

　他们为此采取具体措施，分裂一族建立别家，开展平
息“邪神”的祭祀，而本家则对此进行护卫及监视——
形成了这种形式。
　也就是说，这个别家，就是凑斗家。

　被这种祭祀特殊化的家族，十分重视血统的纯洁，近
亲结婚的例子亦不少见。
　然而在凑斗家却全然不是这样，这大概是因为作为使
命所镇守的事物是个十分大的灾祸吧。

　凑斗家的家长每代都由女性担任，一定要从外面的土
地入赘丈夫留下后裔。
　由于一直混入别处人的血统，凑斗家被视为异类的存
在，与所镇守的灾祸一同被隔离起来。

　宅邸远离村镇人烟，也是出于同样的理由。

　认同凑斗家的崇高地位的同时，却不容许凑斗家融入
这片土地，采取敬而远之的立场。

　……然而这也早已成为了表面现象。
　传统的支配阶级一般都保守到顽固的地步，皆斗本家
就是如此毫不放松其部署，因此他们尚维持着这种形式，
然而小镇上人们的意识已与过去不同。

　多数人只是把凑斗家当做有些奇怪的<RUBY text="··">神社</RUBY>来看待而已。

　若非如此，在山贼问题来临之际，作为制止强硬本家
的角色，养母也不会被大家所推崇吧。

　或许也和养母的性格有关系吧，她像个十分会照顾人
的姐姐。
　但无论如何，对本家而言，这必定不是件有趣的事。


　所以我为了去见他，已经做好了相应的准备。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆本家屋敷内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_皆斗家居間_03a.jpg");
	FadeBG(0,true);

	CreateWindow("窓", 1500, 0, 100, 1024, 376, false);
	CreateTextureEX("窓/絵背景100", 1500, 8, -248, "cg/bg/bg051_皆斗家居間_03a.jpg");
	Zoom("窓/絵背景100", 0, 2500, 2500, null, true);
	SetShade("窓/絵背景100", HEAVY);
	CreateTextureEX("窓/絵st100", 1600, 459, 55, "cg/st/resize/st本家_通常_私服_ex.png");
	CreateColorEX("絵色100", 1000, "Black");


	FadeDelete("絵暗転", 1000, true);
	WaitKey(1000);
	FadeDelete("上背景", 1000, true);

	Fade("絵色100", 1000, 500, null, false);
	Fade("窓/*", 0, 1000, null, false);
	DrawTransition("窓/*", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);


	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060380b52">
「想想看吧。
　他们虽然是正规军残兵，但数量连一百都
不到。只要募集小镇上的男子，攻他个出其
不意，就没有不赢的道理。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060390a00">
「是……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060400b52">
「可是统却说这样会死人啦，
不划算啦……
　真是女人的言论啊。都不知道世界上
有就算赌上性命也该守护的骄傲。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060410a00">
「……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060420b52">
「景明！
　你也是这么想的吧？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060430a00">
「……这。
　我等小辈，岂敢狂言。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 700, false);
	DrawDelete("窓/*", 700, 1000, "slide_01_04_1", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　……虽然心中已经有所准备，然而实际上变成这种情
况时，还是不知该如何应对。
　我将叹息藏于内心深处，斜眼确认了下钟表上的时间。
自来访开始已经过去一个小时了，却毫无进展。

　甚至连正题都没有触及到。
　对本家来说姑且不论，对我来说的正题完全无所触及。

　冒然提出应办之事是不礼貌的做法，可这又是无论如
何都无法避开的话题，所以只能由我这边试着提出山贼
的那件事了。
　不过这似乎是让人后悔的选择。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	Delete("窓");
	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060440b52">
「不可能不知道的吧！
　你不也曾为了国家而身赴战场吗？
虽然没有立下战功十分遗憾，但与那些
用金钱逃避兵役的酒铺臭小鬼可不一样。」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060450b52">
「我知道的。统想要办免除兵役的手续，
却被你拒绝了吧。
　自从老夫听说了这件事，就一直对你
刮目相看。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060460a00">
「不胜惶恐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……我当时只是不想再给养母多添麻烦了而已。

　看来是被误解了。

　一想到这个公认十分孤傲的人，从一年前光倒下以来，
对于我数次的拜访，虽然没有到欢迎的地步，但也没将
我扫地出门的理由是因为这一点，也就无法去解开这个
误解了。这让我心里有些难受。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060470b52">
「将你收养为养子的明尧，哼，
倒还是有些眼光。
　听说你的亲生父母作为志愿兵远赴
大陆，最终壮烈战死了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060480a00">
「是的。
　我是这么听说的。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060490b52">
「虽说流有南蛮的血脉，却不忘祖国给予的
恩惠，为国捐躯，令人钦佩。
　你的身体里也流着与你那双亲相同的
血脉。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060500a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　我不知该如何回答这个问题，仅仅行了个注目礼。
　在养父收养我的时候，最反对的就是眼前保守的老人，
这件事我是无意中从别人那里听到的，了解这一点的我，
对此不知该如何反应。

　然而本家并不是为了加强自己强硬主张的说服力而捏
造事实奉承我的双亲。
　给予我血肉的，似乎的确是那样的人。


　是长崎鸣泷人。
　也就是荷兰市国人，并不称得上是严格意义上的
大和人。

　西历一八〇〇年代初期，在席卷欧洲全土的拿破仑战
役中，荷兰王国被大英联邦踏平，一举歼灭，片甲不留。

　战争结束后，荷兰的国土也无法恢复。

　荷兰人无处可去的窘境，连德川宰相府也马上就知道
了。
　以开府以来长期持续的邦交为鉴，得出了对此视而不
见有悖国家信义的结论。

　然后便开放了当时作为国际港口同时也与荷兰人关系
友好的长崎近郊的土地，提供给他们作为居住地。
　在亚洲各地的商行辗转的荷兰商人，以及外交官们蜂
拥而至——自然是不在话下。

　这块土地便被命名为荷兰市国，仅仅只有对德川
宰相府与大英联邦不怀善意的几个国家承认它是
拥有独立主权的国家。
　之后过了百年。

　长崎鸣泷村这个小国家，其性质渐渐改变，已不同于
成立初期的荷兰亡命政权，而是成为了脱离大英联邦支
配的欧洲人的避难所。
　我的祖先也是<RUBY text="··">避难</RUBY>人士。

　据说，祖父那代是从新大陆那边过来的。

　恐怕，他们是第二次新大陆独立战争的残兵败将吧。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　将“<RUBY text="美利坚">伟大的故乡</RUBY>”从<RUBY text="不列颠">女皇</RUBY>的桎梏中解放吧——
　这句现在也仍在新大陆悄然流传的话语，祖父也曾经
说过吗。

　……对于血亲的事，着实不甚明了。
　我出生之家的姓氏——决意向大和归化的祖辈将原本
英语的姓氏改成和风——被冠以改次郎之名也不过是我
出生后的几年而已。

　大约二十年前，改家的父母——两人应该都是流着
浓厚大和血统的混血——留下了年幼的我，投身于大
陆战线中，随后战死。
　这在长崎鸣泷人之中并不是罕见的事。

　也许是真切希望能够回报接纳了流亡之身的大和，或
许也是对妄图在欧亚张开贪婪的统治之网的大英联邦实
施复仇。
　长崎鸣泷的成年人，无论男女，大多都参加了大和军。

　而且，加入在市国内组成的
荷兰骑士团的人亦有很多。

　那是四年前——在上次大战末期，他们向九州最前线
出击，以联盟军为对手奋战，最终玉碎牺牲。

　似乎我的双亲与养父在军内有深交。
　也因为这个，养父才收养了我。

　在那之后的二十多年岁月中，我以凑斗家的养子——
凑斗景明的身份生存着。

　现在，荷兰市国已不是公认的存在了。
　国际联盟宣告其不作为国家被承认，而且还被置于联
盟军的严密监控之下。虽然没有听说其受到镇压之类的
消息，但他们的生活环境想必很艰辛吧。

　只要想到一个失去双亲的孤儿要想在这般环境中生存
下来是何等艰难，养父的恩德对我而言，实在是不得不
万分感激的。
　与养父一同接纳我的一家也是。

　凑斗家对我有恩情。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想ＣＧ。庭木に水をやっている統と、景明（四～
//◆五歳くらい）を連れた明堯（署長）。統は二人の方
//◆を見ていない
//◆以下シーン、顔グラ使用せず。従来の擬似フキダシ型？
	PrintBG("上背景", 15000);
	EfRecoIn1(18000,600);

	FadeDelete("上背景", 0, true);
//	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev131_景明が湊斗家に来た日.jpg");
//	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【署長】
　
<voice name="署長" class="署長" src="voice/ma05/0060510a11">
『统……』

//【統】
　
<voice name="統" class="統" src="voice/ma05/0060520b46">
『……嗯？
　这孩子怎么了？』

//【署長】
　
<voice name="署長" class="署長" src="voice/ma05/0060530a11">
『唉，那个……
　该怎么说呢……很抱歉这么突然……』

//【署長】
　
<voice name="署長" class="署長" src="voice/ma05/0060540a11">
『我想让这孩子做咱家的养子。』

//【統】
　
<voice name="統" class="統" src="voice/ma05/0060550b46">
『……啊，这样啊。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さー。水を撒くＳＥ。数秒
	CreateSE("SE01","se日常_水_排泄音小");//ダミー

	CreateTextureEX("絵ＥＶ２", 120, 0, 0, "cg/ev/resize/ev131_景明が湊斗家に来た日_ex.jpg");

	Move("絵ＥＶ２", 2000, -200, @0, Dxl1, false);
	Fade("絵ＥＶ２", 500, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0278]
//【統】
　
<voice name="統" class="統" src="voice/ma05/0060560b46">
『……那么……』

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ３", 200, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	Fade("絵ＥＶ３", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0279]
//【統】
　
<voice name="統" class="統" src="voice/ma05/0060570b46">
『午饭，要做三人份的才行呢。』

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ。統の顔アップ。景明の方を向いた。
//◆差分。「にっ」と笑う

	WaitKey(1000);

//◆戻り
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("@Reco_Over*", 500, 0, Dxl1, false);
	EfRecoOut1(2000);
	Wait(100);
	Delete("絵*");
	OnBG(100,"bg051_皆斗家居間_03a.jpg");
	FadeBG(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060580a00">
「…………」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060590b52">
「——所以说，景明。
　你也了解为了骄傲而战的道义吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060600a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　忽然被念到名字，我的心绪从那些漫无边际的追忆中
回到了现实。
　不过，对方似乎也并未说什么有实质内涵的话。交谈
完全没有进展。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060610b52">
「比起舍弃尊严苟延残喘，带着骄傲而死才是
大和人。
　关于这点，那个统……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060620a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　我低下头，慎重地逃避回答并思考着。
　本家所说的话，我并不是不理解。

　但是这份理解同时加深了我对养母的理解，更加明白
她反对本家的原因。
　
　——骄傲固然重要。然而。

　为此舍命这种意愿正是因为其自发性才应当受到尊重，
而不是他人所能强求的。

　……概括而言，养母的意见就是如此。

　可见养母无法言明这一点的苦衷。
　倘若采取如此直接的说法，就会成为点燃本家的炸药，
很有可能将事情一下子逼到最坏的境地。


　我也不得不缄口不言。
　既不能当面说出对养母的赞同，也无法附和对养母的
责难，这样一来，沉默是唯一的对策了。


　老人语气粗暴的抱怨还在继续着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060630b52">
「……我说。在那时统居然都在说这种事。
真是愚蠢啊！
　景明，虽然感谢养育之恩是没错，
但也不要被过于毒害了呀。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060640a00">
「……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060650b52">
「那个小姑娘……光原是很有前途的啊。
　结果变成那种样子，真是太可惜了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我抬起头。
　将谈话引入正题的机会来了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060660b52">
「如果诸事顺利的话，现在光都成为
凑斗家的家主了。
　真是的，这是何等可怜啊！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060670a00">
「是的。
　原来的话……今年一月就举行束发
仪式了。光会继承凑斗家第四十三代
家主的位置。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　我说着没有成为现实的预定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060680a00">
「本家的苦衷，我已十分明了。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060690b52">
「哦哦。
　只要束发仪式和家主继承完成了，
老夫不得不解决的大事就只剩光的
婚礼了……」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060700b52">
「你也觉得很遗憾吧。
　如果这样下去光还是不能再次站起来的话，
你的立场也就无以为继了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060710a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　我的立场。
　
　——支持、守护光的一生。

　这是眼前的老人所定下的，我在凑斗家的使命，如果
光不在了就毫无意义的使命。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060720a00">
「可是这一切都是我的疏忽。
　都是因为我的大意，才让事情
落到这个地步。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060730a00">
「虽然道歉也没有用……
　可无论怎么想，都让我惭愧至极。」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060740b52">
「……你勿需道歉。
　病由天命。就算责怪他人也无济于事。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　本家轻声叹道。

　之所以模棱两可地将事实归于天命，是因为在那家引
发矿中毒事件的工厂开业前夕，漠视部分居民的反对给
予工厂开业许可的正是眼前这位老人。
　声音和表情都令人反感。

　也许本家认为我的言语是委婉的指责。然而，我并没
有这种打算。
　没有尽到作为监护人责任的我，并不认为眼前之人承
担着比自己更深重的责任。

　我决定在本家陷入不快之前，将话题进行下去。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060750a00">
「……昨晚也发作了。
　所幸，没有发展到很严重的地步。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060760b52">
「唔……
　身体怎么样了。稍微恢复一点了吗？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060770a00">
「十分遗憾……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060780b52">
「一定要在年内举行束发仪式！
　否则就违反家法了。凑斗家巫女的继承
必须在规定的年纪举行，这是自古以来的
严诫。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060790b52">
「若是违反了这点，
会给凑斗家的命运蒙上阴影吧。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060800a00">
「……是。
　不过现在，这件事也十分困难。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060810b52">
「能起来便可。
　只要在半天的仪式期间，静静地待在那里，
之后总会——」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060820a00">
「以现在的身体状况是无法实现的，本家大人。
　我们连她何时会发作都不知道。」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060830b52">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　本家看起来很焦躁地用满是褶皱的手揪着胡子。

　对这位将遵守规矩奉为圣旨的老人而言，皆斗一族的
头等大事——巫女的继承仪式——没按规矩来的话，他
作为族长的不良名声便会遗留下来，这是他无论如何都
不能接受的。

　能够攻破的漏洞就在那里。
　我稍稍跪着凑近。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060840a00">
「正因如此——本家大人。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060850b52">
「嗯？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060860a00">
「欧洲也在展开关于矿中毒的研究，听闻柏林的
麦格列博士是其中的翘楚。
  ……您觉得如何？」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060870a00">
「用本家大人的力量，邀请博士
过来如何？」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060880b52">
「又是这件事啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　本家露骨地皱起眉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060890b52">
「以掌管皆斗家祭礼的巫女的身份，
怎可交与他国医生手中。
　我都说过好几次了。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060900a00">
「我十分明了。
　然而，现在已经……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060910b52">
「医生的话我会安排的！
　之前的医生如果不行的话，下次就让
熊本大学的——」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060920a00">
「赤池教授的话，前几日已收到书信。
　他说他已束手无策。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060930a00">
「……将麦格列博士介绍给我的，
正是那位教授。」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060940b52">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　本家陷入沉默。
　脸上的表情因为残留的愤怒而扭曲，形成一幅可怕的
光景。

　这是危险的信号。
　只要是在本家的身边，对他十分了解的人，一旦看到
这副表情，都会立刻放下任何事情离开——因为如果不
这么做，自己就会成为被迁怒的对象。

　有时这意味着自己在这片土地上的仕途就此断绝。

　曾经由于不小心激怒本家而被罢免职务，流落街头的
人不在少数。

　然而我不可以逃避。
　光已经没有时间了。

　也许下次发作就会夺走她的生命。
　又或是再下一次的发作。唯一能确定的是这种情况一
定不会永远持续下去，甚至可以说比起永远，不会再有
下一次反而更接近现实。

　我没有闲情窥伺本家的心情。
　我跪倒在他面前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060950a00">
「真的是拜托了，本家大人……」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060960b52">
「……」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060970a00">
「拜托您了。
　为了光，为了皆斗家——恳请您同意。」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060980a00">
「拜托了！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　能够将遥远异国的名医请来的，除了眼前这位老者
再无二人。
　我平伏于地，将额头磕到榻榻米上。

　往常的话，在这时被大喝一声就结束了。
　然而今天，沉默持续了很久。

　即使不是出于家族情感，本家也从心底希望光能够恢
复健康。这份期待并不输于我与养母。
　对光的病症焦虑到简直都要发疯的地步，这一点同我
们毫无区别。……我相信这一点。

　相信着，等待着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060990b52">
「…………好吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　过了一会。
　老人挤出一句仿佛受伤的牛一般的低吟。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");


//嶋：修正（致し方もない）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061000b52">
「既然大和无人，那也没办法了。
　把那个柏林的医生叫过来吧。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061010a00">
「本家大人……！」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061020b52">
「不过啊，景明！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　太过高兴以至于不禁飞扬起来的面孔，迎来了威压的
目光。
　仿佛想要扎人一般，本家说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061030b52">
「但一切必须建立在，你的进言值得信任
这一……前提上。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061040a00">
「……是……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061050b52">
「你明白吗？
　老夫不能随意听信荒谬无知之辈的妄言，
以玷污凑斗家神社的清净。」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061060b52">
「不过，若你是值得信任的男人……
就听从你的意见，让他国的医生跨入
凑斗家的门槛。
　老夫，言尽于此。」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061070a00">
「——是。
　那么，我该如何证明这一点
才好呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　也就是说，需要<RUBY text="··">考验</RUBY>吗。
　遵守传统与光的性命，该以哪方面为优先呢——本家
正在犹豫着。

　主张后者的我的言语，对他来说究竟有多少分量呢。
　也即是说，是以这一点，来决定的。

　我绷紧了身心僵直着身体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061080b52">
「解决掉那些山贼吧。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061090a00">
「……哈？」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061100b52">
「解决掉那些家伙。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　皆斗家的族长，重复道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061110b52">
「无论使用何种手段都无妨。动员
镇上的男人也行。
　景明。用你的本事，将那些饥饿的野犬
从老夫身边驱逐吧!!」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061120b52">
「完成任务的那一天，我就承认你。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061130a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_007.nss"