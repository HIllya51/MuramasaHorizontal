//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012.nss_MAIN
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
	#bg088_チェイテ城のホール_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_011.nss"


//◆ホワイトイン。西洋風古城の中。

//BGMなしはわざとです inc櫻井

	PrintBG("上背景", 30000);

	OnSE("se戦闘_動作_鉄壁吹っ飛ばす", 1000);
	CreateColorSP("上白幕", 30001, "WHITE");
	DrawTransition("上白幕", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	Delete("上背景");

//	CreateColorSP("白", 5000, "WHITE");

	OnBG(100, "bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0, true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg088_チェイテ城のホール_01b.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);

	FadeDelete("上白幕",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");

	Wait(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120010a01">
《……这里是……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……在哪里？

　不是富士山上空。怎么看都不会错。
　不止如此，似乎都不在大和国内。

　石砌的地板、墙面、天花板。
　与纯和风建筑的旨趣迥然相异。

　是西洋式的，或许在城堡一般的建筑物中。
　就算这么说，也无法断定这里
就是西洋的某一处……

　此建筑有着历经岁月的风格。
　越看越觉得，这定是欧洲传统贵族阶级所居住的城堡。

　…………真不合气氛。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0120020a00">
「村正，要等到何时？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120030a01">
《不要慌。快了。
　将我们从这个世界拉扯开的力量
在好好运作。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120040a01">
《所幸没有任何麻烦，就这样安静地——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(300);

	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆横書き
//◆顔グラなし
//【さよ】
<voice name="さよ" class="さよ" src="voice/md05/0120050a04">
「谁在那里？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

	Wait(300);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0120060a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120070a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　宛如打破平靜水面的呼吸，那声音向我袭来。
　从道路对面，暗黑的深处。

　女性的声音——接着是异国的语言。
　不同于英语。而是，和英语同一起源的欧洲语言。

　完全无法理解眼下这状况。
　但大致能想象。

//◆かつ、かつ。足音ループ

{	CreateSE("足音", "se人体_足音_歩く06");
	MusicStart("足音", 0, 1000, 0, 1500, null,true);}


　……原本轻微的脚步声，在石造建筑中响彻起
重重回音。
　
　向着我们所在的方位，径直逼近而来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0120080a01">
《主君……怎么办？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0120090a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　不能和这个世界的现象牵扯上。

　为了不卷入其中，不采取任何行动是最好的。
　但……什么都不做也会被牵扯上……

　现在？
　现在应该怎么做？

　脚步声每响起一次……
　我便全身汗毛倒立，是在警告我
正处于<RUBY text="·······">枪战的最激烈处</RUBY>吗————?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：待つ／逃げる

}

..//ジャンプ指定
//◆待つ　"md05_012a.nss"
//◆逃げる　"md05_012b.nss"



//★選択肢シーン
scene md05_012.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg088_チェイテ城のホール_01b.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("等待","逃跑");
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
//◆待つ　"md05_012a.nss"
				$GameName = "md05_012a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆逃げる　"md05_012b.nss"
				$GameName = "md05_012b.nss";
		}
	}
}