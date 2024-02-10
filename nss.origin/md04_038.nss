//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_038.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_039.nss";

}

scene md04_038.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_037.nss"


//◆藤沢口

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SetNwC("cg/fw/nw補佐官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0380010e247">
「启禀大人！
　有封奇怪的来信是给大人的——」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380020a07">
「读来听听。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0380030e247">
「是。
　——天空奇异，迷惘之镜，
云居之樱盛放时，海面粼粼映日光。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0380040e247">
「就这样。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380050a07">
「————」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380060a07">
「我知道了。
　退下吧。」

{	NwC("cg/fw/nw補佐官.png");}
//【ｅｔｃ／補佐】
<voice name="ｅｔｃ／補佐" class="その他男声" src="voice/md04/0380070e247">
「是。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380080a07">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380090a07">
「哥哥……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0380100a00">
「刚才的是？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380110a07">
「从绿龙会传来的消息。
　这是紧急时用的暗号。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380120a07">
「内容是卡农中佐回到ＧＨＱ，重新开始行动。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0380130a00">
「……这样啊。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380140a07">
「好像挺顺利呢。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0380150a00">
「嗯。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380160a07">
「……很——好……」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0380170a07">
「<RUBY text="··">时机</RUBY>也，刚刚好！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_039.nss"