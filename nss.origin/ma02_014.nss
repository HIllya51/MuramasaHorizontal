//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_014.nss_MAIN
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
	#bg023_弥源太の家_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_013a.nss"
//前ファイル　"ma02_013b.nss"
//前ファイル　"ma02_013c.nss"

//◆合流

	PrintBG("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……看来只好随她喜欢了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140010a03">
「也请您用名字称呼我吧。
景明大人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140020a00">
「谢谢您，中尉。」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140030a03">
「……不客气……」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140040b06">
「中尉？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　身旁的鲋模仿着发音。
　大概是很感兴趣吧，从吃饭之前开始她就一直目不转睛
地盯着刚才的来访者看。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140050b06">
「中尉。」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140060a03">
「是？
　怎么了？」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140070b06">
「好大啊……」


{	FwC("cg/fw/fw香奈枝_ショック.png");
	OnSE("se擬音_コミカル_ガーン01",1000);
	SetComic(@0,@0,8);}
//◆ガーン
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140080a03">
「咳啊!?」


{	DeleteComic();
	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140090a04">
「啊啊，大小姐得了急性肺结核!?」


{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140100b05">
「鲋、鲋鲋、鲋——！
　你对女性说什么呢！」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140110a03">
「咳、咳、咳咳……！」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140120a04">
「啊啊啊大小姐，这就是红颜薄命吗，
真是可惜……至少也该安然地逝去啊。
纱代我会为您祈冥福的。」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140130a03">
「才、才、不会死呢。说句话我哪会死啊。
　这、这种程度的打击，我大鸟香奈枝才
不会……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140140a04">
「不愧是大小姐。请您务必不要介怀。
　这充其量也就是被纯真的孩子怀着坦率的心情
单纯地指出事实而已。」


{	FwC("cg/fw/fw香奈枝_ショック.png");
	OnSE("se擬音_コミカル_ガーン02",1000);
	SetComic(@0,@0,8);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140150a03">
「嘎啊!?」


{	DeleteComic();
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140160a04">
「大小姐!?　您并发心脏病了吗!?」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140170a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　香奈枝小姐的身高估计有一七〇厘米以上。
　身为女性这确实是相当高的身高了。鲋对此感到
惊讶也合乎情理。

　……她不能虚怀若谷地接受这一说法，也是合情
合理的。
　在通俗的价值观下看来，女性还是娇小点比较惹
人怜爱。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140180a01">
《大惨案啊。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140190a00">
（总感觉有人在煽风点火啊）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140200a01">
《但是说实在的，我也有同感。
　我还在世的时候，就算是男人也没有
那么高的身高。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140210a00">
（最近也不那么少见了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140220a01">
《是因为吃的东西不一样了吗？》

{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140230b05">
「对不起、对不起。
　这孩子真的没有恶意。只是
那个，她不够机灵……」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140240a03">
「呵、呵呵。
　行了行了。我一点儿也不在意。」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140250a04">
「是啊，是啊，请别在意。
　这孩子是个诚实不说谎话的好孩子嘛，
对吧大小姐。」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140260a03">
「你知道这把枪的扳机很容易走火吗!?」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140270b05">
「对、对、对不起!!」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140280a03">
「没、没什么。什么事都没有哦。
　哦呵呵呵呵。」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140290b06">
「中尉，好大。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140300a04">
「没错呢，很大呢。」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140310a03">
「呵、呵呵呵呵…………呜呜呜……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140320a01">
《……真可怜。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　确实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140330b05">
「但、但是，你们看。
　您跟武士大人站在一起很合适呢。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140340a00">
「？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140350b05">
「武士大人也是仪表堂堂。
　二位在一起看上去真的如画一般。」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140360a03">
「哎呀？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140370a04">
「呵呵。
　发现高的优点了呢。」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140380b06">
「哦～
　般配？」


{	CreateSE("SE01","se擬音_コミカル_ぷに");
	FwC("cg/fw/fw香奈枝_照れ.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetComic(@0,@0,13);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140390a03">
「啊……」


{	DeleteComic();
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我和大鸟中尉？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}


//◆選択：なるほど／むしろ綾弥の方が……／俺には村正だろう
//◆奈：090323変更。村正選択肢は２ルートクリア後のみ


.//ジャンプ指定
//◆なるほど　"ma02_014a.nss"
//◆むしろ綾弥の方が……　"ma02_014b.nss"
//◆俺には村正だろう　"ma02_014c.nss"

//★選択肢シーン
scene ma02_014.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//■選択肢
//なるほど　"ma02_014a.nss"
//むしろ綾弥の方が……　"ma02_014b.nss"
//俺には村正だろう　"ma02_014c.nss"

	if(#魔王編解放==true){SetChoice03("原来如此","不如说绫弥更加……","对于我来说还是村正吧");}
	else{SetChoice02("原来如此","不如说绫弥更加……");}
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

		if(#魔王編解放==true){
		case @選択肢１{ChoiceA03();$GameName = "ma02_014a.nss";}
		case @選択肢２{ChoiceB03();$GameName = "ma02_014b.nss";}
		case @選択肢３{ChoiceC03();$GameName = "ma02_014c.nss";}
		}else{
		case @選択肢１{ChoiceA02();$GameName = "ma02_014a.nss";}
		case @選択肢２{ChoiceB02();$GameName = "ma02_014b.nss";}
		}
	}
}

