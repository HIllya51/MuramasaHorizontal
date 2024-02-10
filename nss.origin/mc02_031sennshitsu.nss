//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031sennshitsu.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//嶋：デバッグフラグ
//	$船室一回目_Flag = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($船室一回目_Flag == true){
		call_scene @->mc02_031sennshitsu_s.nss;
		$sennshitsu_s=true;//船室フラグあり
		$sennshitsu_No=false;//船室フラグなし
	}else{
		call_scene @->mc02_031sennshitsu_No.nss;
		$sennshitsu_s=false;//船室フラグあり
		$sennshitsu_No=true;//船室フラグなし
	}

//次シーン
	if($sennshitsu_No==true){
		$GameName = "mc02_031rouka1.nss";
	//嶋：フラグ初期化
		$船室一回目_Flag = true;
		$sennshitsu_s=false;//船室フラグあり
		$sennshitsu_No=false;//船室フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($sennshitsu_s==true){
		$GameName = "mc02_031gameover.nss";
	//嶋：フラグ初期化
		$sennshitsu_s=false;//船室フラグあり
		$sennshitsu_No=false;//船室フラグなし
	}

}

scene mc02_031sennshitsu.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031rouka1.nss"

}

scene mc02_031sennshitsu_No.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//●船室
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――

.//◆※一回目

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　集中精力，准备打开门——
　千钧一发之际，我却迟疑了。

　门的另一边，能感觉到人群的热气。
　在脑中描绘了一下船体构造——<k>门后方，
恐怕是客舱！

　我所闯入的地方，似乎是船体的后部
区域。
　操纵室和航海室所在的中枢区域，根据推测应该位于
包裹着船舱的对岸——即船体前部。

　换言之，如果不突破这个船舱，就无法到达重要的
据点。
　但这样做太鲁莽。必须作好对抗数骑武者
的觉悟。

　若有必要，不得不那样做。总之应该先完成
对船体后部的搜索吧。
　我蹑手蹑脚地离开了那扇门。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆フラグ調整
//◆$船室一回目_Flag = true;


//◆→●廊下１

..//ジャンプ指定
//次ファイル　"mc02_031rouka1.nss"


}

//――――――――――――――――――――――――――――――
.//◆※二回目
scene mc02_031sennshitsu_s.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//◆扉開ける。がちゃ。
//◆船室一回目_Flagがある場合
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg082_飛行船廊下_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	CreateSE("SE01","se日常_建物_扉開く01");
	MusicStart("SE01",0,500,0,1000,null,false);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　————糟了。
　
　正当我意识到致命的失策，悔之莫及的时候，
一切都为时已晚。

　门对面是——士兵们待命的船舱。
　
　他们把我当成友军士兵笑脸相迎，这种可能性
会有吗？

　一秒之后答案揭晓。
　然后，我的命运就此决定。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆小分岐

if($香奈枝合流_Flag==false){

//◆香奈枝いない――――――――――――――――――――
//◆香奈枝合流_Flagがない場合

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……事到如今，我只能完成一件事。
　接受这个命运并竭尽全力，将希望托付给大鸟大尉，
只有如此了。

　与这众多充满敌意的目光相对。
　我下定了最后的决心。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}else if($香奈枝合流_Flag==true){

//◆香奈枝いる――――――――――――――――――――
//◆香奈枝合流_Flagがある場合

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031se0010a04">
「……还真是爱管闲事。」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031se0020a03">
「这就是海格力斯的选择吧？
　倒也符合景明大人的一贯作风，
不是很好吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　大鸟家的主从二人，似乎很快就做好了觉悟。
　
　……没有被她们责备，我感到非常难受。

　最起码，至少要让她们二人逃脱，之后的事就只能
寄望于她们了。
　我留在这里，直至生命的结束。为她们达成目的争
取必要的时间。

　已经别无选择。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}//if End

//◆合流――――――――――――――――――――

	ClearWaitAll(3000, 2000);


//◆→●ゲームオーバー
..//ジャンプ指定
//次ファイル　"mc02_031gameover.nss"


}

