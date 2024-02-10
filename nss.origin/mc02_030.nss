//<continuation number="480">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_030.nss_MAIN
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
	#bg069_普陀楽城内広間_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//	#飛行船探索終了 = true;

	if(#飛行船探索終了){
			$SelectGameName="@->"+$GameName+"_SELECT";
			call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031start.nss";
	}


}

scene mc02_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_029.nss"


//◆広間？
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm12",0,1000,true);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg069_普陀楽城内広間_01a.jpg");

	Delete("上背景");
	DrawDelete("黒幕１", 300, 1000, "slide_03_00_0", true);

	StR(1000, @0, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300010a08">
「童心大人！
　狮子吼到底在做什么!?」


{	StL(1000, @0, @0, "cg/st/st童心_通常_私服b.png");
	FadeStL(300, false);
	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300020a09">
「这个。我也不知道。
　派遣使者前去询问，也没有回音……」


//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300030a09">
「就算我们去，也得不到答案。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300040a08">
「擅自动用军队……
　他该不会是要——谋反!?」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300050a09">
「那就怪了。
　特意做出露骨的危险举动，
也从不将矛头指向我们这些
理应接受制裁的人。」


//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300060a09">
「这种愚蠢的行为令人无法理解。
　我听说，以前狮子吼大人曾在大鸟家
叛乱，当时处理得迅敏且巧妙。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300070a08">
「……那……
　那个蠢才到底有什么企图。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300080a09">
「不知道……」


{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300090a08">
「真是的，白痴只要茶茶丸一人
就够了！
　真不知道那家伙在干什么！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300100a09">
「我今天没看到。
　雷蝶大人呢……？」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300110a08">
「吾也没看到。
　在这种情况复杂的时候，
去哪浪费时间了啊。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300120a09">
「……唔。」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300130a08">
「来人！」


{	OnSE("se日常_建物_スライド開く02", 1000);
	NwC("cg/fw/nw近習.png");}
//【ｅｔｃ／近習】
<voice name="ｅｔｃ／近習" class="その他男声" src="voice/mc02/0300140e054">
「是！」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300150a08">
「派去确认四郎——邦氏殿下安全的人
还没回来吗!?
　都去这么久了！」


{	NwC("cg/fw/nw近習.png");}
//【ｅｔｃ／近習】
<voice name="ｅｔｃ／近習" class="その他男声" src="voice/mc02/0300160e054">
「是、是……尚未归来……」


{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300170a08">
「你也去吧！」


{	NwC("cg/fw/nw近習.png");}
//【ｅｔｃ／近習】
<voice name="ｅｔｃ／近習" class="その他男声" src="voice/mc02/0300180e054">
「遵命！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走り去る


	CreateSE("ハシッテイキマス", "se人体_足音_走る07");
	MusicStart("ハシッテイキマス",0,1000,0,1000,null,true);
	WaitKey(1500);
	SetVolume("ハシッテイキマス", 1500, 0, Axl3);


	SetFwC("cg/fw/fw雷蝶_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300190a08">
「啊，受不了，怎么都一个德行……！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300200a09">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300210a09">
「……旧伤……复发了吗……」


{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300220a08">
「？
　童心大人，您怎么了？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300230a09">
「雷蝶大人。
　我们手边所剩下的士兵，应该
命其全部进行战斗配置。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300240a08">
「咦？
　可……可是。又不是说敌人会
攻过来。」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300250a09">
「若是真攻进来，就太迟了。
　……会来不及的，雷蝶大人。」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300260a08">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300270a09">
「我们应即刻让武者在天空警戒，布下防空阵。
　命令他们——逼退可疑的航空骑兵。」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300280a09">
「如若不听从劝告，就将其击毁。
不管对方是……
　幕军，还是进驻军。」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300290a08">
「这、这也太——粗暴了吧！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300300a09">
「没错，粗暴。
　以暴制暴。」

//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300310a09">
「对待破门而入的强盗，
我们是要规劝呢？
　还是将其一刀毙命，然后
念经超度对方呢。」

//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300320a09">
「只要对方真的是强盗就行了。
　就算是冤枉的，也无所谓。只要将其
说成是强盗就可以了——」

//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300330a09">
「执法之人总是拥有力量的一方。
　<RUBY text="···">只要赢</RUBY>一切就说得过去！」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300340a08">
「…………
　……童心大人……」


{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300350a08">
「这里将成为战场……
　您是这么认为的吗？」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300360a09">
「是谁布下的局，又是怎样的战斗，
我还不能断言。」


{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300370a08">
「吾明白了。
　那么吾从现在开始认为此为战争吧。」


//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300380a08">
「传唤武士大将集合！」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300390a09">
「请尽快。」


{	FwC("cg/fw/fw雷蝶_軍将.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300400a08">
「是——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵、駆け込んで来る
	CreateSE("ハシッテキマス", "se人体_足音_鎧_複数駆け寄る01");
	MusicStart("ハシッテキマス",0,1000,0,1150,null,true);
	WaitKey(3000);
	SetVolume("ハシッテキマス", 0, 0, Axl3);

	OnSE("se日常_建物_スライド開く02", 1000);

	SetNwC("cg/fw/nw竜騎兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300410e048">
「报、报——报告!!」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300420a09">
「何事！」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300430e048">
「啊——啊……」


{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300440a08">
「怎么了!?
　快说啊！」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300450e048">
「……银……
　————银——」


{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／急報の武者】
<voice name="ｅｔｃ／急報の武者" class="その他男声" src="voice/mc02/0300460e048">
「银星号!!
　突——突袭!!　我们的城堡!!」


{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mc02/0300470a09">
「————」


{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/mc02/0300480a08">
「你……
　你说什么……!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_031start.nss"

//スキップ用
scene mc02_030.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("黒", 100, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("跳过飞行舰探索","不跳过飞行舰探索");
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
//五階層方陣をスキップする
			$GameName = "mc02_031end.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//五階層方陣をスキップしない
			$GameName = "mc02_031start.nss";
		}
	}
}


