//<continuation number="700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_008.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;
	#ev218_茶々丸と同衾する景明_a=true;
	#ev218_茶々丸と同衾する景明_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_009.nss";

}

scene md02_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_007.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(0,false);
	FadeStL(0,false);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",0,true);

	OnSE("se特殊_鎧_駆動音02", 1000);

//◆村正、崩れ落ちる。

	Move("@StR*", 800, @0, @80, AxlAuto, false);
	WaitKey(500);

//◆うぃーん。蜘蛛に

	OnSE("se特殊_その他_自動休眠", 1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStR(0,true);
	StR(1000, @0, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0,true);
	Move("@StR*", 1500, @0, @100, Dxl2, false);
	Shake("@StR*", 1500, 20, 0, 0, 0, 1000, Dxl2, false);

	Fade("絵フラ", 1000, 0, null, true);

	Wait(500);
	DeleteStR(300,true);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080010a00">
「村正!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0080020a01">
《————》

{	SoundPlay("@mbgm19", 0, 1000, true);
	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080030a07">
「就是因为才刚恢复就乱来。
　所以才会又自动休眠的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080040a00">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080050a00">
「分析得真迅速。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　就连操控者我本人也要花数秒才能把握状况。
　也有因村正而不禁动摇的原因……

　能够在几乎一瞬间理解毫无关联的剑胄的异常
——看似微不足道的小事，其实并非寻常。
　通常，能做到那样的只有锻冶师而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080060a07">
「知道点小技巧而已啦。
　总之，这家伙没大碍。不需担心。
明早能恢复的。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080070a00">
「嗯……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080080a07">
「按照计划丢去杂物房就ＯＫ了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080090a00">
「不能扔掉啊。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080100a07">
「那就放那边吧。
　那——哥哥。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明に乗っかる茶々丸
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se人体_動作_抱く02", 1000);
//嶋：差分が変更されましたので、下記のように修正させていただきました。【09/07/21】
//	CreateTextureEX("ちゃちゃまる", 3000, @0, @0, "cg/ev/ev218_茶々丸と同衾する景明_b.jpg");
	CreateTextureEX("ちゃちゃまる", 3000, @0, -500, "cg/ev/ev218_茶々丸と同衾する景明_a.jpg");
	Fade("ちゃちゃまる", 1000, 1000, null, true);
	DeleteStA(0,true);
	Delete("@OnBG*");
	WaitKey(1000);

	Move("ちゃちゃまる", 1000, @0, -100, AxlDxl, true);

	SoundPlay("@mbgm26", 0, 1000, true);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080110a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080120a07">
「睡吧。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080130a00">
「虽然我也同意该休息了。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080140a07">
「嗯。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080150a00">
「……」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080160a07">
「喵——」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080170a00">
「……阁下。
　请回您自己房间。」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080180a07">
「在这儿睡。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080190a00">
「刚才您确实说男女不能同衾。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080200a07">
「印象中没有呐——」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080210a00">
「那是政治家的诡辩吧。」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080220a07">
「我就是政治家。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080230a00">
「……这样啊。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080240a07">
「反正又不是第一次了。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080250a00">
「是指今早么？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080260a07">
「嗯。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080270a00">
「那是看准了我要醒的时机凑过来的吧——」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080280a07">
「才不是，每晚都粘着睡的啊。
　将哥哥你带来这里之后一直这样。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080290a00">
「这不符合风气。」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080300a07">
「明明很高兴的。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080310a00">
「没错。」

{	FwR("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080320a07">
「啊？觉得高兴吗？」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080330a00">
「我姑且是个健全的成年男性，和女性接触
符合正常欲望。」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080340a07">
「坦率的雄性生物。
　呱呱呱。」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080350a00">
「阁下。
　会有问题发生。」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080360a07">
「能睡着。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080370a00">
「嗯？」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080380a07">
「跟哥哥你一起的话。
　能稍微睡着一点……」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080390a07">
「这是为什么呢？
　其他声音都好像变得遥远，
只听到哥哥的声音。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080400a07">
「哥哥的声音不会让我难受……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……说的什么呢？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080410a00">
「总之，阁下为了将不期望发生的可能性
扼杀于萌芽中，需做必要的思虑。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080420a07">
「付我留宿费。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080430a00">
「……留宿费吗？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080440a07">
「不会说要你钱的。
　现在这样就当做是留宿费好了。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080450a07">
「……不行吗？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　内心和外表怎么都好，足利茶茶丸无疑是个少女。

　那样的恳求，无法拒绝。

　——仅剩的意志，对我来说怎样也不够。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080460a00">
「……就期待一下凑斗景明的自制力吧。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080470a07">
「哥哥你真帅。
　但不自制也没关系啊。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080480a00">
「请不要开玩笑。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080490a07">
「被公主发现的话可会生气哦。
　不过，应该没事吧？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080500a07">
「她刚刚才醒过。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080510a00">
「？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……听错了吗？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080520a07">
「哥哥，这可不能让公主知道哟。
　请保密。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080530a00">
「不会说。
　要说为什么……有种会立即被抹杀掉的预感。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080540a07">
「真敏锐。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080550a00">
「……要是一开始就不去犯这样的险，
那就再好不过了……」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080560a07">
「没听到。没听到。
　好了，睡吧睡吧。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080570a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　小小的玩笑，似乎还不及蚊虫叮咬的痛痒。
　已经放弃了，所以也没关系。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ差分：光を落とす

//■イベ絵（ev218茶々丸と同衾する景明）ないから仮絵
//嶋：差分が変更されましたので、下記のように修正させていただきました。【09/07/21】
//	CreateTextureEX("ちゃちゃまる2", 3001, @0, @0, "cg/ev/ev218_茶々丸と同衾する景明_c.jpg");
	CreateTextureEX("ちゃちゃまる2", 3001, @0, -100, "cg/ev/ev218_茶々丸と同衾する景明_b.jpg");
	Fade("ちゃちゃまる2", 1000, 1000, null, true);
	Delete("ちゃちゃまる");
	WaitKey(1000);

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080580a07">
「哥哥。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080590a00">
「什么？」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080600a07">
「很困？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080610a00">
「身体似乎还很疲劳，但也没有到
眼皮睁不开的程度。」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080620a07">
「这样啊。
　那，有个请求。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080630a00">
「怎样的？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080640a07">
「什么都好，跟我说说话。我会开心的。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080650a00">
「……说话吗？
　但是，那不就会妨碍睡眠了吗？」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080660a07">
「嗯——我正好相反。
　有人在耳边说话的话，
就不会在意到周围的杂音。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080670a07">
「不过那声音让人不愉快的话就没意义了。
　是哥哥的话就没问题。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080680a00">
「…………
　我明白了。只是这种程度的话。」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080690a07">
「感谢。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080700a00">
「……那么……
　学生时代，我所属的登山部的事情————」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

	ClearWaitAll(2000, 3000);

}

..//ジャンプ指定
//次ファイル　"md02_009.nss"