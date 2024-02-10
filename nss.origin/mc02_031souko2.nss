
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：デバッグフラグ
//	$香奈枝合流_Flag=true;
//	$倉庫２一回目_Flag=true;
//	$兵士気絶_Flag=false;


.//嶋：ルート判定
//香奈枝がいる場合
	if($香奈枝合流_Flag==true){
//倉庫２に入ったことがない場合
		if(!$倉庫２一回目_Flag){
			call_scene @->mc02_031souko2_k.nss;
			$souko2_k = true;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
			$倉庫２一回目_Flag = true;
//倉庫２に入ったことがある場合
		}else{
			if(!$兵士気絶_Flag){
//兵士が気絶していない場合
				call_scene @->mc02_031souko2_ks.nss;
				$souko2_k = false;//香奈枝合流フラグのみルート
				$souko2_ks = true;//香奈枝合流+倉庫２一回目ルート
				$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
				$souko2_No = false;//フラグなしルート
			}else{
//兵士が気絶している場合
				call_scene @->mc02_031souko2_ksk.nss;
				$souko2_k = false;//香奈枝合流フラグのみルート
				$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
				$souko2_ksk = true;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
				$souko2_No = false;//フラグなしルート
			}
		}
//香奈枝合流なし
	}else{
		call_scene @->mc02_031souko2_No.nss;
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = true;//フラグなしルート
	}


//次ポイント確認用
	if($souko2_No==true){
		$SelectGameName="@->"+$GameName+"_SELECT1";
		call_scene $SelectGameName;
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
			$Next_GameName = $GameName;
			$GameName = "mc02_031time.nss"
	}else if($souko2_k==true){
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
//			$倉庫２一回目_Flag = true;
	}else if($souko2_ks==true){
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
	}else if($souko2_ksk==true){
		//◆フラグ分岐：仮入れ
		$GameName = "mc02_031rouka2.nss";
//嶋：フラグ初期化
			$souko2_k = false;//香奈枝合流フラグのみルート
			$souko2_ks = false;//香奈枝合流+倉庫２一回目ルート
			$souko2_ksk = false;//香奈枝合流+倉庫２一回目+兵士完全気絶ルート
			$souko2_No = false;//フラグなしルート
			$Next_GameName = $GameName;
			$GameName = "mc02_031time.nss"
	}


}

scene mc02_031souko2.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031start.nss"
//前ファイル　"mc02_031souko2.nss"

//●倉庫２
//◆香奈枝同行、兵士ＫＯフラグにて分岐します

/*
//香奈枝がいる場合
	if($香奈枝合流_Flag==true){
//倉庫２に入ったことがない場合
		if(!$倉庫２一回目_Flag){
			call_scene @->mc02_031souko2_k.nss;
//倉庫２に入ったことがある場合
		}else{
			if(!$兵士気絶_Flag){
//兵士が気絶していない場合
				call_scene @->mc02_031souko2_ks.nss;
			}else{
//兵士が気絶している場合
				call_scene @->mc02_031souko2_ksk.nss;
			}
		}

//香奈枝合流なし
	}else{
		call_scene @->mc02_031souko2_No.nss;
	}
*/

}

//――――――――――――――――――――――――――――――
.//◆※香奈枝いない
//◆香奈枝合流_Flagが無い場合
..//No_Flag mc02_031souko2_No.nss
scene mc02_031souko2_No.nss
{

	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");
	OnSE("se日常_建物_扉開く01", 1000);
	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);
	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　这里也是仓库。
　与一开始的地方相比，桌子或是推车之类的体积都要大
许多。

　用来当做藏身场所或许很合适，但对
现在的我来说毫无用处。
　继续行动。

　倘若穿过船尾方向的那扇门，就会回到一开始的
仓库。
　如果不想回去，就只能穿过位于左侧那扇朝着
船头方向的门。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：船尾方向の扉へ／左の扉へ
//●船尾→●倉庫１
//●左へ→●廊下２


..//ジャンプ指定
//●船尾→●倉庫１　"mc02_031souko1.nss"
//●左へ→●廊下２　"mc02_031rouka2.nss"

}



//――――――――――――――――――――――――――――――
.//◆※香奈枝いる·初回
//◆香奈枝合流_Flagがあり、かつ倉庫２一回目_Flagが無い場合
..//mc02_031souko2_k.nss
scene mc02_031souko2_k.nss
{

	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "Black");
	SoundPlay("@mbgm21",0,1000,true);
	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　对正准备打开门的我，永仓侍从轻声阻止。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, true);

	StL(1000, @-60, @0, "cg/st/stさよ_通常_私服.png");
	Move("@StL*", 300, @60, @0, DxlAuto, false);
	FadeStCL(300, false);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0060a04">
（请您等等）

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0070a00">
（……怎么？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　同样的音量低语着给予回应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0080a04">
（里面好像有人。
　……是全副武装的士兵吗……）

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0090a04">
（似乎在找些什么）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0100a00">
（……在找藏起来的人吗？）

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0110a04">
（似乎这样吧）

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0120a03">
（怎么办呢？）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0130a00">
（不要贸然正面冲突。
　我们折回去，搜索其他地方吧）

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0140a04">
（——恐怕不行）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0150a00">
（侍从阁下？）

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0160a04">
（来了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　来了？
　
　——搜查结束，要从房间里出来了吗！

　现在马上藏起来也已经来不及了。
　只能闯入室内，先下手为强，将对方压制。

　要是让对方有喘息空间，引来其同伴就不好办了。
　必须一击使其无法抵抗——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0170a03">
「——」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0180a04">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　通过视线交汇，我们三人已达成共识。
　接下来，就是交给谁来实施的问题。大门的宽度无法
容纳两人以上同时闯入。

　做个决定。
　要闯进去的是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フラグ調整
..//◆$倉庫２一回目_Flag = true;
	$倉庫２一回目_Flag = true;

//◆選択：景明／香奈枝／さよ


..//ジャンプ指定
//◆景明　"mc02_031souko2a.nss"
//◆香奈枝　"mc02_031souko2b.nss"
//◆さよ　"mc02_031souko2c.nss"


}


//――――――――――――――――――――――――――――――
.//◆※香奈枝いる·二回目以降、兵士ＫＯ前
//◆香奈枝合流_Flagと倉庫２一回目_Flagがあり、かつ兵士気絶_Flagがない場合
..//mc02_031souko2_ks.nss
scene mc02_031souko2_ks.nss
{

	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "Black");
	SoundPlay("@mbgm21",0,1000,true);
	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090a]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0190a04">
（凑斗大人）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090b]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0200a00">
（……难道，又来了？）

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031so0210a04">
（是。
　不知道是刚刚那些人苏醒了，还是又有新的一批
士兵前来……）

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031so0220a00">
（…………）

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031so0230a03">
（如何处理？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　门对面的脚步声正在朝我们靠近——
已无暇躲藏。
　既然如此，我们只能先发制人。

　那么，这次由谁上？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆→同じ選択

..//ジャンプ指定
//◆景明　"mc02_031souko2a.nss"
//◆香奈枝　"mc02_031souko2b.nss"
//◆さよ　"mc02_031souko2c.nss"


}




//――――――――――――――――――――――――――――――
.//◆※兵士完全ＫＯの場合
//◆兵士気絶_Flagがある場合、たぶん最優先処理
..//mc02_031souko2_ksk.nss
scene mc02_031souko2_ksk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg081_飛行船船室Bb_01b.jpg");

	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);

	Wait(300);

//◆倉庫２

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text010]
　……房间还是先前看到的那副光景。
　倒在地上的士兵也毫无变化。

　我们回到走廊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆→●廊下２
..//ジャンプ指定
//次ファイル　"mc02_031rouka2.nss"

}


//------------------------------------------------------------//
//No_Flag
.//SELECT1
scene mc02_031souko2.nss_SELECT1
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_飛行船船室Bb_01b.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(6);
//■選択肢
	SetChoice02("船尾","向左");
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
//●船尾→●倉庫１　"mc02_031souko1.nss"
				$GameName = "mc02_031souko1.nss";
//移動確認用フラグ
				$廊下移動 = false;
				$倉庫２移動 = true;
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●左へ→●廊下２　"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
	}
}

//------------------------------------------------------------//
//k
.//SELECT2
scene mc02_031souko2.nss_SELECT2
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg082_飛行船廊下_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice03("景明","香奈枝","纱代");
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
			ChoiceA03();
//◆景明　"mc02_031souko2a.nss"
				$GameName = "mc02_031souko2a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆香奈枝　"mc02_031souko2b.nss"
				$GameName = "mc02_031souko2b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆さよ　"mc02_031souko2c.nss"
				$GameName = "mc02_031souko2c.nss";
		}
	}

}


