
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokorob.nss_MAIN
{


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//嶋：デバッグフラグ
//	$香奈枝合流_Flag=true;
//	$ガスボンベ_Flag=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($香奈枝合流_Flag==true){
		call_scene @->mc02_031daidokorob_gk.nss;
		$daidokorob_gk = true;//香奈枝合流あり
		$daidokorob_g = false;//ガスボンベあり
		$daidokorob_No = false;//フラグなし
	}else if($ガスボンベ_Flag == true){
		call_scene @->mc02_031daidokorob_g.nss;
		$daidokorob_gk = false;//香奈枝合流あり
		$daidokorob_g = true;//ガスボンベあり
		$daidokorob_No = false;//フラグなし
//フラグ発生
		$ガスボンベ_Flag = false;
		$香奈枝合流_Flag = true;
	}else{
		call_scene @->mc02_031daidokorob_No.nss;
		$daidokorob_gk = false;//香奈枝合流あり
		$daidokorob_g = false;//ガスボンベあり
		$daidokorob_No = true;//フラグなし
	}



	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";
//嶋：フラグ初期化
	$daidokorob_gk = false;//香奈枝合流あり
	$daidokorob_g = false;//ガスボンベあり
	$daidokorob_No = false;//フラグなし

}


scene mc02_031daidokorob.nss
{

//嶋：回数判定？
..//ジャンプ指定
//前ファイル　"mc02_031daidokoro.nss"


//●コンロ
//◆ガスボンベ、香奈枝合流フラグで分岐


}

//――――――――――――――――――――――――――――――
.//◆※ガスボンベを持っていない場合
//◆ガスボンベ_Flagが無い場合
..//mc02_031daidokorob_No
scene mc02_031daidokorob_No.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……暖和。
　我在那里取了一会暖，烘暖了被晚秋清晨的凉意
冻僵的手指，把火熄灭。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}


//――――――――――――――――――――――――――――――
.//◆※ガスボンベを持っている場合
//◆ガスボンベ_Flagがある場合
..//mc02_031daidokorob_g
scene mc02_031daidokorob_g.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……且慢。
　现在，我携带的不是安全性低且陈旧
的液化气瓶吗……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆爆発。ぼーん。
	CreateTextureSP("絵背景120", 120, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	OnSE("se擬音_ギャグ_すっとび",1000);
	WaitKey(1300);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Shake("絵背景120", 2000, 15, 25, 0, 0, 1000, DxlAuto, false);
	OnSE("se擬音_コミカル_爆発01",1000);
	WaitKey(100);
	Fade("フラッシュ白",200,900,null,true);
	WaitKey(1300);
	OnSE("se擬音_雰囲気_ガラガラと崩れる02",1000);
	Fade("フラッシュ白",3000,0,null,false);
	WaitKey(2700);
	Shake("絵背景120", 1000, 3, 10, 0, 0, 300, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我在千钧一发之际，将气瓶扔向天花板。
　正因如此才没被烧伤。

　但，天花板因此而开了个洞。
　接着，有东西从洞里掉了下来。

{
	
	StL(1100, @-100, @15,"cg/st/stさよ_通常_私服.png");
	StC(1000, @-200, @15,"cg/st/st香奈枝_通常_制服a.png");

	FadeStC(1200,false);
	FadeStL(1500,false);
	Shake("@StL*", 1500, 2, 4, 0, 0, 500, AxlAuto, false);
	Shake("@StC*", 1500, 3, 3, 0, 0, 500, DxlAuto, false);
	Move("@StL*", 1700, @0, @-10, DxlAuto, false);
	Move("@StC*", 1200, @0, @-10, AxlAuto, false);
}
　掉下来的东西恰似烟熏过的人的模样，数目为两个。
　跟大鸟大尉和永仓侍从很像。

　是她们本人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("絵背景120");
	SetFwC("cg/fw/fw香奈枝_怒笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0410a03">
「呼、呼、呼……
　景明大人，您好。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0420a04">
「呵、呵、呵。
　哎呀，这是多么热烈的欢迎啊
——凑斗大人。」


{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0430a04">
「纱代我或许低估您了。
　竟然跟我们大小姐有如此
共同的强烈搞笑品味。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0440a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0450a00">
「怎么回事？」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0460a03">
「唔呼呼……
　潜伏于气囊内侧待机之时，听到似乎是
景明大人开始袭击的轰响，所以我们也开
始行动……」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0470a04">
「潜入时使用的路线被封锁了。
　但我们想方设法下到船体的天花板，正在烦恼
该怎么办的时候……」


{	FwC("cg/fw/fw香奈枝_驚き.png");}

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0480a03">
「突然，脚边发生了爆炸。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0490a00">
「哦。」


{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0500a04">
「庆幸的是天花板开了个大洞。高兴的是成功
逃出天花板，落在三米之下的地板上。感动的
是面前是凑斗大人，还有燃着火的炉灶和异样
的瓦斯味啊！」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0510a03">
「人生中最棒的
ＳＵＰＥＲ　ＨＡＰＰＹ　ＴＩＭＥ啊!!
　简直就像是大凶日与华尔普吉斯之夜一同
到来一样。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0520a00">
「这样啊。
　能帮上忙真是再好不过了。」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0530a03">
「嗯，是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　有些烫焦了的大鸟大尉点了点头。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0540a04">
「呵呵呵。
　太好了太好了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　有些烫焦了的永仓侍从笑了。

　……好吧。
　虽然逐渐化作物理波动的杀意漩涡束缚住我的脚，
让我寸步难行，但现在应该尽快转移。

　听到爆炸声的敌兵肯定会蜂拥而至。
　不管怎么说，我们得以会合，凭大鸟主从的能力
一定能重新搜索。

　或许会有新的发现。
　但前提是没有在这里被当场射杀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――




//◆ガスボンベ失い、香奈枝と合流

//◆フラグ調整
//◆$香奈枝合流_Flag = true;
//◆$ガスボンベ_Flag = false;


//◆→●移動

//次ファイル　"mc02_031daidokoroz.nss"

}

//――――――――――――――――――――――――――――――
.//◆※香奈枝と合流済み
//◆香奈枝合流_Flagがある場合、たぶん最優先処理
..//mc02_031daidokorob_gk
scene mc02_031daidokorob_gk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");

	Delete("上背景");

	CreateTextureSP("絵背景120", 120, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");

//◆ガスッ。大撲殺

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se戦闘_攻撃_殴る03",1000);
	WaitKey(550);
	Fade("フラッシュ白",0,1000,null,true);
	Shake("絵背景120", 300, 15, 15, 0, 0, 1000, Dxl3, false);
	Fade("フラッシュ白",300,0,null,true);

	Delete("絵背景120");


	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0550a03">
「景明大人真是的——
　用您那爱的火焰将我灼伤倒没关系，
但现在不是还有更该做的事情吗？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0560a04">
「确实如此，凑斗大人。
　如果有自焚的嗜好，请稍后进行，会为您准备
汽油和喷火瓶的。现在请先专心寻找炸弹。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0570a00">
「……是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我踉跄着站起身来。
　大鸟主从说的没错。现在的确不是玩火的时候。

　重要的是，在冰箱里被持续殴打可是关乎性命。
　剑胄的防御力也并非绝对的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}


