//<continuation number="890">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_033.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_034.nss";

}

scene mc02_033.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_032.nss"

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm35",0,1000,true);
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/ev/ev173_鍛造雷弾保管器.jpg");
	Delete("上背景");

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330010a00">
（…………）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330020a03">
（在考虑什么无聊的事吗？）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330030a00">
（……我认为船里某处会备有降落伞。
　大尉阁下，这里请交给我——）


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330040a03">
（你认为我们有时间去找那种东西吗？）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330050a00">
（但是……）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330060a03">
（没有但是）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330070a00">
（……但是，大尉阁下。
这次尝试原本就是我建议的。
该由我一个人来承担后果）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330080a03">
（关乎大和将来的理想状态，将自己所想
告诉我的是景明大人。
　听完之后，决定应该这么做的是我）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330090a03">
（轮不到景明大人说这种话）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330100a00">
（……但是）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330110a03">
（禁止但是！）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330120a00">
（…………
　这样……好吗？）


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330130a03">
（没有什么好不好的。
　我可是<RUBY text="··">大鸟</RUBY>啊）


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330140a03">
（为这个国家做我该做之事。这是
我的义务。
　是血脉的宿命）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330150a00">
（……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　无言以对。
　想要改变她的主意，就是对她的侮辱。

　尊贵之人。
　她有着，对于血统的骄傲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330160a03">
（景明大人才是。
　景明大人没有义务陪我，
逃跑也是可以的）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330170a00">
（请避免开这种玩笑）


//◆ガーン·ショック
{	OnSE("se擬音_コミカル_ガーン01", 1000);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330180a03">
（————）


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330190a04">
（……噗）


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330200a03">
（被嘲笑了!!）


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330210a00">
（失礼。
　但是，大鸟大尉。我的身家性命已经
交付到你手中了）


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330220a00">
（若是大尉在这片空中丧命，我也会
随您而去的）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330230a03">
（……景明大人有景明大人的使命吧。
　忘了银星号了吗？）


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330240a00">
（我完全没忘。
　所以，无论如何都希望大尉平安无事地
杀出重围）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330250a00">
（只有大尉阁下您活下去，我才能继续
追踪其行迹）


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330260a03">
（…………）


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330270a04">
（唔，就是这样。
　我们就尽力加油，努力不要死掉吧，
大小姐）


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330280a03">
（嗯、嗯。没错）


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330290a04">
「——于是，悄悄话时间结束。
　还是不要偷偷摸摸地躲在别人身后
比较好哦。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330300e141">
「唔……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330310b03">
「这样啊。
　再过三秒的话，会怎么样呢？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330320a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆すたっ。上からキャノン出現

	OnSE("se人体_動作_跳躍01", 1000);
	WaitKey(550);
	OnSE("se人体_衝撃_転倒01", 1000);
	StL(1100, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStL(200,false);
	Move("@StL*", 150, @0, @30, Dxl2, true);
	Wait(200);
	Move("@StL*", 100, @0, @-30, Axl1, true);
	SoundPlay("@mbgm36", 0, 1000, true);

	SetNwC("cg/fw/nw竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330330e141">
「中——中佐！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　那个男人，<RUBY text="···">从上方</RUBY>而降。
　——从天花板上。

　他是什么时候，怎样出现在那里的呢。
　甚至连他的同伴都瞠目结舌。想必他们也完全没有
预料到吧。

　镇静自若的只有永仓老人家一人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1100, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330340a03">
「————」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330350b03">
「辛苦了。
　接下来就交给我吧。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330360e141">
「……是！」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330370b03">
「好了。
　……大鸟大尉、永仓文员，还有凑斗景明
吗。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330380a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330390b03">
「你们来这里干什么？
只是这样问就够蠢的了。
　要是再问为什么就更蠢了。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330400a03">
「哎呀。片面斥责别人可不好哦，卡农中佐。
　人生就是充满着连续不断的意外啊～」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　夹杂着叹息的低语，大鸟大尉俏皮地回应着。
　……不，并不是俏皮。而是争取时间的手段。

　她打算把对手引入谈话之中，借此拖延时间。
　
　但是——不同于已经退到后方耿直的将校。
这个方法对卡农中佐行得通吗……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330410b03">
「嗯？　啊，原来如此。
　那么我就期待一下意外吧。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330420b03">
「你们三位，上船的目的是什么？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330430a03">
「是晨间散步。
　我觉得偶尔像这样在空中散步也是一种
乐趣。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330440b03">
「真是健康的运动。
　不过，不怎么有趣吧？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330450a03">
「接下来没有什么会变得有趣的计划吗？
　中佐。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330460b03">
「此话怎讲？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330470a03">
「要举办烟火大会了吧？
　风已经告诉我了哦。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330480b03">
「……<RUBY text="··">风语</RUBY>吗。
　嘿，乔治，你在天堂看到了吗？　自从
你死在江之岛之后，我们科的情报管理
就变成这种死样子了啊。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330490a00">
「……」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330500b03">
「烟火啊。
　的确是预定<RUBY text="·">放</RUBY>一个巨大的烟火。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330510b03">
「你们如果想看，希望能提前告诉我们。
　难得来了客人，我方会给你们准备最尊贵
的待遇……可是你们来得这么急，看来没法
准备了。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330520b03">
「招待客人不周，是绅士的耻辱。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330530a03">
「失礼的是我们。请您不要放在心上。
　何况我们并不是来观光的。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330540b03">
「哦？
　有其他目的吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　卡农吃了一惊。
　不用去确认，他的惊讶只不过表现在
面部的肌肉运动上罢了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330550a03">
「嗯。
　实际上，我在考虑要不要给烟火里加点水。」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330560a03">
「就像这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　香奈枝小姐用一只手，向我示意随时都
能劈开炸弹的位置。
　中佐用夸张的姿态和小题大作的哀嚎回应了我们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330570b03">
「喂喂。饶了我吧！
　如果真这样做的话，我煞费苦心做好的烟火不就
不能用了吗！」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330580a03">
「如果我说我想这样做呢？」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330590b03">
「怎么能这样。
　但我相信你是理解我的……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330600a03">
「是啊。至少不会完全反对。
　不过，想法已经改变了。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330610b03">
「变成什么样了？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330620a03">
「回家的英国绅士☆」


{	FwC("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330630b03">
「……攘夷主义已经不流行啦。」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330640a03">
「你要是来做客的话，我很欢迎。
　对于不脱鞋就踏进屋内，最后甚至打算连
门牌都换掉的客人，能笑脸相迎已经是我的
极限了。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330650b03">
「但这并不是你一个人决定的吧，
女士？
　是谁教唆你的呢？」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330660b03">
「是那位男士吧？
　把你的笑容从我这里夺走的可恶家伙。」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330670a03">
「好眼力。不过教唆也太难听了。
　我和景明大人是因为真爱才结合的！」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330680b03">
「被骗的女人总是说着相同的话。」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330690a04">
「是的。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330700a00">
「没错。」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／船内竜兵】
<voice name="ｅｔｃ／船内竜兵" class="その他男声" src="voice/mc02/0330710e141">
「嗯。」


{	FwC("cg/fw/fw香奈枝_驚き.png");}

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330720a03">
「你们怎么偏偏在这一点上这么默契!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330730b03">
「女士，我可以尽量满足你的要求。
我并不是心胸狭窄的男人。
　你不打算回到我身边吗？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330740a03">
「别恋恋不舍了，中佐。
　女人一旦变心，就再也回不到过去了。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330750a03">
「和男人可不一样。」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330760b03">
「怎么会这样。
　已经不能重新来过了吗！」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330770b03">
「真是让人难以原谅的男人啊，凑斗景明。
　看来我不得不向你提出决斗了。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330780b03">
「那么，把白手套放在哪里好呢……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330790a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　面对金发男子戏谑而又挑衅的视线，我沉默着
回望他。
　该说些什么——却说不出来。

　香奈枝小姐也一样，
　还有永仓也是。

　我发现所有人都很异常。
　
　——为什么？

　<RUBY text="··">何故</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330800b03">
「……啧。
　拖延时间到此结束了吗。」


{	FwC("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330810b03">
「不过，嗯——已经足够了吧。
　即便你们拥有从这里逃出去的
力量……现在也无济于事了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm21", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　进驻军中佐耸起肩膀。
　
　为什么。

　为什么，他要<RUBY text="···">故意给</RUBY>我们时间呢？
　没有……表示出任何疑问。

　如果说不想让炸弹投下的我方的胜利条件
是争取时间，那么想要投下炸弹的对方的胜
利条件就是压缩时间。
　应该立刻取回炸弹。

　明明应该是这样才对。
　
　
　……解开这个矛盾的关键，将逆转胜利的条件。

　需要拖延时间的，并不是我们。
　<RUBY text="····">而是他们</RUBY>。就是这样。

　也就是说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0330820a03">
「……纱代……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330830a04">
「双鱼座的运势明明在上升啊……
　啊。不过摩羯座是运势全无的！」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0330840a04">
「难道？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0330850a00">
「……是我……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　即使弄清现状，也为时已晚。
　时间已经过去了。

　挽回的机会————没有了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330860b03">
「你们的着眼点不错。
　但是……好不容易走到这一步，
还是迟了一点啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　卡农中佐微微笑了。
　那并不是傲慢的胜利宣言。

　跟字面上的意思一样，他是在安慰败者。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330870b03">
「那是锻造雷弹的保管器。
　已经空空如也了。」


{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330880b03">
「里面的东西已经出了飞船。」


{	FwC("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0330890b03">
「你们……
　<RUBY text="····">没能赶上</RUBY>啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("黒幕１", 15000, "BLACK");
	Fade("黒幕１",1000,1000,null,true);
	DeleteStA(0, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　　上午八点二分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＴ－０９（爆装）
//◆鍛造雷弾投下
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 18990, "#000000");
	Delete("上背景");

	CreateWindow("絵窓", 19000, 0, 0, 1024, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSPadd("絵窓/絵演色", 19010, "#FFFFFF");

	CreateTextureSP("絵背景", 100, -30, -2520, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

	CreateSE("SE01","se日常_建物_牢獄扉開く01");
	MusicStart("SE01",0,1000,0,600,null,false);

	Wait(200);
	Zoom("絵窓", 800, 1000, 1000, DxlAuto, true);

	CreateSE("SE02","se戦闘_動作_空中待機_L");
	MusicStart("SE02",2000,1000,0,1000,null,true);

	Wait(600);

	Delete("絵色黒*");
	FadeDelete("絵窓/絵演色", 2000, true);
	Delete("絵窓*");

	CreatePlainSP("絵板写", 19900);
	Wait(10);
	Delete("絵効果*");
	Delete("絵背景*");
	Delete("絵色黒*");

	CloudZoomSet(1110);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,0,-800,null,false);

	CreateTextureSP("絵背景", 200, Center, Middle, "cg/bg/resize/bg026_普陀楽山塞a_01m.jpg");

	CreateTextureSP("絵背景空", 100, Center, InBottom, "cg/bg/resize/bg204_横旋回背景_01tl.jpg");
	SetVertex("絵背景空", center, bottom);
	Zoom("絵背景空", 0, 1000, 1500, null, true);

	Move("絵背景", 3000, @0, 0, null, false);
	FadeDelete("絵板写", 300, true);

	Wait(700);

	CloudZoomVertex(3300,0,800,null,false);
	Move("絵背景空", 3000, @0, 4551, Dxl2, false);

	FadeDelete("絵背景", 1000, true);
	WaitAction("絵背景空", null);

	Move("絵背景空", 400000, @0, -8526, null, false);

	CreateTextureSP("絵演立絵", 1110, Center, Middle, "cg/st/3dユーウォーキー_騎航_通常.png");
	Request("絵演立絵", Smoothing);
	Rotate("絵演立絵", 0, @0, @0, @-70, null,true);
	Zoom("絵演立絵", 0, 750, 750, null, true);
	Shake("絵演立絵", 2160000, 2, 2, 0, 0, 1000, null, false);
	Move("絵演立絵", 0, @200, @-1100, null, true);

	FadeDelete("絵板写", 600, true);

	CreateSE("SE03","se戦闘_動作_空急降下01");
	MusicStart("SE03",1000,1000,0,1000,null,false);

	Move("絵演立絵", 4000, @-200, @1200, Dxl2, false);

	Wait(2000);

	Move("絵演立絵", 30000, @-80, @-300, Dxl2, false);

	Wait(2000);

	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Wait(200);
	Move("絵演立絵", 400, @0, @1200, Axl3, false);

	Wait(2000);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc02_034.nss"