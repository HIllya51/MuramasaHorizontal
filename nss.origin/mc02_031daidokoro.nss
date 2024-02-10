//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoro.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg080_飛行船船室Ac_01a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc02_031daidokoro.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_031innsyoku.nss"
//前ファイル　"mc02_031innsyokuz.nss"


//●台所
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	Wait(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　料理设备摆放得十分整齐。
　……这里是厨房。

　由于飞行战舰较长的续航距离为其强项，多用于
长期作战。
　这种设备逐渐会成为必需设备吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//小分岐：香奈枝がまだいない場合のみ挿入
//ＳＥ：みし。天井が軋む

if($香奈枝合流_Flag != true){

//嶋：意味のあるＳＥであることを指すため、テキストボックス消去
	Fade("@box*", 150, 0, null, true);
	OnSE("se日常_建物_軋み01",1000);

	WaitKey(2000);

	SetFwC("cg/fw/fw景明_通常b.png");

//ムー：↓タグなかったから追加しておいた。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011a]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da9999a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011b]
　我立刻摆好战斗姿势，抬头仰望天花板。
　
　……错觉吗？

　我刚刚的确听到了声响。
　但仔细思考一下，敌兵怎么可能
藏在天花板里。

　根据位置，或许是老鼠。
　……虽仍然有些在意，但比起在这踌躇不前浪费时间，
我还是采取行动比较好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}

//ここまで

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]

　接下来，在这里我该采取的行动是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：冷蔵庫を開ける／コンロに火を入れる／擂粉木を取る／移動する


}

..//ジャンプ指定
//◆冷蔵庫を開ける　"mc02_031daidokoroa.nss"
//◆コンロに火を入れる　"mc02_031daidokorob.nss"
//◆擂粉木を取る　"mc02_031daidokoroc.nss"
//◆移動する　"mc02_031daidokoroz.nss"

//★選択肢シーン
scene mc02_031daidokoro.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ac_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice04("打开冰箱","往炉子里加火","获取研磨棒","移动");
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
			ChoiceA04();
//◆冷蔵庫を開ける　"mc02_031daidokoroa.nss"
				$GameName = "mc02_031daidokoroa.nss";
		}
		case @選択肢２
		{
			ChoiceB04();
//◆コンロに火を入れる　"mc02_031daidokorob.nss"
				$GameName = "mc02_031daidokorob.nss";
		}
		case @選択肢３
		{
			ChoiceC04();
//◆擂粉木を取る　"mc02_031daidokoroc.nss"
				$GameName = "mc02_031daidokoroc.nss";
		}
		case @選択肢４
		{
			ChoiceD04();
//◆移動する　"mc02_031daidokoroz.nss"
				$GameName = "mc02_031daidokoroz.nss";
		}
	}
}


