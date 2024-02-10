
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroa.nss_MAIN
{

//嶋：デバッグフラグ
//	$香奈枝合流_Flag=true;
//	$料理酒_Flag=true;

//嶋：材料決定ランダム
	$材料決定 = Random(101)+1;
	$材料名前 = "　";

	if($材料決定 <= 8){$豚肉_Flag=true;$材料名前="豚肉";}
	else if($材料決定 <= 16){$牛肉_Flag=true;$材料名前="牛肉";}
	else if($材料決定 <= 24){$羊肉_Flag=true;$材料名前="羊肉";}
	else if($材料決定 <= 32){$鹿肉_Flag=true;$材料名前="鹿肉";}
	else if($材料決定 <= 40){$兎肉_Flag=true;$材料名前="兔肉";}
	else if($材料決定 <= 48){$馬肉_Flag=true;$材料名前="马肉";}
	else if($材料決定 <= 56){$魚肉_Flag=true;$材料名前="鱼肉";}
	else if($材料決定 <= 64){$カニ_Flag=true;$材料名前="蟹肉";}
	else if($材料決定 <= 72){$果物_Flag=true;$材料名前="水果";}
	else if($材料決定 <= 80){$野菜_Flag=true;$材料名前="蔬菜";}
	else if($材料決定 <= 88){$熊肉_Flag=true;$材料名前="熊肉";}
	else if($材料決定 <= 94){$二足羊肉_Flag=true;$材料名前="双脚羊肉";}
	else if($材料決定 <= 98){$ウジ虫とダチョウ_Flag=true;$材料名前="蛆虫和鸵鸟肉";}
	else if($材料決定 <= 102){$ビヤーキー_Flag=true;$材料名前="拜亚基龙肉";}

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	if($香奈枝合流_Flag==true && $料理酒_Flag==true){
//◆フラグ分岐：デバッグのため選択肢にしてあります
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031daidokoroab.nss";
	}

}

scene mc02_031daidokoroa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	CreateSE("SE01","se日常_建物_扉開く01");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　有新鲜的<VALUE name=$材料名前>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//前ファイル　"mc02_031daidokoro.nss"


//●冷蔵庫
//◆ランダム要素で分岐

//◆ランダム

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");


.//◆※料理酒ある＋香奈枝いる
//◆香奈枝合流_Flagと料理酒_Flagが共にある場合

if($香奈枝合流_Flag==true && $料理酒_Flag==true){

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0010a03">
「觉得有点饿了。」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0020a04">
「如此说来，只顾着忙连早饭都忘记了。
　纱代失职……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0030a00">
「那好，简单地做点什么吧？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0040a03">
「哎呀，景明大人会做饭吗？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0050a00">
「会做些简单的。」

{	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0060a04">
「男人亲手做的料理很有魅力。
　大小姐，不如承蒙好意吧？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0070a03">
「好啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}

//◆選択：做饭／不做饭
//◆フラグが足りない場合は料理しないへ

..//ジャンプ指定
//◆料理する　"mc02_031daidokoroaa.nss"
//◆料理しない　"mc02_031daidokoroab.nss"


}



//★選択肢シーン
scene mc02_031daidokoroa.nss_SELECT
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
	SetChoice02("做饭","不做饭");
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
//◆做饭　"mc02_031daidokoroaa.nss"
				$GameName = "mc02_031daidokoroaa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆不做饭　"mc02_031daidokoroab.nss"
				$GameName = "mc02_031daidokoroab.nss";
		}
	}
}




//嶋：変数にて退避
/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆豚肉_Flag
　有新鲜的猪肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆牛肉_Flag
　有新鲜的牛肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆羊肉_Flag
　有新鲜的羊肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆鹿肉_Flag
　有新鲜的鹿肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆兎肉_Flag
　有新鲜的兔肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆馬肉_Flag
　有新鲜的马肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆魚肉_Flag
　有新鲜的鱼肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆カニ_Flag
　有新鲜的蟹肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆果物_Flag
　有新鲜的水果。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆野菜_Flag
　有新鲜的蔬菜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆熊肉_Flag
　有新鲜的熊肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆二足羊肉_Flag
　有新鲜的双脚羊肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆蛆虫とダチョウ_Flag
　有新鲜的蛆虫和鸵鸟肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆ビヤーキー_Flag
　有新鲜的拜亚基龙肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//?????????????????????????????

*/
