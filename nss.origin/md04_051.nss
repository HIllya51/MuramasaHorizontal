//<continuation number="1850">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_051.nss_MAIN
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
	#bg084_飛行船艦橋_02=true;
	#bg028_横浜ＧＨＱ基地_03=true;
	#ev805_戦争絵シリーズその３_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_052.nss";

}

scene md04_051.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_050vs.nss"

//◆ガレーキープ
//◆艦橋
//◆横書きボックス
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateTextureSP("絵ＥＶ", 4900, Center, Middle, "cg/ev/ev805_戦争絵シリーズその３_c.jpg");
	Zoom("絵ＥＶ", 0, 1300, 1300, null, true);
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 3000, 1000, 1000, null, false);

	OnBG(100, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	CreateSE("SE01L","se乗物_飛行船_巡航音_L");
	MusicStart("SE01L",2000,1000,0,1000,null,true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

	SetVolume("SE01L", 1000, 300, null);
	FadeDelete("絵ＥＶ", 1000, true);

	Wait(500);

	SetFwH("cg/fw/fwＧＨＱ中尉_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510010e008">
「不久便到镰仓了！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStL(300, true);

	SetVolume("SE01L", 3000, 0, null);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510020b03">
「是吗……
　已做好投掷准备了吧？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510030e008">
「是的，没有问题。
　相关骑体已装膛完毕在发射口待机。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510040b03">
「那就好。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510050e008">
「…………
　卡农中佐。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510060b03">
「什么事？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510070e008">
「我们的目标能够达成吗？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510080b03">
「……」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510090b03">
「啊。
　当然能，卡杰特中尉。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510100b03">
「夺取大和，与女王决战，解放故乡。
　为了在那片宽广大陆上等候的同胞们。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510110e008">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510120b03">
「然后现在是为了死去的同胞们。
　维罗少将……还有卡杰特少佐。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510130b03">
「绝不能辜负你哥哥那无畏的牺牲啊，中尉。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510140e008">
「……是。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆小ウェイト
	WaitKey(500);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510150b03">
「……嗯？
　那是什么？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510160e008">
「中佐大人，怎么了？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510170b03">
「地面的情况不对劲。
　那是……友军？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510180b03">
「他们还没撤退吗!?」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510190e008">
「…………」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510200b03">
「中尉，与地面取得联络。
　立刻！」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510210e008">
「是。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆小ウェイト
	WaitKey(500);

	SetFwH("cg/fw/fwＧＨＱ中尉_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510220e008">
「中佐大人……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510230b03">
「如何了？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510240e008">
「普陀乐城周围情况混乱。
　……好像是<RUBY text="Ｓｉｌｖｅｒ">银星号</RUBY>出现了。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510250b03">
「什么!?」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510260e008">
「受此影响，我军并未完成撤退。
　推测他们被卷入了由银星号所引起的混乱
事态中。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510270b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510280a13">
「你在犹豫什么？
　卡农中佐。」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

//◆ウォルフ

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, false);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510290b03">
「教授……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510300a13">
「来吧，该投掷锻造雷弹了。
　请下命令。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510310b03">
「……我可不准备上演自相残杀的滑稽剧。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510320a13">
「我也是。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510330b03">
「那你还想在同伴头顶上投下炸弹？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510340a13">
「那是必要的牺牲。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510350b03">
「是否能断言这是必要，我认为还有待商榷。」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510360a13">
「是吗？
　要试试吗？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510370a13">
「如今使用锻造雷弹的话就能歼灭六波罗。
　大和人民就会敬畏服从于我们，我们便可
获得与大英联邦相争持的资本。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510380a13">
「如今正是大好机会。
　不知道下一次的机会何时会来。」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510390a13">
「——那么，
　还有讨论的余地吗？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510400b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510410a13">
「中佐，你应当很清楚该做什么。
　就别再浪费时间了吧？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510420b03">
「与您不同，我只是个凡人。
　我无法如此简单地判断出真实与虚假。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510430a13">
「平时的话你要烦恼也未尝不可，你尽可考虑
个够，直到得出自己接受得了的结论为止。
　但是现在是决断之时。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510440a13">
「既然是军人就该明白吧。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510450b03">
「……真不巧，在战场上处理是否应该为达成
目的不惜固执到轰炸战友这种问题，我这还是
第一次。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510460a13">
「地面上没有我们的战友。
　是联盟军。那可是大英联邦的走狗，不是吗？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510470b03">
「在那其中，也有我们的<RUBY text="··">同胞</RUBY>吧。」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510480a13">
「那是必要的牺牲！
　像你这样的男人，会不明白吗！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510490b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_思索.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510500a13">
「也就是说虽然脱掉纯洁少女的内裤是无上的
欢愉，但是在品尝这份愉悦之前必须先吞下苦
涩让她穿上内裤才行！　就是这样的道理!!」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510510b03">
「越来越难懂了。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510520a13">
「哼，真是棘手的男人！
　中佐，你已经把维罗少将临终的模样忘光了
吗!?」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510530b03">
「……」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510540a13">
「你忘了他的遗言吗！
　他不是说拜托你了吗！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510550a13">
「你准备践踏他的遗愿吗!?」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510560b03">
「沃尔夫教授！」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510570a13">
「来吧，你需要做的事只有一件！
　就是立刻下达命令！」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);


//◆チャキ。銃構え
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	StL(1000, @0, @0, "cg/st/stキャノン_射撃_制服.png");
	FadeStL(300, true);


	WaitKey(300);

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510580a13">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510590b03">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510600a13">
「打火机真漂亮。
　但是，我不吸烟。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510610b03">
「这非常有益健康。
　请务必保持这种健康的态度。」

{	SoundPlay("@mbgm34", 0, 1000, true);}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510620b03">
「因为这个漂亮的打火机只要使用上稍微出点
错，就会招致非常不健康的后果……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510630a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510640b03">
「如果您……
　是的，<RUBY text="···">如果您</RUBY>……」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510650b03">
「执意想投下锻造雷弹的话，就请先说出您的
真正意图吧。
　这才合乎道理不是吗？」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510660a13">
「如今你还在说些什么。
　这一切都是为了给大英联邦的傲慢支配施以
拒绝的铁锤——」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510670b03">
「教授。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510680b03">
「同样的问题我不会问第三遍。
　如果您的答案还是不变的话……很遗憾，您
的身体将会变得不健康。因此请慎重回答。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510690a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510700b03">
「您执着于使用锻造雷弹。
　没错，不是为胜利、战果、政治意义……您只
是沉迷于将雷弹投于普陀乐这一行为而已。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510710b03">
「为此您才接近我们。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510720a13">
「卡农君……这完全是误会啊。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510730b03">
「沃尔夫教授。
　您还记得吗……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510740b03">
「开战前我们在横滨的对话。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510750a13">
「……？」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	DeleteStA(0.true);

	OnBG(100, "bg028_横浜ＧＨＱ基地_03.jpg");
	FadeBG(0, true);

	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	StL(1100, @100, @0, "cg/st/stウィロー_通常_制服.png");
	StCL(1000, @-100, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStR(300, false);
	FadeStL(300, false);
	FadeStCL(300, true);

	EfRecoIn2(300);

	SetFwH("cg/fw/fwキャノン_沈痛.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510760b03">
「不，甚至有可能<RUBY text="····">无法胜利</RUBY>。
　虽然不代表我们就会输。不过企图将敌军主
力提前歼灭恐怕无法实现。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510770a13">
「你是说，会陷入苦战？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510780b03">
「没错。」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0510790b00">
「是啊……」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510800a13">
「这不刚好嘛。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510810b03">
「……您什么意思？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510820a13">
「战况陷入不利局面的话，以此作为借口申请
锻造雷弹的使用许可就可以了。
　与其让联盟本部派遣大量增援部队，你更希
望用利落的手段解决吧。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510830b03">
「……教授。
　这不会有点，过于鲁莽了吗？」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0510840b00">
「不……不！
　也不用如此断言嘛，卡农中佐。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	DeleteStL(0,true);
	DeleteStCL(0,true);
	OnBG(100, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	StL(1000, @0, @0, "cg/st/stキャノン_射撃_制服.png");
	FadeStL(0, true);

	EfRecoOut2(600,true);

	SetFwH("cg/fw/fwキャノン_戦慄.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510850b03">
「您在那时候——
　说这情况<RUBY text="··">刚好</RUBY>。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510860b03">
「……是什么刚好呢？
　通常对根据兵力而选择进攻关东的我们来说，
最好的结果就是作战顺利进行，以损失最低限
度攻下普陀乐。」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510870b03">
「陷入苦战，变成不得不使用锻造雷弹，这种情
况应该并不好才对。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510880a13">
「————————」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510890b03">
「所谓的刚好只是<RUBY text="······">对您个人而言</RUBY>。
　没错吧，教授？」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510900b03">
「对于无论以怎样的理由，都绝对要使用锻造
雷弹的您而言，我们陷入苦战才是您所希望的。
　为能陷入苦战，您也作出努力了吧？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510910b03">
「比如说将情报泄露给六波罗……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510920a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510930b03">
「请回答。
　沃尔夫教授，您的目的是什么？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0510940a13">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510950b03">
「…………」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510960e008">
「是为了迎来最后的审判啊，
　卡农中佐。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆かちゃ。銃


	OnSE("se戦闘_銃器_拳銃構え01", 1000);
	StCL(990, @-150, @0, "cg/st/stＧＨＱ中尉_戦闘_制服.png");
	FadeStCL(300, true);

	Wait(300);

	StL(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStL(300, false);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510970b03">
「……卡杰特中尉……」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0510980e008">
「请别做糊涂事。
　下官的打火机也是不健康的物品。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0510990b03">
「你是沃尔夫教授的同伴吗？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511000e008">
「是啊。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511010a13">
「应该说是追求真实的同志吧。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511020e008">
「……你说错了。
　下官只是——我只是疲惫而已。」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511030e008">
「我累了，卡农中佐。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511040b03">
「中尉……」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511050e008">
「占领大和，又能怎样呢。
　接下来就是与大英联邦
进行没完没了的战争吧。」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511060e008">
「不知道何时才能结束。
　也不清楚能否会赢的，战争。」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511070e008">
「我已经……彻底厌倦了……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511080b03">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511090b03">
「所以，你要放弃解放故乡吗？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511100b03">
「我不知道他给了你钱还是别的什么东西。
　你竟然会将自尊和同伴出卖给这个可疑的胡
须男，然后心安理得地度过余生？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511110e008">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――


	SetFwH("cg/fw/fwキャノン_沈痛.png");

//嶋：修正（思ってる）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511120b03">
「你是那个乔治的弟弟。如果再多点气概的话
就更像他了吧……
　没想到你会认为甘心屈服于女王也无所谓。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511130e008">
「希望您别侮辱我。
　我并未向女王低头。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511140b03">
「但你不是放弃战斗，
还准备逃往南方岛屿了吗？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511150e008">
「不。
　当然要战斗。」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511160e008">
「当然要对大英联邦给予制裁。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511170b03">
「可真了不起。请问是几百年后呢？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511180e008">
「在今天内。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511190b03">
「…………」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511200e008">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511210b03">
「你提到最后的审判对吧？」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511220e008">
「是的。」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511230b03">
「我不太了解最近年轻人间的笑话。
　你能不能解释清楚一些，
使大叔我也能明白呢。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511240e008">
「没问题，首先是投下锻造雷弹。
　正如您所洞察到的，
我们所希望的正是如此。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511250b03">
「那你自己玩如何？
  虽然你好像正忙着玩拿枪指着长官我的脑袋
的游戏，事实上我与学术顾问玩这个游戏也玩
得正忙着呢。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511260e008">
「中佐……！」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511270a13">
「我是在召唤神明。」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511280b03">
「…………教授？
　您说什么？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511290a13">
「我在召唤神明。
　让神降于此世。」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511300a13">
「在神明的面前所有虚伪都将被剥下。
　人类的罪孽、恶行……一切的真实都将自己
显露出来。无论正负，都将被决定价值吧。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511310b03">
「…………
　我所认识的神明是个懒家伙，几乎不会现身
于人前呢。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511320a13">
「哼。神明在这几千年一直沉睡于地底的卧室。
还打着呼噜呢。
  对于想将神明作为天父来崇敬祭拜的我们来
说，此状态并不理想。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511330a13">
「是时候让他打起精神来了。
　首先得将他从床上叫醒，让他出来晒晒太阳
才行。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511340b03">
「…………」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511350b03">
「希望这是我误解了。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511360a13">
「嗯？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511370b03">
「难道你是想让<RUBY text="····">实际存在</RUBY>的神明降临于此吗？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511380a13">
「是啊，没错。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511390b03">
「……………………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511400a13">
「为此我准备敲响锻造雷弹这座特大的钟哦。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511410b03">
「十分抱歉，教授。
　我完全无法理解。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511420a13">
「在超越人类认知的地方也存在真实。
　就是这个道理。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511430b03">
「神秘主义者的口头禅。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511440a13">
「你不应该因为这几句话就停止思索。
　你最好思考，然后认同。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511450b03">
「哈。认同那什么地底的神明？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511460a13">
「嗯。
　现在你终于承认，一直没注意到的卡杰特中
尉的背信，这一事实了吧？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511470a13">
「与这是一样的。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511480b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511490a13">
「你是我所认识的人中，最聪明的之一。
　啊，我想起海德里希君了……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511500a13">
「但他并不是完美拥有理智的人。
　以前身为某个<RUBY text="ＳＳ">近卫队</RUBY>大将的莱因哈特·海德
里希，也还是不完美，最后被恐怖分子击毙了。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511510b03">
「您想说什么？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511520a13">
「我说的是你没注意到真实。
　……你以为只有卡杰特中尉而已吗？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511530b03">
「————」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511540a13">
「你将新大陆独立派的同伴秘密送进ＧＨＱ的各
部门，执掌了权限对吧？
  同样的事情我做起来会不可思议吗？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511550b03">
「你在说什么……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511560a13">
「当然这并不简单。
　可是在中尉的兄长——乔治·卡杰特少佐死
后，连你都比之前疏于防范身边的小动作。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511570a13">
「于是<RUBY text="·····">我的同伴们</RUBY>便
乘虚而入。
　潜伏进你的组织中。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511580b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511590a13">
「虽然数量不多……
　不过足够在必要的时候采取必要的行动了。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511600a13">
「<RUBY text="······">在这艘飞船上</RUBY>。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511610a13">
「现在也有足够的人数，可以在必要时夺取船体
的控制……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆だかだか。足音
//◆兵士数人

	OnSE("se人体_足音_兵士集合01", 1000);

	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511620b03">
「…………………………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511630a13">
「接下来。
　卡农中佐。」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511640a13">
「我现在会提出问题与要求。
　请用<RUBY text="Yes">是</RUBY>或<RUBY text="No">否</RUBY>来回答。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511650b03">
「……请吧。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511660a13">
「你忽视了很多重要的东西。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511670b03">
「<RUBY text="Yes">是</RUBY>。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511680a13">
「你并不完美。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511690b03">
「<RUBY text="Yes">是</RUBY>。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511700a13">
「你输了。」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511710b03">
「……<RUBY text="Yes">是</RUBY>……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511720a13">
「那么，你会配合我们吗？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511730b03">
「<RUBY text="No">否</RUBY>。」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511740a13">
「…………」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511750b03">
「教授，我是失败者。
  而您也并非胜利者。」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511760a13">
「为什么？」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511770b03">
「这只是一般论而已。」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511780b03">
「向神祈祷的人、崇敬神的人、不信神的人、
斥骂神的人，成为胜利者的例子是存在的。
  然而，<RUBY text="···">依赖神</RUBY>的人通常都是失败者。」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0511790e008">
「……唔……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511800a13">
「是吗……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511810b03">
「沃尔夫教授。
　能让我问您最后一个问题吗？」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511820b03">
「我有件事一直很想说……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511830a13">
「什么事？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0511840b03">
「你这个疯子。」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0511850a13">
「<RUBY text="Yes">是</RUBY>。」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆ブラックアウト

	SetVolume("@mbgm*", 500, 0, null);


//「ヤー」直後に暗転パーンという演出
	CreateColorSP("暗転", 15000, "BLACK");


//◆銃声
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md04_052.nss"