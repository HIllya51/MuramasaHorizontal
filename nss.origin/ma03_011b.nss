//<continuation number="690">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011b.nss_MAIN
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
	#bg037_競技場ガレージa_01=true;
	#bg036_競技場通路_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_011b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011.nss"

//●一条の様子を見に行く

//◆通路
	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("上背景", 25000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorSP("絵暗転", 1000, "#000000");
	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　一条应该是在这附近调查……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイス無し
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0010a02">
「————！」

//◆ボイス無し
{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0020e140">
「————！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……不知是不是错觉。
　远远传来的微弱喧闹声，似乎在预示着某种不妙
的事态。

　我向着声音传来的方向小跑过去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換

	CreateColorSP("絵暗転", 15000, "#000000");
	DrawTransition("絵暗転", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);

	WaitKey(500);

	DrawDelete("絵暗転", 500, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0030a02">
「说了让你道歉！」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0040e140">
「开什么玩笑！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　结果，见到了一条。
　站在某个队伍的机库前。和貌似整备人员的大汉对
峙着，两人脸上均挂着可怕的表情。

　而一条的背后，还有一个坐在地上的男孩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw整備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0050e140">
「这里禁止关系人员以外的人进入！　没看到那
里写着吗！
　都是这个随便进入的小鬼的错!!」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0060a02">
「那就允许你抓着领子把别人丢出去了吗！
　一个大人居然欺负小孩子，
有什么值得高兴的!!」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0070e140">
「你说什么——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……看来没有寻求事态说明的必要。
　状况极为简单。

　我没有停下脚步，径直走到两人之间。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0080a02">
「凑斗先生!?」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0090e140">
「你小子是哪位。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0100a00">
「非常抱歉。
　她是本人的同伴。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0110a02">
「凑斗先生，这家伙——」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0120a00">
「闭嘴。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0130a02">
「……」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0140e140">
「同伴？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0150a00">
「是的。
　她有什么不对的，就由本人——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばき。殴打
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,1250,null,false);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(10);
	Delete("絵白転");

	CreatePlainSP("絵板写", 1000);
	FadeFR2("絵板写",0,1000,300,0,0,30,DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0160a00">
「……呃呃。」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0170a02">
「——这个混账!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0180a00">
「说了让你闭嘴。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);
	DeleteStA(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　抓住手腕阻止正想冲过去的一条，把她挡在身后。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw整備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0190e140">
「我正忙得要命！
　别拿那种无聊的事情烦我！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どが。
	DeleteStA(0,true);
	CreateSE("SE01","se戦闘_攻撃_殴る02");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(10);
	Delete("絵白転");

	CreatePlainSP("絵板写", 1000);
	FadeFR2("絵板写",0,1000,300,0,0,30,DxlAuto, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0200a00">
「给你添麻烦了。」

{	FwC("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0210a02">
「……啧……！」

{	NwC("cg/fw/nw整備員.png");}
//【ｅｔｃ／整備員】
<voice name="ｅｔｃ／整備員" class="その他男声" src="voice/ma03/011b0220e140">
「赶快给我消失！　一群傻子！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0230a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　大汉向低着头的我呸地吐了口唾沫，走回机库。
　我用手巾擦掉脸上的污秽，转过身来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0240a00">
「走吧。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0250a02">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0260a00">
「没事吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　向小孩问道。
　他站了起来，瞪着我不屑地说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw男の子.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／男の子】
<voice name="ｅｔｃ／男の子" class="その他男声" src="voice/ma03/011b0270e200">
「窝囊废。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0280a00">
「……」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0290a02">
「喂，这个小鬼——」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0300a00">
「住手。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170a]
　向着一条鞠了一躬后，男孩沿着走廊跑开。
　衬衣背上印着的队标渐渐远去——<k>和大汉工作
服上的标志一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

	CreateSE("SEL01","se人体_足音_歩く03_L");//ダミー注意
	MusicStart("SEL01",0,1000,0,1250,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170b]
　……既然已经引发骚动，就无法指望在这附近继续
调查。
　我朝着和小孩相反的，通往广场的方向走去。稍后，
一条也追了过来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0310a02">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0320a00">
「……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0330a02">
「……那个。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0340a00">
「怎么。」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0350a02">
「…………
　我，做错了吗。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0360a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

}


//◆選択：間違っている／間違ってはいない


..//ジャンプ指定
//◆間違っている　"ma03_011ba.nss"
//◆間違ってはいない　"ma03_011bb.nss"


//★選択肢シーン
scene ma03_011b.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義

	SoundPlay("@mbgm17",0,1000,true);

	PrintGO("背景０", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("错了","没错");
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
//間違っている　"ma03_011ba.nss"
				$GameName = "ma03_011ba.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//間違ってはいない　"ma03_011bb.nss"
				$GameName = "ma03_011bb.nss";
		}
	}
}

