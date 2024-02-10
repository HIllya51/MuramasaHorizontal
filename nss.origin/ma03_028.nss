//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_028.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	SatugaiSystem();
	judgment_of_count();

	if($その他死亡 == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeA";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$操殺害 = true;
		$GameName = "ma03_029.nss";

	}else if($香奈枝死亡 == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_002.nss";
	}else if($一条死亡 == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_001.nss";
	}else if($村正死亡 == true){
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeH";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
//		$Next_deadGame = "ma03_029.nss";
		$GameName = "mz01_003.nss";
	}else{
		$BasGameName = $GameName;
		$GameName = $GameName + "_routeA";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		$操殺害 = true;
		$GameName = "ma03_029.nss";
	}


}


scene ma03_028.nss
{

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");

	WaitKey();

..//ジャンプ指定
//前ファイル　"ma03_027vs.nss"

}


scene ma03_028.nss_routeH
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

.//●アナザー以外を選択の場合
//●アナザー以外を選択の場合
	PrintBG("上背景", 30000);
	OnBG(100,"bg038_サーキット直線_03.jpg");
	Delete("上背景");

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0280010a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0280020a01">
《是吗。
　我明白了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0280030a01">
《那么，至少……
　希望那孩子能够活下去。》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0280040a00">
「……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(0, 2000);

..//ヒロイン殺害スクリプトへ
//◆ヒロイン殺害スクリプトへ


}


//――――――――――――――――――――――――――――――
.//●アナザー選択の場合
//●アナザー選択の場合
scene ma03_028.nss_routeA
{


	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆黒画面
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	FadeDelete("上背景",500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——不论如何努力。
　仍旧无法对她心怀憎恨。

　也难以产生厌恶。
　甚至难以道出她这种做法的错误与不当之处。

　她是在对父亲恪尽孝道。
　为人如此，甚是美善。

　唯有遵从，唯有效力，唯有奉献——
　学者曾云，此举纵是忠孝之一，也决非
上善之举。

　对此见解，我深以为然。

　然而——
　面对他人一味愚孝，我实难妄下断言，称其幼稚。

　作为人类。
　抛开常理，我内心认为她无可厚非。

　——<RUBY text="··">所以</RUBY>。
　我必须杀死皇路操。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サーキット内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg038_サーキット直線_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　皇路操倒地身死。
　蓝色铁甲碎裂四散，周围宛若一片
紫罗兰花田。

　她的瞳孔已倒映不出我的身影。
　我明白她已不在此处。

　她已前往自己应去的世界。
　世界的尽头。
　前往只属于她一人的栖身之处。

　——音速领域的公主。
　她将再不会重返尘世。

　横臥于此的，是她的遗骸。
　供人缅怀凭吊。

　我挥刀将其斩断。
　完完全全地。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざぶしゅ。生々しい殺害音
	PrintGO("上背景", 5000);
	CreateColorSP("絵黒地", 10, "#000000");
	Delete("上背景");

	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	SL_down(@0, @0,1000);

	MusicStart("SE01a",0,1000,0,1100,null,false);
	SL_downfade2(10);
	WaitKey(300);
	CreateSE("SE01b","se人体_血_血しぶき01");
	CreateColorEX("絵血", 150, "#CC0000");
	Fade("絵血", 600, 1000, null, false);
	SL_centerdam(@0, @0,1000);
	MusicStart("SE01b",0,1000,0,1200,null,false);
	SL_centerdamfade2(10);
	WaitAction("絵血", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　——如此一来她便陨逝。
　唯有我的罪行留存世间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ヒロインキル終了後、合流
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_029.nss"