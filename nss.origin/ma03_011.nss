//<continuation number="1880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute))
	{
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg035_鎌倉サーキット俯瞰a_01=true;
	#bg039_競技場客席a_01=true;
	#bg037_競技場ガレージa_01=true;
	#bg036_競技場通路_01=true;

	#ev113_サーキット貴賓席_a=true;
	#ev101_プロローグ_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_皇路操=true;
	#voice_on_皇路卓=true;

//嶋：フラグ調整【090923】
//	if($ma03_011_routeFlag==true){$ma03_011_routeFlag = false;}
//	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_010.nss"

//◆鎌倉サーキット·俯瞰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110010a00">
「说明一下调查方针。」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110020a02">
「是。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110030a03">
「噢噢。」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0110040a04">
「大小姐。这样勉强地表现个性让人感觉
有些可怜哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　预选拔结束后，竞技场内广场。
　看准大半客人和败退队伍离开的时刻，
我们也准备开始行动。

　村正感觉到的<RUBY text="··">气味</RUBY>依然存在于赛道周边。
　没必要再管已经离开的骑体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110050a00">
「作为主要目标的调查对象是没有参加今天竞
赛的队伍。
　多半应该在检修处的机库内，为了明天的正
式预选进行骑体检查。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110060a00">
「也可能有进入赛道进行练习飞行的队伍，
那边就交给村正。
　我们伪装成竞赛相关人员，尝试与机库内的
队伍接触，进行情报收集。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110070a00">
「现在的警戒应该没有竞赛中那么严格，所以
只要不采取非常可疑的行动，就不会遇
到什么问题。一旦被怀疑就请尽快撤退。切忌
无理蛮干。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110080a03">
「提问。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110090a00">
「是，大尉阁下。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110100a03">
「要以哪个方向打听呢？
『你，认识银星号吗』这样的感觉可以吗。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110110a02">
「这也太不委婉了吧，喂。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110120a00">
「要是被怀疑就全完了。还是暂且停留于用无
伤大局的对话进行情报收集的程度就好。在不
经意的杂谈中得到意外收获的事情也相当常见。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110130a00">
「只是，如果非要说大体方向的话……
　就请主要探查渴求力量的人。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110140a03">
「这是为什么？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110150a00">
「这是银星号做出寄生体选择人类的，
应该说是——倾向吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。客席
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg039_競技場客席a_01.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw景明_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110160a00">
「村正，你就继续在控制塔上进行监视。
　接下来应该会有几个队伍进入赛道。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110170a01">
《了解。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110180a01">
《…………
　那个，主君。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110190a00">
「什么。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110200a01">
《这是我的想法。
　这次，银星号做出的七个“卵”。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――

//◆ＯＰ、卵を産む銀星号のカット
	CreateTextureEX("絵ＥＶ20",9000, -833,-80, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Move("絵ＥＶ20", 5000, @-100, @0, DxlAuto, false);
	Fade("絵ＥＶ20",300,1000,AxlAuto,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110210a01">
《被给予卵的武者中，我们已经找到三人。
……三人对吧。
　他们之间有共同之处。不这样认为吗？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110220a00">
「……共同之处。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110230a01">
《他们都寻求着<RUBY text="··">力量</RUBY>。渴望着力量。
　为了让他人屈服，实现自己的愿望。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110240a01">
《铃川令法、长坂右京、风魔小太郎……
　都是这样吧？　虽然程度和性质或许有
所不同。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110250a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110260a01">
《之前，银星号撒下“卵”的时候并没有
这种情况。
　看上去只是在无目的地选择寄生体。实际上
也是如此吧。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110270a01">
《可是这次明显不一样。
　恐怕是因为，这次的“卵”拥有将我的能力
分给寄生体的附加价值。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110280a00">
「……难得的力量。
　还是给需要的人比较好，这个意思？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110290a01">
《嗯。
　寄生体是<RUBY text="·····">被选择过的</RUBY>。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110300a00">
「既然如此——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110310a01">
《只要探查渴求力量的人就好。
　找出这个竞技场中比谁都要渴求力量的人……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――

//◆復帰
	EfRecoOut1(300);

	Delete("絵回想*");
	Delete("絵ＥＶ20");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @-60, @0,"cg/st/st香奈枝_通常_私服a.png");
	StCR(1000, @60, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110320a02">
「渴求力量的人……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110330a00">
「……话虽如此，但这里是赛场。
　每个人多多少少都会对力量抱有
一定程度的欲求吧。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110340a03">
「也是呢。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0110350a04">
「可要是内心燃着异常执念的人应该会很
显眼吧。
　我想对此多加注意还是有价值的。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110360a00">
「是的。
　那么就以前述方针开始行动。为了
提高效率，请分头行动。」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110370a02">
「是！　我会努力的！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――

//◆一条、去る
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	SetVolume("SE01", 3000, 0, null);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110380a03">
「那我们也走吧，婆婆。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0110390a04">
「是。
　嗯，反正我们基本都是在一起行动的。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆香奈枝＆さよ、去る
	CreateSE("SE02","se人体_足音_複数歩く01_L");
	MusicStart("SE02",0,1000,0,1000,null,true);

	DeleteStA(300,true);

	SetVolume("SE02", 8000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110400a00">
「……好的。
　那我也开始行动。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110410a01">
《请务必小心。
　因为就算什么都不干，你也很容易引起别人
的警戒。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110420a00">
「担心是多余的。
　要是我想做的话，与人友好相处这点事情简
直易如反掌。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガレージ
//◆ＳＥ：カツーン。冷たい足音一つ

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	CreateSE("SE01a","se人体_足音_歩く06");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01a");
	WaitKey($残時間);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110430a00">
「——泽田队的门仓直哉。」

{	NwC("cg/fw/nw門倉直哉.png");}
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110440e280">
「嗯？」

{	SoundPlay("@mbgm04",0,1000,true);
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110450a00">
「四国大会的冠军。
　可局外人都认为在全国强者云集的
大赛中没有胜算。」

{	NwC("cg/fw/nw門倉直哉.png");}
//「な、なんだよいきなり……」
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110460e280">
「怎么突然说这种……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110470a00">
「想要力量吗？」

{	NwC("cg/fw/nw門倉直哉.png");}
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110480e280">
「呃……诶诶？
　你，到底是……」

{//◆景明、笑う。ニヤ。超恐い感じ。
	FwC("cg/fw/fw景明_笑顔c.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110490a00">
「想要的话，我能给你……
　这样说的话，你会怎么做？」

{	NwC("cg/fw/nw門倉直哉.png");}
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110500e280">
「……咦、咿、咿————!!
　恶魔、恶魔在劝诱我————!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたばたばた。
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1250,null,true);
	WaitKey(2000);
	SetVolume("SE*", 1500, 0, null);

//◆通路
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("SE*", null);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110510a00">
「究竟是哪里出了问题。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110520a01">
《全部都有问题。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110530a00">
「她们三个会怎么样呢……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110540a01">
《比你好得多。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
//◆ガレージ
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　改变手法，继续调查。
　窥探了一下最近的机库，发现在杂志和街角都能
经常看到的简洁标志。

　意味着田村甲业的标志设计。
　看来这是始于战前的著名队伍，田村工业的机库。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwスタッフ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110550e010">
「您是哪位？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110560a00">
「失礼。
　正在视察敌情。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　出入口附近的工作人员向我提问，言语简短地做出
回答。
　撒谎者常多言。这种情况下，采取相对淡然的态度就
不会招来多余的怀疑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwスタッフ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110570e010">
「啊啊，是警察联队的人？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110580a00">
「——哈。正是。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110590a00">
「虽然自己是第一次参加……
但一眼就被看出来了吗。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110600e010">
「是啦。你的表情那么可怕，如果是参加者的话，
也只能是警察联队的人了吧？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110610a00">
「…………原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　虽然略含让我羞愧难当的部分，但这说明还是
让我暗自点头。
　他的话给了我很好的建议。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110620a00">
（是吗。
　那么将计就计好了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　今天就按这个方式行动吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwスタッフ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110630e010">
「火箭的状况如何？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110640a00">
「良好。
　那个骑体真的很棒。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110650a00">
「虽作为轴式四翼驱动的先驱，但其完成度
让人不得不大加赞赏。
　不过进行整备是一个难点。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110660e010">
「经常被这样说呢。好像在那个时候就是对那
一点没办法啊。
　不过，能够被警察先生们那么珍惜地使用，
我们也很高兴。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　工作人员露出善意的笑容。
　周围的人估计也在听我们的对话，而且对我这个外来
人员也没表现出不满的气息。

　警察联队使用的火箭是田村的作品。
　仅凭这点，就算比赛中是敌人，但也让他们对我有种
自己人的意识。对前来收集情报的我而言，这是再好不
过。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110670a00">
「今天不飞了吗。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110680e010">
「嗯。练习在早上就结束了。
　……这次啊，在真正比赛之前不太想让别人
看到骑体哦。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110690a00">
「也就是说，是新型吗。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110700e010">
「有封口令啊。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110710a00">
「理解。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110720e010">
「嗯，就请好好期待明天吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　对工作人员意味深长地笑容点点头，我移动着视线。
　估计他是个辅助机械师。虽然也算是听到了有趣的
事情——但现在我必须去和另一个人物聊聊。

　……找不到。<k>
　
　想着是不是不在的时候，再次转头寻找，这才终
于发现目标。

　让我急于寻找的人物是个小个子。

　与周围干力气活的工作人员们相比，身形要小上两三
圈。
　与其位于队伍中核的立场形成鲜明对照。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110730a00">
「……那个人是。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110740e010">
「嗯，我们的顶级赛手。
　想必您认识吧？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110750a00">
「当然。在杂志上见过多次。
　那么，我稍微去打声招呼吧。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110760e010">
「请吧。
　啊，因为是个内心纤细的孩子，
请不要吓到她哦。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110770a00">
「……好的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　听着虽无恶意，但却让我耳朵生疼的忠告，移
步向那个方向走去。
　顶级赛手坐在墙根下，正在用手加工什么的样子。

　在打磨一小块金属。估计是剑胄的零件。
　手法极为细致。像对待宝石一般反反复复打磨那个
金属块，确认状态之后仍不满足，又继续打磨。

　没有不尊重自己爱骑的骑手。
　虽说如此，田村的赛手倾注到剑胄上的爱意更是超
人一等。或许她的性格生来如此也说不定。

　精神集中，似乎连我的接近也没有发现。
　若是让她受惊，影响到手上工作的话就糟糕了。我
慎重发言道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110780a00">
「……失礼。」

{	#voice_on_皇路操=true;
	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110790b42">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　一直沉浸于打磨工作中，她缓缓抬起了头。
　很是熟悉的脸孔。只是单方面认识。姓名当然也记
得很清楚。

　双眸捕捉住了我。
　是这种稀罕职业特有的，让人甚至能感到一种握
力的精确视线。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110800a00">
「皇路操小姐。
　初次会面。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110810b42">
「……你是？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110820a00">
「警察联队的相关人员，凑斗景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　使用了微妙的表达方式。
　这种说法，也不尽然是谎言。

　会唐突地使出这种小花招，是因为突然生出一种
仿佛被她双眼窥探到内心深处的错觉。
　她有着深邃的双瞳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110830a00">
「若是有幸，希望能与你结识。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110840b42">
「……嗯。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110850a00">
「个人听说了很多传闻。
　比如你去年参战各地赛事，夺得共计
十胜的战绩。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110860b42">
「……嗯……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110870a00">
「贵爱骑雷霆的潜力虽然也是一个因素，
但树立记录的关键还是你的能力——其中
最出众的当属入弯技巧。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110880b42">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110890a00">
「最短的线路选择和最小的减速幅度。
　或许是有些陈腐的表达方式，但确实
只能说是一种艺术。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110900b42">
「……谢谢……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110910a00">
「……说起来这个夏天，听说你在练习中发生
接触事故而负伤。
　有什么大碍吗。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110920b42">
「……没事……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110930a00">
「……是吗。
　这真是再好不过…………」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110940b42">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　我刚说完，她——皇路操的眼中就露出仿佛在说：可
以了吗？的神色，回到了工作中。
　看上去并没有留意我的存在。虽说是内心纤细——<k>
不，这也是纤细的一种表现吗。

　她态度冷淡。
　但这又与出名人士常有的那种不想与一般人扯
上关系的态度不同。

　她属于另一个世界，想必这才是最合适的表达方式。
　她居住的世界，与我，不，甚至是与其他所有人类都
不一样。

　仿佛只是镜中世界和这个世界间因某种问题打开
了通信线路，才让我们得以对话一般。
　有种让人产生如此想法的特质。

　另一个世界的居民。
　音速领域的公主。

　即便言语相通，内心却无法交汇，这或许也是无可奈
何。

　……话虽如此，到底是怎么回事呢。
如果这个机库中有会被“卵”选作寄生宿主的人，除
了操纵剑胄之人，除她以外再无人选。

　属于不同世界就没办法什么的，也不能像这样干脆地
离开吧。
　必须再进一步和她交谈。

　……虽然露骨询问是最简单的。
　可是方才已经失败过一次。

　必须通过无伤大局的谈话来获取情报……
　注视着忙碌于业务中的工作人员的身姿，思索恰当
的话题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110950a00">
「……这个赛场的设备很完善呢。完全铺装的
赛道自不用说，另外还有空间得到充分保证的
维修站，检修场，选手用宿舍和餐厅，甚至还
有公园。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110960a00">
「实在是本人学生时代从未想过的景象。
　虽然从那时开始就喜欢上了装甲竞技，常常
入场观战，可当时的竞技场实在是相当<RUBY text="ｓｉｍｐｌｅ">单纯</RUBY>。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110970a00">
「没有观众席是理所当然的，一般都是在草坪
上铺席子当座位。
　连机库什么的也没有呢。参加队伍都是自己
搭建帐篷。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110980b42">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110990a00">
「可比赛还是很棒。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111000a00">
「中山升、亚久田进次郎、广中兄弟……对，
还有你的父亲，皇路卓。
　他们全然不顾恶劣的环境，出色地飞行于
赛场中。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111010b42">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111020a00">
「皇路卓来到临近竞技场时的事情我还记
得很清楚。虽然那个时候的比赛规模相
当小，可距离挑战世界不远的英雄还
是让我们看到了他全力以赴的飞行。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111030a00">
「正如他平时所做的那样。
　将其他所有选手甩在身后，在最前端孤独
飞翔的身姿，直到如今仍然萦绕在我的眼底，
挥之不去。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111040a00">
「每当我想起这个，那时的兴奋就会复苏，
让心脏的鼓动加速。
　同时也从心底涌起一股遗憾。要是没有战
争的话……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　停下话语。
　因为发现自己不过是在进行独白。

　完全没有回应的声音。
　
　……我究竟在做什么。

　用指尖按了按鼻梁，轻轻闭上眼睛。
　转换心情。

　——还是得单刀直入地询问吗。
　既然毫无进展，那也没办法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0324]
　这样想着，再次将目光投向皇路操。
　接着一惊。

　她在看着我。
　摇曳在那双瞳中的色彩与之前完全不同。

　不是在另一个世界，而是在同一世界中
捕捉住了我的身姿。
　
　——意识到自己的误解。

　她<RUBY text="·····">在听我说话</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw操_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【操】
<voice name="操" class="操" src="voice/ma03/0111060b42">
「请继续。
　……如果可以的话……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111070a00">
「…………好的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　将几乎被她双瞳吞没的自我抽离出来，点点头。
　把困惑埋藏到自己的肺腑之中，我继续说了下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111080a00">
「我认为皇路卓的飞行技术与当时世界一线选
手相比也不算逊色。
　尤其是他的过弯……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111090a00">
「那如同穿行草间的灵蛇一般的旋回技法在大
和骑手中大放异彩。
　能模仿如此技术的人，不管是过去还是当今
均不存在。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111100a00">
「……除了他的亲生女儿，你。
　在我看来，随着时间推移，你的飞行技巧已
经越来越接近令尊。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111110b42">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111120a00">
「那想必是令尊亲手相传的成果吧？」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111130b42">
「……嗯。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111140a00">
「是这样啊。
　真是令人欣慰。虽然皇路卓的梦想不幸中断，
但有你来继承这个梦想的话，他的遗憾也会得
到弥补吧。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111150b42">
「……真的吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111160a00">
「是的。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111170b42">
「……嗯。
　我也是，这样想的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111180a00">
「目标是世界吗。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111190b42">
「……嗯。
　首先在国内胜出……然后。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111200a00">
「那么，这次大赛很重要呢。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111210b42">
「……会胜出的。
　必定……会成为第一个全国王者。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　以世界的速度巅峰为目标的少女，握紧了小小
的拳头。
　无法从外表判断，其中凝聚了多么强大的力量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111220a00">
（…………）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111230a00">
（有渴求力量的理由吗……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……不禁对思考这种事情的自己感到嫌恶。
　明明她仅是出于孝心才这样说的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111240a00">
「有你认为是强敌的对手吗？」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111250b42">
「……果然还是翔京吧。
　还有，横锻……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　翔京兵商是田村长年的宿敌。
　横锻——横森锻造虽然在国内评价低于田村和
翔京，但从其在主战场欧洲确立了颠覆人们对
亚洲的传统偏见的名声这点而言，算得上是独树一帜。

　这两家想必都准备了可谓最强的骑体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111260a00">
「确实，就是这两家了呢。
　尤其是翔京，因为有可能会投入传闻中急升号
系列的最终完成型……」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111270b42">
「…………对不起。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111280a00">
「什么？」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111290b42">
「……警察联队……那个……
　………我也，很喜欢火箭。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111300a00">
「……啊啊，没什么。
　非常感谢。我也很喜欢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　为人着想的方式略显笨拙。
　不过，完全不会感到不快。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111310a00">
「这也没办法。
　要在比赛中胜出，钱是必要的。不管人员
多么优秀，若资金不足，有的地方是无论如
何也无法弥补的。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111320b42">
「……嗯。
　钱的问题，真的很麻烦。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111330a00">
「警察联队的运营都是依靠局内外有志之士的
捐赠。无法指望富足的资金。
　若是能从警察的预算中调取费用的话会
轻松一些……但自然不可能。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　那种做法说不定会引发暴动。
　因为所谓的警察预算正是国民的血汗税金。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");


//嶋：修正（使う）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111340a00">
「这次就请让我为你加油吧。
　作为同样使用田村剑胄的人。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111350b42">
「……谢谢。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111360a00">
「刚才，从工作人员口中听到。
　田村似乎也要投入新型骑呢。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111370b42">
「……嗯。最新型。
　汇集田村全部技术的……结晶。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111380a00">
「真让人期待。
　既然公布就在明天，我就不进一步——」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111390b42">
「……这个……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111400a00">
「哈？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　她举起一直收在手中的物体。
　金属块——是驱动翼用的轴承吗。

　……原来如此。
　想来也是当然。她刚才是在整备明天半决赛
中使用的宝贵骑体。

　虽然剑胄的整备是技师的工作，但也不是没有
全套专门知识就无法插手的专业技术。
　简单的工作即使是外行人也能帮忙。没有哪部
法律规定骑手不能做这个。

　是否要做这样的工作取决于骑手的性格。也有
人认为完全不参与才是骑手的矜持。
　她估计是<RUBY text="··">参与</RUBY>的类型。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111410a00">
「这就是新型骑吗。
　难怪，会如此重要地对待。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111420b42">
「……嗯。很重要。
　比我的生命……还要重要。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111430a00">
「……是吗。
　一定花费了极大的劳力制造吧。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111440b42">
「……嗯。
　这是，父亲的血汗。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111450a00">
「……？」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111460b42">
「身体的一部分。
　所以……要重要地对待。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111470a00">
「失礼。
　莫非那个新型骑，是令尊——皇路卓
先生设计的吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　皇路卓在引退之后，从未在媒体面前现身。
　虽然有在训练女儿的传闻——看来也是事实
——但从未出现在女儿的比赛中。

　他现在在哪里，又在做着什么。有各种各样的猜测。
　可其中从未有过他在田村进行骑体开发的猜想。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【操】
<voice name="操" class="操" src="voice/ma03/0111480b42">
「……想和父亲见面吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111490a00">
「呃……嗯。
　他在这里吗？」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111500b42">
「……嗯。
　请稍等一会。」

//【操】
<voice name="操" class="操" src="voice/ma03/0111510b42">
「……父亲……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　少女喊了一声。
　但终归无法在喧闹的机库中传达。

　不过，附近的工作人员马上反应过来。
　只见他走到机库深处，向里面的某人指了指这边。

　——一个消瘦的身影走近过来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw皇路_通常a.png");

	#voice_on_皇路卓=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111520b24">
「怎么了？　操。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111530b42">
「……这个人……是警察联队的。
　他说在过去看过父亲的比赛。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111540b24">
「啊啊，这样啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　看向我的是一张线条柔和的脸孔。
　一眼看去，这幅容貌并没有激起我的记忆，差别实在
太大。昔日的大和最强骑手皇路卓既不戴眼镜，也从未
露出过如此柔和的表情。

　直到细看到接近于失礼的程度时，我才改变了想法。
　除去眼镜，让时间逆行的话，站在这里的确实就是那
位骑手。表情——也曾在过去的杂志中看过。私生活中的
他温和得判若两人。

　那几乎让人感觉有几分柔弱的微笑中，全然看不出曾
经要凶猛撕咬敌手的饿狼般的面影。
　即便如此，他无疑就是皇路卓。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111550a00">
「我叫凑斗景明。
　能见到您是我的荣幸。作为曾经为您狂热
喝彩之人的一员。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111560b24">
「不，不敢当。
　我是皇路卓——不过请务必为我在这里的事
情保密。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111570a00">
「这是何故……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111580b24">
「已经决心不再站到外面的舞台上。
　我已经以自己的方式与『皇路卓』做了诀别。
若是再被挖掘出来的话，就有点……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111590a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　数秒之间，我就理解了他的言外之意。
　经历挫折的皇路卓与女儿共同复活——是
不想被人这样不负责任地嘲弄吗。

　感觉能理解他的心情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111600a00">
「非常抱歉。
　若是如此，本人这样的不速之客也会让您感
到不快吧。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111610b24">
「啊，不、不是那个意思。
　我才应该说抱歉。糟糕啊，说了些讽刺般
的话呢。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111620b24">
「能和像你这样的人见面我很高兴哦。了解到
昔日的自己作为一个职业选手，让观客感到了
喜悦，怎会感到不愉快呢。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111630b24">
「……虽然也感到有些难为情。
　但绝对不是讨厌。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111640a00">
「是吗。
　那就好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　这是发自内心的话。
　因为我也明白他的话并非谎言。

　皇路操还是坐着，抬头看向我们。
　她的脸上带着一种自豪的神色。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111650a00">
「不过，真让我惊讶。
　您居然会站在开发者的立场上参与装甲竞
技，真是做梦都没有想过。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111660b24">
「啊啊，从操那里听说了吗。
　嗯。虽然似乎和刚才说的话有些矛盾，但
毕竟还是无法舍弃争雄世界的梦想……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111670a00">
「我想这也是人之常情。
　世界之巅曾经就位于您触手可及之处。如
果没有意外的话，估计就能顺利登上去。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111680a00">
「如果不是因为战争……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111690b24">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　带着暧昧的表情点点头。
　此刻，在他脸上奔涌而过的感情涡流实在太过复杂。

　——没错。战争。
　他登顶世界的梦想正是被战争夺走。

　皇路卓完成国内制霸正要奔赴欧洲时，就在那年。
　大战爆发。

　……六年前终于迎来终战时，他肉体的全盛期早已逝去。
　因为和自己的努力与才能全无关系的原因破灭的梦想，
会让他心怀多么沉痛的悲愤。不言而喻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111700a00">
「失礼。
　说了些欠缺考虑的话。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111710b24">
「啊啊，不。请不必在意。
　毕竟是过去了的事情。心情早已平复。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　……这次的话，是谎言。
　可以看得出来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111720a00">
「……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111730b24">
「而且，女儿也代替我去飞行啦……
　用我开发的机体。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111740a00">
「一时间真让人难以置信。
　是从骑手引退后，从头开始学习的吗？」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111750b24">
「哈哈，那就实在太过……
　我原本就是干机械的哦。测试试制机的时候，
学会了飞行法，不知何时竟成了自己的本行
……是这样过来的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111760a00">
「是这样啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　初次知晓的事实。
　不，过去似乎也曾听过这样的传闻？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111770b24">
「如你所言，我曾一度作为骑手逼近世界之巅，
继而又坠落谷底。
　可是如今，我回来了。回到过去那个地方。
这次是以开发者的身份。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111780a00">
「带着田村技术的结晶吗。」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111790b24">
「连这个也说了吗？　操。」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111800b42">
「……嗯。
　因为……就是这样嘛。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111810b24">
「要是被山崎先生听到可是会发怒的。
　因为很多人都反对那个的开发。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111820b42">
「……可是。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111830a00">
「看来是制作了相当杰出的作品呢。」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111840b24">
「究竟会如何呢？
　或许会成为田村自始以来最大的劣作也说不
定。存在这个可能性。社内已经有人这样大声
宣扬了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111850a00">
「您自己认为呢？」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111860b24">
「……这个。
　也只有请你对明日的一战拭目以待啦。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111870a00">
「……自信十足呢。」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111880b24">
「哈哈哈。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　皇路先生像要支开话题般笑了几声。
　但这笑声中却听不出对我的言语给予否定
的意味。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆アナザー好感度＋
//嶋：フラグ調整【090923】
//$Another_Flag = $Another_Flag++;
//	$ma03_011_routeFlag = true;
//	$Others_Flag++;

//	judgment_of_count();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　——好的。
　差不多是时候了。

　停留太久感觉会给他们带来困扰。
　而且，也有些在意一条和大鸟大尉的状况。

　应该去找她们吗……或者说。
　该怎么做呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}


//◆選択：一条の様子を見に行く／香奈枝の様子を見に行く／この場に留まる


..//ジャンプ指定
//◆この場に留まる　"ma03_011a.nss"
//◆一条の様子を見に行く　"ma03_011b.nss"
//◆香奈枝の様子を見に行く　"ma03_011c.nss"


//★選択肢シーン
scene ma03_011.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm16",0,1000,true);

	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice03("留在这里","去看看一条","去看看香奈枝");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA03();
//この場に留まる　"ma03_011a.nss"
				$GameName = "ma03_011a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//一条の様子を見に行く　"ma03_011b.nss"
				$GameName = "ma03_011b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//香奈枝の様子を見に行く　"ma03_011c.nss"
				$GameName = "ma03_011c.nss";
		}
	}
}