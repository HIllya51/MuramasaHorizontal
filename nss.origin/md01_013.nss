//<continuation number="1230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_013.nss_MAIN
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
	#bg011_拘置所内_01a=true;
	#ev001_銀星号事件イメージ１=true;
	#ev139_統を殺害_a=true;
	#ev101_プロローグ_c=true;
	#ev106_雄飛と見下ろす村正_d=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev117_レースの情景_a=true;
	#ev123_大剣を持つガーゲット少佐=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_014.nss";

}

scene md01_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_012.nss"

//◆ばたん。
//◆監獄背景＋村正ＳＴ
	PrintBG("上背景", 30000);
	OnBG(100,"bg011_拘置所内_01a.jpg");
	CreateSE("SE01","se日常_建物_扉開く07");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SoundPlay("@mbgm22",0,1000,true);

	WaitKey(1500);

	StR(1000, @30, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @-30, @0, null, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130010a01">
《果、果然你还是想要做色色的事情吧！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130020a00">
「你怎么也当真了。
　我只是突然之间想不到别的理由。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130030a01">
《是真的吗。
　那，你是想干嘛？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130040a00">
「因为你各处都很脏，所以帮你擦擦。」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130050a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130060a01">
《啊……是吗……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――

//◆ＥＶ再び
	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　村正冷静之后，我再次抱起了它，继续擦拭。
　因为它刚才的挣扎，脏的地方似乎又变多了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130070a01">
《……不过这种事，之前一次都没做过吧。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130080a00">
「因为觉得没必要。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130090a01">
《嗯。
　即使放着不管，之后也会掉的。》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130100a00">
「不过，我改变主意了。
　不……我一直想要改变。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130110a01">
《？
　怎么回事？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130120a00">
「作为武者的状态……我认为应该改变。
　我是这样想的……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130130a00">
「为了击败银星号。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130140a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130150a00">
「现在这种状况，我们无法战胜她。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130160a01">
《…………》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130170a00">
「这是现实。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130180a01">
《……大概吧。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130190a00">
「那叫做心甲一致。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那是古时武者就该当做目标的境界。详细的含义可以
根据听者产生各种变化，但共同的目的应该是操控者的
指示到剑胄产生反应的时延最小化。

　尽可能地接近<RUBY text="Zero">零</RUBY>。
　据说，至今为止也没有人达到过其顶峰。但是我知道
——那个敌骑就在顶峰的至近处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130200a00">
「银星号似乎做到了。
　虽然不知是怎么做到的……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130210a01">
《…………》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130220a00">
「与其相比，我们的时效性要低劣很多。
　所以总是……<RUBY text="·····">察觉的瞬间</RUBY>就被击落了。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130230a00">
「只要这个劣势不挽回，无论战斗多少次，结果
还是这样。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130240a01">
《不用你说。
　这个问题我以前就考虑过了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130250a01">
《这里应该用制御系统的调整来改善。
　另外还有关节部的——》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130260a00">
「只靠你的努力，应该是无法解决的吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130270a01">
《……这个……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130280a00">
「心甲一致，是操控者和剑胄的课题。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130290a00">
「是对二者<RUBY text="··">距离</RUBY>的评价……
　远则不适，近则合适。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130300a01">
《……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130310a00">
「所以。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130320a00">
「你不用树立过多的自我，只要成为道具就可
以了。
　其后，我会来使用你。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130330a01">
《————》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130340a01">
《正相反吧。
　你只要作为我的手足就可以了。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　——对。
　我们就这样争论。

　至今为止一直如此。
　并且……一次次败给银星号。

　必须到此为止。
　制止银星号，尽早制止那份灾难，这是最重要的命题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130350a00">
「村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130360a01">
《……无论重复多少次也一样。
　这种对话。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130370a01">
《你不会让步，我也一样——》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130380a00">
「嗯。
　所以，就从我这边妥协吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130390a01">
《哎？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130400a00">
「拜托了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱く02");
	MusicStart("SE01",0,1000,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我对我的剑胄低头了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130410a00">
「我明白，你和银星号的战斗，
是绝对无法交给旁人的。
　我不会再说让你成为道具了。」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130420a00">
「村正。我认可你的意志。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130430a01">
《……主君。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130440a00">
「我也希望你能够认可。
　这战斗，我也无法交给别人。我必须要制止
光……」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0130450a00">
「拜托了，村正。
　认可我的意志吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130460a01">
《…………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130470a00">
「我的希望仅仅如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　这样，应该会有什么变化。

　并不是分享罪和责任。
　正相反——不能分享，不能退让，我们互相认可这件
事。

　我以我的意志和责任来战斗，担负着罪。
　村正也以村正的意志和责任来战斗。

　我们不侵犯对方的意志，而是尊重。

　我们该更早做到这一点的。
　在我们无益地努力让对方屈服之时。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130480a01">
《……毫无意义。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130490a00">
「我认为有。
　恐怕这是必要的事。」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130500a00">
「为了让我和你共同战斗。」

{//◆ちょっと動揺
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130510a01">
《至……至今为止，我们也是一起战斗的吧。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130520a00">
「不，那单纯只是<RUBY text="··">并排</RUBY>战斗而已。
　至今为止。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130530a00">
「我没有认可你，你也是一样。
　我们只是无视着这个问题，互相欺骗，在这
种情况下进行装甲。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130540a00">
「因为要打倒共同的敌人，所以才勉强成为了
武者的样子……
　但是，却无法击败银星号。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130550a01">
《…………》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130560a00">
「必须战胜。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130570a00">
「为了胜利，村正。
　你对我怎样想都可以。你想要仅仅把我当做
手足也可以……只是，这手足也有着不可退让
的意志，我希望你认可。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130580a00">
「拜托了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　我再次请求。
　……剑胄传音中只有困惑的沉默。

　果然，还是太晚了吧，我想得太美了。
　作为武者，我该把剑胄当做自己的另外一半，但我这
两年却没有眷顾它，事到如今感到悔恨。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130590a01">
《……为什么突然说这种话。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130600a00">
「因为我知道了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130610a01">
《哎……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130620a00">
「青江的阴义让我看到了自己以前的幻梦……
　那幻梦也混杂着你的过去。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130630a01">
《!!》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130640a00">
「我认为自己做了抱歉的事。
　随意看到别人的内心深处，这并非我本意。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130650a00">
「不过，你战斗的理由……
　你不能退让的理由，我因此也知道了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130660a01">
《……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130670a00">
「我也知道了，你们村正一族并不是妖甲。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　善恶相抵。
　看起来是诅咒，但其实那戒律却是向往和平的真挚愿
望。

　想到这戒律夺去了养母的性命，我的恨意也会涌出。
　但是，这果然还是错误的怨恨。我感到村正也背负着
某种可怕的东西，但也正是我没有去深入考虑，而将其
撇在一边。

　并且，对于这世界上没有至极的善与恶这种信念——<k>
我也无法完全同意。

　有些部分我无法完全接受。

　但是我理解了。
　对于南北朝那种完全泥沼化的抗争期，除了用这种究
极论去挑战之外，完全找不到其他平定战乱的希望吧。

　在看到了那种情景后的现在，我知晓了善恶相抵这四
个字中寄托的深邃思念。

　同时还有那思念招致的，对于凄惨结局的遗憾。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130680a00">
「村正……我也希望你能够亲手做个了结。
　我是这样想的。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130690a00">
「所以我认可你的意志。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130700a01">
《————》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130710a00">
「你能同样认可我的意志吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130720a01">
《不行啊。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＥＶ消し、立ち絵表示に戻り

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130730a00">
「……村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130740a01">
《我的想法不会改变。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130750a00">
「我不会让你改变想法。
　我只是希望你认可。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130760a01">
《我不认可……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130770a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130780a00">
「但是村正。
　我们必须胜利。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130790a00">
「我们必须变强。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130800a01">
《嗯。
　我也认为有必要心甲一致。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130810a01">
《所以你该遵从我的意志。
　让自己的意志睡去。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130820a00">
「……这我做不到。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　我肩负的责任和义务，不能交给别人。
　就像村正肩负的责任和义务那样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130830a01">
《是吗。
　不过啊。》

{	SetVolume("@mbgm*", 1000, 0, null);}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130840a01">
《与你的意见无关。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130850a00">
「什么……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130860a01">
《我本不想这样做。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130870a01">
《但是已经没办法了。
　既然你说出了这种话……没办法。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正帯電
	CreateSE("SE01","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(10);
	FadeDelete("絵フラッシュ白", 600, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130880a00">
「……?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130890a01">
《主君。我啊……
　能做到一件<RUBY text="母亲">二世</RUBY>和<RUBY text="外公">始祖</RUBY>都做不到的事。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130900a01">
《那是因为，我是以克制二世村正这个特定目
的为基础锻造的，所以才能成为可能。
　为了达到目的——》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130910a01">
《<RUBY text="··············">对自己的操控者也可以发挥力量</RUBY>。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ばちばち。
	CreateSE("SEL01","se特殊_電撃_帯電02");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(10);
	FadeDelete("絵フラッシュ白", 600, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130920a00">
「村正……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130930a00">
「你难道……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130940a01">
《你看到了我的过去，应该知道了吧。
　我也有这种能力。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130950a01">
《侵入人心的事，我也可以做到!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetVolume("SEL*", 300, 1, null);

//◆フラッシュバック。銀星号の精神汚染
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 100, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　
　
　　　　　　　　　　<RUBY text="Mental Pestilence">精　神　污　染</RUBY>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");

	SetVolume("SEL*", 1500, 1000, null);

	FadeDelete("絵白転", 600, true);
	SoundPlay("@mbgm04",0,1000,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130960a00">
「……停下吧！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130970a01">
《…………》

{	FwC("cg/fw/fw景明囚人_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0130980a00">
「那不是南朝王禁止的事吗?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　对。在那个过去的梦中，精神干涉的力量已经被敕命
严格封印了。
　中世纪的人尊重王室，这是现代人无法相比的吧。
那个命令应该是绝对的……

　结果村正——至少在表面上——没有表现出任何动摇。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0130990a01">
《那是……很久以前的事了。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131000a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131010a01">
《……那个时代中没有褪色而留下的东西，只
有我的装甲和使命。
　你的意志变得碍事，
将其击溃也会是很容易的。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

//◆汚染波発散。うぃーん。
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSPmul("絵演", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131020a00">
「呜……?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131030a01">
《对。
　是很简单的……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆うよーん。視界歪む？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSPmul("絵演波紋", 1000, Center, Middle, "cg/bg/bg011_拘置所内_01a.jpg");
	Zoom("絵演波紋", 0, 1500, 1500, null, true);
	DrawEffect("絵演波紋", 0, "Ripple", 400, 400, null);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131040a01">
　　　　　　“遵从我。”

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　不属于我的意志，在我的心中萌生。
　这是……村正的意志？

　精神污染就是这样的吗。
　这样——很不妙。无法抵抗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131050a01">
　　　　　　“遵从我。”

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　这股波从<RUBY text="··">内侧</RUBY>侵蚀着我。
　没有排除的办法！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131060a01">
　　　　“你的心没有必要。”

　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131070a01">
　　　　“对我……没有必要。”

　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131080a01">
　　　　　　“所以……”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。出会いからの色々
//あきゅん「演出：回想内容は後で考える」
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	Delete("絵演波紋");

//あきゅん「演出：出会い」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");

	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：プロローグ」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev101_プロローグ_c.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：雄飛殺し」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：適当に２話から」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：適当に３話から」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev117_レースの情景_a.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

//あきゅん「演出：適当に４話から」
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");
	Fade("絵白転", 200, 100, null, true);
	WaitKey(100);
	Fade("絵白転", 200, 1000, null, true);

	CreateColorSP("絵色黒", 5000, "#000000");
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131090a01">
　　“……所以…………抹消…………”

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明立ち絵アップ？
//◆ジジ……。なんか齟齬っぽい音
//◆びきゃーん。なんか力が弾けたっぽい音。フラッシュ。
//◆獄室
	CreateSE("SE01","se特殊_ノイズ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(10);

	CreateMask("絵覆", 6000, 0, 0, "cg/data/noize_01_00_0.png", false);
	Zoom("絵覆", 0, 1100, 1100, null, true);

	SetAlias("絵覆","絵覆");
	CreateTextureSP("絵覆/絵演景明", 5110, 212, -96, "cg/st/resize/st景明_通常_私服l.png");
	CreateTextureEX("絵演景明", 5100, 212, -96, "cg/st/resize/st景明_通常_私服l.png");
	Fade("絵演景明", 0, 300, null, true);
	FadeFR2("絵覆/絵演景明",0,1000,400,30,@0,30,Dxl2, false);
	FadeFR2("絵演景明",0,300,400,-30,@0,35,Dxl2, false);

	FadeDelete("絵フラッシュ白", 100, true);

	Wait(300);

	Move("絵覆/絵演景明", 1000, 212, @0, DxlAuto, false);
	Move("絵演景明", 1000, 212, @0, DxlAuto, true);

	Fade("絵覆/絵演景明", 300, 0, null, false);
	Fade("絵演景明", 300, 1000, null, true);

	Wait(300);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");

	Delete("絵覆");
	Delete("絵演景明");
	Delete("絵色黒");
	Delete("絵演*");

	Wait(30);

	FadeDelete("絵フラッシュ白", 1000, true);

	SetFwC("cg/fw/fw景明囚人_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131100a00">
「————————」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131110a00">
「……啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我——<k>
　
　　　　　　　　　　<RUBY text="···">还是我</RUBY>。

　是凑斗景明。不是别人。
　……我还保有自我。

　但是，为什么？
　我应该是被迫屈服于那个力量了……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32",0,1000,true);

	StR(1000, @-30, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @30, @0, null, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131120a01">
《……呜……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131130a01">
《为什么……我会！》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131140a00">
「村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131150a01">
《够……够了！
　我不需要你了！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131160a01">
《即使没有你——》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正飛ぶ
	CreateSE("SE01","se人体_足音_鎧歩く04");

	DeleteStA(300,false);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131170a00">
「你要去哪里！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131180a01">
《哪里都无所谓吧。
　我和你已经没关系了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131190a01">
《我去找别的操控者……》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131200a00">
「你说什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0131210a01">
《别了。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//◆去る
	CreateSE("SE01","se人体_動作_跳躍01");

	CreateColorSaddP("絵色白", 5000, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1000,null,false);

	DeleteStA(0,true);
	FadeDelete("絵色白", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　剑胄瞬间消失了。
　它没有留下任何痕迹——就像最初就不曾存在那般。

　连脚步声都传不到我的耳中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131220a00">
「————」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0131230a00">
（必须去追）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　我抛开一切逻辑，得到了这样的结论。
　现在，我不能和村正分离。<RUBY text="··">总之</RUBY>，
　我必须去追它！

　如果不去追，定会后悔一生。

　但是……
　怎么办呢。

　我是囚犯，没有自由。
　联络署长，履行释放的手续，也需要花费时间。

　最短也需要几个小时。
　…………能赶上吗?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_014.nss"