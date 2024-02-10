//<continuation number="1470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_028.nss_MAIN
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
	#ev196_香奈枝Ｈ１_a=true;
	#ev196_香奈枝Ｈ１_b=true;
	#ev197_香奈枝Ｈ２=true;
	#ev198_香奈枝Ｈ３_a=true;
	#ev198_香奈枝Ｈ３_b=true;

//あきゅん「演出：ここで登録していいものか、ネタバレ回避のため悪鬼編終了までとっておきたい」
	//#ev007_犯されている女性=true;

	#bg091_山荘の一室_03b=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_029.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#mc04_028=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene mc04_028.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義

	//リコ背景抹消
	RecoIn();
}
//========================================================

..//ジャンプ指定
//前ファイル　"mc04_027.nss"

//◆ＢＧＭ：ヒロインＨ
//◆ＥＶ：景明を押し倒す香奈枝
//inc久保田　ダミーがないためえらーがでますよ。

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 19000, "BLACK");
	CreateTextureEX("絵演背景効果", 111, -630, -500, "cg/bg/resize/bg091_山荘の一室_03aexl.jpg");
	CreateTextureEX("絵演背景", 110, -630, -500, "cg/bg/resize/bg091_山荘の一室_03al.jpg");
	OnBG(100,"bg091_山荘の一室_03a.jpg");
	FadeBG(0,true);

	OnSE("se人体_動作_抱きつき01", 1000);
	WaitKey(800);

	OnSE("se人体_衝撃_転倒01", 1000);
	WaitKey(1000);

	Delete("上背景");

	WaitKey(1000);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280010a00">
「————————」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280020a03">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵演背景*", 10000, -400, @0, DxlAuto, false);
	SoundPlay("@mbgm28",3000,1000,true);
	Fade("絵演背景", 0, 1000, null, true);
	FadeDelete("黒幕*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　紧接而来的冲击……
　与我预期中的相比，有些许差异。

　大鸟大尉将我按倒。

　奇怪的是，完全没有粗暴的感觉。
　是使用了某种柔术吗。我仿佛出于自己的意
愿想要这样做，不知不觉地——身体无声地躺倒下来。

　回过神来，她的体重已经压在我身上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280030a00">
「大尉……」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280040a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱きつき02");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　想必询问的意图已经传达了吧。
　然而，大尉没有回应。

{	MusicStart("SE01",0,1000,0,800,null,false);}
　用微微颤抖的指尖，打开我的衣领。
　解开纽扣，让肌肤接触到外界空气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280050a00">
「这是在——」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280060a03">
「明天……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　正想用明确的话语再次询问，她以简短的二字
夺走了我的先机。
　意思是今天的翌日，如此简明的词语。

　明天————
　
　然而这一词语已经明示了紧随其后的语言，
那对我而言是绝不可能误解的含义。

　明天。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280070a03">
「所以……在那之前……
　你是我的东西。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280080a03">
「景明大人。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　这并非寻求同意的声音。而是宣告决定的声音。
　是命令。

　她支配着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280090a00">
「……呃……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　用干渴的喉咙，想表达顺从之意。
　但无法出声，只能轻轻喘息。

　但无论如何，我的回答为何均没有关系。
　既然支配已成前提，顾虑对方的反应没有任
何价值。

　大鸟大尉那双手掌握着我生杀予夺之权的手，此
刻正在剥去我的衣服。既能用耳听闻
也能以肌肤感受到，她的呼吸，向我传达着
与初次触碰男人身体的处女同样的紧张。

　思考着，她为什么要做这种事。
　但这样想的同时，又觉得去推测其中的理由
或许是没有意义的。

　她掌控着我。
　只有这一件事是切实的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆inc久保田：プレ分けしました

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演背景*", 20000, @0, 0, DxlAuto, false);
	Fade("絵演背景効果", 1000, 1000, null, true);

//◆inc久保田：プレ分けしました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　衣服的前襟被敞开，鲜活的皮肤裸露到外面的空气中。
　紧张的视线从上方灌注下来。

　身上有很多伤痕。

　剑胄能促进操控者的治愈恢复能力，普通的伤口都能
在短时间内不留痕迹地消失，但若伤口极深，则在痊愈
后也会留下淡淡的痕迹。
　这样的伤口在我的体表绝不仅是几处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280100a03">
「…………」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280110a00">
「……这样……被凝视着的话……
　有些太……」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280120a03">
「羞耻吗？」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280130a00">
「是……」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280140a03">
「为什么？
　觉得丑陋吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　大尉的小指，沿着胸前的一道痕迹描画着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280150a03">
「这个……伤痕。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280160a00">
「嗯。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280170a03">
「伤痕可以说是活着的证据。
　既不是值得羞耻的东西，
也不是什么丑陋的东西哦，景明大人。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280180a00">
「若是对寻常生活的人而言……大尉。
　正如您所言。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280190a03">
「……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280200a00">
「如果说伤痕是活着的证据……
　那凑斗景明的伤痕所表示的……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　用自己的手指指向方才被大尉触碰过的伤痕。

　我回想起这个伤痕的来由。
　回想起给我留下这个伤痕的战斗之中——还有战斗之后，
自己夺走的生命。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280210a00">
「正是丑行。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280220a03">
「……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280230a00">
「除去为之羞耻以外别无他法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 19000, "#000000");
	DrawTransition("絵色黒", 3000, 0, 1000, 100, null, "cg/data/slide_05_00_0.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我闭着眼睛说道。
　
　她既没有肯定也没有否定，没有用声音做出回答。

　可是，凝视没有停止。
　可以感觉到，大尉注意力的焦点始终停驻在我
的皮肤上。

　感觉有些许酥痒。
　细细的目光化作具现的丝线，在我的皮肤上爬动
——心底涌起这样的错觉。

　即便想扭开身体，也由于被按压着，而无法如愿。

　羞耻让脑浆不断升温发热，但我只有忍耐一途。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆差分：傷に口をつける香奈枝
	CreateSE("SE01","se人体_動作_口付け");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetNwC("cg/fw/nw景明.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280240a00">
「——呃?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("絵演背景*", 0, -723, -315, null, true);

	DrawDelete("絵色黒", 300, 1000, "slide_05_00_1", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　突然，以为是错觉的感觉获得了实质。
　并且还要浓厚数倍。

　刹那间，意识一阵迷惑，无法弄清事实。
　可是当确认视野中发生的变化后，意识到
发生了何事。

　香奈枝小姐，在吻着……
　我的伤痕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280250a03">
「嗯……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280260a00">
「大尉，」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　发出想制止的声音，然而却无法继续下去。
　搜寻言语的迷茫之间，无法找到出口。

　这个状态下……应该说什么好。
　明知道不管说什么，在行动面前都是无力的。

　我如木偶一般看也不看地默许着，大尉则沉浸
在自己的行为中。
　用富有弹力的双唇挑弄着，其中的舌尖也在
蠢动。

　濡湿的触感。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280270a00">
「咕。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　喉头不听使唤地收缩，挤出空气。
　急剧的刺激与电流的作用相仿。

　而她继续着这一行为。
　并不局限于一处。范围延伸，扩大。

　细致地。
　大鸟大尉用自己的口唇，确认着我的伤痕。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280280a00">
（是这样啊）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　突然醒悟。

　无法制止她的理由。
　她不理会我的理由。

　——现在与大鸟大尉相对的，既是我
又不是我。

　我的伤痕。

　我的轨迹。

　我的争斗。

　我的罪恶。

　——她在品味着这些。

　无法拒绝是理所当然的。
　那正是我呈献给她，希望得到裁决的东西。

　我只能自愿承受。
　将这看作她的审判。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280290a03">
「……这些。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280300a00">
「……」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280310a03">
「每一处，每一处……
　都有泪水的味道。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280320a03">
「……悲叹的味道……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280330a00">
「……那是。」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280340a00">
「理所当然的吧。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280350a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　被我杀害之人怨恨的泪水。
　对自己冤屈而死的命运发出的悲叹。

　会浸染在我的伤痕中也是当然的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280360a03">
「没有明白……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280370a00">
「……？」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280380a03">
「景明大人错了。
　明明，<RUBY text="·····">还少了一人</RUBY>。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280390a03">
「为什么……就不明白呢？」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280400a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　说不明白也是确实，大尉说的话超出
了我理解的范畴。

　是说我什么地方弄错了呢。
　还是说——少了什么呢。

　泪水吗？　悲叹吗？
　她是说其中少了<RUBY text="····">谁的一份</RUBY>呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280410a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　不知何时大尉的双眸突然直视住我。
　窥视我的瞳孔，是在等待其中出现
领悟的火光吗——

　或许是也说不定。
　但与此同时，大尉向我投来的目光中已经
包含着放弃的神色。

　因为知道，我无法理解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280420a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　而我回应的，是她的放弃而不是期待。
　如她预料一般，我眼中映出不理解的神色。

　大尉并没有发出失望的叹息。
　只是俯下脸孔，隐藏着自己的表情。

　但这一举措，应该也伴随着某种决意吧。
　若不是这样，也不会引致接下来的行动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆差分？　別個？　口奉仕。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　毫无疑问，这也并非不能说是顺势而为。
　然而若要说成急剧，也确实是急剧。

　至少对我的五感而言是这样的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280430a03">
「……呃……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演背景");
	CreateTextureEX("ほうし１", 4000, -680, 0, "cg/ev/resize/ev196_香奈枝Ｈ１_al.jpg");
	Move("絵演背景*", 3000, @0, @-196, DxlAuto, false);
	Move("ほうし*", 3000, @0, -196, DxlAuto, false);
	Fade("ほうし１", 1000, 1000, null, true);
	Delete("絵演背景*");

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　以比刚才敞开上衣时更加笨拙生硬的动作，
大尉把手伸向我的裤子。
　解开皮带，脱了下来。

　触碰着经此动作后露出的东西。

　一阵目眩。

　这是突然开始剧烈涌现的性欲所致。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック？　過去のトラウマＣＧ。ev007

	EfRecoIn1(18000,600);

	CreateTextureSP("絵演ＥＶ", 4100, Center, Middle, "cg/ev/ev007_犯されている女性.jpg");
	SetShade("絵演ＥＶ", SEMIHEAVY);
	SetTone("絵演ＥＶ", NegaPosi);

	Fade("絵演ＥＶ", 600, 750, null, false);

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　平时处于深深沉眠中的<RUBY text="··">阳具</RUBY>，
以耳边突然响起钟声一般的势头走向觉醒。
　将其抑制，需要能把自己心脏咬破的意志力。


　这阵冲动很不妙。
　……自己会变得不再是自己。

　不知道大尉会如何对待我的这份苦闷。
　会理解还是误解呢。

　不管怎样，她并没有做出中断行为的选择。
　雪白的双颊染着绯红，继续暴行。


　手指以对待易碎品般的动作攀爬上去。
　小心翼翼地，将作为男性器的肉块向自己的方向拨去。


　仿佛在与人面对面一般地，注视那里。
　可以听到喉咙咕噜作响的声音。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);

	Delete("絵演ＥＶ");
	CreateTextureSP("ほうし１", 4000, Center, Middle, "cg/ev/ev196_香奈枝Ｈ１_a.jpg");

	EfRecoOut2(600,true);

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280440a00">
「————」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　我已无法言语。
　光是镇压胸中的冲动就已经竭尽全力。

　性器被大鸟大尉凝视着。
　……对现在的我而言，这视线只能说是剧毒。

　经过一段可认为是观察也可认为是踌躇的时间，大
尉缓缓地开始了手的动作。
　要称这为爱抚或许有些稚拙，但我没有能够对
此做出清醒评价的余裕。

　光是认识到香奈枝小姐正在进行这种行为的事实，
我接受的刺激就已经濒临饱和。
　仿佛一不留神意识就会被吞噬。

　她的喘息。触碰的手指。视线。
　全然不顾主人的意愿，我的那个部分贪享着被
施予的全部刺激。

　而且，还在渴求更多——
　看上去就是如此。那伴随着血液流入而痉挛，
膨胀的姿态。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280450a03">
「……那个，景明大人……」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280460a00">
「——」


{	NwR("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280470a03">
「用嘴……的话，没关系吧？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　当然有关系。

　没有将这话说出声来，是因为正在拼命压抑
性冲动呢，还是因为已经输给了这份冲动呢，
连我自己也难以判别。
　理性发生缺损，现实渐渐离我远去。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆inc久保田：プレ分けしました

	CreateTextureEX("ほうし２", 4010, Center, Middle, "cg/ev/ev196_香奈枝Ｈ１_b.jpg");
	Fade("ほうし２", 1000, 1000, null, true);

	WaitKey(1000);

//◆inc久保田：プレ分けしました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0401]
　大尉没有接到我的否定，将言语付诸了实践。
……连这种时候也是那么的果断。
　虽然同时也很为难。

　舌头舔了上去。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆inc久保田：プレ分けしました

	Fade("ほうし２", 500, 0, null, true);

//◆inc久保田：プレ分けしました

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0402]
　肉茎用跳动表达着愉悦。
　大尉惊讶地将头和舌都缩了回去。

　间隔。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("ほうし２", 500, 1000, null, true);
	Delete("ほうし１");

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280480a03">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　这个瞬间。
　我产生了草食动物的心境。

　将自己比为<RUBY text="····">被捕食者</RUBY>。
　
　这样说并没有什么理由，但就是能清楚地感觉到。
大尉的心理变化。

　<RUBY text="········">某个开关被打开了</RUBY>。
　如用言语来表达，就像是『莫非这很有趣？』
一样的感觉。

　危险。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	CreateTextureEX("ほうし２ex", 4011, -340, InBottom, "cg/ev/resize/ev196_香奈枝Ｈ１_bm.jpg");

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280490a03">
「……」


</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	Move("ほうし２ex", 3000, @0, -104, DxlAuto, false);
	Fade("ほうし２ex", 1000, 1000, DxlAuto, false);

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430b]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280500a03">
「嗯咕……」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　这样的预感绝不会落空。

　大尉以让先前那战战兢兢的样子显得如同谎言一般的
勇敢，含住了男性器的前端。
　那敏感的部分，被濡湿的感触与温暖所包裹。


　男性肉体中最为坦率的那个部分，毫无疑问地，
迅速做出了相应的反应。
　体积增大，隆起。

　顺从着大尉的意图。
　忠实地。

　这无疑更进一步煽动了她的心情。
　眼周的红潮表示的意义恐怕已经由羞耻转变为愉悦。同时
樱口向前推进着。

　含得越来越深。
　肉棒的大半都已经被收纳到口腔中。

　尖端触碰着上颚的黏膜。
　妖异的触感。

　背德之感涌起，我的性器乃至全身都颤抖起来。
　
　——用这不洁的器官，侵犯着她的那种地方。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280510a03">
「嗯呼……」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280520a00">
「————」


{	NwR("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280530a03">
「景明大人……
　舒服吧？」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280540a00">
「………………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　以沉默作答。
　……虽然知道这并无益处。

　大尉用唇角微微展露笑容，继续口淫。
　再次含住——还用上了舌头。

　卷起尖端，戳弄阳器的前端。
　并且挑弄着那下面肉伞的部分。

　……她似乎掌握住了<RUBY text="··">诀窍</RUBY>。

　海绵体无止境地充血。
　我除了慌乱呼吸，颤抖身体以外什么也做不到。

　越是给予这样的反应，大尉就越是加快性戏的节奏。
　樱口的动作越来越巧妙。

　刚以为香舌要去按压肉茎的里筋，却在该处展宽舌面
缠绕上来。
　就这样开始摩擦。

　将唾液涂抹到我那红黑丑陋的部分上。
　……莫非是在模仿野生动物标识领地吗。

　想必浓厚地沾染上了大尉的气味吧。
　光是作此想象，血液就仿佛在逆流。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("ほうし１", 5000, -340, -104, "cg/ev/resize/ev196_香奈枝Ｈ１_am.jpg");
	Fade("ほうし１", 1000, 1000, null, true);

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280550a03">
「呵呵……」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280560a00">
「……咕……」


{	NwR("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280570a03">
「还会露出这样的表情啊。」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280580a00">
「……毕竟，又没有性冷淡。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	FadeDelete("ほうし１", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　听到那蛊惑人心的声音，用虽然并非谎言，但作为借口
却无比拙劣的言语做出应答。
　有种想找个地方消失掉的心境。

　当然，我无处可逃。
　即便有，在她有解放我的意思之前也是毫无意义的。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	FadeDelete("ほうし２ex", 1000, false);

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280590a03">
「……湿到这个程度的话……」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280600a00">
「……？」


{	NwR("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280610a03">
「……就可以了吧？」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280620a00">
「大尉？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　不知为何，感觉那自言自语中包含着某种决定性的意思，
刚想出声询问——
　可看到她下定决心将手伸向自己衣服的行动时，我将
几乎说出口的话吞了回去。

　逐渐显露出来的柔软肌肤，让我的思考飞到九霄云外。
　惊得屏气凝神，只一味注视着。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280630a03">
「————」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280640a03">
「哎唔。」


{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280650a00">
「……?!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：香奈枝半脱ぎＨ。騎乗位。
	CreateTextureEX("きじょういex", 4025, -530, InTop, "cg/ev/resize/ev197_香奈枝Ｈ２l.jpg");
	Move("きじょういex", 3000, @0, -576, DxlAuto, false);
	Fade("きじょういex", 1000, 1000, null, true);
	Delete("ほうし*");

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　最开始的感觉，是痛苦。
　被不由分说地积压到狭窄地方中去的痛楚——

　正因为是敏感度高的部位，承受着过剩的痛觉刺激。
　我险些就要发出苦闷的声音，好不容易才咬牙忍住。

　可仅过了几眨眼的瞬间——痛觉就仿若潮水一般退去。

　取而代之，向我涌来的是相反的感觉。
　温热柔软甘美的。

　痛苦若像前潮的话，快乐则彷如波涛。
　在进入的瞬间从男根开始席卷了我的全部神经。

　包裹着肉棒的肉洞……
　那阵紧密缠络的感触，无论如何也难以抗拒。

　引诱着我向更深处进发。
　引诱着我去进一步贪享。
　
　作为一个雄性生物——除了顺从以外还能如何。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("きじょうい", 4020, Center, Middle, "cg/ev/ev197_香奈枝Ｈ２.jpg");
	Fade("きじょういex", 1000, 0, null, true);

	SetNwL("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280660a03">
「……呃、咕……」


{	NwL("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280670a00">
「……？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　几乎要燃烧殆尽的思念，被这声音稍稍镇静下来
　她那痛苦的——呻吟。

　我察觉到性器与性器连结的位置，有高粘度液体
的存在。
{	Fade("きじょういex", 1000, 1000, null, false);}
　接着，将目光投向该处。

　深红色的液体。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetNwL("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280680a00">
「……大尉。」


{	NwL("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280690a03">
「呜……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	FadeDelete("きじょういex", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　想必理解了我未问的问题。
　陷在痛苦之中的香奈枝小姐勉强笑着。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetNwL("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280700a03">
「因为……一直在守护贞操。」


{	NwL("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280710a00">
「……为谁？」


{	NwL("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280720a03">
「婚约者……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280730a03">
「在他<RUBY text="··">去世</RUBY>之前……
　绝不委身于其他男人……」


{	NwL("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280740a00">
「————」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280750a00">
「那个婚约者……莫非是……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 4100, -410, -255, "cg/ev/resize/ev197_香奈枝Ｈ２l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　没有容我再说下去。
　明明痛苦还没有消退，大尉就想开始活动自己的身体。

{	Move("絵演", 3000, -581, -30, DxlAuto, false);
	Fade("絵演", 1000, 1000, null, false);}
　抬起腰肢，将刺入己身的物件轻轻拔出。
　沾染破瓜之血的肉棒增添几分深红，姿态更显凶恶。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetNwL("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280760a03">
「哈——呜。」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280770a03">
「嗯……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　稍微整理一下呼吸……
　她再度沉下腰。

　将肉质的凶器埋入体内。
　深深地。

　我的尖端，到达了她的最深处。
　
　不可思议的一体感与充实感。

　每一秒体温都在上升，更使得大脑简直像要沸腾。

　香奈枝小姐反复做着这样的行为。

　那终归不过是初次知晓男人滋味的处女的做法。
　技巧上缺乏功夫，单调。

　但没有关系。
　在这份紧致，这份<RUBY text="··">濡湿</RUBY>，
这份炽热面前都不过是琐碎之事。

　我的性欲被勾引起来。
　急速地。

　而且将其抑制的意志障壁已经不复存在。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetNwL("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280780a03">
「景明大人……呃……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆ホワイトアウト
	CreateColorEX("しろ", 25000, "#FFFFFF");
	Fade("しろ",1500,1000,null,true);

//◆ウェイト
	WaitKey(500);

//◆ホワイトイン。部屋？
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg091_山荘の一室_03a.jpg");

	Delete("きじょうい*");
	FadeDelete("しろ", 1500, true);

	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280790a03">
「……哈啊……」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280800a03">
「啊——呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm27",0,1000,true);

	CreateColorEX("絵色黒", 15000, "#000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　理解了已经将我的感觉引向顶点的事实。
　大尉的身体失去了力气。

　瘫软地将双手撑在床上。
　
　……我反过来坐起身，俯视着她的背。

{	SetVolume("@mbgm*", 100, 0, null);
	Fade("絵色黒", 0, 1000, null, true);}
　
　　　　　　　　　　　　不对。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵色黒", 300, false);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280810a00">
（不对——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　对这在胸中勃然涌起的言语，我自己进行了肯定。
　<RUBY text="··">这样</RUBY>不对。

　就在眼前的女性的背。
　尽管高昂、火热——然而。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280820a00">
（还不够）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　我将手放在大鸟大尉肩上。
　施加力道，转向这边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280830a03">
「诶……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　不知是否还在余韵当中——她以一副头脑还没跟上现实
的神情抬头看我。
　容貌中包含着冲击，羞耻，以及<RUBY text="···">成就感</RUBY>。

　看到这里，我的嘴角不知不觉地上翘。
　
　在胸中再次说道，不对。

　她期望的究竟为何。
　我并不知道。

　或许是想稍微多了解一些凑斗景明也说不定。
　或者说没有什么明确意图，只是冲动地在索求也说不定。

　可是不管怎样，她的期望没有达成。
　虽然因为是处女，可悲地没有意识到。

　可必须让她知道。
　<RUBY text="····">这种事情</RUBY>并不是性交。

　真正的性交，
　应该是更加——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック、トラウマＣＧ。ev007？
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想01", 8000, Center, Middle, "cg/ev/ev007_犯されている女性.jpg");
	SetShade("絵回想*", SEMIHEAVY);
	SetTone("絵回想*", NegaPosi);

	EfRecoIn2(300);

	Wait(1500);

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　远要无可救药得多的东西。

　她向我索求着性。
　既然如此，我就有让她了解到本质的义务。

　所以要教她。
　
　——想要我的话就给你好了，大鸟香奈枝。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ＣＧ：香奈枝Ｈ２。強姦チック。
	CreateTextureEX("むりやり１", 4010, Center, Middle, "cg/ev/resize/ev198_香奈枝Ｈ３_al.jpg");
	Request("むりやり１", Smoothing);
	Zoom("むりやり１", 0, 500, 500, null, true);
	Fade("むりやり１", 0, 1000, null, true);

	CreateSE("SE01","se人体_動作_掴む01");
	CreatePlainSP("絵板写", 4100);

	SoundPlay("@mbgm29",0,1000,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 30, 0, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280840a03">
「啊，景明大人……?!」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280850a03">
「怎么，请等等……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280860a00">
「基本上男人就是说让他等
也不会等的生物，大尉。
　记住这个吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_手払う01");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　以从背后袭击的姿势，捉住那个在女性中属于高挑
的身体。
　与我相比小了不止一圈。将她抱进怀中没有任何困难。

{	MusicStart("SE01",0,1000,0,1000,null,false);}
　手腕伸到前面，将乳房纳入掌中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280870a03">
「啊……我，还没，那个……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280880a00">
「是想说还没做好准备吗？
　无须担心。」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280890a00">
「那种事情不做也罢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　揉弄着丰满充实的乳房。
　非常柔软——不过，估计是因为没有被做过这种事
的经验，其中还残留着些许固结。

　毫无疑问那正是痛苦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280900a03">
「呜……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　想从我的手腕中逃脱，大尉反抗着。
　相当强的力量。

　但我不仅体格上占优，而且男性和女性之间还有根本的肌
质差距。
　对付起来毫不费力。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_掴む02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetBlur("むりやり１", true, 3, 500, 60, false);
	Move("むりやり１", 300, -114, -352, Dxl3, false);
	Zoom("むりやり１", 300, 1000, 1000, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0762]
　我先让她肆意挣扎一阵之后，握住颈脖，一口气
按倒在床上。
　大尉的脸扑地沉到被褥中。

　手就这样按着不放。
　毫不费力地用单手封杀了她全身的抵抗。

　这样一来，她应该就会明白。
　自己无法违抗的事实。

　以痛苦的动作，大尉的脸转向侧旁，仰视着我。
　事到如今我也没做什么表情，神情不变地用视线回应。

　她一惊。
　浓厚的畏怯神色被刷在她的脸上。

　抵抗的力量迅速减弱。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev198_香奈枝Ｈ３_a.jpg");
	FadeDelete("むりやり*", 1000, true);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280910a00">
「没错，
　这样就好。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280920a03">
「……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280930a00">
「不要反抗，只要承受就好。
　明白了吗？」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280940a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　我再次将手伸向乳房。
　指尖上施加了比之前更大的力道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280950a03">
「啊疼！」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280960a00">
「回答呢？」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280970a03">
「是——是。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0280980a00">
「很好。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　看着眼角含泪的她做出屈服的回答才感到满足
我抚摸着她的头发。
　她鼻中发出哼嗯的声音做出回应。

　这样做的同时，放在胸上的手也没有离开。
　我并未放缓力道，持续蹂躏着淫靡的肉球。

　她那宣示痛楚的喘息数度传入耳中。
　每一次都让我的兴致更为高涨。
——与方才的交合完全不同。

　不这样是不行的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0280990a03">
「呜——咕。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281000a00">
「能发出可爱的声音呢。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281010a03">
「呃……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281020a00">
「请保持下去。
　非常富有魅力。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　顺从自己的亢奋心情，我把嘴靠近到大尉泛起香汗的
颈脖上。
　将唇按上去，吸吮。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw香奈枝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281030a03">
「哈呜……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281040a00">
「喜欢被这样做吗。
　那么，就给你更多吧。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281050a03">
「不，不是……
　请停下。」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281060a03">
「会留下痕迹的……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281070a00">
「嗯。
　猥亵的痕迹……」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281080a00">
「我想，那和以处女之身侵
犯男人的你非常相称。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281090a03">
「呃……！」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281100a00">
「没有人会觉得，野兽裸体行走有什么奇怪。
　有着淫乱性行的女性即便身上残留着吻迹，想来
也不是什么奇怪的事吧。」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281110a00">
「光明正大地显露于他人眼前又如何。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　听着我玩弄内心的话，大尉默不作声地垂下头。
　羞耻得连耳朵也染成了绯红。

{	Fade("絵色黒", 1000, 1000, null, false);}
　从她的颈脖到后背、手腕……
　能感觉到欲求的每一个地方，都被我用嘴亲吻。

　发出声音吮吸，留下深深的痕迹。
　就如同仿着樱花瓣形状描画的刺青一般。

　大鸟大尉什么也没有再说，任凭嗜虐的行为加诸
于自己身上。
　顺从地献出身体，也不再抵抗。

　虽然这也有这的愉快，但也明白自己很快就会厌倦。
　
　……是时候了吗。

　虽然再花些时间继续享受也不错。
　不——这样也别有一番兴致。

　如此打定主意，我的行为移动到下一个阶段。
　没有给她任何预告。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/resize/ev198_香奈枝Ｈ３_bl.jpg");
	SetBlur("絵演", true, 3, 500, 60, false);
	Zoom("絵演", 0, 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0845]
　对她而言一切都是唐突的——
　用肉刀将女人的性器<?>
{	Wait(600);
	Delete("絵色黒");
	Move("絵演", 600, -1024, 0, Dxl2, false);
	Zoom("絵演", 300, 1000, 1000, Dxl2, false);}
贯穿。

　仿佛被钓上来的鱼儿，大尉的身体弹跳着，舞动着。
　冲击过于急剧，过于强烈，以至于连悲鸣都无法发出
的样子。


　秘处仍然很紧，若不用力推压，我的肉茎就无法入侵。
　甚至感觉似乎正发出嘎吱嘎吱的声音。

　可即便如此，比起之前的结合也要容易得多。
　是因为大尉的阴肉正在融化，失去了原有的
紧致吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演弐", 4010, -655, -466, "cg/ev/resize/ev198_香奈枝Ｈ３_bl.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0848]
　导致这一现象的原因，无疑正是从香奈枝小姐的
身体深处渗出的秘液。
　
{	Move("絵演弐", 3000, -120, @0, DxlAuto, false);
	Fade("絵演弐", 1000, 1000, null, false);}
　她身体中的雌性也完全觉醒。

　受到这样的对待，肉体感到愉悦。
　在贪享着快乐。

　真是值得称赞的贪欲。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演参", 4009, Center, Middle, "cg/ev/ev198_香奈枝Ｈ３_b.jpg");
	Fade("絵演弐", 1000, 0, null, true);
	Delete("絵演弐");

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281120a00">
「大尉……」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281130a03">
「啊……咕、呜……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281140a03">
「拜、拜托了，景明大人……
　一点就好……稍微再温柔一点点。」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281150a00">
「了解。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　我大方地点点头。
　此话并没有拒绝的理由。

　我理解她的<RUBY text="··">欲求</RUBY>。
　如她所愿地做吧。做到她心满意足。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281160a00">
「刚才，您说在守护贞操……」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281170a03">
「……？」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281180a00">
「对方是谁我不想问。
　只是大尉阁下……在本人看来，所谓贞操
是即使在对方死后也应该继续守护的东西。」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281190a00">
「只有这样才是贞女。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281200a03">
「那是……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281210a00">
「是打算要忘掉吗。
　像这样，向本人索求着——」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281220a00">
「将我凑斗景明留存胸中。
　试图将你心中那个男人舍弃，连渣滓也不留。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281230a03">
「……」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281240a00">
「哼——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　发出了难以抑制的笑声。

　凭靠直觉就明白到，她和那个人，并没有结下所谓
的恋爱关系。
　若是有的话，藉此严声斥责她想必会很有趣，但没
有的东西再去强求也没有意义。

　现在这样也同样能充分享受。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281250a00">
「大尉。
　不要做那么无情的事。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281260a03">
「……景、景明大人？」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281270a00">
「请不要忘记。
　好好铭记于心吧。」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281280a00">
「再怎么说也是缔结婚约之人。
　即便如今已经亡故，在追忆他面容的同时……」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281290a00">
「还像这样——被我侵犯的感觉如何？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　越说越激昂的同时，深深戳刺着大尉的秘穴。
　那一刹那，她无疑理解了我意欲表达的事情。

　不然的话，为什么突然间，那秘肉会急剧地
将我的肉棒挤出呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281300a00">
「无须耍小聪明去整理心情。
　好好享受不贞的愉悦吧。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281310a03">
「不……不要再说了……！」


{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281320a00">
「你渴求着我。
　即使你的婚约者还活着，这点也绝不会改变。」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281330a00">
「若是他还活着，你也能在他眼前吞含我的肉棒，
甩动臀部吧？
　你拥有像那样做也能享受愉悦的本质。」


{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281340a03">
「胡……胡说！　骗人！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
　大尉带着哭腔加以否定。
　然而却无法糊弄每一秒都变得更加高昂
的肉体。

　直白的性欲，以及言语带来的间接刺激，将她推上
未知的领域。
　秘所那青涩的紧致已经消失，逐渐变化为成熟的状态。

　愉悦。
　多么舒爽。

　将大鸟香奈枝那淳朴的女体赶上绝顶的同时。
　我预感今夜将会有漫长的享受，独自一人从喉咙深处
发出冷笑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
	CreateColorEXadd("しろ", 25000, "#FFFFFF");
	Fade("しろ",1500,1000,null,true);

	Delete("絵演*");
	Delete("むりやり２");

	SetVolume("@mbgm*", 2000, 0, null);

//◆ブラックアウト
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg091_山荘の一室_03b.jpg");

	WaitKey(500);
	FadeDelete("しろ", 1500, true);

//◆ウェイト
	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　——就这样，过了约两小时有余。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("黒幕１", 1500, true);

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281350a03">
「…………」


//◆照れ
{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281360a03">
「……禽兽……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281370a00">
「…………
　我也不知该如何辩解。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281380a00">
「这是，一种疾病……
　和女性像这样，发生过度接触的话……
就会出现怎么也无法抑制的状况。」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281390a03">
「禽兽禽兽禽兽！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281400a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　……这延绵不绝的指责，我只能一直听下去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
	}
//============================================

//◆フェードアウト
//◆フェードイン

	CreateColorEX("くろ", 15000, "BLACK");
	Fade("くろ",1000,1000,null,true);
	WaitKey(1000);
	SoundPlay("@mbgm26",3000,1000,true);
	Fade("くろ",1000,0,null,true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281410a03">
「……不过，太好了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281420a00">
「……？」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281430a03">
「景明大人有<RUBY text="·····">这样的一面</RUBY>，没有其他
人知道吧？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281440a00">
「这个……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　若是知道的人很多那就头疼了。
　人生会继续不下去的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281450a03">
「呵呵。
　连如此秘密的部分，也能让我看到
真的是太好了……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0281460a03">
「……在最后……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0281470a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　————最后。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);
	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc04_029.nss"