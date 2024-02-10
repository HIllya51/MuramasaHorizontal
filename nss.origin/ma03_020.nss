//<continuation number="260">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_020.nss_MAIN
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

//	$魔王編解放 = true;

	//▼ルートフラグ、選択肢、次のGameName

	if(#魔王編解放){
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$PreGameName = $GameName;
		$GameName = "ma03_020b.nss";
	}

}

scene ma03_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_019.nss"

//◆通路
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　堆满了金属零件的小手推车，就算从轻而言也绝
对是噪音污染。
　随着前进，就会响起嘎啦嘎啦吱呀吱呀的声音，在走
廊中产生回音的话简直是吵闹的极致。

　不过比赛中的维修区不分白天黑夜，永无安宁。
　维修工通宵达旦地挥动着铁锤，尽力将骑体调整到最
佳状态，而选手就伴着他们的铁锤声入睡。

　在这场没有指挥的铁琴演奏会中，手推车产生的那么
一点噪音，只不过是其中的一种声响罢了。
　不用给别人带来困扰，真是万幸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0200010a02">
「收集了很多东西呢。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200020a00">
「越是排名靠前的队伍就越是大方呢。
　他们很有财力，器材也很丰富。」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0200030a03">
「就算如此，应该也没什么地方有余力给敌人
雪中送炭的。
　警察队没有被他们看作是<RUBY text="··">敌人</RUBY>真是幸运
啊。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0200040a04">
「火箭无论如何改造也始终是火箭。充其量也
只能达到超级火箭的程度。
　再加上还遇到了事故，根本不用警戒。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　当然不会警戒。
　警察队理所当然地无法反驳，但他们对于警察队的轻
视也促成了我的计划。

　但是要从重要性来讲完全无法相提并论的另一个重要
的目的就完全没有收获了。
　……不，这其实也可以看作是一种收获。虽然完全不
值得高兴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200050a01">
《…………》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200060a00">
（别这样一言不发地只把不满的情绪传过来。
　太烦人了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200070a01">
《我很不满。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200080a00">
（我觉得自己这个方案没什么不好。
　以需要修理损坏的骑体为由，走访各个队伍
的机库收购他们多余的零部件）

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200090a00">
（趁此机会，你潜伏在货架上探查机库。确认
一下没出现在赛场的备用骑……
　应该没有什么问题。事实上，调查有进展）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不过到现在，还是没能发现寄生体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200100a01">
《没错。这是非常出色的作战。我也这么觉得。
　……到这里为止的部分。嗯，到这里为止。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200110a00">
（之后又有什么问题呢。
　另外就只有用收集到的零部件对你进行改装
了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200120a01">
《我就是不满这点!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正的剑胄传音击打着我的大脑。
　……视野摇晃起来。意识变得模糊。这不通过耳朵的
音程之外的剑胄传音，几乎和攻击一样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0200130a03">
「您怎么了？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200140a00">
「没事。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200150a00">
（……一箭双雕不是吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200160a01">
《在这个问题之前，为什么我必须要扮作山寨
货的样子还要去参加什么竞速比赛啊！
　就只有其中之一的话我还想忍忍的，为什么
二者都要做啊!?》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200170a00">
（没别的办法了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	#av_ホットボルト=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　如果我要出席明天的决赛，那也是为了要找出可能潜
伏在参加决赛的竞技用剑胄中的寄生体，在它孵化的那
个瞬间制止它。
　如果村正不装甲化的话就办不到了。

　但是，村正无论怎么看都是真打剑胄，就这样去参赛
是绝对不现实的。那样就成了公然宣称警察拥有了自己
的武装。
　所以才要改装。

　还好村正的颜色和造型并非和火箭完全不像。稍微改
装一下的话，就可能让别人以为是火箭的改装版。
　那样的话，就再好不过了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200180a00">
（——不对吗？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200190a01">
《………要参加决赛的那些人，我都已经全部
见过了吧？
　这中间没有寄生体。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200200a00">
（但如果调查好备用骑之后还是没能发现目标
的话，除了你的眼睛被蒙蔽住之外就没有别的解
释了）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200210a01">
《也许是藏在哪里的剑胄呢。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200220a00">
（我不否认有这种可能性。
　但你说过银星号是选择追求力量的人并给予
他们“卵”的）

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200230a00">
（无论出于什么理由，我不觉得它会选择一个
在赛场什么都不做只是藏起来的武者。
　还是参赛选手比较有可能）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200240a01">
《……唔唔……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　村正非常不服气地嘟囔着。
　感觉在理智上接受了但感情上还不能统一。
不过谈论剑胄的感情是一件很可笑的事情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0200250a00">
（听话）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0200260a01">
《……不要说得好像在教小孩子一样。
　唆使你的某人不是说去准备一个竞技用剑胄
了吗？　那么就把那个借过来不就好了……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　村正连这种话都说了出来。
　大概对于自己将要被用在比赛中，感觉非常的不愉快
吧。

　……虽然不是完全不能理解。
　要说的话，就好像是将刀用木头包起来当球棒使用一
样。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}

//◆選択：頼み込む／黙らせる
//◆奈：090323変更。頼み込む選択肢は２ルートクリア後のみ


..//ジャンプ指定
//◆フラグ分岐、フラグ成立時のみ選択肢出現？
//◆頼み込む　"ma03_020a.nss"
//◆黙らせる　"ma03_020b.nss"



//★選択肢シーン
scene ma03_020.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	SoundPlay("@mbgm30",0,1000,true);
		Fade("@boxCT",$BoxFadeTime,0,null,false);
		Fade("@boxCC",$BoxFadeTime,0,null,true);

	PrintGO("背景０", 30000);


	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice02("拜托村正","让村正闭嘴");
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
//頼み込む　"ma03_020a.nss"
				$GameName = "ma03_020a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//黙らせる　"ma03_020b.nss"
				$GameName = "ma03_020b.nss";
		}
	}
}

