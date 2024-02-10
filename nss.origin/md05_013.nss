//<continuation number="60">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_013.nss_MAIN
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
	#bg058_曇空b_01=true;
	#bg108_荒れ狂う海b_00=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_012b.nss"


//◆暴風雨。bg058b
//意図的にBGMなしにしています。 inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("白", 25000, "WHITE");

	OnBG(100, "bg058_曇空c_01.jpg");
	FadeBG(0, true);

	CreateSE("暴風", "se自然_風_暴風");
	MusicStart("暴風", 0, 1000, 0, 1000, null,true);

	CreateTextureEX("ワープ演出", 4500, @0, @0, "cg/bg/bg058_曇空c_01.jpg");
	Zoom("ワープ演出", 0, 1500, 1500, null, true);
	DrawEffect("ワープ演出", 50, "SuperWave", 0, 500, null);
	Fade("ワープ演出", 0, 500, null, true);

	Delete("上背景");

	FadeDelete("白",1500,true);

	Fade("ワープ演出", 1000, 0, null, true);
	Delete("ワープ演出");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　狂风大作。
　密集袭来的雨水的压力，如同沙尘暴。

　铁的骑体如同树叶那般，左右飞舞，在无形之手
的操控下，激烈且危险地狂舞。
　是想为背景点缀吗，雷声轰鸣起来——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0130010a00">
「这次是在暴风雨中吗！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0130020a01">
《容我打断一下，这可不是我选择的目标！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　无用的抱怨，多余的辩解，互相争论的我和村正。
　毋庸置疑，不是表现心理上的优势，硬要说的话，
恰恰相反。

　……再多点时间，跳向更好的时空间。
　若不行，至少尽快带我们到下一个时空间。

　胸中除了对目的地的无望，什么也不想。
　作为战场之王的武者，对自然现象也无所适从。

　修正力怎么还不运作。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0130030a01">
《主君！
　喂，看那个！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0130040a00">
「下方？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「演出：アイデアメモ、大き目の背景で最初は海を見せる、テキスト進めながらＰａｎして大きめに船を表示、しばらくしたら通常サイズで全体を表示」

//■resize背景待ち inc櫻井
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	CreateTextureSP("船", 15000, @0, @0, "cg/bg/resize/bg108_荒れ狂う海b_00l.jpg");


	OnBG(100, "bg108_荒れ狂う海b_00.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");
	Move("船", 10000, @-400, @-150, null, false);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　极目远眺。
　接着才发现，下方的是大海而非陆地。

　海面上的狂暴席卷不输于空中，一艘并不巨型的船
漂浮着。<k>
　
　船…………<k>{FadeDelete("船", 1000, false);}船？

　的确是船。
　但，未曾见过那模样的船。

　比我了解的任何船舶，都更为精致——有着先进的
构造。
　
　……这里是，未来吗?!

　方才的古城在当下并不存在，那是过去。
　根据那船来推测，此空间同我的时代相比——
是时间上推进了约几年或是数十年的世界。

　若真如此，便最好。
　存在人类世界未被“神”所灭亡的证据——<k>但是，
并不确定是否是未来，也可能跃至了
<RUBY text="·······">无法想象的未来</RUBY>。

　现状已脱离我的理解范围。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0130050a01">
《那艘船……要沉了？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0130060a00">
「是啊……马上。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　虽然是艘特别的船，但此刻和竹舟无异。
　只是被凶狠的波浪所吞噬着。

　要帮忙吧，从脑中排除了这个选项。
　这确实，会与此世界加深关联。

　不应该出手。
　这个时空的事情交给这个时空的人去解决，只能
放弃念头……

　但是，也能从另一方面思考。

　可以说，滞留在暴风雨中的自身，也和此世界关联着。
　在等待期间姿势控制不当，也可能坠落。

　进入那艘船的话，暂且能躲避风雨吧。
　或者，这是最不易与这时空间的现象产生关联的
方法吗……？

　那么，怎么办。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("暴風", 2000, 0, null);

//◆選択：ここに留まる／船上に降りる

}

..//ジャンプ指定
//◆ここに留まる　"md05_013a.nss"
//◆船上に降りる　"md05_013b.nss"



//★選択肢シーン
scene md05_013.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg108_荒れ狂う海b_00.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("留在这里","降落到船上");
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
//◆ここに留まる　"md05_013a.nss"
				$GameName = "md05_013a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆船上に降りる　"md05_013b.nss"
				$GameName = "md05_013b.nss";
		}
	}
}