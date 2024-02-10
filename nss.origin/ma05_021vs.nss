//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//フラグチェック用
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma05_021vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma05_021vs.nss","Debug_Select",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		if($Return_ma05_021vs == true){}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev925_野太刀断片_f=true;

	//▼ルートフラグ、選択肢、次のGameName
	#aw_村正=true;
	#aw_銀星号=true;


//	$英雄編終了 = true;
//	$復讐編終了 = true;
//	$魔王編解放 = true;
//	$一条死亡 = true;
//	$香奈枝死亡 = true;
//	$Ichizyou_Flag = 1;
//	$Ichizyou_Flag = 4;
//	$Kanae_Flag = 1;
//	$Kanae_Flag = 4;
//	$Muramasa_Flag = 1;
//	$Muramasa_Flag = 4;

//◆ヒロイン殺害判定
//◆アナザー好感度はシナリオクリア状況によって変動。
//◆一條と香奈枝の両方をクリア済みでないなら、両者
//◆のルート必要値以下に設定。つまりどちらかをここ
//◆で殺す、あるいはバッド行きの二択に。
//◆両ルートクリアしている場合はルート必要値以上に
//◆設定。

//嶋：上記の内容を下記に修正いたしました【090909】
//一条、香奈枝両者生存の上で一条の好感度が３以上だった場合→英雄編
//一条生存、香奈枝死亡の上で一条の好感度が３以上だった場合→英雄編
//香奈枝生存、一条生存の上で香奈枝の好感度が３以上だった場合→復讐編
//↑※ただし、一条は死亡。
//香奈枝生存、一条死亡の上で香奈枝の好感度が３以上だった場合→復讐編
//一条、香奈枝の両ルートをクリアし、両者が生存し、村正の好感度が３以上
//だった場合→魔王編
//それ以外→バッド

	RouteChicker();

	if($Ichizyou_Flag >= 3 || $Kanae_Flag >= 3 || $Muramasa_Flag >= 3){

		if($RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
//嶋：英雄編確定
			$PreGameName = $GameName;
			$GameName = "ma05_022.nss";
		}else if($RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
//嶋：復讐編確定
//嶋：一条生存確認
			if($一条死亡 == true){
					$PreGameName = $GameName;
					$GameName = "ma05_022.nss";
			}else{
				$一条死亡 = true;
				judgment_of_count();
				$Next_deadGame = "ma05_023.nss";
				$GameName = "mz01_001.nss";
			}
		}else if($RC_N["村正"] < $RC_N["香奈枝"] && $RC_N["村正"] < $RC_N["一条"]){
//嶋：魔王編確定
			$PreGameName = $GameName;
			$GameName = "ma05_022.nss";
		}
	}else{
//嶋：好感度が一定値以下の為、bad
//$badEnd_Flag = 殺害スクリプト内判定用
		$badEnd_Flag = true;
		$PreGameName = $GameName;
		$GameName = "mz01_003.nss";
	}

}

scene ma05_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//デバッグ選択肢用
//	Debug_Select();


..//ジャンプ指定
//前ファイル　"ma05_020.nss"
	PrintBG("上背景", 30000);

	CreateColorSP("絵色白", 5000, "#FFFFFF");

	CreateTextureSP("絵ＥＶ上効果", 3030, Center, InBottom, "cg/ev/resize/ev139_統を殺害_al.jpg");
	CreateTextureSPadd("絵ＥＶ上", 3020, Center, InBottom, "cg/ev/resize/ev139_統を殺害_al.jpg");
	CreateTextureSP("絵ＥＶ", 3010, Center, InBottom, "cg/ev/resize/ev139_統を殺害_cl.jpg");
	CreateTextureSP("絵効果", 3000, Center, Middle, "cg/ev/ev139_統を殺害_c.jpg");


	Delete("@絵フラ");
	Delete("上背景");

	Move("絵ＥＶ*", 5000, @0, -65, DxlAuto, false);
	FadeDelete("絵色白", 1000, true);
	Wait(300);
	Fade("絵ＥＶ上効果", 1500, 0, null, true);
	Fade("絵ＥＶ上", 1500, 0, null, true);
	WaitAction("絵ＥＶ*", null);
	Wait(500);
	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0010b41">
《什么……
　怎么可能!?》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0020b41">
《不可能！
　根本没有人能敌得过安息!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0030b41">
《为何!!
　你这家伙，为什么——!?》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0040a00">
《……你给我看的安乐……》

{	SoundPlay("@mbgm12",0,1000,true);
	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0050a00">
《是被我亲手斩断的！
　是被我亲手杀死的!!》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0060a00">
《我早已失去……
　沉眠安息的权利!!》

{	FwR("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0070b41">
《唔啊——!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	CreateSE("SE01a","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "#FFFFFF");
	CreateTextureSPadd("絵演ＥＶ覆", 3110, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	CreateTextureSP("絵演ＥＶ", 3100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	FadeDelete("絵色白", 500, false);
	FadeDelete("絵演ＥＶ覆", 1000, true);
	Delete("絵効果");

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014a]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0080a00">
《吉野御流合战礼法“雪降”之崩裂……》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateSE("SE01L","se特殊_電撃_帯電02");
	MusicStart("SE01L",0,1000,0,800,null,true);
	CreateTextureSP("絵演", 3200, -250, -270, "cg/ev/resize/ev905_村正電磁撃刀_cm.jpg");
	CreatePlainEX("絵板写", 5000);
	SetBlur("絵板写", true, 2, 500, 30, false);
	Fade("絵板写", 0, 500, null, true);
	FadeDelete("絵板写", 2000, false);
	Zoom("絵板写", 2000, 1500, 1500, null, false);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014b]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0090a00">
《电磁击刀——“威”。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1600, 0, null);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵色白", 2000, 1000, null, true);

//◆レールキャノン一閃
//◆ぞがーん
	MovieSESet(20000,"mv威","se特殊_mv用_電磁抜刀_威");
	MovieSEStart(2000);

	PrintGO("上背景", 19000);
	CreateColorSPadd("絵色白", 18000, "#FFFFFF");

	CreateTextureSP("絵背景", 100, Center, -970, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	Delete("上背景");
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0100b41">
《啊……哈……》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0110b41">
《哈……哈哈哈！
　可怕……太可怕了！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0120b41">
《村正！
　果然，你才是恶鬼！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0130b41">
《自愧不如！　我青江自愧不如！
　我承认……你才是最令人诅咒的武者!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0140b41">
《呵呵呵！
　啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈!!》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0150a00">
《……那么，回答我的问题。
　笑面青江。》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0160a00">
《光——
　银星号在何处！》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0170b41">
《哈哈……
　白银之……星……》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0180a00">
《在何处!?》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0190b41">
《她在……
　…………六波罗的…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼーん。散華
	SetVolume("@mbgm*", 3000, 0, null);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 11100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 11000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵演上", 0, 1100, 1100, Dxl1, false);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵黒幕");

	Zoom("絵演上", 300, 1250, 1250, Dxl1, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);
	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0200a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0210a01">
《主君……
　这是野太刀刀身碎片。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0220a00">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆刀身断片その２。げっと。
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev925_野太刀断片_f.jpg");
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0230a01">
《……还有一片。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0240a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0250a01">
《主君？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0260a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0270a01">
《……主君……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町b_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……两年前。
　那之后——

　像是被养母的遗言驱使一般，我向镇里走去。
　寻找光的下落。

　然而，我看到的却是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆滅びの町
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　尸横遍野的镇子。

　大家都死了。
　都死在那里。

　无论镇民。
　还是山贼。

　没有一个活口。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0280a00">
「……为什么……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0290a01">
《…………》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0300a00">
「……光也……难道。
　也做了和我一样的事情……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0310a00">
「杀了山贼……
　然后按照所杀的数量把镇里的人都……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0320a01">
《山贼是指全副武装的那些家伙？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0330a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0340a01">
《那就怪了……
　数量不合。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0350a01">
《非山贼之人明显较多。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0360a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　的确如此。
　倘若山贼和镇民死亡的人数相同，倒还合情合理……
但，人数理应远比山贼多的镇民全都死光了，意味着什
么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0370a01">
《……是发狂了吗？》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0380a00">
「……发狂？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0390a01">
《正是。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0400a00">
「光……因为杀了镇民而大受打击，
继而发狂……于是就……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0410a01">
《不。
　单单如此，尚不及全灭。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0420a01">
《看。
　死尸看来是否多为……互相残杀所致？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0430a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　看起来是这样的。
　镇里的人和山贼……不止如此。镇子里的人看上去似
乎也是互相残杀的模样。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0440a00">
「也就是说……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0450a01">
《……二世村正拥有可怕之力。
　污染周围人心之力。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0460a00">
「……污染？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0470a01">
《对。
　恐怕是由于令妹发狂——》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0480a01">
《继而，狂念通过二世村正之力散布镇中。
　故而……致此。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0490a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0500a01">
《……这种事过去也曾有过一次。
　故将二世村正封印……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0510a01">
《……将我三世村正一同封印……
　为的是如若旧事重演，以我之力阻止二世村
正。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0520a01">
《主君。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0530a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0540a01">
《你可是必寻二世村正的操控者？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0550a00">
「……是啊。」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0560a00">
「没错。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	#aw_村正=true;
	#aw_銀星号=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　——光就拜托你了。
　因为这是养母最后嘱托我的话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0570a01">
《我亦必寻二世村正。
　——同去可好。》

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0580a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0590a01">
《你可以恨我。
　但，而今你需要我。正如我需要你。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0600a00">
「你吗……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　怎么会……
　我需要被诅咒的剑胄？

　我没有将养母的死转嫁他人之意。
　的确，如光所言，无论何种剑胄，终究不过是武器而
已。不管是被诅咒还是别的什么，只不过是道具罢了。
罪责由使用它们的人类承担。

　我很清楚这副剑胄是灾祸之物，应憎恨之人，除了使
用它的凑斗景明外不做他想。
　话虽如此……今后必须与此剑胄相伴的理由之类——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0610a01">
《没错。
　二世村正之污染能力，不能波及武者。
……但若用“卵”，可将武者化为其分身。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0620a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0630a01">
《能不为其力所惑者，世间唯我三世而已。
　故此……你毫无选择余地。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0640a01">
《……若你已然放弃所有，则另当别论。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0650a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　放弃——
　怎么可能放弃。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0660a00">
「……六波罗……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0670a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0680a00">
「那家伙是这么说的吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0690a01">
《正是……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0700a00">
「追。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0710a01">
《是。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);
	SoundPlay("@msong01_inst",0,1000,true);

	CreateColorSP("絵色黒弐", 2000, "#000000");
	CreateTextureSP("絵演出壱", 3000, Center, Middle, "cg/ev/ev139_統を殺害_b.jpg");
	SetTone("絵演出壱", Sepia);

	Wait(5000);

	FadeDelete("絵色黒", 1500, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180a]
　那之后，过了两年。
　我们一直在追寻光——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演出弐", 2990, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	SetTone("絵演出弐", Sepia);
	FadeDelete("絵演出壱", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180b]
　光在各地引发<RUBY text="····">全灭事件</RUBY>。
　开始被人们称为银星号。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演出参", 2980, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	SetTone("絵演出参", Sepia);
	FadeDelete("絵演出弐", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180c]
　我时而与光相遇。
　时而擦肩而过。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演出四", 2970, Center, Middle, "cg/ev/ev503_村正抜刀剣光.jpg");
	SetTone("絵演出四", Sepia);
	FadeDelete("絵演出参", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180d]
　我毁掉光散布的“卵”。
杀了恰好是“卵”<RUBY text="····">一倍数量</RUBY>的人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演出*", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180e]
　然而……
　仍未能阻止光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,@512,@0,null,false);

	CreateTextureSP("絵演背", 500, InLeft, InBottom, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	CreateTextureSP("絵演立", 1000, -2251, -147, "cg/st/3d村正標準_騎航_通常3b.png");
	Shake("絵演立", 3600000, 2, 1, 0, 0, 1000, Dxl2, false);
	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Move("絵演背", 150000, -487, -288, null, false);
	FadeDelete("絵色黒弐", 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0720a00">
「……下次一定要成功。
　不能……让灾难继续扩散了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0730a01">
《……嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我宣誓般低语着。
　我和剑胄，都深知这是伪善。

　正是因我（村正）才招致灾难。
　今后——将给不知何方的某个人带去灾难。

　担起一桩杀恶之罪。
　背负一桩杀善之罪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0740a00">
「走吧……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0750a01">
《嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	Zoom("絵演立", 2000, 500, 500, null, false);
	Move("絵演立", 300, @90, @0, Dxl1, false);
	WaitKey(500);
	Delete("絵演立");
	CreateColorEX("絵色黒", 5500, "#000000");
	FadeDelete("絵色白", 2000, false);
	Fade("絵色黒", 3000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我就是村正。
　是灾祸之武者。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@m*", 2500, 0, null);

	ClearWaitAll(2000, 2000);

//◆ヒロイン殺害判定
//◆アナザー好感度はシナリオクリア状況によって変動。
//◆一條と香奈枝の両方をクリア済みでないなら、両者
//◆のルート必要値以下に設定。つまりどちらかをここ
//◆で殺す、あるいはバッド行きの二択に。
//◆両ルートクリアしている場合はルート必要値以上に
//◆設定。



}



function Debug_Select()
{

	Conquest("nss/"+ModuleFileName(),"debug_select",true);

//デバッグ選択肢用
	if($GameDebugSelect == 1)
	{
		SetChoice06(魔王編,英雄編·香奈枝生存,英雄編·香奈枝死亡,復讐編·一条生存,復讐編·一条死亡,バッドエンド);
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
				ChoiceA06();
				$魔王編解放 = true;
				$Muramasa_Flag = 3;
				$Kanae_Flag = 2;
				$Ichizyou_Flag = 2;
			}
			case @選択肢２
			{
				ChoiceB06();
				$Ichizyou_Flag = 3;
			}
			case @選択肢３
			{
				ChoiceC06();
				$香奈枝死亡 = true;
				$Ichizyou_Flag = 3;
			}
			case @選択肢４
			{
				ChoiceD06();
				$Kanae_Flag = 3;
			}
			case @選択肢５
			{
				ChoiceE06();
				$一条死亡 = true;
				$Kanae_Flag = 3;
			}
			case @選択肢６
			{
				ChoiceF06();
//				$Muramasa_Flag = 1;
				$Kanae_Flag = 5;
				$Ichizyou_Flag = 2;
			}
		}
	//デバッグモード解除
	$GameDebugSelect = 0;
	}


}



//◆２３４５６７８９０１２３４５６７８９０１２３４







