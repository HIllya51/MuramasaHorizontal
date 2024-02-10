//<continuation number="1640">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_003_4.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{

		//$銀星号香奈枝殺害 = true;

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#bg033_署長宅景明私室_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
//	$PreGameName = $GameName;

//	◆フラグ分岐：デバッグのため選択肢にしてあります
//	◆香奈枝が生存していた場合　"mb01_003a.nss"
//	◆香奈枝が死亡していた場合　"mb01_003b.nss"
//	$GameName = "mb01_003b.nss";
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;


	if($銀星号香奈枝殺害 == true){
		$PreGameName = $GameName;
		$GameName = "mb01_003b.nss";
	}else{
		$PreGameName = $GameName;
		$GameName = "mb01_003a.nss";
	}


}

scene mb01_003_4.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_002.nss"
//前ファイル　"mb01_002a.nss"

	PrintBG("上背景", 30000);
//	SoundPlay("@mbgm20",1000,1000,true);
	CreateColorSP("絵色黒", 100, "#000000");

	Delete("上背景");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　现在，我觉得最——善之人。
　肯定其存在之人。

　那人是
　谁。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条
//◆イメージ。斬殺

/*
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateColorSP("絵黒地", 3000, "#000000");
	StC(3100, @0,@0,"cg/st/st一条_通常_制服.png");
	FadeStC(0,true);

	Fade("絵白転", 300, 200, null, true);

	WaitKey(300);

	CreateColorSP("絵演赤", 4000, "#CC0000");
	CreateTextureSP("絵演血", 3200, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(100);
	DeleteStA(100,false);
	FadeDelete("絵演赤", 500, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);

	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);

	Delete("絵黒地*");
	Delete("絵演*");
	DeleteStA(0,true);
	FadeDelete("絵白転", 600, true);

*/

//おがみ：香奈枝ルートと合わせました
	StC(500, @0, @0, "cg/st/st一条_通常_制服.png");
	FadeStC(300,true);

	WaitKey(1000);

//◆イメージ。斬殺
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPmul("絵演効果血", 510, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(200);

	DeleteStC(100,true);
	FadeDelete("絵背景500", 500, true);

	OnSE("se人体_血_血しぶき01",1000);
	CreateColorSP("絵色血", 5000, "#CC0000");
	Wait(12);

	Delete("絵演効果血");
	FadeDelete("絵色血", 3000, false);

	CreateTextureEX("絵ＥＦ15", 150, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureSPmul("絵ＥＦ追加", 4000, @0, @0, "cg/data/circle_09_00_0.png");
	Fade("絵ＥＦ15", 50, 1000, null, true);

	WaitAction("絵色血", null);


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm30",2000,1000,true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031500a00">
「……唔。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031510a11">
「景明……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031520a00">
「恳请宽恕。」

{	SetVolume("@mbgm*", 3500, 1000, null);
	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031530a00">
「仅此事……
　容我推辞！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031540a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031550a10">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想終わり
//◆景明部屋
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg033_署長宅景明私室_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1500, true);

	WaitKey(1000);
	FadeDelete("絵暗転", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　最终我还是不能接受。
　仅与银星号有关的杀戮已让我精疲力尽。

　为大和的未来而战、而杀，这些已超出我能力所及的
范围。
　辜负了有恩于我的亲王的期望，内心十分痛苦。但我
又能怎样。

　幸好亲王和署长都没有强硬地命令我。
　也没有为防万一而封我的口——那是当然——仅默默
颔首，便任凭我退出了。

　所以，那不是我干的。绝不可能。根本没必要特意搜
寻记忆去确认。
　将足利护氏致死者另有其人。

　倘若并非自然死亡，而是死于刺客之手……
　
　果然还是不得不怀疑背后有舞殿宫指使。

　但，是谁取代我，执行了手刃护氏的任务呢？
　是谁……有这号人物吗？　要说亲王身边能够干掉足
利护氏的人……

　毫无线索……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031560a00">
「…………」

</PRE>
	SetTextEXC();
	if($銀星号香奈枝殺害 == true){
	TypeBeginCI();//―――――――――――――――――――――――――――――
	}else{
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	}

//◆ルート分岐まで香奈枝が生存していた場合のみ↓の台詞
..//嶋：ルート分岐後、香奈枝死亡

if($銀星号香奈枝殺害 == true){

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0031570a00">
（难道是……？）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

}else{}


	ClearWaitAll(2000, 1000);

//◆建朝寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031580a10">
「啊……终于告一段落了。
　真不容易。」


{	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031590a11">
「您辛苦了。」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031600a10">
「你也辛苦了。
　不过，建朝寺吗……这里仍是足利的势力范
围，没多大改变啊。」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031610a11">
「总比一直被困在普陀乐城内要好……
不是吗。」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031620a10">
「这个嘛……
　算了，那都无所谓。」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb01/0031630a10">
「赶快谈谈正题吧。
　……你怎么想？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb01/0031640a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//ジャンプ指定

}


//◆フラグ分岐
//◆香奈枝が生存していた場合　"mb01_003a.nss"
//◆香奈枝が死亡していた場合　"mb01_003b.nss"


//★選択肢シーン
scene mb01_003_4.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("香奈枝生存","香奈枝死亡");
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
//◆香奈枝が生存していた場合　"mb01_003a.nss"
				$GameName = "mb01_003a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆香奈枝が死亡していた場合　"mb01_003b.nss"
				$GameName = "mb01_003b.nss";
		}
	}
}