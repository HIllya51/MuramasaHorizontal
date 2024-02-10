//<continuation number="1190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_003.nss_MAIN
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
	#bg029_ガーゲット少佐執務室_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_キャノン=true;
	#voice_on_ガーゲット=true;

	$PreGameName = $GameName;

	$GameName = "ma03_004.nss";

}

scene ma03_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_002.nss"

//◆横浜ＧＨＱ基地
//◆参謀第二部資料管理課（キャノン機関）

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg029_ガーゲット少佐執務室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm21",0,1000,true);

	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,true);


//◆以下横書きボックス（英語会話だから）

//◆こんこん。ノック音
	CreateSE("SE01","se人体_動作_ドアノック01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwH("cg/fw/fwガーゲット_通常.png");

	#voice_on_ガーゲット=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030010b02">
「请进。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ガチャ。タッ。ドア音と足音
	DeleteStA(300,true);

	CreateSE("SE01","se日常_建物_扉開く01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetVolume("SE01", 100, 0, null);

	CreateSE("SE02","se人体_足音_歩く03_L");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Wait(1000);
	SetVolume("SE02", 100, 0, null);


	StR(1100, @0, @0,"cg/st/st香奈枝_通常_制服c.png");
	FadeStR(300,true);

	SetFwH("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030020a03">
「大鸟香奈枝中尉，以及伍长级别的文员永仓
纱代。现在前来报到。」

</PRE>
	SetTextEXH();
	TypeBeginHI();//――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(300,false);

	SetFwH("cg/fw/fwキャノン_通常a.png");

	#voice_on_キャノン=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030030b03">
「辛苦了。
　我也需要作自我介绍吗？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030040a03">
「如果有时间的话请一定说明，科长。
　我从维罗少将阁下那里仅仅了解了些大概
的情况。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030050b03">
「那我大致说明一下吧。幸运的是今天很空。
昨天很惨的哦？　才睡了三个小时。
　对了，那位精力没回传到头发的阁下，
真的就只粗略地讲了一点点吗？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030060a03">
「他说了点什么呢……
　纱代？」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0030070a04">
「『中尉，交给您的任务。是玛塔·哈
莉（历史著名间谍，擅长舞蹈）！　您获得了
担当联盟军历史性母狐狸一职的荣誉！　相信
你会乐意的。另外，舞蹈的训练就不必了』。」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0030080a04">
「以上。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030090b03">
「……这样的说明根本无从去评价算是
清楚还是不清楚。
但也说到重点上了。
　那么，中尉你是如何回答的？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030100a03">
「我说，我没有自信能演得像葛丽泰·嘉宝那
样出色。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030110b03">
「唔。那是大和民族特有的谦逊吗？
　我倒觉得中尉的话，一定会非常出色。
与那些从半岛的穷乡僻壤和奶牛一起长大的
海盗子孙相比更有魅力。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030120a03">
「哎呀，好厉害。不留神就会听信你的言辞了。
我对别人的煽动挑逗很没抵抗力。
　但，就算顺应你的煽动，没有剧本的话还是什
么都做不了吧？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030130b03">
「我明白了。按顺序来吧。
　我是克莱布·卡农。在参谋第二部担任资料
管理科科长一职。但别叫我科长。
我不喜欢这个单词的发音。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030140b03">
「叫我中佐就行了。
　接下来，这一位是我的副官。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030150b02">
「我是乔治·卡杰特少佐。
　关于工作方面的报告一般是由我来负责的。
我们见面的机会大概也会变多的。」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030160b02">
「虽然可能会遇到各种困难的任务——
你有信心顺利完成吗？　中尉。」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030170a03">
「我完全没问题。
　今后恳请您多多指教。卡杰特少佐。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030180b02">
「握手就不必了。
　大鸟中尉。我说的是好好地工作，
没有说要跟你搞好关系。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030190a03">
「……哎呀。
　那真是对不起了。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030200b03">
「乔治？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030210b02">
「有什么问题吗？　中佐阁下。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030220b03">
「…………算了，他就是这样的人。
　别太在意他，中尉。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030230a03">
「无需担心。我一点都没放在心上。
　这样连之后洗手的功夫都省下来了。」

{	FwH("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030240b02">
「…………」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030250b03">
「哈哈哈哈。是吗是吗。你们的团队合作
很完美呢？　我真是幸福啊。
　你先稍等一下。我去向维罗的父亲提交
调到塞班岛的申请。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030260b02">
「请先将要对大鸟中尉说明的事情讲完。
中佐阁下。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030270b03">
「啊啊，我会的少佐阁下。
　女士？　关于资料管理科
还是简单地说明一下比较好。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030280a03">
「如果方便的话……中佐。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030290b03">
「嗯？　你那两个字好像说得很吃力啊。
　是因为在小时候一不小心把中佐生吃了
导致拉肚子了吗？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030300a03">
「让我想想……
　我不否认就在前几天还在一个被称呼为中佐
的人那里感觉到有点食物中毒呢。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030310b03">
「啊啊，科布登那个笨蛋吗。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030320b02">
「中佐阁下。你的用词有些太过直截了当了。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030330b03">
「那么，改成科布登教养失常症吧。
　你听说了吗，中尉？　其实就在你们一前一后，
那家伙也丢掉了民政局的席位呢。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030340a03">
「哎呀。这我还是第一次听说。
　之前还以为他凭着更换无能
巡查官的功绩而升迁了呢。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030350b03">
「那成了他最后的工作。只是结果很可惜，
没有升职反而降职了。
　现在他大概正在横须贺的港湾基地，痛骂着
新的椅子吧。」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030360a03">
「能去湾岸的度假地赴任真是让人羡慕。
　荣升的理由是什么呢？」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030370b03">
「受贿。
　他对从建筑企业、走私者、幕府的官吏
那里赚点小钱图便宜搞副业，
抱有极大的热情。」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030380a03">
「哎呀哎呀。
　做过头了引来仇恨，真是可怜。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030390b03">
「可怜的是民政局的其他达官贵人们哦。
　托他的福，他们必须暂时收敛一下副业了呢。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030400b03">
「如果他能稍微注意一下不那么引人注目的话，
监察部门也就不会额外地去加班。
一般情况，会使用基地的电话吗？
这样无论如何都必须揭发吧。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030410a03">
「堂堂正正地用也可以的吧？」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030420b03">
「然而，他走出民政局的时候别提堂堂正正了，
而是一副垂头丧气的模样。
　有点偏题了。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030430b03">
「中尉，你觉得我们资料管理科的职责是
什么呢？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030440a03">
「让我想想。
　在我看来，大概是——」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030450a03">
「资料的管理吧。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030460b03">
「太厉害了。回答正确啊大鸟中尉。
　像你这样优秀的人才我还是第一次见到。」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030470a03">
「那个，承蒙夸奖。」

{	FwH("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030480b02">
「…………」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030490b03">
「喂，乔治。
　你也说两句嘛。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030500b02">
「是，中佐阁下。我拒绝。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030510b03">
「……算了，事实也的确如此。
　只是漏了一点。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030520a03">
「请说。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030530b03">
「我们是<RUBY text="··">收集</RUBY>情报资料并管理。
　这个收集方面其实已经成为主要的业务。
办公室里一直没人也是因为这个。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030540b03">
「给科室命名的时候维罗少将阁下大概忘记把
这个收集的要素加进去了。
托他的福，不知实情的外部就称呼为闲职。
真是的，真让人困扰。」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030550a03">
「……原来如此。
　因此就有玛塔·哈莉了呢。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030560b03">
「这个部门看上去挺有意义的吧？　但是，我的
部下全是些内敛的人……很难向别人去宣扬
自己的工作。大致就是这样的风气。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030570b03">
「其实我也是那种人。
　实在抱歉大鸟中尉，请你也遵循这样的风气
吧。这是团队合作。如果你无法做到的话，希
望能尽量早一点说出来。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030580b03">
「我会安排你回到你所羡慕的前上司身边去，
恢复作为他部下的工作。
　其实一些必要的申请文件我已经准备好了。
那么？　我该怎么办？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030590a03">
「啊呀。谢谢您的无微不至。不胜惶恐。
　但也请您无需担心。说到内敛，
我自己很有自信。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030600b03">
「ＯＫ，ＯＫ。那样就没什么问题了。
　怎么样，卡杰特少佐。你不觉得她可以从事
一流的工作吗？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030610b02">
「是的，中佐阁下。
　下官还有一些疑问。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030620b03">
「什么？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030630b02">
「大鸟中尉。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030640a03">
「是。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030650b02">
「您因之前巡查官的工作，曾干涉过大和国的
内政。
　这点没弄错吧。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030660a03">
「没有。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030670b02">
「后悔吗，反省吗？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030680a03">
「都没有。
　卡杰特少佐。」

{	FwH("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030690b02">
「……那么，辩解呢？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//――――――――――――――――――――――――――


	SetFwH("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030700a03">
「<RUBY text="ａｎｄ·ｓｏ·ｏｎ">以下同前</RUBY>。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030710b02">
「…………
　中佐阁下。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030720b03">
「有什么不好的事情吗？　少佐。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030730b02">
「下官觉得，有很大的问题。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030740b03">
「啊啊。是有问题。
　但那不是中尉的问题。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030750b03">
「她这样的人才被闲置了才是问题。
所以就成了<RUBY text="··">那样</RUBY>。
　而且问题已经解决。对吧？
中尉也一定没有什么问题。」

{	FwH("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030760b02">
「但是……」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030770b03">
「大鸟中尉。不，大鸟香奈枝小姐。
　我有问题想请教身为大和人的你。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030780b03">
「俄罗斯帝国和大英联邦，你要选哪个作为
朋友？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030790a03">
「……」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030800b02">
「…………」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030810a03">
「……和白熊相比应该还是公牛比较容易相处
吧？　先生。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030820b03">
「很好。非常好。
　在大英联邦倡导下应运而生的国际统和
共荣联盟，进而其属下的我们ＧＨＱ
与大和国，也能构建良好的关系。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030830b03">
「没有异议了吧？　卡杰特少佐。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030840b02">
「……是。
　如果中佐阁下您这么说了。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030850b03">
「真是的真是的。
　有个死板的上司真是麻烦呢，
对吧中尉？
因为我也有个死板的部下所以很清楚。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030860a03">
「是啊，卡农中佐。
　虽然并不讨厌哦？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030870b02">
「是吗。
　不过我，不喜欢像您一样的部下。」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030880a03">
「那真是遗憾。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030890b03">
「这可不是绅士的行为呢，乔治。
　那么，中尉。今天就这样了，没别的什么。
但明天开始就尽快执行任务吧。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030900a03">
「是的。
　是怎样的任务呢。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030910b03">
「明天早上，我会口头下令的。
　但基本情况已经写在这份资料里了。请在明
天之前读完。读完后，按军规处理掉。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030920a03">
「是的。
　…………这是？」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030930b03">
「新的阶级章。从明天开始你戴上
这个。
　就这样，大鸟大尉。」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0030940a03">
「是。」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0030950a04">
「告辞了。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――

//◆ガラッ。二人、出て行く
	CreateSE("SE01","se日常_建物_扉開く01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStR(300,true);

	WaitKey(300);

	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,false);

	SetFwH("cg/fw/fwガーゲット_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030960b02">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030970b03">
「你还想说什么吗？　卡杰特少佐。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0030980b02">
「……卡农中佐。
　您是真心觉得那大和人值得信赖吗？」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0030990b03">
「大和人吗。她种族是大和人啊……
但不是大和国民哦。
　拥有哈布斯国籍和军籍并参与联盟军。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031000b02">
「中佐，我说的并非那样的事……」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031010b03">
「我明白。
　但你这样想想，乔治——她果真愚蠢吗？」

{	FwH("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031020b02">
「不。
　很有黄种人风格，擅长阴险算计。
所以才更加……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031030b03">
「那么她对于自己，或者大和的损益都计算过了
吧。你还记得她说过的吗？跟俄国的熊相比
还是英国绅士更好。事实也是这样。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031040b03">
「屈从俄国的话只会沦为农奴。
中央亚洲曾存在的各国的现状证明了这个。
　甚至六波罗幕府都不在考虑范围内吧？」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031050b03">
「她不至于在三者中选错恋人的。
　那样就行了不是吗？
然后……是啊。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031060b02">
「…………」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031070b03">
「也就希望她<RUBY text="····">聪明过头</RUBY>了。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031080b02">
「……我果然还是……」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031090b03">
「别再说了。
　少佐你的担忧就留在心里吧。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031100b02">
「是。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031110b03">
「重要的是把握棋子的行动并加以使用。
步兵只能向前一步。象只能斜行。
只要懂那些就行。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031120b03">
「这层意义上，她不就跟那枯瘦男人完全一样吗？
　不是吗？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031130b02">
「……是的。
　这我理解。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031140b03">
「那就这样。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031150b03">
「……但就算如此。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031160b02">
「什么。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031170b03">
「维罗那大肚子，还真敢说玛塔·哈莉啊。
　你知道的吧？　她在法国被处刑时候的罪名
可不单单是间谍。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/ma03/0031180b03">
「而是<RUBY text="··">双重</RUBY>间谍。
　欧洲史上著名的妓女，
朝法国及德国两国都张开双腿。」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma03/0031190b02">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_004.nss"