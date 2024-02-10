//<continuation number="6050">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene ma04_014vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_014vs.nss","MeimetuAction",true);
	Conquest("nss/ma04_014vs.nss","MeimetuSET",true);

//あきゅん「演出：ここで読み込ませると流れが悪すぎるので前ファイルで読ませます」
	//CP_AllSet("村正");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//$Ichizyou_Dead = true;
	//$Kanae_Dead = true;

	//▼イベントＣＧ
	#イベントファイル名=true;

	if($Ichizyou_Dead == true){
		#ev004_香奈枝の凶眼_b=true;
		#bg005_山中_03=true;
	}else if($Kanae_Dead == true){
		#ev910_荒覇吐胸元アップ=true;
		#bg005_山中_03=true;
	}else{
		#ev004_香奈枝の凶眼_b=true;
		#bg005_山中_03=true;
	}


	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定３
		$GameName = $BasGameName + "_01";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定４
		$GameName = $BasGameName + "_01ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定５
		$GameName = $BasGameName + "_02";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定５
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定６
		$GameName = $BasGameName + "_02ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定６
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定７
		$GameName = $BasGameName + "_03";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定７
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($Kanae_Dead == true){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		call_scene @->ma04_014vs_ic_Select.nss;

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $BasGameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定３
		$GameName = $BasGameName + "_01";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定４
		$GameName = $BasGameName + "_01all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定５
		$GameName = $BasGameName + "_02";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定５
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定６
		$GameName = $BasGameName + "_02all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定６
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定７
		$GameName = $BasGameName + "_03";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定７
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

//おがみ：定義位置調整　次ファイルゲームネーム確定付近で定義しないとヤバス
	Cockpit_AllFade0();

	$PreGameName = $GameName;

	if($一条を守る == true){
		$GameName = "ma04_014vsa.nss";
		$一条を守る = false;
	}else if($役割に徹する == true){
		$GameName = "ma04_014vsb.nss";
		$役割に徹する = false;
	}else{
		$GameName = "ma04_015vs.nss";
	}

}

scene ma04_014vs.nss
{

}

scene ma04_014vs.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_013vs.nss"

//◆分岐
//◆香奈枝死亡なら１３Ｂ
//◆ヒロイン全員生存なら１３Ａ
//◆一条死亡なら１３Ｃ

//――――――――――――――――――――――――――――――
.//●１３Ｂ
//●１３Ｂ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StL(1000, @30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StL*", 300, @-30, @0, Dxl2, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0010a02">
「凑斗先生！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0020a00">
「……一条?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　出现了熟识的面孔。
　她还在这附近吗……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0030a02">
「您、您没事吧?!」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0040a00">
「如你所见，平安无事。」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0050a02">
「若真如我所见，那可决非平安无事！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那就别问。
　现在我甚至懒得回复她这句话了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0060a00">
「……这里太危险了。
　现在还没有击垮敌骑。
火速从岛上撤退待命。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0070a02">
「我才……不要这样！
　不能把凑斗先生一个人留下……！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0080a00">
「你说什么悠闲话——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我不禁叫出了声，但转念一想。
　……是啊。如今的状况，我们中了陷阱。

　既是如此，期待敌方能忽略掉我们所使用的船，
未免太过天真。
　理所当然会有伏兵等着。不能将一条独自送往
那种地方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0090a00">
「那就离开这里，在合适的地点潜伏并
待机。
　压制住敌骑后，我也去会合。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0100a02">
「就……就算你说要压制。
　在这种状态下怎么可能。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0110a00">
「没问题。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0120a02">
「……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0130a02">
「这味道……
　是什么？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0140a00">
「味道？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0150a02">
「从凑斗先生身上发出……
　烧焦般的气味。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　——<RUBY text="糟了">疏忽了</RUBY>。

　确实有味道。
　不小心忘记了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0160a00">
「别在意。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0170a02">
「先不说战斗，您能动弹吗？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0180a00">
「现在没有余暇来问答。
　我已经下了指示。快行动。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0190a02">
「我无法赞同！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0200a00">
「不需要你的同意。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0210a02">
「……唔。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0220a00">
「无论你是否赞同……
　我都要击毁敌骑。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0230a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0240a02">
「……你会死的啊……！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0250a00">
「别说些惹人发笑的话。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　我否定了她。
　可实际并没有发出笑声，而是吐出了铁锈味的唾液。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0260a00">
「谁能在这种地方<RUBY text="···">安稳地</RUBY>死去啊。
　我不但不会死，还会把怪物打倒。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0270a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0280a02">
「是因为……
　这是正确的吗？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0290a00">
「不对。是更加更加无聊的原因。
　若<RUBY text="····">不被允许</RUBY>死去，
除了击溃敌人生存下去以外，
别无选择。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0300a00">
「仅是如此。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0310a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0320a02">
「……我明白了。
　那么，既然如此我也——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0330a01">
《主君。
　敌骑附近有所动静。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆視点転換
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　突然迸入脑内的村正的声音，让我调转了视线。
　正着陆的巨大身躯——因为它降落到了比此地
更低的地方，可以把握状况。

　是车辆。
　一台大型运输车辆靠近了蹲着的怪物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0340a00">
「……糟了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0350a01">
《怎么了？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0360a00">
「极可能是在进行弹药补给，
抑或是替换搭乘的武者。
　村正，可以立刻恢复再次行动吗?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0370a01">
《……还不行！
　若以现在的状态跑出去，
连能否到达那里都难说。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0380a00">
「……啧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　补充弹药还好说，若让他们得到身体状况
良好的新操控者，敌我的优劣便会出现令人绝望的隔阂。
　难道只能对此束手旁观么……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0390a02">
「凑斗先生？
　怎么了？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0400a00">
「……一辆大型车辆，正在接近敌骑。
　根据推测，恐怕是为了补给。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0410a02">
「…………这。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　一条倒吸一口气。
　即使不懂专业军事知识，
其意义也是显而易见的。

　忍不住想要骂人。
　但我打住了，将思考的船首转向建设性的方向。
——俗话说，事物在于思考的方式。

　敌方要替换武者，这固然是大大的不利，
但同时也是我方将渴望得知的敌骑体内人的存在位置
加以看破的绝妙机会。
　若能把握住，便将得到对敌骑使出终焉的可能性。

　虽说在热量几近超越极限的状态下，
能发挥几成威力也是个问题……
　但这是唯一的胜机。

　我将意识集中于视觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0420a00">
「……果然是补给。
　他们在交换弹仓……」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0430a02">
「……嗯……
　我看不清。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0440a00">
「不要用视线中心，要利用余光去看。
　将中央对向光源。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0450a02">
「请问那是什么意思？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0460a00">
「这是吉野御流秘传的暗视法。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0470a02">
「……我记得似乎也听
一媛阿姨说过……？
　嗯，好像是……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0480a00">
「唔——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我确认着从怪物中走出的人影。
　以及继而登乘上的新人影。

　掌握了开在巨骑甲铁上的孔穴位置。
　将其印刻在脑内。

　不过——虽然从远处连形状都看不清，
可无论是走下来的人，或新搭乘上的人，
都是身着六波罗制式龙甲的武者。
　那个怪物难道是将武者进一步强化的兵装吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0490a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0500a02">
「那个……箱子？
　请问那是什么呢？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0510a00">
「箱子……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我将视线焦点移向一条所指之物。
　箱子——不，是笼子吧。

　以格子外皮所构成的立方体。

　那是割开怪物内腹取出来的东西。
　难道不是重要的物品吗？　手法甚至说得上随意，
将它扔在空地上，之后看也不看一眼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0520a00">
「其中……有什么东西吧。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0530a02">
「……是啊。
　看起来……堆积着什么。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0540a00">
「村正。
　视觉强化。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0550a01">
《了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズームイン？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("絵板写", 4900);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 600, 1000, null, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　焦点聚合起来，视觉情报变得鲜明。
　那个笼子是——铁制。一边大约三米左右。

　里面是——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0560a01">
《!!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0570a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　————巨大的剑胄。

　即使出自极为优秀的名工巧匠之手，
　也会从操控者身上夺走难以估计的热量。

　
　　　　　　　　难以估计的热量。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……又有什么东西从车辆上卸载下来。
　那也是笼子。同样的笼子。

　只有一点区别。
　所装之物。

　笼子里装的东西在动。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆芳養家の子供達
//◆芳養少年
	EfRecoIn1(18000,50);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(16100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("絵回想*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreatePlainSP("絵板写", 4900);
	SetShade("絵板写", HEAVY);
	EfRecoOut2(50,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　笼子——
　并非笼子。

　那是牢笼。
　是牢笼。

　为了将怪物的<RUBY text="··">热源</RUBY>关押进去而存在的！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0580a02">
「……那个……
　在……动？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0590a02">
「凑斗先生，那是……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0600a00">
「是人类。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0610a02">
「…………」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0620a02">
「人……？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0630a00">
「是小孩。
　作为食饵的。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0640a00">
「让那个怪物运转起来的燃料。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//◆鬼相
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0650a02">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　鬼气在极近的距离摇曳起来。
　撕裂肌肤的低温波长。

　那并非愤怒、憎恶或杀意
之类的感情。
　远比那些感情更纯粹而毫无迷茫。

　举例而言。
　<RUBY text="··_···········">那就是锤子对铁钉所抱持的感情</RUBY>。

　——击溃它。
　一条化身成为这种感情的结晶。

　然而，这份意志……
　不应该仅将矛头指向那敌骑。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　被舍弃的牢笼之中——
　枯竭的残骸。

　杀了他们的是谁。
　是那怪物么？

　当真如此吗？

　牵动着怪物，
　让其消耗热量，

　剥削他们生命的人，是谁？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01a","se人体_体_心臓の音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//◆ざっ。
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　我站了起来。
　太棒了。只有憎恶才能成为力量。

　正因如此憎恨着，才能站立。
　正因如此憎恨着，才能动作。

　我脚上的烧伤散发着剧痛。
　……但还不够。

　每动弹一下，身上的装甲都吸取着我的生命，
内脏像被绞住一般，发出痛苦的哀鸣。
　……但还不够。

　不够，
　不够，
　完全不够。

　需要更多伤痕。
　需要更多诅咒。
　要让那家伙更加。更加。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("絵色赤", 5000, "#CC0000");
	CreatePlainEX("絵板写弐", 4910);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 500, null, false);}
　
　　　　　　　　　　　痛苦吧。

　前进一步，膝盖便弯了下来。
　它咯咯咯地笑着。

　真难堪。
　你明明还有活动自如的手足呢。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 700, null, false);}
　
　　　　　　　　　　　痛苦吧。

　前进一步，便感到眩晕。
　意识朦胧，感觉变得模糊。

　真可悲。
　你明明还能看见物体，听到声音啊。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 1000, null, false);}
　
　　　　　　　　　　你个杀人犯。

　想一下失去了这些能力的人们吧。
　快想想。

　想一下被你夺走了这些能力的人们吧。
　快想想。

　啊啊。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色赤弐", 10000, "#CC0000");
	Fade("絵色赤弐", 300, 1000, Axl2, false);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);}
　　　凑斗景明。
　　　祈祷这份痛苦永远折磨你，
　　　祈祷你永世得不到解放。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正立ち絵？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#CC0000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0660a02">
「凑斗先生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0670a02">
「请问您打算怎么办呢？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//◆一条立ち絵
	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0680a00">
「碍事。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0690a02">
「您打算怎么办？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0700a00">
「前行。
　斩杀那怪物，救出孩子们。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0710a02">
「凭你的身体，这是不可能的。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0720a00">
「那就让不可能成为可能。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0730a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0740a02">
「我明白了。
　我需要做些什么呢？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0750a00">
「我一个人就够了。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0760a02">
「……这样啊。
　了解了。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	Move("@StL*", 300, @30, @0, null, false);
	DeleteStL(300,false);

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//◆隣に一条
	WaitAction("@StL*", null);

	StCR(1000, @90, @0,"cg/st/st一条_通常_制服.png");
	Move("@StMR*", 300, @-60, @0, DxlAuto, false);
	FadeStCR(300,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0770a00">
「你在做什么。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0780a02">
「打倒那个怪物，救出孩子。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0790a00">
「你不行的。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0800a02">
「不行也必须行。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0810a00">
「…………」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0820a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　我瞪着一条。也许其中掺杂进了
类似杀意的感情。
　不过，一条从正面将视线回掷了过来。

　一条的视线同样蕴含着杀意。
　——像是在说，妨碍她，便杀了我。

　短短几秒，
　我与一条如仇敌般紧盯着对方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0830a00">
「……
　无论发生什么，我都不会救你。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0840a02">
「我不需要。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0850a00">
「拖后腿的话，我就把你杀掉。」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0860a02">
「好的。
　麻烦您务必如此。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0870a00">
「随你便吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　我吐出了这句话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0880a00">
「你个笨蛋。」

//◆笑い。不敵な？
{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0890a02">
「正是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆一度ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　我谋划出简单的策略。
　人手有二，即是说除了鲁莽地强行突破之外，
还可另寻他法。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);
	FadeDelete("絵色黒", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0900a00">
「你去拖延时间。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0910a02">
「……时间么。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0920a00">
「敌人也非无能。很快便会
得知我方所在地。
　但是<RUBY text="我">村正</RUBY>还需一段时间
才能整备好战斗阵势。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0930a02">
「嗯。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0940a00">
「这段时间内，你去当那家伙的对手。
　方式随你。无论怎样都要
引开他的注意。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　我指着仿若磐山的巨大身躯，对她说。
　这场面放在相声里，正是吐槽的好时机。

　而一条却若无其事地首肯了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0950a02">
「我明白了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0960a00">
「这期间，我会争取恢复，
同时探寻敌人的弱点。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0970a02">
「弱点？
　有什么线索吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0980a00">
「有。
　刚才的补给作业中，并没发现他们在进行
类似电池的物品交换……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0990a00">
「敌方主要兵装是电力式的，几乎无可置疑。
若没有电池，便是利用其他某些方法在
获取电能。
　我要弄清这个方法。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1000a02">
「若能做到这一点……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1010a00">
「便能得到攻略他的头绪。
　这是现在我所能想到的最快，
最合适的对策。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　语气与其说是自豪不已，不如说是破罐破摔，
但这也是走投无路。
　想法竟如此拙劣，连自己都愕然了。

　充满不确定要素的策略。
　有着正常神经的人，根本无法加以服从吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1020a02">
「了解了！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条立ち絵消去
	DeleteStA(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1030a00">
「等等。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1040a02">
「嗯？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1050a00">
「你要去哪。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1060a02">
「立刻开始……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　这名少女难道已经疯了么。
　我不禁如此想到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1070a01">
《与你一模一样啊。这<RUBY text="孩子">女孩</RUBY>的这种性格。
　真的，非常相似。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1080a00">
「……
　虽说方式随你，但并不意味着
就这么把你扔过去。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1090a00">
「最低限度地武装一下吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1100a02">
「武装？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆荒覇吐
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	FadeDelete("上背景", 500, true);
	WaitPlay("@mbgm*", null);
	FadeDelete("絵暗転", 500, true);

	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　他战意激昂——也不能这么说。

　战斗是任务。是工作。他总是如此。
　对他来说，并非试问自身存在意义的热情行为，
不过是被加负于身的职责。

　他和之前驱动着荒霸吐的同伴不同。
　那是有着享受战斗，体味战斗嗜好的人。

　他难以理解。这种事情有什么高兴的？
　无论被多么坚固的装甲守护，
沐浴枪弹这种体验都会招致恐惧。
而将子弹射向目标这种行为也不可能与厌恶感毫无联系。

　同伴与那深红武者之间展开的战斗，他从头看到了尾。
他也理解那是绝无仅有的好敌手。
　但即使如此，这件事情也无法让
并非天生战士的他感到喜悦。

　他希望早日回到妻子的身边。
　他身在战场上的愿望只有这一个。

　这样的他，在终于发现敌人身影的时候，
心中侵入一阵恐惧的寒意和安心的暖意混合的风。
　在他不寒而栗的同时，心跳平缓了下来。

　……啊啊。
　令人厌恶的事情，终于开始了。

　……这件事完结之后，就能回家了……

　他确认了视野边角那<RUBY text="···">闪烁着</RUBY>的红色。
　在叹了一口气之后，
他开始着手于驱动巨兵的作业。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆動き出す荒覇吐
	CreateSE("SEL01","se戦闘_荒覇吐_移動02_L");
	MusicStart("SEL01",0,1000,0,500,null,true);
	SetFrequency("SE01", 2000, 1000, Dxl2);
	CreateTextureEX("絵ＥＶ２", 4010, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵ＥＶ２", 2000, 1000, null, true);

//◆砲門群
	CreateSE("SE01a","se特殊_鎧_駆動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 4030, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	CreateTextureSP("絵演", 4020, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	WaitPlay("SE01a", null);
	WaitKey(1000);

//◆発射
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01b","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 3000, 1000, Axl2, true);

	$残時間=RemainTime("SE01b");
	WaitKey($残時間);

	WaitKey(500);

	WaitPlay("SE01b", null);

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　这片夜幕，这场局面——
　凑斗景明与绫弥一条正与这样的男人进行对峙。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆林の中
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1110a01">
《……似乎开始了啊。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1120a00">
「是啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　巨大异形的武者回过头，面向地表，
开始射击。
　真是危险的时机。

　敌影可以说是近在咫尺。
　若再晚个十秒，敌骑的探查机能
便很可能发现几乎无法动弹的我方。

　恐怕是深知这一点而<RUBY text="····">设下的局</RUBY>吧。
　那家伙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1130a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1140a01">
《您在后悔？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1150a00">
「……不。
　我并没后悔。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1160a00">
「一条明白这很危险。
　她的帮助也是必不可少的。为了更大把握将敌人打倒，
更加快速救助出被囚困着的人。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1170a00">
「如此一想，这是唯一的选择。
　除开这条路，就只剩下固执己见地
强行实施把握极低的作战，更加折磨
敌骑中的人们这一条路。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1180a01">
《是啊……
　但是？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1190a00">
「……虽不后悔。
　但我感到羞耻。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1200a00">
「之所以陷入不得不依靠一条帮助的状况，
换句话说，也就是我力量不足。
　必须感到羞耻。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1210a01">
《……不要独自背负起所有。
　细心的人，大概会对您这么说吧。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1220a00">
「你要说吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1230a01">
《不。
　对我们来说，<RUBY text="····">状况不同</RUBY>啊。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1240a00">
「嗯。是啊。
　状况不同……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1250a00">
「我们不能因为这么点危难，
就哭诉自己太弱。
　我们考虑一下自己必须击破的存在。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1260a01">
《是啊。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1270a00">
「所以我羞耻。我要铭刻这份羞耻，并记住它。
　凭借这种丑态，我们根本触及不到。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1280a01">
《是啊……
　我们的力量还不够。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1290a01">
《……首先去取回野太刀吧。
　将剩下的三个“卵”破坏掉。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1300a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　……但，即使如此还不够。
　之前以完全的武装状态去挑战，
却被不费吹灰之力地打败了。

　力量的差距甚至能用天文学数字来衡量。
　……这到底是为什么呢。

　对比一下银星号和<RUBY text="我">村正</RUBY>……
　到底大量<RUBY text="···">欠缺了</RUBY>什么呢————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1310a01">
《主君。》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1320a00">
「我知道。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　现在可不是被迷茫耽搁的时候。
　我将注意集中向与我缓缓隔开距离的战斗状况。

　必须看破。
　看破自己应瞄准的敌人弱点。

　利用一条所拖延出的时间。

　……我心中已经<RUBY text="···">有底了</RUBY>。
　但还欠缺某些东西才能确认……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1330a01">
《您不给出回答也可以……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1340a00">
「什么。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1350a01">
《那女孩有可能生还吗？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1360a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1370a00">
「很低吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1380a01">
《在那女孩被逼至末路的时候……
　您会怎么办呢？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1390a00">
「什么怎么办。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1400a01">
《会救她吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1410a00">
「不。
　我做那种事，会使作战受挫。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1420a00">
「所以，我会睁只眼闭只眼。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1430a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1440a00">
「我对她本人也说过同样的话。
　她赞同了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1450a01">
《这样啊。
　……这样可以吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1460a00">
「这么做好不好，那家伙已经<RUBY text="···">作出了</RUBY>判断。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1470a00">
「我是以此为前提才提出策略，
并按其行动的。如此而已。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1480a01">
《……是么。
　我明白了……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 700, 0, null);

//◆一条サイド
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, "slide_01_03_0", true);
	WaitPlay("@mbgm*", null);
	DrawDelete("絵暗転", 200, 100, "slide_01_03_0", true);

//◆銃撃
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");

	CreateTextureEXadd("絵演荒覇上", 3011, -280, -270, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演荒覇", 3010, -280, -270, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	SetVertex("絵演荒覇*", 450, middle);
	Fade("絵演荒覇上", 0, 500, null, true);
	Zoom("絵演荒覇上", 1500, 1200, 1200, null, false);
	Shake("絵演荒覇", 2160000, 4, 0, 0, 0, 1000, null, false);
	FadeDelete("絵色白", 150, true);
	MFlash(5,20);
	FadeDelete("絵演荒覇上", 1000, false);

	Wait(800);

//◆近くで木々が薙ぎ倒される
	CreateSE("SE01a","se自然_森_木々倒れる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Delete("絵演荒覇*");

	CreateSE("SE01a","se戦闘_衝撃_衝突01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 0, 20, 0, 0, 1000, Dxl2, false);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1490a02">
「……唔。
　你这……家伙！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆装甲が弾く。かんかんかん。
	CreateSE("SE02a","se戦闘_銃器_跳弾04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1500a02">
「哈啊——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE03","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆装甲が弾く。かんかんかん。
	CreateSE("SE03a","se戦闘_銃器_跳弾04");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//◆木の陰へ逃げ込む。ざーっ。
	SetVolume("SE01", 600, 0, null);
	SetVolume("SE02", 600, 0, null);
	SetVolume("SE03", 600, 0, null);

	CreateSE("SE04","se人体_動作_跳躍02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	WaitPlay("SE03", null);
	Delete("@MF*");

	DrawDelete("絵黒幕", 200, 100, "slide_01_03_1", true);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 10, 0, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1510a02">
「咳……
　呼……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条。部分装甲
	StL(1000, @30, @0,"cg/st/st一条_戦闘_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　骨头嘎吱作响。
　至今为止，敌方的弹药都未深陷进肉身中，
可即使这样也已出现损伤了。

　我回想起自己得到<RUBY text="··">这个</RUBY>的时候，他说的话。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	EfRecoIn1(18000,600);
	OnBG(16000,"bg043_江ノ島山林_03.jpg");
	StR(16120, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeBG(0,true);
	FadeStA(0,true);
	EfRecoIn2(300);

	SetFwC("cg/fw/fw景明_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1520a00">
「那是用村正的钢丝给缠裹起来，
模拟装甲化的东西。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1530a00">
「虽然无法像剑胄一样提升身体能力，
但也不至于碍手碍脚……我是这么认为的。
　怎么样。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 17000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓/絵背景", 17000, Center, Middle, "cg/bg/bg043_江ノ島山林_03.jpg");
	Move("絵窓/絵背景", 0, @0, @-288, null, true);
	Rotate("絵窓/絵背景", 0, @0, @180, @0, null,true);
	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);
	SetShade("絵窓/絵背景", SEMIHEAVY);

	CreateTextureSP("絵窓/絵演立絵装甲", 17100, -490, -340, "cg/st/resize/st一条_戦闘_制服lm.png");

	Move("絵窓/絵演立絵装甲", 3000, -550, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Wait(300);

	SetFwC("cg/fw/fw一条_笑顔a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0621]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1540a02">
「……很轻盈。
　穿着这个，也可以正常运动。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1550a02">
「不过同时，我觉得它也不是非常牢固……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 0, 1000, Dxl2, true);
	Delete("絵窓");

	StL(16110, @30, @0,"cg/st/st一条_戦闘_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_黙考.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0622]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1560a00">
「实际强度很明确。
　在武者的太刀之下，恐怕不堪一击。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1570a00">
「应该可以防住机枪子弹之类的……
　但不知可以维持多久。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1580a00">
「说白了就是自我安慰。
　别太相信它。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1590a00">
「……我只能为你提供这种东西。
　虽然说是最低限度，但这连最低限度
都达不到吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);
	CreatePlainEX("絵板写", 1100);
	SetShade("絵板写", MEDIUM);
	EfRecoOut2(600,true);
	SetVolume("@mbgm*", 2000, 1000, null);

	CreateTextureEX("絵演効果一条", 4100, -90, -330, "cg/st/resize/st一条_戦闘_制服lm.png");
	Move("絵演効果一条", 10000, @0, -90, DxlAuto, false);

	Fade("絵板写", 1000, 1000, null, false);
	Fade("絵演効果一条", 1000, 750, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　这种东西——
　绫弥一条渴望着这种东西。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵板写", 500, false);
	FadeDelete("絵演効果一条", 500, true);

	CreateSE("SE01a","se人体_動作_後ずさり01");
	StL(1000, @-30, @0,"cg/st/st一条_戦闘_制服.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeStA(300,true);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1600a02">
「唔，啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @200, @0, Dxl2, false);

	WaitKey(50);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateTextureSP("絵演背景", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawDelete("絵色黒", 200, 100, "circle_01_00_1", false);

//◆銃撃
//◆かきんかきーん。
	CreateSE("SE02a","se戦闘_銃器_機関銃乱射02");
	CreateSE("SE02b","se戦闘_銃器_跳弾04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);

	CreateTextureEX("絵演", 6000, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　在战斗。
　凑斗景明的敌人，与绫弥一条在战斗。

　像老鼠般四处逃窜，用粗制滥造的盾来护身。
　如今的绫弥一条成为了凑斗景明的力量。

　她一直追求着这个。
　无论是最低限度还是最低限度以下，都无所谓。

　成为他的力量。
　她渴望着成为力量的办法。

　这才是，对绫弥一条来说，<k>
{//◆第二話、一条を助ける村正カット挿入
	SetVolume("SE*", 500, 300, null);
	Fade("絵演", 500, 1000, null, false);}
　最理想的正义之形态。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1,0,1000,null,false);
	CreateColorEXadd("絵色白", 6500, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

//◆銃撃
	Delete("絵演");
	Delete("絵演背景");
	DeleteStA(0,true);

	SetVolume("SE*", 3000, 1000, null);
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1610a02">
「——哈！
　攻过来吧……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆かきんかきん
	CreateSE("SE03a","se戦闘_銃器_跳弾04");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　模拟装甲无法完全抑制住的冲击力深深浸透至体内，
萦绕于骨髓间。
　啪哧啪哧的声响不时传入耳中，也许是某些东西龟裂的
声音。或许是这样吧。

　每每听到这种声音，沐浴的子弹就变得更加钝重……
是因为装甲正在被渐渐地削弱么。
　或许是吧。

　但绫弥一条毫不在意。
　她四处逃避躲藏，但却故意露出马脚，专注于
自己那吸引敌人注意的职责。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE04","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきかき
	CreateSE("SE04a","se戦闘_銃器_跳弾04");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　……如今的她，与剑胄受到被锤子
不断殴打的拷问别无二致。
　已完全超越常人所能忍耐的痛苦范围。

　但是——
　要忍耐下去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1620a02">
「——哈——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　为何呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE05","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきかきん
	CreateSE("SE05a","se戦闘_銃器_跳弾04");
	MusicStart("SE05a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1630a02">
「哈，哈——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　其理由。
　
　正如先前凑斗景明突然察觉到的一般。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃銃撃
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきんかきんかきんかきん
	CreateSE("SE06a","se戦闘_銃器_跳弾04");
	MusicStart("SE06a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1640a02">
「哈，哈，哈啊——！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　
　　　　　　绫弥一条已经疯了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE07","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE07",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆その辺に着弾
	CreateSE("SE07a","se戦闘_銃器_弾かする02");
	MusicStart("SE07a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1650a02">
「你在朝哪里攻击！
　我在这儿!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE08","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE08",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきんかきん
	CreateSE("SE08a","se戦闘_銃器_跳弾04");
	MusicStart("SE08a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
“正义”乃人之大道。
　然而，却并<RUBY text="·">非</RUBY>一定与人类原始的品性吻合。

也可以这么说，单纯“正义”作为利己主义的伪装来
利用的人，应该是健全的。
　将其作为骨肉而非装饰，把其铭刻于自己的枝干上，
并视其等同于本能，这种人才精神不正常吧。

　古人云。
　——理智者不成大业。

　另有人云。
　——应对狂愚加以赞赏。应以狂夫为己之志。

　他们心知肚明。
　他们领悟了。与利己无关的真正正义，
只能立足于疯狂之上。

　他们与绫弥一条不同。
　绫弥一条<RUBY text="········">在知晓这一点之前</RUBY>，<RUBY text="·····">就已经如此</RUBY>。

　也许她比他们都要纯粹而
　率直地疯狂着。

　她比任何人都要正确地疯狂着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE09","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE09",0,1000,0,1000,null,false);
	MFlash(5,20);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1660a02">
「就是这样……
　向我开炮吧……！」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1670a02">
「快射击!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE09a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE09a",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきんかきん
	CreateSE("SE09aa","se戦闘_銃器_跳弾04");
	MusicStart("SE09aa",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
“狂”之正义由三要素构成。
　其精神／其道路／其方法。

　她有精神。
　绫弥一条亲自为自己铭刻了出来。

　她有道路。
　与凑斗景明的相遇为她指示了出来。

　最后一要素。
　将由此完成。

　绫弥一条失去了至今为止，勉强将她滞留于理智世界，
圈固在凡人范围内的东西。
　<RUBY text="···">开始了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE10","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE10",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆走る
	CreateSE("SE11","se人体_足音_走る01_L");
	MusicStart("SE11",0,1000,0,1000,null,true);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("@MF*");
	Delete("絵板*");
	CreateTextureSP("絵演背景", 1000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	DrawDelete("絵黒幕", 300, 100, "circle_01_00_1", true);

	CreateTextureEX("絵演一条", 1100, -240, -30, "cg/st/resize/st一条_戦闘_制服l.png");
	Move("絵演一条", 3000, -340, @0, DxlAuto, false);
	Fade("絵演一条", 1000, 650, null, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1680a02">
（还要更多）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　在痛苦中充分沉浸于战斗。
　另一方面，绫弥一条却渴望更多。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1690a02">
（我必须迎接更多的战斗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　直面身为己敌之恶。
　更加激烈。更加残酷。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1700a02">
（这么一点根本不够。
　我渴求能让我迎接更多战斗的东西）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　是的。
　在她将这种东西得手之时。

　绫弥一条才在真正意义上，得以启程。

　将正义。
　将疯狂。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2500, 0, null);
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	WaitPlay("@mbgm*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　
　　　　　——将此世之恶粉碎。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正サイド
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_02_1", true);

	SoundPlay("@mbgm12",0,1000,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1710a00">
「——我看见了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1720a01">
《……是那个？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1730a00">
「嗯。
　是<RUBY text="···">电源线</RUBY>。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　其细度，保护色的涂盖，及怪物的低空飞行，
就连村正的视力，为取得确认也耗费了不少时间。
　从骑体下部垂直向下延伸的，细线。

　那绝对是供给电力的途径。
　巨骑如何移动都可以，唯独不进行伸缩，这很奇怪。
但——<k>原来如此。这附近的地下有电源板，
电线就在其上<RUBY text="····">进行滑动</RUBY>。这么一来就理解了。

　只要将那个切断就好。
　如此一来，就能扭转战局。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1740a01">
《要怎么办？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1750a00">
「若从正面袭击，恐怕会被那层屏障阻止。
　但万幸的是电线所处位置在敌人的
死角。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1760a00">
「可以进行偷袭。
　先绕到它背后。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カロリードレインＳＥ
	CreateSE("SE01","se特殊_陰義_荒覇吐01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1770a01">
《——啊——》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1780a00">
「——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆荒覇吐
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	DrawDelete("絵黒幕", 200, 100, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　不断将子弹射向窜逃于树木隙间的敌人——
　已经十多分钟了。

　敌骑不仅不反击，甚至根本不试图飞行。
　也许是在先前一战中已近乎精疲力尽了。

　即使如此，还是这么缠人。
　他烦躁，焦急，甚至出现了呕吐感。

　
　　　　　　　　……啊啊。
　　　　　　　　快点结束吧。

{	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",2000,900,0,900,null,false);}
　他边从心底祈祷着，边用机枪扫射着。
　纵射出一条线。赤影仅仅中了数弹，就逃开了。

　
　　　　　　　　我想回家啊。

{	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,850,0,800,null,false);}
　他被火烧火燎的厌恶与焦躁折磨着，
瞄准敌人逃走的方向进行扫射。
　没有一颗子弹命中。只有树木被击中，
子弹在森林里描出一条竖线。

　
　　　　　　　　　快一点，快一点——

{	CreateSE("SE01b","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01b",0,750,0,700,null,false);}
　胃液垂直逆流。
　他强行将那过于苦涩的液体咽回去。

　同时他将骑体转过身来，再次扫射。
　两条竖线外加一条垂直地表的横线。

　
　　　　　　　讨厌，讨厌，讨厌——

{	CreateSE("SE01c","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01c",0,700,0,600,null,false);}
　看不见敌骑。
　森林中被描绘出コ字形，赤色身影并没出现在
没有任何阻碍视野之物的线条上。

　再次调转飞行方向，射击。
　最后的一条线。

　因前方被堵住，慌忙转身返回的影子隐约可见。
　影子跑入四角之中。

　<RUBY text="··">四角</RUBY>。

　机枪夷平树木而在地表上划出的线。
　这些线描绘出的四角形。

　敌人就在其中。

　
　　　　　　　　　……啊啊。
　　　　　　　　　……终于……

{	SetVolume("SE*", 2000, 0, null);}
　自从理解了利用巨骑来追地上的单兵是多么困难，
他就一直忍耐着，不停等待着，终于抓住了机会。
　他将再次涌上的胃液吐到脚边。

　
　　　　　　　　……终于结束了。

{	CreateSE("SE02","se特殊_鎧_駆動音02");
	MusicStart("SE02",0,1000,0,750,null,false);}
　他卯足了劲发动起阴义。
　对装甲守护的武者起不了什么作用的，荒霸吐的阴义。

{	CreateSE("SE02a","se特殊_陰義_荒覇吐01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainSPadd("絵板写", 4999);
	Zoom("絵板写", 600, 1300, 1300, Dxl2, false);
	FadeDelete("絵板写", 800, false);}
　夺取热量。

　这——
　使得四角之中的树木一瞬之内都枯死了。

　在已不存在任何可供藏身之物的空地中。
　赤色身影呆立在原地。

　
　　　　　　　　……这么一来，就能回家了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆竜気砲
	CreateSE("SE01a","se特殊_鎧_駆動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆発振準備
	CreateSEEX("SE01b","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01b",3000,1000,0,1000,null,true);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1100, 1100, null, true);
	Shake("絵演上", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　厌恶战斗，故决不沉醉于战斗。
　对不尽人意的战况感到焦急烦躁，
但却平静地维持着思考。

　他就是这种男人。
　身处战场，他总是抱怨自己的不幸，但他不知道
自己身边就存在着比他更加不幸的人。

　他的敌人就是如此。
　对敌人来说，他是当之无愧最棘手的<RUBY text="战士">职业军事家</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆一条
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("プロセス*");
	Delete("絵演*");
	Delete("絵ＥＶ*");
	OnBG(100,"bg003_荒れ野_03.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_戦闘_制服.png");
	FadeStL(0,true);

	DrawDelete("絵黒幕", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1790a02">
「——————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正サイド
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);

	Delete("絵ＥＶ*");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1800a01">
《主君?!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1810a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択。一条を守る／役割に徹する
..//選択。一条を守る／役割に徹する

//◆一条を守る "ma04_014vsa.nss"
//◆役割に徹する "ma04_014vsb.nss"

}


scene ma04_014vs.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//――――――――――――――――――――――――――――――
.//●１３Ａ
//●１３Ａ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @90, @0,"cg/st/st香奈枝_通常_私服c.png");
	StCR(1000, @-30, @0,"cg/st/stさよ_通常_私服.png");
	StL(1000, @-30, @0,"cg/st/st一条_通常_制服.png");

	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300,false);

	Wait(50);

	Move("@StMR*", 300, @-30, @0, Dxl2, false);
	FadeStCR(300,false);

	Wait(50);

	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1820a03">
「果然是您。景明大人！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1830a00">
「……大尉?!」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1840a02">
「凑斗先生！」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1850a04">
「哎呀哎呀。您平安无事真是太好了。
　………不过看您这副姿态，
这种话有些不太应景啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　出现了熟识的面孔。
　她们还在这附近吗……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1860a03">
「哎呀，这到底是怎么啦!?
　您怎么在这种地方，
那样子跪着呢……！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1870a03">
「难道是把零钱弄丢了吗？」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1880a02">
「看眼前这状况，你丫的那算是什么话啊！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1890a04">
「这可真不得了……！
　您这一副充满着落魄武士感觉的
落魄武士形象，可是会招来
狩猎落魄武士的老百姓们的哦。　凑斗大人。」

{	FwC("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1900a02">
「招不来啦！　哪来的明智光秀啊！
　而且无论怎么看，这都明摆着发生了
远比那些事儿要严重的大事吧！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1910a00">
「……我现在正是与堕落无二致，
所以<RUBY text="····">落魄武士</RUBY>这一形容可以说是十分贴切。」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1920a04">
「原来如此！」

{	FwC("cg/fw/fw一条_涙.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1930a02">
「现在也不是说风趣话的时候！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　确实如此。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1940a00">
「滞留在这种地方很危险。
战斗还未结束。
　请迅速从岛上撤离。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1950a03">
「这我可做不到哦。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1960a00">
「为何。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1970a02">
「我们无法独自悠悠闲闲地回去啊！
　不能把凑斗先生一人留在这里！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1980a04">
「这是原因之一。
　而且这种状况，明摆着是陷阱。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1990a04">
「我不认为敌方会轻易放我们逃走
　回到船上，定会有人严阵以待。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　……原来如此。
　倒也确实。

　若这是被设计好的圈套，认为设下圈套的人会忽视掉
我们所使用的船只这种想法太过天真。
　附近安排着伏兵的可能性很大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2000a00">
「那就请离开这里，在合适的地点潜伏并
待机。
　压制住敌骑后，我也去会合。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2010a03">
「您说得倒简单。
　……战况我大致都看到了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　看到了？
　……看到了夜间的飞行战斗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2020a03">
「实际上想让那家伙老实点，
是件不太容易的事，不是吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2030a00">
「……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2040a02">
「什么嘛……
　有那么棘手么。不，
它有多棘手倒是一看就能明白。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2050a03">
「它并不是纸老虎。
　没有弹药的大炮，看上去像是
强力磁场制成的屏障，追踪式子弹——那是远程
操作还是热源追踪呢……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2060a03">
「先不谈完成度，那个怪兽是最新
技术的结晶。
　说实话，我认为那不是能单枪匹马
对阵的敌手……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2070a02">
「……不，你说的那是什么啊。
　不使用弹药的大炮是什么东西？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2080a03">
「我不知道。
　但射出的确实是替代弹药
的某种东西。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2090a03">
「景明大人。您的左腕与右脚，还有左脚，
都被那个大炮给击中了吧？
　请问您受到了怎样的伤害？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2100a00">
「并不严重。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2110a03">
「我知道您的左手和脚已经动弹
不得了。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2120a00">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2130a04">
「……我知道了。
　是被<RUBY text="··">烧伤</RUBY>了吧，凑斗大人。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2140a04">
「我自先前起就很在意这
格外刺鼻的味道。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2150a00">
「……轻伤而已。」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2160a04">
「连骨髓都被瞬间燃烧殆尽时，便会散发
这种味道。我记得是这样……
　这种状况，确实动弹不得啊。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2170a02">
「……!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2180a00">
「并无大碍。
　凭借剑胄的治愈能力，
早晚都会恢复的。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2190a03">
「但是，不等恢复，您就打算与
那家伙战斗吧？
　您觉得自己有胜算吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2200a00">
「大概吧。」

{//◆からかい
	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2210a03">
「那么您有几成胜算呢？」

{//◆険悪
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2220a02">
「喂……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2230a00">
「十成左右。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2240a03">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2250a00">
「以在下的身份，决不允许被
那种玩具轻易杀死。
　虽然如今，的确就肉体方面来说，
有些许不便。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2260a00">
「无碍。
　在下要击坠那个敌骑。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2270a04">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2280a02">
「这么做……
　因为这是正确的事吗？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2290a00">
「不对。是更加更加无聊的原因。
　若<RUBY text="··">不能</RUBY>死去，
除了击溃敌人生存下去以外，别无选择。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2300a00">
「仅是如此。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2310a02">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2320a03">
「……我明白了。
　可是，景明大人。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2330a03">
「您如此执着于和那个怪物进行战斗，
这——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2340a01">
《主君。
　敌骑附近有所动静。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆視点転換
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　突然迸入脑内的村正的声音，让我调转了视线。
　正着陆的巨大身躯——
因为它降落到比此地更低的地方，可以把握状况。

　是车辆。
　一台大型运输车辆靠近了蹲着的怪物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2350a00">
「……糟了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2360a01">
《怎么了？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2370a00">
「极可能是在进行弹药补给，
抑或是替换搭乘的武者。
　村正，可以立刻恢复再次行动吗!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2380a01">
《……还不行！
　若以现在的状态跑出去，
连能否到达那里都难说。》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2390a00">
「……啧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　补充弹药还好说，若让他们得到身体状况
良好的新操控者，敌我的优劣便会出现令人绝望的隔阂。
　难道只能对此束手旁观么……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2400a02">
「凑斗先生？
　怎么了？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2410a00">
「……一辆大型车辆，正在接近敌骑。
　根据推测，恐怕是为了补给。」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2420a04">
「这……
　这可不好啦。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2430a03">
「……就算阻止也来不及了。
　距离能再稍微接近一些就好了……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2440a02">
「你的枪！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2450a03">
「没有捕捉风向的时间。
　而且，那附近的树木都微妙地碍事。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2460a03">
「最终，除了将我方位置告知敌人之外，
无任何成效。」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2470a02">
「可恶……！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2480a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　虽然我也同样想要咒骂。
　但转念一想。

　敌方要替换武者，这固然是大大的不利，
但同时也是我方看破
渴望得知的敌骑体内之人的存在位置的绝妙机会。
　若能把握住，便将得到对敌骑使出终焉的可能性。

　虽说在热量几近超越极限的状态下，
能发挥几成威力也是个问题……
　但这是唯一的胜机。

　我将意识集中于视觉。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2490a03">
「……果然是补给啊。
　刚才从载物台上被卸下的是弹仓吧。
还真是挺大的。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2500a02">
「若是击中那玩意儿，会不会发生爆炸？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2510a04">
「很可惜。
　只凭步枪的一弹，是没可能发生爆炸的。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2520a02">
「……也是啊。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2530a03">
「有人从怪物里走下来了！
　从头部稍下方的位置……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2540a00">
「……的确！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　我急忙记下。

　不过——虽然从远处连形状都看不清，
可无论是走下来的人，或新搭乘上的人，
都是身着六波罗制式龙甲的武者。
　那个怪物难道是将武者进一步强化的兵装吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2550a02">
「话说回来……
　这么暗，真亏你能看清啊。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2560a03">
「因为我经常食用鳗鱼和胡萝卜哦～」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2570a02">
「什么意思啊？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2580a04">
「确保提高暗视能力的维他命Ａ的充足
手段哦。
　身为士兵，这是理所当然的知识吧。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2590a03">
「另外，诀窍是不要用瞳孔中心去看东西。
　中心要望向明亮的东西……现在这种情况，
就望向月亮，想看的地方要使用余光看。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2600a02">
「咦……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2610a03">
「请试试看吧。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2620a02">
「哎……使用余光……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2630a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2640a02">
「什么啊？　那个箱子似的东西。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2650a03">
「……箱子……？
　倒不如说……那个是，笼子吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
　我看见了笼子。
　以格子外皮所构成的立方体。

　那是割开怪物内腹取出来的东西。
　难道不是重要的物品吗？　手法甚至说得上随意，
将它扔在空地上，之后看也不看一眼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2660a03">
「里面好像有什么东西……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2670a00">
「正是……
　看起来是有什么东西被堆积着。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2680a04">
「真让人在意啊……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2690a03">
「嗯……
　到底是什么呢。或许那也是某种武器。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2700a04">
「在下纱代的意思是……
　会不会是年末大甩卖中买回的囤积装备。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2710a03">
「多么可怕啊……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2720a02">
「我倒觉得你们在各种方面都很可怕。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2730a00">
「村正。
　视觉强化。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2740a01">
《了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズームイン？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("絵板写", 4900);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 600, 1000, null, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
　焦点聚合起来，视觉情报变得鲜明。
　那个笼子是——铁制。一边大约三米左右。

　里面是——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2750a01">
《!!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2760a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
　————巨大的剑胄。

　即使出自极为优秀的名工巧匠之手，
　也会从操控者身上夺走难以估计的热量。

　
　　　　　　　　难以估计的热量。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　……又有什么东西从车辆上卸载下来。
　那也是笼子。同样的笼子。

　只有一点区别。
　所装之物。

　笼子里装的东西在动。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆芳養家の子供達
//◆芳養少年
	EfRecoIn1(18000,50);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(16100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("絵回想*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreatePlainSP("絵板写", 4900);
	SetShade("絵板写", HEAVY);
	EfRecoOut2(50,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　笼子——
　并非笼子。

　那是牢笼。
　是牢笼。

　为了将怪物的<RUBY text="··">热源</RUBY>关押进去而存在的！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2770a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2780a04">
「……大小姐？
　怎么了？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2790a03">
「是人类。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2800a04">
「……………………」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2810a02">
「……什么人类？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2820a03">
「那个箱子里装的是人类。
　被舍弃的箱子里则是<RUBY text="····">枯竭死亡</RUBY>的残骸。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2830a03">
「现在新装进怪物肚子中的，
　……是不断哭喊的孩子们。」

{//◆鬼相
	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2840a02">
「————————」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2850a04">
「……是，是这样！
　原来如此原来如此。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2860a04">
「那是食饵啊。
　为了让那个发育过剩的猪飞上天而存在的！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2870a03">
「仔细思考一下，这想法其实理所当然啊。
　剑胄会消费装甲者的热量以维持运转。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2880a03">
「如果其热量不够的话，只要补充人类
就可以啦。
　……多么美好的想法！　这睿智可以匹敌于
让鸡蛋立起来的方法了，不是吗！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2890a04">
「那个东西的制作者是个天才啊。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2900a02">
「…………
　看起来挺开心的啊？　你们俩。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2910a04">
「我们的确很开心哦？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2920a03">
「是啊，非常非常地——」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2930a04">
「正如爱情使人心陶醉一般。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2940a03">
「沉浸憎恶之中，
也是无上的愉悦。」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2950a04">
「这份杀意正是无比幸福的。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2960a03">
「这份恶意正是灵魂的甘露。」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2970a04">
「快乐得不得了。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2980a03">
「愉快得不得了。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2990a04">
「呼呼。」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3000a03">
「呵呵。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　被舍弃的牢笼之中——
　枯竭的残骸。

　杀了他们的是谁。
　是那怪物么？

　当真如此吗？

　牵动着怪物，
　让其消耗热量，

　剥削他们生命的人，是谁？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01a","se人体_体_心臓の音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//◆ざっ。
	CreateSE("SE02","se特殊_鎧_駆動音02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
　我站了起来。
　太棒了。只有憎恶才能成为力量。

　正因如此憎恨着，才能站立。
　正因如此憎恨着，才能动作。

　我脚上的烧伤散发着剧痛。
　……但还不够。

　每动弹一下，身上的装甲都吸取着我的生命，
内脏像被绞住一般，发出痛苦的哀鸣。
　……但还不够。

　不够，
　不够，
　完全不够。

　需要更多伤痕。
　需要更多诅咒。
　要让那家伙更加。更加。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("絵色赤", 5000, "#990000");
	CreatePlainEX("絵板写弐", 4910);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 500, null, false);}
　
　　　　　　　　　　　痛苦吧。

　前进一步，膝盖便弯了下来。
　它咯咯咯地笑着。

　真难堪。
　你明明还有活动自如的手足呢。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 700, null, false);}
　
　　　　　　　　　　　痛苦吧。

　前进一步，便感到眩晕。
　意识朦胧，感觉变得模糊。

　真可悲。
　你明明还能看见物体，听到声音啊。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 1000, null, false);}
　
　　　　　　　　　　你这个杀人犯。

　想一下失去了这些能力的人们吧。
　快想想。

　想一下被你夺走了这些能力的人们吧。
　快想想。

　啊啊。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色赤弐", 10000, "#990000");
	Fade("絵色赤弐", 300, 1000, Axl2, false);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);}
　　　凑斗景明。
　　　祈祷这份痛苦永远折磨你，
　　　祈祷你永世得不到解放。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正立ち絵？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#990000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3010a02">
「凑斗先生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3020a02">
「请问你打算怎么办呢？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//◆一条立ち絵
	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3030a00">
「碍事。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3040a02">
「你打算怎么办？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3050a00">
「前行。
　斩杀那怪物，救出孩子们。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3060a02">
「凭你的身体，这是不可能的。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3070a00">
「那就让不可能成为可能。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3080a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3090a02">
「我明白了。
　我需要做些什么呢？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3100a00">
「我一个人就够了。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3110a02">
「凑斗先生——」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3120a03">
「过度自信也好盲目相信也罢，若出于个人兴趣
的话，是无所谓啦。景明大人。
　但这种情况下，要由哪位来
背负其恶果呢？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3130a04">
「肯定不止凑斗大人一个吧。」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3140a02">
「闭嘴。
　我们并不想要你们相助。」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3150a03">
「不必挂心。
　既然对手是那么愉快而痛快的家伙，
我们也不打算一边悠闲地与诸位互帮互助，
一边与那家伙对峙。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3160a03">
「让我们自己行动吧。
　但是，嗯………至少互相了解一下
对方打算怎么做，与那家伙战斗，
也会更有效率吧。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3170a03">
「这点程度还是需要的。
　你也不想因为我擅自的行动而使
现在正被那个怪物吞噬的
诸位，痛苦被延迟得更久吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3180a00">
「……」

{//◆やや吐き捨てるように
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3190a00">
「且随君便。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3200a03">
「好啊～」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3210a02">
「我们会任意而为的。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3220a04">
「哎呀呀……这该怎么说才好呢。
　事到如今，表面上伪装成
团队行动，实际上我们的心早已
漂亮地四分五裂了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3230a04">
「不过这支队伍的编排本来
就有些勉强啦。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3240a03">
「是啊。但这也事出无奈啊。
　这种时候就不要团结众人之力了，
还是每个人都按照自己的方式攻向强大的敌人，
将其击溃好了！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3250a02">
「……我可没有获胜的信心啊。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs3260a01">
《同感……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆一度ブラックアウト
	CreateColorEX("絵色黒", 15000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
　作战安排大致如下。

　一。
　景明=村正暂且潜伏待机。
　恢复体力。

　二。
　在这段时间内，香奈枝来当敌骑的对手，同时切断
电源线。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·作戦会議
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @60, @0,"cg/st/st香奈枝_通常_私服c.png");
	StCR(1000, @-60, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1240]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3270a00">
「电源线……？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3280a03">
「因为它十分纤细，而且似乎被施加了迷彩，
很难发现。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
　身材高挑的进驻军士官说完，用手指了过去。
　于试图开始离开陆地的怪物的下部。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3290a03">
「骑体与其正下方的地表之间总有一条<RUBY text="··">筋线</RUBY>。
那个大怪兽上满载的一系列有趣兵器，
恐怕是利用电力来驱动的……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3300a00">
「原来如此。
　将其设想为提供电力的电线，
确实很合理。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
　追随着大鸟大尉的视线。
　接收到指示，武者集中视力仔细一看——勉强
看到了一条线状的影子。

　肉眼想要看清极度困难，这正是有意设计出的效果。
　遵循一贯准则，对待低空飞行的敌人，主要从上空进行
袭击，所以先前交战时完全没注意到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3310a00">
「我曾怀疑存在内藏电池……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3320a04">
「不知是没能开发出充足容量的电池呢，
还是考虑到在特定范围内运用这一条件为前提的
优缺点，而产生的结果呢……嗯，
应该就是这类原因吧。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3330a02">
「但是啊，难道不会缠绕到树木上之类吗？
那种玩意儿。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3340a03">
「那条电线不会伸缩的。
无论骑体如何动作。
　它总是伸在其正下方。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3350a03">
「恐怕……
　那条电线是以强韧的锻铁纤维制成，
大概是配合着骑体的行动，撕裂地表
而进行移动的吧。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3360a03">
「难以想象电源在地下一起进行移动，
所以大概在这一带的地下都
存在电源板之类的东西，
那条电线就是与其相连的？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3370a00">
「如此设想，就可以理解了。
　那些奇怪的<RUBY text="··">辙印</RUBY>也好说了。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3380a04">
「是电线四处拖动所造成的
痕迹吧。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3390a02">
「这样啊……
　那么，只要把那东西给斩断，
就不能使用奇怪的大炮之类了吧？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3400a03">
「是啊。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3410a00">
「但是，大尉。
　您打算如何切断电线呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
　若她的推测正确，那个真的是锻铁纤维制成，
那它与剑胄装甲的质地就很相似。
　方法太过随意，甚至连一道伤痕都无法划出。

　即使用电锯，也得花费数分钟吧。
　当然，我不认为这种状况下，能使用那种慢吞吞
的方法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3420a03">
「这个嘛……
　嗯，船到桥头自然直。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3430a03">
「您不必担心。」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3440a02">
「……这可是作战的大前提啊。
　当然会担心啦！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3450a03">
「哎呀哎呀。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
　大尉笑着左耳进右耳出，结果还是没给出明确答案，
就这样开始布阵。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
　三。
　一条及永仓登上海岸的灯塔，把握整体状况，
随时与景明·香奈枝进行联络。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3460a02">
「要怎么进行联络？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3470a04">
「用这个小型无线电机。
　大小姐也持有同样的东西。
虽然有效范围很窄，但在这岛上使用，足矣。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3480a04">
「凑斗大人呢……
　现在没有时间调整波长，
以配合您的剑胄。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3490a00">
「是的。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3500a04">
「紧急关头，我会进行无差别发信。
　当然所有的武者，所有的无线电都会接收到，
所以根本没什么机密可谈。
只有万不得已，我才会使用。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
　这是当然的。
　虽然多少有些不便，但也情非得已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3510a02">
「灯塔么。
　虽然视野应该不错……但是在夜里。
不知能看到多少东西。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3520a04">
「是挺值得疑惑的啊。
　不过绫弥大人，不用为此
担心哦。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3530a02">
「为什么？」

{	CreateSE("SE01","se戦闘_銃器_構える01");
	MusicStart("SE01",0,1000,0,700,null,false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3540a04">
「因为我们有<RUBY text="ｎｉｇｈｔｖｉｓｉｏｎ">暗视镜</RUBY>。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3550a02">
「既然有这种东西，就早点拿出来啊!?」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3560a04">
「有大小姐在的时候，这就是个摆设物。
而且电池能源也有限。
　嗯，如今正是用武之地。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3570a04">
「它的性能只能说还过得去，
不过一定距离之内，还是能进行红外线照射。
　万万不可过度依赖，正确地使用，
让它派点用场吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3580a02">
「……算了，怎样都好。
　交给你了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3590a04">
「就交给我吧。」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3600a02">
「那么，凑斗先生。
　我们走了哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	Wait(50);
	DeleteStR(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
　一条说完后，就走向了灯塔。
　永仓侍从紧随其后。

　十几秒后，两人位置颠倒了。
　因为永仓侍从注意到一条每走一步，
前进方向就偏移大约一度。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　四。
　景明=村正见机突袭。
　压制敌骑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//嶋：●１３＿１に合流

}


scene ma04_014vs.nss_ka
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//――――――――――――――――――――――――――――――
.//●１３Ｃ
//●１３Ｃ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @90, @0,"cg/st/st香奈枝_通常_私服c.png");
	StCR(1000, @-30, @0,"cg/st/stさよ_通常_私服.png");

	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300,false);

	Wait(100);

	Move("@StMR*", 300, @-30, @0, Dxl2, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3610a03">
「果然是您。景明大人！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3620a00">
「……大尉?!」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3630a04">
「哎呀哎呀。您平安无事真是太好了。
　………不过看着您这副姿态，
这种话有些不太应景啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　出现了熟识的面孔。
　她们还在这附近吗……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1400]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3640a03">
「景、景明大人……
　您这幅姿态……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3650a03">
「是在扮演落魄武士吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3660a00">
「我像吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3670a03">
「当然。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3680a00">
「正如您所言。」

{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3690a03">
「别说谎啦！」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3700a04">
「大小姐，您语无伦次了。」

{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3710a03">
「即使您这样虚张声势，我也明白哦！
　您看起来被打得相当惨呀……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3720a00">
「请别在意。」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3730a04">
「您说话也挺混乱的。」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3740a00">
「最重要的是，滞留在这种地方很危险。
战斗还未结束。
　请迅速从岛上撤离。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3750a03">
「这种话我可不想从现在
最靠不住的人口中听到……
　暂且放下这些不谈，
我也无法按您的话去做。」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3760a00">
「为何。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3770a03">
「因为搭救景明大人
是我的任务。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3780a00">
「……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3790a04">
「我也要补充。
　这种状况，明摆着是陷阱……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3800a04">
「我不认为敌方会轻易放我们逃走。
　回到船上，定会有人严阵以待。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1410]
　……原来如此。
　倒也确实。

　若这是被设计好的圈套，认为设下圈套的人会忽视掉
我们所使用的船只这种想法太过天真。
　附近安排着伏兵的可能性很大。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1420]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3810a00">
「那就请离开这里，在合适的地点潜伏并
待机。
　压制住敌骑后，我也去会合。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3820a03">
「您说得倒简单。
　……战况我大致都看到了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1430]
　看到了？
　……看到了夜间的飞行战斗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1440]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3830a03">
「实际上想让那家伙老实点，
是件不太容易的事，不是吗？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3840a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3850a03">
「没有弹药的大炮，看上去像是
强力磁场制成的屏障，追踪式子弹——那是远程
操作还是热源追踪呢……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3860a03">
「先不谈完成度，那个怪兽是最新
技术的结晶。
　说实话，我认为那不是能单枪匹马
对阵的敌手……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3870a04">
「……不使用弹药的大炮么。
　这可真奇怪啊。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3880a03">
「它射出的确实是替代弹药
的某种东西。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3890a03">
「景明大人。您的左腕与右脚，还有左脚，
都被那个大炮给击中了吧？
　请问您受到了怎样的伤害？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3900a00">
「并不严重。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3910a03">
「我知道您的左手和脚已经动弹
不得了。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3920a00">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3930a04">
「……我知道了。
　是被<RUBY text="··">烧伤</RUBY>了吧，凑斗大人。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3940a04">
「我自先前起就很在意这
格外刺鼻的味道。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3950a00">
「……轻伤而已。」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3960a04">
「连骨髓都被瞬间燃烧殆尽时，便会散发
这种味道。我记得是这样……
　这种状况，确实动弹不得啊。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3970a03">
「……哎呀呀。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3980a00">
「并无大碍。
　凭借剑胄的治愈能力，
早晚都会恢复的。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3990a03">
「但是，不等恢复，您就打算与
那家伙战斗吧？
　您觉得自己有胜算吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4000a00">
「大概吧。」

//◆からかい
{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4010a03">
「那么您有几成胜算呢？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4020a04">
「大小姐。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4030a00">
「十成左右。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4040a03">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4050a00">
「以在下的身份，决不允许被
那种玩具轻易杀死。
　虽然如今，的确就肉体方面来说，
有些许不便。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4060a00">
「无碍。
　在下要击坠那个敌骑。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4070a04">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4080a03">
「……我明白了。
　可是，景明大人。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4090a03">
「您如此执着于和那个怪物进行战斗，
这——」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4100a01">
《主君。
　敌骑附近有所动静。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆視点転換
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1450]
　突然迸入脑内的村正的声音，让我调转了视线。
　正着陆的巨大身躯——因为它降落到了比此地更低的地方，可以把握状况。

　是车辆。
　一台大型运输车辆靠近了蹲着的怪物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1460]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4110a00">
「……糟了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4120a01">
《怎么了？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4130a00">
「极可能是在进行弹药补给，
抑或是替换搭乘的武者。
　村正，可以立刻恢复再次行动吗?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4140a01">
《……还不行！
　若以现在的状态跑出去，
连能否到达那里都难说。》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4150a00">
「……啧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
　补充弹药还好说，若让他们得到身体状况
良好的新操控者，敌我的优劣便会出现令人绝望的隔阂。
　难道只能对此束手旁观么……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1480]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4160a04">
「凑斗大人？　您怎么了？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4170a00">
「……一辆大型车辆，正在接近敌骑。
　根据推测，恐怕是为了补给。」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4180a04">
「这……
　这可不好啦。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4190a03">
「……就算阻止也来不及了。
　距离能再稍微接近一些就好了……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1490]
　虽然我也同样想要咒骂。
　但转念一想。

　敌方要替换武者，这固然是大大的不利，
但同时也是我方将渴望得知的敌骑体内人的存在位置
加以看破的绝妙机会。
　若能把握住，便将得到对敌骑使出终焉的可能性。

　虽说在热量几近超越极限的状态下，
能发挥几成威力也是个问题……
　但这是唯一的胜机。

　我将意识集中于视觉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1500]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4210a00">
「……那是在进行弹仓交换么。
　简直就是个<RUBY text="···">大仓库</RUBY>啊。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4220a04">
「毕竟需要供养那么多
大炮小炮。
　肯定会有相当的数量吧。」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4230a00">
「所言极是。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4240a03">
「！
　看那里！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4250a03">
「有人从怪物里走下来了！
　从头部稍下方的位置……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4260a00">
「……的确！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1510]
　我急忙记下。

　不过——虽然从远处连形状都看不清，
可无论是走下来的人，或新搭乘上的人，
都是身着六波罗制式龙甲的武者。
　那个怪物难道是将武者进一步强化的兵装吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1520]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4270a04">
「……？
　哎呀。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4280a04">
「到底是什么呢……
　那个<RUBY text="··">箱子</RUBY>。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4290a03">
「……箱子……？
　倒不如说……那个是，笼子吧？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4300a00">
「……是笼子么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1530]
　我看见了笼子。
　以格子外皮所构成的立方体。

　那是割开怪物内腹取出来的东西。
　难道不是重要的物品吗？　手法甚至说得上随意，
将它扔在空地上，之后看也不看一眼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1540]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4310a03">
「里面好像有什么东西……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4320a00">
「正是……
　看起来是有什么东西被堆积着。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4330a04">
「真让人在意啊……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4340a03">
「嗯……
　到底是什么呢。或许那也是某种武器。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4350a04">
「在下纱代的意思是……
　会不会是年末大甩卖中买回的囤积装备。」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4360a03">
「多么可怕啊……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4370a00">
「村正。
　视觉强化。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4380a01">
《了解。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズームイン？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("絵板写", 4900);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 600, 1000, null, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1550]
　焦点聚合起来，视觉情报变得鲜明。
　那个笼子是——铁制。一边大约三米左右。

　里面是——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1560]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4390a01">
《!!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1570]
　————巨大的剑胄。

　即使出自极为优秀的名工巧匠之手，
　也会从操控者身上夺走难以估计的热量。

　
　　　　　　　　难以估计的热量。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1580]
　……又有什么东西从车辆上卸载下来。
　那也是笼子。同样的笼子。

　只有一点区别。
　所装之物。

　笼子里装的东西在动。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆芳養家の子供達
//◆芳養少年
	EfRecoIn1(18000,50);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(16100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("絵回想*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreatePlainSP("絵板写", 4900);
	SetShade("絵板写", HEAVY);
	EfRecoOut2(50,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1590]
　笼子——
　并非笼子。

　那是牢笼。
　是牢笼。

　为了将怪物的<RUBY text="··">热源</RUBY>关押进去而存在的！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1600]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4410a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4420a04">
「……大小姐？
　怎么了？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4430a03">
「是人类。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4440a04">
「……………………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4450a04">
「您说什么？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4460a03">
「那个箱子里装的是人类。
　被舍弃的箱子里则是<RUBY text="····">枯竭死亡</RUBY>的残骸。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4470a03">
「现在新装进怪物肚子中的，
　……是不断哭喊的孩子们。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4480a04">
「…………」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4490a04">
「哦——是这样！
　原来如此，原来如此！」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4500a04">
「那是食饵啊。
　为了让那个发育过剩的猪飞上天而存在的！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4510a03">
「仔细思考一下，这想法其实理所当然啊。
　剑胄会消耗装甲者的热量以维持运转。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4520a03">
「如果其热量不够的话，只要补充人类
就可以啦。
　……多么美好的想法！　这睿智可以匹敌于
让鸡蛋立起来的方法了，不是吗！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4530a04">
「那个东西的制作者是个天才啊。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4540a03">
「是呀。
　……我忽然感到非常
愉快。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4550a04">
「在下纱代也一样，大小姐。」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4560a03">
「呵呵。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4570a04">
「呵呵……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1610]
　被舍弃的牢笼之中——
　枯竭的残骸。

　杀了他们的是谁。
　是那怪物么？

　当真如此吗？

　牵动着怪物，
　让其消耗热量，

　剥削他们生命的人，是谁？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01a","se人体_体_心臓の音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//◆ざっ。
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1620]
　我站了起来。
　太棒了。只有憎恶才能成为力量。

　正因如此憎恨着，才能站立。
　正因如此憎恨着，才能动作。

　我脚上的烧伤散发着剧痛。
　……但还不够。

　每动弹一下，身上的装甲都吸取着我的生命，
内脏像被绞住一般，发出痛苦的哀鸣。
　……但还不够。

　不够，
　不够，
　完全不够。

　需要更多伤痕。
　需要更多诅咒。
　要让那家伙更加。更加。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("絵色赤", 5000, "#990000");
	CreatePlainEX("絵板写弐", 4910);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 500, null, false);}
　
　　　　　　　　　　　痛苦吧。

　前进一步，膝盖便弯了下来。
　它咯咯咯地笑着。

　真难堪。
　你明明还有活动自如的手足呢。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 700, null, false);}
　
　　　　　　　　　　　痛苦吧。

　前进一步，便感到眩晕。
　意识朦胧，感觉变得模糊。

　真可悲。
　你明明还能看见物体，听到声音啊。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 1000, null, false);}
　
　　　　　　　　　　你这个杀人犯。

　想一下失去了这些能力的人们吧。
　快想想。

　想一下被你夺走了这些能力的人们吧。
　快想想。

　啊啊。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色赤弐", 10000, "#990000");
	Fade("絵色赤弐", 300, 1000, Axl2, false);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);}
　　　凑斗景明。
　　　祈愿这份痛苦永远折磨着你，
　　　希望你绝对得不到解放。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正立ち絵？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#990000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1630]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4580a03">
「景明大人？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1640]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4590a03">
「试问您打算怎么办？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1650]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4600a00">
「碍事。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4610a03">
「哎呀，真恐怖。
　但是无法构成我问题的答案吧？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4620a00">
「明摆的事。
　我要斩杀那个怪物，救出孩子们。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4630a03">
「凭您那身体，打算怎么做？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4640a00">
「船到桥头自然直。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4650a03">
「呵呵呵……」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4660a00">
「想发笑随您便，但恳请您
从那里让开。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4670a03">
「过度自信也好盲目相信也罢，若出于个人兴趣的话，
是无所谓啦。
　但这种情况下，要由哪位来
背负其恶果呢？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4680a04">
「肯定不止凑斗大人
一个人。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4690a00">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4700a03">
「不如试着向我们求助？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4710a00">
「<RUBY text="ｇｏ·ｈｏｍｅ">返回请走这边</RUBY>。
　<RUBY text="ｍｉｌｉｔａｒｙｂｉｔｃｈ">军用母犬</RUBY>。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4720a03">
「哎呀，真冷淡。
　真是个开不起玩笑的人呀。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4730a04">
「这可不行啊，凑斗大人。
　您可得生活得更闲适一些。」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4740a00">
「闲适……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぎりり。歯軋り
	CreateSE("SE01","se人体_体_歯軋り");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1660]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4750a03">
「呵呵呵……
　那我们该怎么办呢，婆婆？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4760a04">
「我认为我们也可以随意
而为。
　比起与毫无远见的狂战士进行搭档，
这样做还比较有利吧。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4770a03">
「也是啊。
　但是，嗯………至少互相了解一下
对方打算怎么做，与那家伙战斗，
也会更有效率吧。」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4780a03">
「这点程度还是需要的。
　你也不想因为我擅自的行动而使
现在正被那个怪物吞噬的
诸位，痛苦被延迟得更久吧？　景明大人。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4790a00">
「……」

{//◆やや吐き捨てるように
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4800a00">
「且随君便。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4810a03">
「好啊。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4820a04">
「哎呀哎呀……
　该怎么说呢，总觉得我们之间刚刚萌生的
温情与羁绊之类的东西，
在一瞬之间都烟消云散了。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4830a04">
「虽说那些本来就是错觉。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4840a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆一度ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1670]
　作战大致做了如下安排。

　一。
　景明＝村正暂且潜伏待机。
　恢复体力。

　二。
　在这段时间内，香奈枝来当敌骑的对手，同时切断
电源线。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·作戦会議
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1680]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4850a00">
「电源线……？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4860a03">
「因为它十分纤细，而且似乎被施加了迷彩，
很难发现。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1690]
　身材高挑的进驻军士官说完，用手指了过去。
　试图开始离开陆地的怪物的下部。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1700]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4870a03">
「骑体与其正下方的地表之间总有一条<RUBY text="··">筋线</RUBY>。
那个大怪兽上满载的一系列有趣兵器，
恐怕是利用电力来驱动的……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4880a00">
「原来如此。
　将其设想为提供电力的电线，
确实很合理。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1710]
　我追随着大鸟大尉的视线。
　接收到指示，集中武者视力仔细一看——勉强
看到了一条线状的影子。

　肉眼想要看清极度困难，这正是有意设计出的效果。
　遵循一贯准则，对待低空飞行的敌人，主要从
上空进行袭击，所以先前交战时完全没注意到。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1720]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4890a00">
「我曾怀疑存在内藏电池……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4900a04">
「不知是没能开发出充足容量的电池呢，
还是考虑到在特定范围内运用这一条件为前提的
优缺点，而产生的结果呢……嗯，应该就是
这类原因吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4910a00">
「但是，那种东西的存在，为何没有
对行动自由产生阻碍呢。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4920a03">
「那条电线不会伸缩的。
无论骑体如何动作。
　它总是伸在其正下方。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4930a03">
「恐怕……
　那条电线是以强韧的锻铁纤维制成，
大概是配合着骑体的行动，撕裂地表
而进行移动的吧。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4940a03">
「难以想象电源在地下一起进行移动，
所以大概在这一带的地下都
存在电源板之类的东西，
那条电线就是与其相连的？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4950a00">
「……如此设想，就可以理解了。
　那些奇怪的<RUBY text="··">辙印</RUBY>也好说了。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4960a04">
「是电线四处拖动所造成的
痕迹吧。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4970a00">
「但是，大尉。
　的确，只要切断那条电线，敌方战力就会
大幅度减弱。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4980a00">
「可问题是手段。
　您打算如何切断电线呢？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1730]
　若她的推测正确，那个真的是锻铁纤维制成，
那它与剑胄装甲的质地就很相似。
　方法太过随意，甚至连一道伤痕都无法划出。

　即使用电锯，也得花费数分钟吧。
　当然，我不认为这种状况下，能使用那种慢吞吞
的方法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1740]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4990a03">
「这个嘛……
　嗯，船到桥头自然直。」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5000a03">
「您不必担心。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5010a00">
「话是这么说，可是。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5020a03">
「Ｎｏ　ｐｒｏｂｌｅｍ。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5030a00">
「在国际社会里，这可是最没有信用度
的一句话，不是吗？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5040a03">
「或许吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1750]
　大尉笑着左耳进右耳出，结果还是没给出明确答案，
就这样开始布阵。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1760]
　三。
　永仓老人登上海岸的灯塔，把握整体状况，
随时与景明·香奈枝进行联络。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5050a00">
「联络方法为何？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5060a04">
「用这个小型无线电机。
　大小姐也持有同样的东西。
虽然有效范围很窄，但在这岛上使用，
足矣。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5070a04">
「凑斗大人呢……
　现在没有时间调整波长，
以配合您的剑胄。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5080a00">
「是的。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5090a04">
「紧急关头，我会进行无差别发信。
　当然所有的武者，所有的无线电都会接收到，
所以根本没什么机密可谈。
只有万不得已，我才会使用。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1780]
　这是当然的。
　虽然多少有些不便，但也情非得已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1790]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5100a00">
「可是即使登上了灯塔，也是一片黑暗。
　到底能将形势把握住几分，说实话
我有些怀疑。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5110a04">
「您不用担心。
　我手里有<RUBY text="ｎｉｇｈｔｖｉｓｉｏｎ">夜视镜</RUBY>，正是在这种情况下
能派上用场的物品。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5120a00">
「…………
　既然您拥有这种东西，麻烦早些拿出来。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5130a04">
「有大小姐在的时候，这就是个摆设物。
而且电池能源也有限。
　那么，祝您武运昌隆。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1800]
　永仓侍从说完，就离开了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1810]
　四。
　景明=村正见机突袭。
　压制敌骑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//嶋：●１３＿１に合流

}


.//●１３＿１
//●１３＿１
//嶋：合流地点（13A,13C）
scene ma04_014vs.nss_01
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆現在。森に潜伏中
	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1820]
　……然后。此刻。
　我俯身藏于草木中，一动不动等待
时机到来。

　与我相比，以加倍<RUBY text="··">有效</RUBY>的方法恢复了热量的敌骑，
已再次开始行动。
　它笨重地飞行于低空，扭动脖子。那一举一动
让人联想到搜寻猎物的肉食恐龙。

　而它的目标正是怯生生的小动物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1830]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5140a00">
「村正。
　恢复状况如何。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5150a01">
《稍安勿躁。
　还需要一段时间。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5160a01">
《左手和左脚现在我是无法治好的
……不过至少可以让右脚能够动弹。
　如此一来，飞行能力应该也会大幅改善。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5170a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5180a01">
《只要在地表上被障碍物包围着，
就没有被信号探查发现的风险。
　因为现在静止不动，不会散发太多热量，
不进行过近距离的热源探查，就没事。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5190a01">
《现在最重要的是拖延时间。
　只有这样才会对我们有利。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5200a00">
「……我知道。
　可是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1840]
　我待在这里的同时。
　那个怪物中也有——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1850]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5210a01">
《……我明白。
　但那个大个头只是在进行巡航而已。
它消耗的热量也只是巡航的量。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5220a01">
《所以……别着急。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5230a00">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1860]
　正如它所言。
　如果现在冲动地跑出去，就真的没人能获救了。
虽然不满大鸟大尉的举动，但要为我的鲁莽之举
买单的，的确是孩子们。

　我必须等待必胜的时机。
　我明白，但却很不耐烦。

　如今这一瞬间。在分秒流逝的时间之中——
　的的确确有一些生命正在<RUBY text="···">被吞噬</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぶち。
	CreateSE("SE01","se人体_血_たれる01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 5000, "#990000");
	FadeDelete("絵色血", 200, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1870]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5240a01">
《……主君……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5250a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5260a01">
《您流鼻血了。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5270a00">
「别在意。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5280a01">
《热量会减少的。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5290a00">
「这样啊。
　我会小心的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ぴちゅーん。銃弾が装甲に弾かれる音
	CreateSE("SE01","se戦闘_銃器_跳弾02");
	MusicStart("SE01",0,750,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1880]
　……刚才那是。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1890]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5300a00">
「看来大尉开始行动了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5310a01">
《是啊。
　虽然完全没起作用。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1900]
　怎么可能会有作用。
　只有最新型高速彻甲弹才可能一招击穿武者的装甲。
而且对手还是重装甲。

　不进化成小型列车炮，根本没希望。

　空中要塞——如此称谓，也丝毫不显夸张——以笨重
的动作调转方向。
　枪击袭来，向着大鸟大尉所在方位。
无数凶恶的枪口一齐瞄准。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぴちゅんぴちゅん
	CreateSE("SE02","se戦闘_銃器_跳弾02");
	CreateSE("SE02a","se戦闘_銃器_跳弾01");
	MusicStart("SE02",0,750,0,800,null,false);
	Wait(50);
	MusicStart("SE02a",0,750,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1910]
　又有数颗步枪弹射向它。
　子弹几乎集中射在一点，这让我佩服不已，
可无论多少个零相加，结果还是零。
巨骑完全不觉痛痒，效果甚至不及被蚊子叮一口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1920]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5320a01">
《她的目标不是电线么？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5330a00">
「她要把它引诱向合适的地点，给予致命一击。
我记得她好像是这么说的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1930]
　如今她正在诱敌吧。

　但是，即使将它引到了绝好的狙击点，
枪弹的相对威力应该也不会一跃飞升。
　不管在何处进行射击，还是会被反弹。

　锻铁纤维的电源线与装甲相比，还算脆弱，
但它到底是否会向步枪的狙击程度低头呢，
这是个极大的疑问。
　再加上，还存在其他不利条件。

　虽然比一般的武者要缓慢得多，
但那巨兵也是在飞行的。电线当然也配合着它，
以同样的速度在飞移。
　……她有能力狙击这种东西吗？

　大尉的视力拔群，可问题是需要的
不只是视力。
　甚至可以说，她没有预知能力，就根本不可能
狙击成功。

　对于现实与必要条件的隔阂，那位女性将校
又打算如何使二者吻合呢。
　她不像是会轻易承认自己无能为力的人
……但这种情况下，能信任她的条件未免太少。

　我还是别依赖她，自己另寻他策吧。
　村正的太刀要切断锻铁纤维也不成问题。

　但那个磁力屏障是障碍。
　只有使用电磁拔刀，别无他法。

　但之后，还需要使用终焉之太刀，才能破坏敌骑装甲，
将操控者逼出来。
　电磁拔刀需要消耗巨大热量，紧接的第二击
是否能发挥出足以贯穿重甲的威力呢——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1940]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5340a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1950]
　我脑中想着不依赖她。
　可心里还是不停期待。

　如果大鸟大尉能够实现自己的宣言，将电线切断
的话————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆灯台
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 1000, "slide_01_03_0", true);
	DrawDelete("絵暗転", 200, 1000, "slide_01_03_0", true);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1960]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5350a04">
「现在无法确认除了那个巨人之外的
敌方兵力。
　但确实有所存在。我一旦发现，
就立即通知您……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5360a04">
「机械化步兵还好说，如果被派出的是
训练有素的山岳步兵，那么在这暗夜里，
是无法将其发现的。
　恳请您自己小心。」

{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5370a03">
《了解。
　稍后再联络。》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//分岐
//◆分岐
//◆ヒロイン全員生存なら１３＿２Ａ
//◆香奈枝のみなら１３＿２Ｃ

}


//――――――――――――――――――――――――――――――
...//●１３＿２Ａ
//●１３＿２Ａ
//嶋：全員生存
scene ma04_014vs.nss_01all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆かち。
	CreateSE("SE01","se日常_機械_無線通信01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1970]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5380a02">
「确实还存在其他敌人……
　这是真的吗？」

{	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5390a04">
「当然了。
　刚才您不也目击补给部队了么。」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5400a02">
「不是那种玩意儿，我是问还有战斗部队
吧？　刚才那个。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5410a04">
「独自使用那种弩级兵器，
根本制造不出战果。你看它那么不灵
活……顶多算是落后的攻城兵器罢了。
　估计乃木将军才会把它视为珍宝吧。」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5420a04">
「既然在野战中运用上了，那无论作战目的为何，
都必须与弥补缺点的部队
进行配合使用吧。
　你看，现在敌骑就在烦恼该如何搜索敌人。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5430a02">
「……这不就说明
并不存在那种部队吗？」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5440a04">
「若真是这样就太好了，可是
这种想法太过乐观了。
　我认为事实是他们因为某种理由而
暂时不愿将部队投入战斗。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5450a04">
「不知是在试验新兵器呢，还是有
其他内情呢……
　这还暂且无法明确。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


....//ジャンプ指定
//次scene　"13_3"

}


//――――――――――――――――――――――――――――――
...//●１３＿２Ｃ
//●１３＿２Ｃ
//嶋：香奈枝のみ生存
scene ma04_014vs.nss_01ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆かち。
	CreateSE("SE01","se日常_機械_無線通信01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1980]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5460a04">
「那么……
　增援到底何时会出动呢？」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5470a04">
「<RUBY text="··········">他们打算窝藏到何时呢</RUBY>？
　到底谁胜谁败，就用那一点来定夺吧……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――



....//ジャンプ指定
//次scene　"13_3"

//――――――――――――――――――――――――――――――

}


//――――――――――――――――――――――――――――――
.//●１３＿３
//●１３＿３
//嶋：13_2A,13_2C合流地点
scene ma04_014vs.nss_02
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆山中の香奈枝
	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg005_山中_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 1000, "slide_01_02_1", true);
	DrawDelete("絵暗転", 200, 1000, "slide_01_02_1", true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1990]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5480a03">
「无论如何都不可掉以轻心。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2000]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5490a03">
「要警惕周围。
　右方安全左方安全后方也安全。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆割と近くにズガガッと着弾
	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 300, 0, null);

	MFlash(50,3);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5500a03">
「不过现在可不是做这种事儿的
时候呀！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("SE01","se人体_足音_走る01_L");
	SetVolume("SE01a", 2000, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,true);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	DrawDelete("絵黒幕", 200, 100, "slide_01_03_1", true);
	SetVolume("SE*", 20000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2020]
■作战行动
　适当对那个大个头进行射击。

■期待战果
　使敌方装甲表面产生深约一毫米的凹陷，对
敌兵的精神施压，促使产生便秘·脱毛等现象。

■敌方战力
　一门最弱枪炮直接击中，即可击溃我方。

■战力比
　一〇比一
　
※（注１）

（注１）上次大战之前，东条英机首相命人计算
英国与大和的国力比，回答是一〇〇比一，但
如此一来，战斗开始之前，士气就会崩溃，
所以对外发表的数据是一〇比一。此处效仿该典故。

■行动方针
　无视现实。

■行动思想
「世界上最顽强的动物是手持步枪的狙击兵。」

■结论
　加油吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5510a03">
「太随意啦！
　不过人生在世，总需要有那么一两次，
从维也纳斯蒂芬主教座堂上跳下来吧?!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ズガガッと着弾
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(50,3);

//◆走る
	CreateSE("SE01a","se人体_足音_走る01_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("絵演背景");
	DrawDelete("絵黒幕", 200, 100, "slide_01_03_1", true);
	SetVolume("SE01a", 1000, 0, null);

//◆撃ち返す。ずきゅんずきゅん。
	CreateSE("SE02","se戦闘_攻撃_ライフル撃つ4回");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, false);

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5520a03">
「啊哈哈哈哈哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆撃たれる。
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(50,3);

//◆撃ち返す。
	CreateSE("SE02","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, false);

//◆走る。
	CreateSE("SE02a","se人体_動作_跳躍03");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawDelete("絵黒幕", 200, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2050]
　大鸟香奈枝憎恨此世之恶。

　倒也没有什么特别的契机。
　对于生为贵族的人来说，这是理所当然
的素养。

　被赋予支配他人的血统之人，应将世界
引导至正确的方向，其举止需成为众人的典范，
又必须率先扑灭扰世之恶。
　如此一来，高贵的地位才能得到保障。

　浪费财力权力而一味沉湎于酒池肉林者也好，
打着正义的战争旗号将士兵们送上战场，
而自己却躲在安全的宫殿里的人也罢，
他们都没资格享受人民的敬畏与侍奉。

　席卷世界的『革命』之暴风雨消灭了他们之中的
绝大多数人，这没什么奇怪的，也合情合理。
　硬要说的话，这只是一窝盘踞在人家中的白蚁
遭到了驱逐。

　玩忽职守而一味贪图权力的贵族，就只能算是社会的
寄生虫。
　所以——

　身为释天由绪家鹏氏之血的继承者。
　大鸟右近卫大将从三位当麻真人之长女香奈枝
憎恨并要消灭世间祸害。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5530a03">
「……呼呼。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆撃つ
//◆撃ち返される
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(10);
	Delete("絵演背景");
	Delete("絵色白");

	MFlash(50,3);

	CreateSE("SE01b","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2070]
　贯彻己身使命。
　履行血之责任。

　承担此世正义。
　对扰乱世间正理的罪恶复仇。

　复仇吧。

　复仇！
　复仇！
　哀叹之血要由等量的血来偿还!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5540a03">
「叽……叽叽叽。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆至近距離に着弾
	CreateSE("SE01a","se戦闘_破壊_爆発04");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreatePlainEX("絵板写", 900);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	Fade("絵板写", 0, 500, null, true);

	FadeDelete("絵板写", 1000, false);
	Shake("絵板写", 1000, 20, 30, 0, 0, 1000, Dxl2, true);

//◆走る
//◆少し見晴らしの良い場所。山頂？
	CreateSE("SE01a","se人体_足音_走る01_L");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/bg/bg003_荒れ野_03.jpg");
	DrawDelete("絵黒幕", 200, 100, "slide_01_02_0", true);
	SetVolume("@m*", 2000, 0, null);
	SetVolume("SE*", 600, 0, null);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5550a03">
「……差不多啦。
　这附近就挺不错吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆灯台
//◆ウィリアム·テル序曲のコントラバス独奏アレンジ
//◆可能か？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 1000, "slide_01_03_0", true);
	WaitPlay("@m*", null);
	DrawDelete("絵暗転", 200, 1000, "slide_01_03_0", true);


...//分岐
//◆分岐
//◆ヒロイン全員生存なら１３＿４Ａ
//◆香奈枝のみなら１３＿４Ｃ


}


//――――――――――――――――――――――――――――――
..//●１３＿４Ａ
//●１３＿４Ａ
//嶋：全員生存
scene ma04_014vs.nss_02all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm07",0,1000,false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2100]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5560a02">
「这声音……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5570a04">
「看来大小姐<RUBY text="···">开始了</RUBY>。
　应该会很精彩吧。请您
拭目以待。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5580a02">
「……但是啊。
　真的能成功吗？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5590a04">
「您在担心吗？　绫弥大人。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5600a02">
「我不太了解枪械。
　不过大致能想象得到，想要用步枪
射穿那根悬空电线，是非常荒唐
的事。」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5610a04">
「不是荒唐，而是不可能。
　无论怎么想都不可能。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5620a02">
「喂。婆婆。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5630a04">
「您不必担心。
　……只要视线不受阻碍，大小姐的瞄准镜
就决不会放过目标。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5640a02">
「瞄准镜？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 700, 0, null);
	CreateColorSP("絵色黒", 10000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	WaitPlay("@mbgm*", null);


//◆●１３＿４Ｃに継続？　●１３＿５にジャンプ？　奈良原要確認
//嶋：※こちらですが、13_5に移動になります。

....//ジャンプ指定
//次scene　"１３＿５"

}



//――――――――――――――――――――――――――――――
..//●１３＿４Ｃ
//●１３＿４Ｃ
//嶋：香奈枝のみ生存
scene ma04_014vs.nss_02ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm07",0,1000,false);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5650a04">
「开始了啊。
　大小姐……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5660a04">
「请随心所欲地描绘出艺术品吧。
　只属于大小姐的艺术……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2120]
　——要将在半空中移动且带有保护色的极细之线
一枪射断。
　永仓纱代当然知道这是多么困难的事。

　她知道这是不可能的事情。

　但是，她还知道另一件事。
　她——她的主人。

　永仓纱代了解<RUBY text="·····">大鸟香奈枝</RUBY>。
　比谁都了解。也许比本人都了解得更深。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2130]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5670a04">
「——芝诺悖论将成为现实。
　<RUBY text="··">魔法</RUBY>将由此诞生……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 700, 0, null);
	CreateColorSP("絵色黒", 10000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	WaitPlay("@mbgm*", null);

....//ジャンプ指定
//次scene　"１３＿５"
//嶋：●１３＿５に移動

}



//――――――――――――――――――――――――――――――
.//●１３＿５
//●１３＿５
//嶋：13_5A,13_5C合流
scene ma04_014vs.nss_03
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆荒覇吐
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_03_1", true);

	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2140]
　经过短暂的攻防，他大致把握了事态。

　幕军·进驻军，没发出识别信号的那个
深红色武者似乎存在友军。
　凭借一杆枪就鲁莽地挑战他荒霸吐，简直把
那枪当做魔法之剑了，那人到底是谁。

　虽然如今仍未能确认其身姿，但并非那位武者
本人吧。同伴乘着荒霸吐与敌方武者的战斗，
他自始至终都在远处观望，对方是旧式真打剑胄。
　其武装只有佩于腰间大小的太刀，并未持有枪炮。

　在升降机前遭遇之时，除了身着剑胄而来的男人外，
还有其他人影——他记得与他交班时，
同伴告诉过他这件事。
　恐怕这就是那个人影。

　为何武者在荒霸吐的装甲面前艰难应战之时，
连个影儿都不见的同伴，如今又现身
开始了如此鲁莽的行动呢。
　这不难作出推测。

　现已确认赤色敌骑在先前交战中遭受了
巨大损伤。对方即使因此坠亡也很正常。
　倒不如说对方数次被龙气炮击中而仍活着，
这才让人不禁抱以疑问。

　对方可以称得上异常坚固，但在我方热量枯竭
的同时，敌骑也急降落并消失在山脚，
这无疑意味着对方也到极限了。
　在补给中也未受到袭击，这一点也证明了此事。

　在那之后，敌骑究竟如何了……
　倘若逃走了，那他就无能为力了。这龙骑兵
用的强化外装根本无法搜寻出一位步兵并
将其击垮。

　但据他所见，这是不可能的。
　想逃的话，遭遇荒霸吐的刹那就会那么做了。
即便是碍于那无谋之勇的本性而没有逃掉，那接受了
龙气炮的洗礼后，也会夹着尾巴溜走吧。

　敌人也已看透我方脚步迟钝。
　对方应该知道逃走是件容易的事。可对方却
仍旧继续交战。

　话说回来，敌人究竟是何方神圣，来到江之岛
的目的又是为何呢。
　是的。不可能没有目的。

　突如其来地出现并掌控住研究所，向他们下达命令的
进驻军将校——对于这方面的异常现象，身为职业军人
的他并不感兴趣——一定知道这些吧。
但当下这都不重要。

　敌人为了自己的目的，必须与他荒霸吐战斗。
　<RUBY text="··">所以</RUBY>，友军才会现身并开始射击这些玩具子弹。

　为何？
　当然是为了让武者进行恢复而在拖延时间啊！

　为何要<RUBY text="····">拖延时间</RUBY>？
　对方无法默默潜伏的理由又是什么？

　敌人<RUBY text="····">先发制人</RUBY>了。虽明知自己的枪完全不管用。
　这是为何？

　——是因为他荒霸吐与正在休息而无法动弹的敌骑
近在咫尺。
　所以必须要立刻拉开距离！

　那么。
　敌人身在何处？

　狙击兵根本无伤大雅。
　武者到底潜伏在何处？

　在第一次受到枪击的附近——

　另外，没错。既然是仅以一杆枪就打算与他荒霸吐
对峙的士兵，一定会时刻力求最佳最完美的
行动。
　对负责拖延时间的士兵来说，当前的最佳结果为何？

　那就是为恢复完毕的武者出击之时做准备，
将阵势布局成对武者有利的情势——把荒霸吐引向
会对武者暴露出自身弱点的相对位置上！

　敌人所盯准的弱点——是刚才的龙气炮吗？
　不。那就与正面特攻无异了。<k>
　
　……电源线！

　虽然经过保护色涂装，但已历经如此长时间的交战了。
会被发现也无可厚非。
　诱敌的士兵为了让武者更易于攻击电源线，而在引诱
自己！

　敌兵乍眼一看毫无意义的游击战术有着确切的指向性。
荒霸吐正在被引向某个方向。
　那么。既然如此——

　根据上述而思考吧！
　身为敌军决定性力量的武者如今身在何处!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2149]
　……可怕的是，虽掺杂着若干误解，
但他的推测离事实并不远。
出击次数二十五回，在多次的飞行中恣意发挥自己
击坠王之名，并荣转为试验操控者。

  正因为他是这样的熟练兵，才会有如此嗅觉吧。

　无论如何。
　他把炮口瞄准了<RUBY text="··">那里</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	OnBG(100,"bg022_山林a_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("絵ＥＶ");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_0", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2150]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5680a00">
「——什……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5690a01">
《主君！　快逃——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆ぶぉーん。発振準備
	CreateSEEX("SE01a","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01a",3000,1000,0,1000,null,true);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1100, 1100, null, true);
	Shake("絵演上", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();
	Wait(2000);
	WaitKey(3000);


//◆ブラックアウト
	SetVolume("SE*", 3000, 0, null);
	CreateColorEX("絵色暗転", 10000, "#000000");
	Fade("絵色暗転", 3000, 1000, null, true);
	Delete("プロセス*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2160]
//◆テキスト横書き表示
　
　　　　<PRE>Ｔｈｅ ｐａｒａｄｏｘ　ｏｆ　
　　　　　　"Ｔｅｌｌ　ａｎｄ　ａｐｐｌｅ".</PRE>

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒下", 10000, "#000000");
	Delete("絵色暗転");

//◆中点パラドックス射撃
//◆香奈枝凶眼カットを挿入しつつ
//◆※ここでは眼とわからないように

	CreateSE("SE021","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE021a","se戦闘_動作_空上昇01");
	MusicStart("SE021",0,1000,0,1000,null,false);
	MusicStart("SE021a",0,1000,0,1000,null,false);
	CreateTextureSP("絵演元", 5100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @180, @0, @0, null,true);
	CreatePlainEXadd("絵演", 5110);
	SetBlur("絵演", true, 2, 500, 60, false);
	SetVertex("絵演", right, bottom);
	Zoom("絵演", 0, 3000, 3000, null, true);
	Fade("絵演", 0, 700, null, true);
	Delete("絵色黒下");
	Zoom("絵演", 300, 1000, 1000, null, false);
	Shake("絵演", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("絵演", 200, true);

	Wait(300);

	CreateWindow("絵窓", 5000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateColorSP("絵窓/絵演色", 10010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 10020, -145, -200, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	CreateTextureEXover("絵窓/絵演ＥＶ覆", 10110, -203, -217, "cg/ev/resize/ev004_香奈枝の凶眼_bm.jpg");
	CreateTextureSPover("絵窓/絵演ＥＶ", 10100, -203, -217, "cg/ev/resize/ev004_香奈枝の凶眼_bm.jpg");
	Fade("絵窓/絵演ＥＶ覆", 0, 500, null, true);
	MoveFFP1("@絵窓/絵演ＥＶ",1000);
	MoveFFP2("@絵窓/絵演ＥＶ覆",5000);

	CreateColorSPadd("絵窓/絵演色白", 10200, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1500,null,false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);
	FadeDelete("絵窓/絵演色白", 100, true);

	WaitKey(500);

	$SEパラドックス_ma04_014vs=se特殊_陰義_バロウズ_パラドックス01;
	$SE矢飛翔_ma04_014vs=se戦闘_バロウズ_ボーガン射撃01;

	CreateSE("SE022","$SEパラドックス_ma04_014vs");
	CreateSE("SE022a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE022",0,800,0,1200,null,false);
	MusicStart("SE022a",0,800,0,1200,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @180, @0, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 3000, 3000, null, true);
	Fade("絵演弐", 0, 700, null, true);
	MoveFFP1stop();
	MoveFFP2stop();
	Delete("絵窓");
	Delete("絵板写");
	Zoom("絵演弐", 300, 1000, 1000, null, false);
	Shake("絵演弐", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("絵演弐", 200, true);

	Wait(300);

	CreateSE("SE023","$SEパラドックス_ma04_014vs");
	CreateSE("SE023a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE023",0,700,0,1300,null,false);
	MusicStart("SE023a",0,700,0,1300,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 3000, 1500, null, true);
	Fade("絵演弐", 0, 700, null, true);
	Delete("絵板写");
	Zoom("絵演弐", 150, 1000, 1000, null, false);
	Shake("絵演弐", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("絵演弐", 100, true);

	CreateSE("SE024","$SEパラドックス_ma04_014vs");
	CreateSE("SE024a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE024",0,800,0,1200,null,false);
	MusicStart("SE024a",0,800,0,1200,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 1500, 3000, null, true);
	Fade("絵演弐", 0, 700, null, true);
	Delete("絵板写");
	Zoom("絵演弐", 150, 1000, 1000, null, false);
	Shake("絵演弐", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("絵演弐", 100, true);

	CreateSE("SE025","$SEパラドックス_ma04_014vs");
	CreateSE("SE025a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE025",0,900,0,1100,null,false);
	MusicStart("SE025a",0,900,0,1100,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 3000, 3000, null, true);
	Fade("絵演弐", 0, 700, null, true);
	Delete("絵板写");
	Zoom("絵演弐", 150, 1000, 1000, null, false);
	Shake("絵演弐", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("絵演弐", 100, true);

	CreateSE("SE026","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE026a","se戦闘_動作_空上昇01");
	CreateSE("SE026b","se戦闘_攻撃_鎧攻撃命中03");

	MusicStart("SE026",0,1000,0,1000,null,false);
	MusicStart("SE026a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演効果", 6000, 8, -614, "cg/ef/ef044_火花c.png");
	CreateTextureEX("絵演荒覇", 5500, -90, -540, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵演元", 5100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Request("絵演元", Smoothing);
	CreatePlainEXadd("絵演", 5110);
	SetBlur("絵演", true, 2, 500, 60, false);
	SetVertex("絵演", right, top);
	Zoom("絵演", 0, 3000, 3000, null, true);
	Fade("絵演", 0, 700, null, true);
	Delete("絵色黒下");
	MusicStart("SE026b",0,1000,0,1000,null,false);
	Fade("絵演荒覇", 0, 500, null, true);
	Shake("絵演荒覇", 300, 20, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演効果", 300, 3000, 3000, Dxl2, false);
	Rotate("絵演効果", 300, @0, @0, @3600, Dxl2,false);
	Zoom("絵演", 300, 1000, 1000, null, false);
	Shake("絵演", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("絵演効果", 200, false);
	FadeDelete("絵演", 200, true);

//◆ケーブル断線
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 2000, "#FFFFFF");
	CreateTextureSP("絵演", 300, -46, -1260, "cg/ef/resize/ef026_汎用爆撃extl.jpg");
	CreatePlainEXadd("絵板写", 1000);
	Fade("絵板写", 0, 1000, null, true);
	SetBlur("絵板写", true, 2, 500, 60, false);
	Delete("上背景");
	CreateSE("SE031a","se戦闘_破壊_爆発05");
	CreateSE("SE031b","se特殊_陰義_発動03");
	MusicStart("SE031a",0,1000,0,700,null,false);
	MusicStart("SE031b",0,1000,0,1000,null,false);
	Zoom("絵板写", 800, 2000, 2000, Dxl2, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵板写", 1000, false);
	FadeDelete("絵暗転", 1400, true);

//◆荒覇吐
	CreateSE("SE041","se戦闘_荒覇吐_転倒01");
	MusicStart("SE041",0,1000,0,1250,null,false);
	CreateTextureSP("絵演弐", 3000, -175, -30, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	CreatePlainSPadd("絵板写", 3100);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, true);
	Fade("絵板写", 300, 0, null, false);
	DrawDelete("絵板写", 300, 1000, "effect_01_00_0", true);

	SoundPlay("@mbgm12",0,1000,true);

//◆まあボイスも顔グラもいらんか。
//嶋：顔ウィンドウかネームプレート希望（その他との統一が必要なため）
//ムー：下のタグつけました。
	SetNwC("cg/fw/nw六波羅武者.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2170]
//【ｅｔｃ／六波羅武者】
<voice name="六波羅武者" class="その他男" src="voice/ma04/014vs5691z00">
「————?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2180]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5700a01">
《……斩断了!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2190]
　眼看不祥的炮口就要发出吼声之时。
　撕裂苍色黑暗的疾光将电源线也
切断了。

　是香奈枝小姐的攻击吧。
　虽然不知道她做了什么，也不知道那究竟
是什么——总而言之这是等待已久的好机会！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5710a00">
「出击。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5720a01">
《了解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆合当理稼動。出撃ー。
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 6000, "#FFFFFF");
	CreatePlainEXadd("絵板写", 5000);
	Fade("絵色白", 250, 1000, null, false);
	Fade("絵板写", 100, 1000, Dxl2, false);

	SetVertex("絵板写", 750, 90);
	Zoom("絵板写", 100, 1250, 1250, null, true);

	WaitAction("絵色白", null);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒", 5100, "#000000");
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

//◆モニター展開
//あきゅん「演出：荒覇吐戦で負傷しているのでパラ下げてます、この後の雪車町戦要注意」

	Cockpit_AllFade(300,432,0);

	CreateSE("SE01","se特殊_コックピット_起動音04");
	$残時間=RemainTime("SE01")-1000;
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 500, 1000, "slide_05_00_0", true);

	CP_IHPChange(300,5,null,false);
	CP_PowerChange(30,500,null,false);
	CP_AziChange(1000,100,AxlDxl,false);

	Wait(1000);

	FadeDelete("絵色白", 1000, true);

	Wait(1000);

	CreateSE("SE02","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 11000, "#FFFFFF");

	FrameShakeSt(150);

	CP_SpeedChange(300,513,Dxl2,false);
	MyTr_Count(100,445);

	CP_HighChange(1000,982,Dxl2,false);
	CP_AltChange(300,70,Axl2,false);

	Fade("絵色白", 150, 1000, null, true);

	Wait(800);

	CreateTextureSP("絵演空中背景", 5010, Center, -4930, "cg/bg/bg202_旋回演出背景山a_03.jpg");
	CreateSurfaceEX("絵効果サフ", 5000,1000,"@絵演空中背景");
	Fade("絵効果サフ", 0, 1000, null, true);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	Move("絵演空中背景", 1300, @0, -4780, Dxl2, false);

	Delete("@OnBg*");
	FadeDelete("絵色白", 1000, true);

	WaitAction("絵演空中背景", null);

	CP_AltChange(4000,0,DxlAuto,false);
	Move("絵演空中背景", 3000, @0, -5080, AxlDxl, false);

	Wait(3000);

	MoveFFP1("@絵演空中背景",7500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2210]
　我把体内的热量注入背后的飞行推进器，
并将其变换为推力离开陆地。
　这加速难以说是完美的，却反而感到了高于平常的荷重
所带来的失调感——身体状况不良所带来的影响还很大。

　但这也足以战斗了。
　村正已做完了它所言之事。大概是因为治愈之力
被重点倾注了吧，右脚稍微得到恢复，能弥补无法动弹
的左脚而保持住了飞行姿势。

　手腕也没问题了。左手动弹不得，但右手健在。
若是与普通的武者进行普通的较量，
那不可否认我方处于不利状况。
　但我只需挥出电磁之一刀而已。单手足矣。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒覇吐、ロックオン
	Move("絵演空中背景", 2000, @0, @-288, DxlAuto, false);
	Wait(2000);

	CreateWindow("絵窓", 8000, 347, 173, 410, 230, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 0, null, true);
	CreateEffect("絵窓/絵画面効果", 9000, 0, 0, 1030, 580, "KitanoBlue");
	SetAlias("絵窓/絵画面効果","絵窓/絵画面効果");
	CreateTextureEX("絵窓/絵演効果画面", 8000, Center, Middle, "cg/data/noize_01_00_0.png");
	CreateTextureEX("絵窓/絵演立絵装甲", 8100, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	Zoom("絵窓/絵演立絵装甲", 0, 500, 500, null, true);
	Fade("絵窓/絵演立絵装甲", 0, 500, null, true);
	Fade("絵窓/絵演効果画面", 0, 250, null, true);

	CreateSE("SE01","se特殊_コックピット_ロックオン");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2220]
　从敌骑的举动可看出对方的混乱。他面对闪光一击
飞来的方向，大概是在使用探查机能，
同时试图让那堆枪炮瞄准目标——<k>真笨。
已经晚了。如今解决掉大尉，状况也不会改变。

　本来那个士兵应该不会忽略这一点的。
　那个铁块的搭乘者——然而，他的心弦难道也与电线
一同被切断了么。

　一瞬之前还站在死亡边缘的我，
如今只差一步就可直击敌方致命的空隙。
　我看见了。先前确认过的操控者搭乘位置！

　可是对方却不迎击。
　异形巨人的注意力被斩断了自己阿基里斯腱的
某人吸引去了。他忽视了危急的状况。

　大好时机。
　要在此决出胜负————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_ロック解除01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 0, 0, Dxl2, true);
	Delete("絵窓");

//◆突進
//◆もーちょっとってとこで
	SetVolume("SEL*", 300, 0, null);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1100,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 3100, -590, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -590, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Delete("絵演ＳＴ");
	Delete("絵色黒");
	Delete("絵演空中*");
	Delete("絵効果サフ*");
	MoveFFP1stop();

//あきゅん「ＣＰ：すぐ先のファイルでもＣＰあるので消すだけにします」
	Cockpit_AllFade0();
	FadeDelete("絵色白", 100, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateColorSP("絵色黒", 10000, "#000000");

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2230]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5730a12">
《相思难耐夜漫漫，庭前秋菊为谁绽，
未觉宵露透重衣，奈何佳人情义断。》
（注解：引自歌舞伎名段《笼钓瓶花街醉醒》，
讲述一名山野农夫爱上一名当红花魁的故事）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆九〇式竜騎兵（雪車町仕様）が割り込んできまーす。
//あきゅん「素材確認：え、そんなの無いけどどうすんの？　とりあえず九〇式竜で対応」
	PrintGO("上背景", 30000);
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	Cockpit_AllFade0();
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2240]
　————?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演ＳＴ", 100, Center, Middle, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Move("絵演ＳＴ", 0, @0, @-72, null, true);
	Zoom("絵演ＳＴ", 0, 200, 200, null, true);
	SetBlur("絵演ＳＴ", true, 3, 500, 50, false);
	Request("絵演ＳＴ", Smoothing);
	Move("絵演ＳＴ", 600, @0, @-20, DxlAuto, false);
	Fade("絵演ＳＴ", 600, 1000, null, true);

	SetFwL("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2250a]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5740a12">
《花魁啊，你为何如此薄情！
　村正啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2250b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5750a00">
《你是……?!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆激突
//◆一合打ち合い。がきがきーん。
	CreateColorEX("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演ＳＴ", 400, 1500, 1500, Axl2, false);
	Move("絵演ＳＴ", 100, @0, @-20, null, true);
	Move("絵演ＳＴ", 300, @0, @180, Axl2, false);
	Wait(100);
	Fade("絵色黒", 200, 1000, null, true);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,2000);
	SL_rightdownfade2(10);

	CreateSE("SE02","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵演元", 10020, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 0, @0, @180, @0, null,true);
	CreatePlainSPadd("絵演", 10030);
	Zoom("絵演", 0, 1250, 1250, null, true);
	SetBlur("絵演", true, 3, 500, 200, false);
	FadeDelete("絵演", 800, false);
	Shake("絵演", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演", 200, 1000, 1000, null, false);

	ClearWaitAll(2000, 0);

..//ジャンプ指定
//次ファイル　"ma04_015vs.nss"


}

//★選択肢シーン
scene ma04_014vs_ic_Select.nss
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm12",0,1000,true);

	Cockpit_AllFade0();

	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice02("守护一条","贯彻自己的职责");
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
			ChoiceA02();
//一条を守る　"ma04_014vsa.nss"
			$一条を守る = true;
		}
		case @選択肢２
		{
			ChoiceB02();
//役割に徹する　"ma04_014vsb.nss"
			$GameName = "ma04_014vsb.nss";
			$役割に徹する = true;
		}
	}
}

.//プロセス用======================================================

..//明滅な光
function MeimetuAction()
{
	CreateProcess("プロセス明暗", 5000, 0, 0, "MeimetuSET");
	SetAlias("プロセス明暗","プロセス明暗");
	Request("プロセス明暗", Start);

}

function MeimetuSET()
{
	begin:
	while(1)
	{
	Fade("@絵演上", 800, 1000, null, true);
	Wait(200);
	Fade("@絵演上", 800, 0, null, true);
	Wait(200);
	}

}