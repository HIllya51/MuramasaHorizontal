
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031start.nss_MAIN
{

	mc02_FlagDef();
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg081_飛行船船室Bc_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss"

}

scene mc02_031start.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_030.nss"



//●探索開始
//◆※ここ、戒厳聖都のような簡単なマップを用意する？

	PrintBG("上背景", 30000);

	CreateColorSP("絵色100", 10000, "Black");

	Delete("上背景");


	CreateSE("トンデマス", "se戦闘_動作_空走行02_L");
	MusicStart("トンデマス",0,500,0,1000,Dxl3,true);
	WaitKey(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　上午七点五十二分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆船内·倉庫１


	SetVolume("トンデマス", 1500, 0, null);
	SoundPlay("@mbgm21",0,1000,true);
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg081_飛行船船室Bc_01.jpg");
	FadeDelete("絵色100", 1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一般来说，回舰降落在飞行舰上是要通过
专用入口来进行的。
　破壁强行闯入简直是最佳的自杀方式——倒也算是
走了狗屎运吧，好不容易成功了。

　但如果再在这里拖拖拉拉，原本已经甩掉的
二骑护卫就会回来了。以他们的手段，从我破开的洞里
登舰是轻而易举。
　眼下也只能硬着头皮继续深入了。

　若是遭到那些因察觉异状而赶来的舰内士兵夹击，
我的行动就到此为止了。
　这样我大概能起到支援大鸟大尉的作用。不过对搜寻
炸弹的主要目的放任不管，不是什么好对策。

　我在引开敌人的同时寻找炸弹，这才是最有效的
用兵方式。
　
　好了——

　这里似乎是仓库。满眼都是清扫工具、灯油罐
之类的物品，没有发现炸弹。
　呈现在眼前的惨状并非原本就是如此，而是
我打破墙壁时产生的气流造成的吧。

　要说出入口，船头方向有一个，在其对面的左手边
也有一个。
　
　应该从哪边出去呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：船首方向／左方向
//●船首方向→●倉庫２
//●左方向→●廊下３

//◆毎回移動の度に"mc02_031time.nss"で時間＆移動演出が入ります。
//◆移動の前には目的予定地のフラグを入手し、移動が完了する度に
//◆目的地フラグを解放します。

..//ジャンプ指定
//●船首方向→●倉庫２　"mc02_031souko2.nss"
//●左方向→●廊下３　"mc02_031rouka3.nss"


}

//★選択肢シーン
scene mc02_031start.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_飛行船船室Bc_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(9);
//■選択肢
	SetChoice02("船首方向","左方向");
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
			mc02_SelectIcon_Delete();
//●船首方向→●倉庫２　"mc02_031souko2.nss"
				$GameName = "mc02_031souko2.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●左方向→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}

