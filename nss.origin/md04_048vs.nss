//<continuation number="1100">

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

scene md04_048vs.nss_MAIN
{

//コックピット用Ｓｅｔ
	//CP_AllSet("村正");

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
	#bg105_城門付近内側_02=true;
	#ev220_茶々丸の世界=true;
	#ev908_村正電磁擲刀_a=true;
	#ev908_村正電磁擲刀_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#aw_虎徹=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "md04_049vs.nss";

}

scene md04_048vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_047vs.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆脱出。bg105
	PrintBG("上背景", 30000);

	OnBG(100,"bg105_城門付近内側_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵ＳＴＣ100", 1002, Center, InBottom, "cg/st/3d虎徹_立ち_通常.png");

	MyLife_Count(0,600);
	CP_IHPChange(0,9,null,false);
	CP_PowerChange(0,820,null,false);

	MyTr_Count(0,150);
	CP_HighChange2(0,3,null,false);
	CP_SpeedChange2(0,0,null,false);

	CP_AziChange(0,45,null,false);
	CP_AltChange(0,0,null,false);

	Cockpit_AllFade2();

	SoundPlay("@mbgm12", 0, 1000, true);
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　取回自由。
　但作为代价，剧痛再度烧灼脑髓。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0010a00">
「……呜……！」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0020a01">
《等等！》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆力使った。じゃきーん。
	OnSE("se特殊_鎧_装着03", 1000);
	CreateColorEXadd("絵フラ", 20000, "#FFFFFF");
	MyTr_Count(300,413);
	Fade("絵フラ", 300, 1000, null, true);

	Wait(50);

	Fade("絵フラ", 300, 0, null, false);
	MyTr_Count(300,150);

	CP_PowerChange(600,770,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　村正将左臂的装甲复原，同时开始治疗肩部。
　肉体无法简单复原。在这场战斗中无法使用左臂了吧。

　但疼痛开始减缓。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0030a00">
「……重新摆招式。」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0040a01">
《嗯。》

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0050a07">
「不对，嗯你个头啊！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　回过神来的茶茶丸，激动地提高声音。
　恶狠狠的视线刺向这边。

　似乎不是向我。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0060a07">
「村正你……
　怎么能弄坏操纵者的身体!?一般就算被命令也
不会这么干吧！」

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0070a07">
「你这还算剑胄吗!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0080a01">
《是剑胄。》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　从村正身上丝毫察觉不到怯意。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0090a01">
《我不是主君的<RUBY text="···">监护人</RUBY>。
　是为了取胜而组成的搭档。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0100a01">
《为了取胜守护他，为了取胜也会让他受伤。》

{	FwL("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0110a07">
「这是邪道吧？」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0120a00">
「不，是正道。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,850,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　捡起脚边的东西，我边插嘴道。
　……跳到的位置正巧。

　胁差。
　放弃掉的唯一武器，被我取回。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0130a00">
「我的剑胄这么做才是对的。」

{	FwL("cg/fw/fw茶々丸虎徹_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0140a07">
「……哥哥也真是个麻烦人。
　为什么要认同那种东西。」

{	FwL("cg/fw/fw茶々丸虎徹_泣き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0150a07">
「人家好伤心啊。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0160a00">
「就算你这么说我也不想反驳。
　操纵者既然和剑胄结缘，那大概就是有适当的
理由。」

{	FwL("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0170a07">
「……哈哈。
　反过来说，<RUBY text="····">没能结缘</RUBY>也是有理由的咯。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　低低笑着。
　茶茶丸悔恨地咬紧嘴唇。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0180a07">
「怎么搞的。
　剑胄疯了，哥哥又这么顽固。」

{	FwL("cg/fw/fw茶々丸虎徹_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0190a07">
「这样一来即使不愿意，也非得赌上性命厮杀
不可……」

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0200a00">
「……不愿意的话就让开。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　知道无用，却还是拜托她。
　回答，果然是摇头。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_冷酷.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0210a07">
「没办法。
　就用<RUBY text="···">这家伙</RUBY>让你躺下吧。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆茶々丸、エネルギー上昇

	SetVolume("@mbgm*", 1000, 0, null);
	WaitKey(1000);
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");


	CreateTextureSPadd("絵演陰義二", 19005, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	CreateTextureSP("絵演陰義三", 19000, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");

	CreateTextureSP("絵ＳＴＣ100", 1002, Center, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");
	CreateTextureEXadd("絵演立ち絵効果", 1003, Center, InBottom, "cg/st/3d虎徹_立ち_戦闘.png");

	SetBlur("絵演立ち絵効果", true, 1, 100, 100, false);


$ループムーブナット名 = "@絵演立ち絵効果";
$ループムーブタイム = 25000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);

	Zoom("絵演陰義*", 0, 1300, 1300, null, true);
	SetBlur("絵演陰義二", true, 2, 500, 30, false);

	Zoom("絵演陰義*", 100, 1000, 1000, Dxl2, false);
	Fade("絵フラ", 100, 0, null, false);
	FadeDelete("絵演陰義二", 300, true);

	WaitKey(1000);

	FadeDelete("絵演陰義三", 300, true);

	Fade("絵演立ち絵効果", 2000, 300, null, false);

	CreateSE("SE01","se特殊_陰義_咆哮城塞_準備_L");
	MusicStart("SE01",0,500,0,500,null,true);

	SetFwL("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0220a00">
「唔……」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0230a01">
《主君，敌骑的热量正在变动！
　这是——》

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0240a00">
「阴义吗!?」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0250a01">
《恐怕是！》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　趁发动前制止——已经晚了吗？
　距离稍有些远，一步无法到达。

　这样一来非得等着接招不可。
　看穿术法，然后防御。

　作为武者之秘中的秘技，阴义超脱常理，无法预测，
即使发生什么现象也不足为奇——但无论发生什么现象
都必须对付不可。
　伸头是一刀缩头也是一刀。我定下神做好准备。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw茶々丸虎徹_悪戯.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0260a07">
「不用那么警戒也可以。
　不是什么厉害的术法……」

{	FwL("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0270a07">
「只是共享知觉而已。」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0280a00">
「……知觉……？」

{	FwL("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0290a07">
「哥哥应该记得的。
　已经做给你看许多次了。」

{	FwL("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0300a07">
「不过……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆エネルギー上昇

	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	CreateTextureSP("絵背景100", 150, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("絵背景100", 0, 400, null, true);
	Zoom("絵背景100", 0, 1200, 1200, null, true);
	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);


	MusicStart("SE01",1000,800,0,800,null,true);
	Fade("絵フラ", 1000, 0, null, true);


	SetFwL("cg/fw/fw茶々丸虎徹_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0310a07">
「这次我<RUBY text="······">不会手下留情</RUBY>。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0320a07">
「献给你足利茶茶丸世界的全部。」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0330a00">
「————」

{	FwL("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0340a07">
「上了哦……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆エネルギー最高


	MusicStart("SE01",0,1000,0,1000,null,true);
	SetBlur("絵ＳＴＣ100", true, 6, 500, 60, false);

	OnSE("se特殊_その他_神の絶叫", 1000);
	Zoom("絵演立ち絵効果", 500, 1600, 1600, Axl1, false);
	Zoom("絵ＳＴＣ100", 500, 1600, 1600, Axl1, false);
	FadeDelete("絵ＳＴＣ100", 500, true);

	Request("プロセス１", Stop);
	Delete("プロセス１");
	Delete("絵演立ち絵効果");

	SetFwL("cg/fw/fw茶々丸虎徹_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0350a07">
　　　　　　「<RUBY text="Castle of Howling">咆哮城堡</RUBY>。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆陰義·咆哮城塞
	#aw_虎徹=true;

	OnSE("se特殊_雰囲気_崩壊音",1000);

	CreateColorSPadd("絵フラ", 20000, "#FFFFFF");
	SetVolume("@mbgm*", 2000, 0, null);
	SetVolume("@SE*", 2000, 0, null);

	Delete("絵背景100");

//	CreateSE("SE01","se特殊_陰義_発動03");
//	MusicStart("SE01",0,1000,0,1000,null,false);
//	SetVolume("@SE01*", 100, 0, null);

	SetFont("黑体", 22, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("絵我が", 16000, 50, 20, 700, 500, "“我就是力量”");
	SetAlias("絵我が","絵我が");
	Move("絵我が", 0, 450, 230, null, true);
	Fade("絵我が", 0, 0, null, true);

	Cockpit_AllFade0();
	CreateTextureEX("絵演", 2000, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Request("絵演", Smoothing);

	Zoom("絵演", 0, 2000, 2000, Dxl1, false);
	SetBlur("絵演", true, 2, 500, 60, true);

	CreateTextureSP("茶々丸の世界", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Fade("茶々丸の世界", 0, 500, null, true);

	Zoom("茶々丸の世界", 0, 1500, 1500, null, true);
	CreateTextureEX("茶々丸の世界２", 15000, @0, @0, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("茶々丸の世界２", 0, 1500, 1500, null, true);
	DrawEffect("茶々丸の世界", 50, "LowWave ", 0, 100, null);
	DrawEffect("茶々丸の世界２", 50, "SuperWave", 0, 500, null);

	Wait(2000);

	CreateSE("ぼえー", "se特殊_その他_神の声01");
	CreateSE("ノイズ１", "se日常_機械_ノイズ03");
	CreateSE("ノイズ２", "se日常_機械_ノイズ02");
	CreateSE("ノイズ３", "se日常_機械_ノイズ03");
	CreateSE("ノイズ４", "se日常_機械_ノイズ03");
	MusicStart("ぼえー",2000,1000,0,500,null,false);

	Zoom("絵演", 00, 1500, 1500, Dxl1, false);
	Fade("絵演", 0, 1000, null, false);
	Fade("絵フラ", 2000, 0, null, false);

	Wait(2000);

	MusicStart("ノイズ１",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ１", 0, 0, null);

	Wait(2000);

	MusicStart("ノイズ２",0,1000,0,1000,null,false);
	Fade("絵我が", 300, 1000, null, false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(100);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ２", 0, 0, null);

	Wait(50);
	Fade("絵我が", 300, 1000, null, false);
	MusicStart("ノイズ３",0,1000,0,1000,null,false);
	Wait(100);
	Fade("茶々丸の世界２", 0, 1000, null, true);
	Wait(150);
	Fade("絵我が", 0, 0, null, false);
	Fade("茶々丸の世界２", 0, 0, null, true);
	SetVolume("ノイズ３", 0, 0, null);

	Wait(2000);

	Fade("絵我が", 300, 1000, null, false);
	MusicStart("ノイズ４",0,1000,0,1000,null,true);
	Wait(100);
	Fade("茶々丸の世界２", 0, 500, null, true);
//	Fade("茶々丸の世界２", 0, 0, null, true);

//◆音に合わせて　“我就是力量”　ＣＧ表示。小さく。
//■↑演出保留中　inc櫻井

	Fade("絵我が", 0, 0, null, false);
	SetVolume("ノイズ４", 3000, 100, null);

	WaitKey(1500);

	Delete("絵我が");

	CreateSE("SE01","se特殊_その他_茶々丸の世界_L");
	MusicStart("SE01",0,200,0,600,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　…………怎么了？

　有什么——
　从深处，<RUBY text="···">哗啦啦</RUBY>地。逼近，靠拢。
这个。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：ざわめき。単なるガヤではなく過去作品の
//◆ボイスを多数合成して作ると良いか。
//◆ev220
//◆ＳＥボリュームは徐々に上げる。ＣＧ表示もそれに
//◆合わせた演出で。


	MusicStart("SE01",1000,600,0,800,null,true);
	Cockpit_AllFade0();
	CreateTextureEXadd("絵演上", 19002, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Request("絵演上", Smoothing);

	Zoom("絵演上", 0, 3000, 3000, Dxl1, true);
//	SetBlur("絵演上", true, 2, 500, 60, true);


//	Rotate("絵演上", 90000, @0, @0, @-1800, null, false);

	Zoom("絵演上", 1500, 2000, 2000, Dxl1, false);
	Fade("絵演上", 1500, 1000, null, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　……人的声音。
　无数的声音，能听到好几重。

　不……还有身影？
　无数人们的身影……

　这是听觉？
　还是视觉？

　————<RUBY text="··">信号</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥボリューム、耳障りレベルに
//◆ＣＧ表示も乱れた感じに

//inc久保田　このCGに色々なエフェクトをかけたところポケモン現象が起こりました。
//頭痛と吐き気がすごいことになります。なので、現状軽くしてあります。

	CreateTextureEXsub("絵演上2", 19003, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("絵演上2", 0, 3000, 3000, Dxl1, true);
//	SetBlur("絵演上2", true, 2, 500, 60, true);
	CreateTextureEX("絵演上3", 19000, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Fade("絵演上3", 1500, 500, null, false);

//	Rotate("絵演上2", 50000, @0, @0, @1800, null, false);
	Zoom("絵演上2", 1500, 2000, 2000, Dxl1, false);
	Fade("絵演上2", 1500, 500, null, true);
	MusicStart("SE01",1000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0360a00">
「啊嗄——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//inc久保田情報が流れ込んでくるイメージで、SEテンポをアップさせています。

	MusicStart("SE01",1000,1000,0,1400,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　信息！
　是信息！

　<RUBY text="·····">泛滥的信息</RUBY>！

　实在是太多了。
　无数的声音，无数的光线，一切都拥有明确的意义
向我涌来！

　这种东西……我的大脑无法承受!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆多量のテキストが高速で流れる。ＣＧ処理
//◆テキストは過去作シナリオから適当に抜粋？

//	Rotate("絵演上2", 50000, @0, @0, @3600, null, false);
//	Rotate("絵演上", 80000, @0, @0, @-3600, null, false);
/*
	SetFont("黑体", 50, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("字幕01a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕02a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕03a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕04a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕05a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕06a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕07a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");

	Move("字幕01*", 0, @0, @-300, null, true);
	Move("字幕02*", 0, @100, @-200, null, true);
	Move("字幕03*", 0, @200, @-100, null, true);
	Move("字幕04*", 0, @300, @0, null, true);
	Move("字幕05*", 0, @400, @100, null, true);
	Move("字幕06*", 0, @500, @200, null, true);
	Move("字幕07*", 0, @600, @300, null, true);

	Move("字幕*", 0, @0, @50, null, false);

	CreateText("字幕01b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕02b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕03b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕04b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕05b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕06b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("字幕07b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");

	Move("字幕01b", 0, @500, @-300, null, false);
	Move("字幕02b", 0, @400, @-200, null, false);
	Move("字幕03b", 0, @300, @-100, null, false);
	Move("字幕04b", 0, @200, @0, null, false);
	Move("字幕05b", 0, @100, @100, null, false);
	Move("字幕06b", 0, @0, @200, null, false);
	Move("字幕07b", 0, @-100, @300, null, false);

	Request("字幕*",NoLog);
	Request("字幕*",PushText);
*/

	CreateTextureEX("絵背景文字", 14000, Center, Middle, "cg/ef/ef050_数字一杯.png");
	MusicStart("SE01",1000,1000,0,1800,null,true);
	Fade("絵背景文字", 300, 1000, null, true);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0370a00">
「———————————————————
————————————————————
————————————————————
————————————————————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	MusicStart("SE01",1000,1000,0,800,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　溢出，
　溢出，
　
　信息。信息。信息。信息。信息。

　这是——茶茶丸的世界————？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	MusicStart("SE01",1000,1000,0,1800,null,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0380a01">
《……这是……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0390a01">
《人的知觉，和剑胄的知觉……
　<RUBY text="··">混杂</RUBY>在一起？》

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0400a07">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	MusicStart("SE01",1000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　在轮唱，群像之中，叫做足利茶茶丸的个体说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_歯噛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0410a07">
「这是我既身为人又身为剑胄的宿命。
　基于人类的知觉，让剑胄的知觉机能收集
情报，灌输进肉体和大脑。」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0420a07">
「结果就是这样的<RUBY text="····">信息洪水</RUBY>。
　……哥哥？不会已经淹死了吧？」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0430a00">
「————」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0440a07">
「还有呢。
　人与剑胄的复合知觉，连人类和剑胄都感受
不到的东西也能抓取到……」

{	FwC("cg/fw/fw茶々丸虎徹_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0450a07">
「其最极致——」

{	FwC("cg/fw/fw茶々丸虎徹_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0460a07">
「就是这个。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どーん。衝撃。カオスの世界を粉砕
//◆ＳＥ：神の絶叫
//◆金神魔王尊、部分（ぼかし）表示？

	FadeDelete("茶々丸*", 1000, true);
	Delete("茶々丸*");

	SetVolume("@SE*", 1000, 0, null);
	Wait(1500);

	CreatePlainSP("絵板写", 20000);
	FadeDelete("絵演*", 1000, true);
	Delete("絵演*");
	Delete("絵背景文字");
	Delete("字幕*");

	CreateTextureSP("かみ", 2000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	CreateTextureSPadd("かみ効果", 2000, @0, @0, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("かみ効果", 0, 500, null, true);
	Request("かみ*", Smoothing);
	SetShade("かみ*", MEDIUM);
	Zoom("かみ*", 0, 2000, 2000, null, true);

$ループムーブナット名 = "@かみ効果";
$ループムーブタイム = 25000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);


//あきゅん「演出："HardSplit"は細かすぎる＆重いので調整しました」
//	Zoom("絵板写", 1000, 2000, 2000, null, false);
//	FadeDelete("絵板写", 1000, false);
	OnSE("se特殊_雰囲気_崩壊音",1000);
	DrawEffect("絵板写", 1500, "HardSplit ", 0, 1000, Axl1);
	FadeDelete("絵板写", 1000, true);


//	SetVolume("@mbgm*", 300, 0, null);


	Wait(1000);

	CreateSE("SE01","se特殊_その他_神の絶叫");
	MusicStart("SE01",0,600,0,600,null,true);

	Wait(1000);

	SoundPlay("@mbgm02", 0, 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0470a01">
《　　　》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0480a01">
《　　　　　　　　　　　　　》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　这是

　对了
　　　　　　在绿龙会的集会场所，听到的

　那声音

　不对

　不对　　　不对
　　　　不对　　　不对　　　　　　不对
不对　　　不对不对不对不对不对不对

　那种东西不过是微风

　这是

　不同级别　　　　不同次元

//◆ＳＥ：神の絶叫、更に悪化
{	MusicStart("SE01",1000,1000,0,1000,null,true);}

　啊
　　　　　　　　　　　　　　啊啊

　
　
　　　　　　　　　　　　　　　　　　这是

　　　　　　　　　　　真的

　
　
　
　　　　　　　　　　　　　　　　　　神

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ、しばらく流して（映像も織り交ぜ）
//◆フェードアウト
//◆ウェイト
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("絵演上2", 19003, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Zoom("絵演上2", 0, 3000, 3000, Dxl1, true);
//	SetBlur("絵演上2", true, 2, 500, 60, true);
	Request("絵背景", Smoothing);
	Fade("絵演上2", 1500, 1000, null, false);
	Rotate("絵演上2", 10000, @0, @0, @-18000, null, false);

	Zoom("絵演上2", 1500, 2000, 2000, Dxl1, false);
	Fade("絵演上2", 1500, 1000, null, true);
	FadeDelete("かみ*", 1000, true);

	Wait(1000);
	CreateColorSP("絵フラ", 19000, "BLACK");

	Wait(1000);
	FadeDelete("絵演上2", 3000, true);

	Delete("プロセス１");

	SetVolume("SE01*", 3000, 0, null);
	SetVolume("ぼえー", 3000, 0, null);
	SetVolume("ノイズ*", 3000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　…………黑暗。

　好黑。
　好冷。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0490a00">
（什么……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　粉碎的意识碎片重新集合。
　花了约百亿年之久，才意识到自己倒在地上。

　用两手撑起身体。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆元の光景

	Cockpit_AllFade2(1500);
	MyLife_Count(0,500);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,500,null,false);

	CP_SpeedChange(0,0,null,false);
	MyTr_Count(0,500);

	CP_HighChange(0,1500,null,false);
	CP_AziChange(0,243,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateColorSPmul("絵色100", 18000, "RED");
	OnBG(100,"bg105_城門付近内側_02.jpg");
	FadeBG(1500,true);
	Zoom("OnBG*", 0, 1200, 1200, Dxl1, true);
	FadeDelete("絵フラ", 1500, false);
	Zoom("OnBG*", 4000, 1000, 1000, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　……失去意识的时间，似乎比想象中短得多。
　周围的光景并未被未知文明替换，
还是普陀乐城。

　茶茶丸也一动不动地站在原地。
　惊讶地盯着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0500a07">
「……意料之外地能撑呢，哥哥。
　没想到现在还没崩溃。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0510a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　想回答，却说不出话。
　好像还有什么，<RUBY text="·····">没能连接上</RUBY>的样子。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正モニター
//◆計器類がシッチャカメッチャカ

	CreateSE("SE01","se特殊_鎧_電子音01");
	MusicStart("SE01",0,1000,0,1000,null,true);

	MyLife_Count(800,500);
	CP_IHPChange(6000,150,null,false);
	CP_PowerChange(6000,50,null,false);
	CP_IHPChange(6000,1,null,false);
	CP_SpeedChange(600,0,null,false);

	CP_EHPChange(5000,5,null,false);

	CP_HighChange(5000,2500,null,false);
	CP_AziChange(5000,2800,null,false);
	CP_AltChange(5000,50,null,false);

	CP_SpeedChange(6000,500,null,false);
	MyTr_Count(5000,60);

	Wait(500);

	FadeDelete("絵色100", 3000, false);

	SetVolume("SE*", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　……村正似乎也是一样。

　似乎受了能使<RUBY text="ＯＳ">操作系统</RUBY>完全崩溃的冲击。
　幸亏没有真的崩溃，已经开始修复……

　现在不是在飞行中，算是不幸中的大幸。
　若是真的在飞行中的话，绝对会坠落。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻って
	CreateColorSP("黒幕１", 30000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Cockpit_AllFade0(0);
	Delete("絵色100");
	SoundPlay("@mbgm10", 0, 1000, true);


	CreateColorEX("くろ", 100, "BLACK");
	Fade("くろ", 0, 600, null, true);

	CreateWindow("窓右", 5500, 0, 0, 276, 576, true);
	SetAlias("窓右","窓右");
	Fade("窓右", 0, 0, null, true);
	Move("窓右", 0, @658, @0, null, true);
	CreateTextureSP("窓右/下地", 5500, @-400, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("窓右", 0, 1000, null, true);
	CreateTextureSP("窓右/絵右ＳＴ", 5510, @-208, -170, "cg/st/3d村正脇差_立ち_通常.png");

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	Move("窓右/絵右ＳＴ", 600, @-320, @0, DxlAuto, false);

	DrawTransition("窓右", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0520a00">
「茶茶丸。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　终于说出口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0530a00">
「你……<RUBY text="你们">绿龙会</RUBY>……
　要把那东西引出地面吗？」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0540a00">
「那个——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　神？
　魔神？
　金属块？
　自然现象？

　不知该如何形容。

　但——

　那是巨大。
　那是强大。
　那是膨大。
　那是远大。

　那是动力。
　那是活力。
　那是暴力。
　那是威力。

　永无止境的力量，力量，力量，纯粹的力量。
　纯粹的<RUBY text="····">巨大力量</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0550a00">
「那种东西！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateWindow("窓左", 5500, 80, 0, 276, 670, true);
	SetAlias("窓左","窓左");
	CreateTextureEX("窓左/下地", 4500, @0, @0, "cg/bg/bg105_城門付近内側_02.jpg");
	CreateTextureEX("窓左/絵左ＳＴ", 4510, @-100, @100, "cg/st/3d虎徹_立ち_戦闘.png");
	Fade("窓左*", 0, 1000, null, false);
	Move("窓左/絵左ＳＴ", 600, -350, 44, Dxl3, false);
	DrawTransition("窓左", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

	SetFwC("cg/fw/fw茶々丸虎徹_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0421]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0560a07">
「嗯。
　要把那个东西拽出来。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0570a07">
「……要不然那家伙不会沉默……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0580a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　不行。

　那是，不行的。
　
　<RUBY text="·····">世界会毁灭</RUBY>。

　真的会被毁灭。

　那种东西要是出现在地上，并开始活动的话！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0590a01">
《……主君……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0600a00">
「恢复了吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0610a01">
《嗯。
　……刚刚的，那东西。》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0620a00">
「叫做神的东西。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0630a01">
《不是编出来的瞎话吧……》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0640a00">
「要是编出来的瞎话就好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　我和村正都<RUBY text="··">感觉</RUBY>到了。
　沉睡在地下的那个存在。那个威胁。

　知道了那个——为什么还能付之一笑呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0650a01">
《不能让那东西获得自由。》

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0660a07">
「别说这种该遭天打雷劈的话。
　那不是<RUBY text="···">你们的</RUBY>神吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0670a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0680a01">
《金、金神？》

{	FwC("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0690a07">
「假如沃尔夫的推论正确的话。
　那是剑胄的起源。」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0700a07">
「从天界盗取火种的普罗米修斯。
　削取太阳的毘首羯摩天。
　挑战天帝却败下阵来，被埋在地底的蚩尤。
　由宇宙而来的宾客，金神魔王尊。」

{	FwC("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0710a07">
「在远古从天而降的，锻冶的祖神。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　有印象。
　是那篇——叫做剑胄梦想论的论文吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0720a01">
《……即便如此。
　即使崇拜它，把它带来这个世界这种事，
连想都不该想吧？》

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0730a07">
「即使这是神的意志？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0740a01">
《照<RUBY text="··">邪神</RUBY>的意思办，谁会幸福呢！
　应该献上供奉，拜托它不要作乱才对！》

{	FwC("cg/fw/fw茶々丸虎徹_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0750a07">
「真是只顾自己方便啊喂。
　不过，信仰也是人类发明的，所以当然是只顾
人类自己的方便。」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0760a07">
「要是神不是<RUBY text="····">真实存在</RUBY>的话，倒还行得通。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0770a01">
《…………》

{	FwC("cg/fw/fw茶々丸虎徹_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0780a07">
「那东西既没有听祈祷用的耳朵，
也没有吃供品用的嘴。
　想让它不作乱，唯有一个方法……」

{	FwC("cg/fw/fw茶々丸虎徹_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0790a07">
「就是照它的意思办。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0800a00">
「茶茶丸……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　若是不那么做的话。
　你就无法从<RUBY text="··">那个</RUBY>解脱吗……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆再びエネルギー上昇
	CreateColorEXadd("窓左/あかい", 15000, "RED");

	CreateSE("SE01","se特殊_雰囲気_集中01_L");
	MusicStart("SE01",0,1000,0,1300,null,true);

	Fade("窓左/あかい", 1000, 600, null, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0810a01">
《……又来了!!》

{	FwC("cg/fw/fw茶々丸虎徹_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0820a07">
「无论哥哥有多顽强，那副剑胄有多迟钝，只要
再让你听一遍那个的话就会倒下吧。
　所以，我就这么做。」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0830a07">
「大概不要擅自挣扎会比较舒服哦，哥哥。」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0840a00">
「喀……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE*", 2000, 0, null);

	CreateColorEXadd("窓右/あおい", 15000, "BLUE");

	CreateSE("SE01","se特殊_電撃_帯電02");
	MusicStart("SE01",0,1000,0,1400,null,true);

	Fade("窓右/あおい", 1000, 1000, null, true);
	CreateTextureEX("窓右/絵右EV", 6510, @-478, @0, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	Fade("窓右/絵右EV", 1000, 1000, null, false);
	Fade("窓右/あおい", 1000, 300, null, true);
	Fade("窓右/あおい", 1000, 1000, null, true);
	Fade("窓右/あおい", 1000, 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　总之——不能在这里倒下。
　不然失去的东西就太多太沉重了。

　瞬间的判断下，我收短刀入鞘。
　然后在体内聚集热量。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0850a01">
《主君!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0860a00">
「<RUBY text="Railgun">电磁掷刀</RUBY>！
　办得到吧，村正?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0870a01">
《————明白！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆帯電
	Wait(500);

	CreateSE("SE03","se特殊_鎧_装着05");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);
	FadeDelete("窓*", 1000, false);
	Delete("くろ");

	FadeDelete("絵背景300", 300, true);

	CreateTextureSP("絵背景500", 6200, Center, Middle, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	CreateTextureSP("絵背景400", 6200, Center, Middle, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	CreateTextureSP("絵背景600", 6200, Center, Middle, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	Move("絵背景400", 0, -205, -55, null, true);
	Move("絵背景500", 0, -205, -55, null, true);
	Move("絵背景600", 0, -205, -55, null, true);
	SetVertex("絵背景600", 680, 130);

	Shake("絵背景400", 1000000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景600", 0, 1200, 1200, null, true);

	SetBlur("絵背景600", true, 3, 500, 100, false);

	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE02",0,1000,0,800,null,false);

	FadeDelete("フラッシュ白", 1000, false);
	Zoom("絵背景600", 500, 1000, 1000, Dxl1, false);
	Fade("絵背景600", 500, 0, null, true);

	Delete("絵背景600");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　在还未站稳，无法斩击的现在，这是唯一的方法。
　电磁刀术的第三招。利用磁力相斥，将收在鞘内的短刀
<RUBY text="··">射出</RUBY>。

　无论是什么人都不可能避开。
　不，曾仅有一次，有一架速度超常的骑体成功回避了
——我不认为茶茶丸做得到。通常是绝无可能反应过来的。

　目标是脚。
　只要不直击，就不会造成致命伤，但中弹的冲击波即使
是装甲也无法完全防御。

　对方应该会受到一定程度上的损伤。
　然后我趁机离开此地，赶赴天守阁。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//	FadeDelete("絵*", 1500, true);

	SetFwC("cg/fw/fw茶々丸虎徹_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0880a07">
「……要用这招吗……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0890a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎、エネルギー上昇

	CreateColorSPadd("しろ", 15000, "#FFFFFF");
	Delete("絵*");

	CreateWindow("絵ＷＬ", 1500, Center, -288, 1024, 288, true);
	SetAlias("絵ＷＬ","絵ＷＬ");
	CreateTextureSP("絵ＷＬ/絵背景Ｌ100", 1500, Center, middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Fade("しろ", 300, 0, null, true);

	CreateTextureSP("絵ＷＬ/絵ＳＴＬ", 1500, -151, 0, "cg/st/3d虎徹_立ち_陰義.png");
	Request("絵ＷＬ*", Smoothing);

	Move("絵ＷＬ/絵背景Ｌ100", 0, @312, @0, null, true);
	Move("絵ＷＬ/絵ＳＴＬ", 0, -151, 100, null, true);
	Move("絵ＷＬ", 0, @0, @288, null, true);


	CreateWindow("異ＷＲ", 1500, Center, 576, 1024, 576, true);
	SetAlias("異ＷＲ","異ＷＲ");
	CreateTextureEX("異ＷＲ/異ＳＴＲ", 1000, -300, -300, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	Request("異ＷＲ*", Smoothing);

	Move("異ＷＲ/異ＳＴＲ", 0, @120, @330, null, true);
	Move("異ＷＲ", 0, @0, @-288, null, true);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01a","se戦闘_動作_空突進03");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("絵ＷＬ/絵背景Ｌ100", 500, @-380, @0, Dxl1, false);
	Move("絵ＷＬ/絵ＳＴＬ", 500, -150, @-200, Dxl2, false);

	Zoom("異ＷＲ/異ＳＴＲ", 0, 1100, 1100, Dxl1, true);
	Fade("異ＷＲ*", 300, 1000, null, false);
	Move("異ＷＲ/異ＳＴＲ", 500, @190, @0, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　现在，决定胜负的是施术快慢。
　先完成的一方就赢。

　我制造热量，村正将其转换为磁力。由我控制磁力，
村正辅助——这些工序必须最快最好地完成。
　但精致度也十分重要。

　这术式能产生巨大的<RUBY text="Energy">力量</RUBY>并加以运用，
一旦失败可不是血管破裂就能了事的。
　并非专于速度与质量的其中之一。速度与质量都必须
最大。

　左臂不能动弹，果然是负担。
　也就是无法好好支撑作为<RUBY text="··">炮筒</RUBY>的刀鞘……
能否完成拔刀与投掷的动作，令人感到少许不安。

　但即便如此，也不得不做。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばち。ちょっと発電

	CreateColorEXadd("異ＷＲ/異あおい", 15000, "BLUE");

	CreateSE("SE01","se日常_機械_電気ショート帯電01");
	MusicStart("SE01",0,1000,0,850,null,false);

	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	Fade("異ＷＲ/異あおい", 150, 1000, null, true);
	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	Fade("異ＷＲ/異あおい", 50, 1000, null, true);
	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	FadeDelete("異ＷＲ/異あおい", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0900a01">
《——》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0910a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　省去了道谢的功夫。
　现在这是浪费时间。

　这样一来，左手的不安就几近消失了。
　手掌与刀鞘以磁力结合——弥补了握力不足。

　接下来只要完成阴义就够了！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆エネルギー上昇

	CreateColorEXadd("絵ＷＬ/絵あけぇ", 15000, "RED");
	CreateColorEXadd("異ＷＲ/異あおい", 15000, "BLUE");

	CreateSE("SE02","se特殊_電撃_放電02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("異ＷＲ/異あおい", 0, 1000, null, false);
	FadeDelete("異ＷＲ/異あおい", 1000, true);


	CreateSE("SE02a","se特殊_雰囲気_集中01_L");
	MusicStart("SE02a",0,1000,0,1000,null,true);

	Fade("絵ＷＬ/絵あけぇ", 0, 1000, null, true);
	FadeDelete("絵ＷＬ/絵あけぇ", 1000, true);
	FadeDelete("異ＷＲ/異あおい", 1000, true);

	SetVolume("SE02a", 2000, 0, null);

	SetFwC("cg/fw/fw茶々丸虎徹_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0920a07">
「————」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0930a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆最高潮
	CreateColorEXadd("異ＷＲ/異あおい", 15000, "BLUE");
	Fade("異ＷＲ/異あおい", 0, 1000, null, true);
	Fade("異ＷＲ/異あおい", 1000, 0, null, false);
	Move("異ＷＲ/異ＳＴＲ", 500, @100, @30, Dxl2, false);
	Zoom("異ＷＲ/異ＳＴＲ", 500, 1300, 1300, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　我<k>
　
　比较快——————吗!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Move("絵*", 500, @0, @-288, Dxl2, false);
	Move("異ＷＲ", 500, @0, @-288, Dxl2, true);

	OnSE("se特殊_電撃_放電01",1000);
	CreateTextureSP("下正", 100, -200, -35, "cg/ev/resize/ev908_村正電磁擲刀_cl.jpg");
	Zoom("異ＷＲ/異ＳＴＲ", 500, 2000, 2000, Dxl1, false);
	FadeDelete("絵*", 500, false);
	FadeDelete("異*", 500, true);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0940a00">
「<RUBY text="Railgun">电磁掷刀</RUBY>——」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0950a00">
「咒！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆電磁擲刀·呪。レーザービーム。
//◆着弾。ちゅどーん。

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE02", 500, 0, null);
	OnSE("se特殊_陰義_レールガン呪",1000);

	CreateColorEXadd("フラッシュ白", 19000, "WHITE");

	CreateTextureEX("絵ef90", 3000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureEXadd("絵ef100", 3000, Center, 200, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵ef90", 0, 2000, 2000, null, true);
	Zoom("絵ef100", 0, 2000, 2000, null, true);
	Rotate("絵ef100", 0, @0, @0, @-5, null,true);
	Request("絵ef*", Smoothing);
	SetBlur("絵ef100", true, 2, 500, 200, false);


	Fade("絵ef90", 200, 1000, null, false);
	Move("絵ef90", 300, -512, 288, Dxl2, true);

	Move("絵ef90", 1000, 512, -288, Axl2, false);
	Wait(700);
	Zoom("絵ef100", 1000, 6000, 6000, Dxl2, false);
	Fade("絵ef100", 300, 1000, null, true);

	Fade("フラッシュ白",1000,1000,Axl2,true);

	Wait(1500);
	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_03_01_0.png", true);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 18001, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 18000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演", true, 3, 300, 30, false);
	Fade("絵演上", 0, 500, null, true);


	Zoom("絵演", 3000, 1100, 1100, Dxl1, false);
	Zoom("絵演上", 3000, 1200, 1200, Dxl1, false);
	Shake("絵演", 2000, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("フラッシュ白", 300, true);

	Delete("下正");
	Delete("絵ef*");
	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　……术法顺利完成。
　敌骑的阴义也未袭来。

　也就是——实现了企图。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆粉塵が晴れる
//◆茶々丸いない
	FadeDelete("絵*", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0960a00">
「……嗯?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　茶茶丸不见了。

　难道是，直接击中了……？
　不，即便如此也不可能连一片碎片也不留。

　茶茶丸所站的地点，只余电磁掷刀的弹痕，
变形的擂钵状洞穴。
　除此之外空无一物。

　……去哪了？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピピ。探査音
	CreateSE("SE01","se特殊_コックピット_アラーム");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs0970a01">
《那边！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs0980a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg105_城門付近内側_02.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);

	SoundPlay("@mbgm35", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　我向村正指示的方向看去。
　就在——那边。大概是发射瞬间就跳开了，
与这边拉开了一大段距离。

　……她到底有何企图。

　放弃阴义较量，在此之前避开。
　这我明白，虽然明白。

　但这么做对她有什么好处？

　的确，这边摆出电磁掷刀的架势，多半是打不中的。
　但茶茶丸的术法也已经接近完成。即使在这里放弃
阴义，也不能取回已经消费的热量。

　也就是说彼此消耗相同。
　丝毫不能改变之前的战力优势。

　茶茶丸的行动其实毫无意义……
　只能这么认为了吗……<k>…………？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸虎徹_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs0990a07">
「是我胜了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1000a00">
「……」

{	FwC("cg/fw/fw茶々丸虎徹_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs1010a07">
「用小聪明取胜，是我不对，抱歉了，哥哥。
　我乃堀越公方足利茶茶丸。」

{	FwC("cg/fw/fw茶々丸虎徹_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/048vs1020a07">
「<RUBY text="··">阴招</RUBY>是手到擒来。
　……再见。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　留下这句话，茶茶丸就要离开。
　转身背向我。

　要逃……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1030a00">
「————」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1040a00">
「——切——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　不对!!

　中计了。
　完全被骗了。

　茶茶丸不必非要与我决战。
　只要时间过去，满载锻造雷弹的船在普陀乐上空出现
就能获得胜利——

　这一点我也知道。
　所以也不是不能理解，她放弃了决一死活的阴义比试
……这样一来就能轻松拖延时间。虽然这看起来是太过
消极了。

　但是我错了。

　我没能注意到另一件事。

　茶茶丸除了打倒我和拖延时间以外，还有一个
<RUBY text="····">取胜条件</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStR(500,true);

	SetFwC("cg/fw/fw景明_怒りa.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1050a00">
「她想杀了……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs1060a01">
《……咦？　杀了谁？》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1070a00">
「足利邦氏！
　要是他死了，就无法阻止空投锻造雷弹！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/048vs1080a01">
《……啊……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　茶茶丸的目的地是天守阁。
　绝对没错。

　非追不可！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がく。
	CreateSE("SE01b","se特殊_鎧_駆動音01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-50, @20, Axl3, true);
	WaitKey(300);
	Move("@StR*", 300, @-10, @40, Dxl1, true);

	SetFwC("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1090a00">
「……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　脚下一软。
　无法使力——

　茶茶丸的阴义还留有后遗症吗。
　而且，由于电磁掷刀，热量消耗发出了警报……!?

　这是她的目的吗!!
　一切都在茶茶丸的计算之内吗!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【景明】
<voice name="景明" class="景明" src="voice/md04/048vs1100a00">
「呜……吼吼吼!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どうにかダッシュ

	CreateSE("SE01b","se特殊_鎧_駆動音01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @50, @-40, Axl3, true);
	WaitKey(300);

	Shake("@StR*", 500, 1, 1, 0, 0, 500, null, false);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStR(500, false);
	Move("@StR*", 500, @-300, @0, Axl3, false);


	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_049vs.nss"
