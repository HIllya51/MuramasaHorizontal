//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031shikann.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();


	//▼イベントＣＧ
	#イベントファイル名=true;

//嶋：デバッグフラグ
//$酒_Flag=false;
//	$香奈枝合流_Flag=true;
//	$振動_Flag=true;

	//▼ルートフラグ、選択肢、次のGameName
	if($酒_Flag==false){
		if($香奈枝合流_Flag==true){
			if($振動_Flag==true){
				if($艦長泥酔_Flag==true){
					call_scene @->mc02_031shikann_No.nss;
					$shikann_k=false;
					$shikann_No=true;
				}else{
					call_scene @->mc02_031shikann_k.nss;
					$shikann_k=true;
					$shikann_No=false;
				}
			}else{
				call_scene @->mc02_031shikann_No.nss;
				$shikann_k=false;
				$shikann_No=true;
			}
		}else{
			call_scene @->mc02_031shikann_No.nss;
			$shikann_k=false;
			$shikann_No=true;
		}
	}else{
		call_scene @->mc02_031shikann_No.nss;
		$shikann_k=false;
		$shikann_No=true;
	}


	if($shikann_k==true){
		$PreGameName = $GameName;
		$GameName = "mc02_031rouka1.nss";
		$酒_Flag = true;
		$shikann_k=false;
		$shikann_No=false;
	}else if($shikann_No==true){
		$PreGameName = $GameName;
		$GameName = "mc02_031rouka1.nss";
		$shikann_k=false;
		$shikann_No=false;
	}

//	$Next_GameName = $GameName;
//	$GameName = "mc02_031time.nss";

}

scene mc02_031shikann.nss
{
..//ジャンプ指定
//前ファイル　"mc02_031rouka1.nss"

//●士官室
//◆香奈枝合流、振動、酒の３つのフラグが絡みます
//◆振動は香奈枝が合流しないと発生しません

}

//――――――――――――――――――――――――――――――
.//◆※振動フラグなし
//嶋：または酒_Flagをすでにとっている場合
//◆振動_Flagがない場合
scene mc02_031shikann_No.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Aa_01a.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　看起来像是士官室。
　十分狭小，但却不失品质。

　然而，完全感觉不到人的体温。房间就像无人居住的
样板房，毫无生气可言，家具都是冰冷的。
　这房间的主人并非暂时离席，而是从一开始就没有参
加作战吧。

　目之所及，只有桌子和床……
　还有镶着风景画的画框。晃晃悠悠地摆动着，大概是
因为舰船的移动吧，不过似乎原本挂得就不稳定。说不
定什么时候就会掉下来。

　并未发现可疑物品，比如炸弹之类的。
　去其他地方继续寻找才是上策。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆→●廊下１

..//ジャンプ指定
//次ファイル　"mc02_031rouka1.nss"

}

//――――――――――――――――――――――――――――――
.//◆※振動フラグあり、酒入手前
//◆振動_Flagがあり、かつ酒_Flagが無い場合
scene mc02_031shikann_k.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se日常_建物_扉開く01", 1000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ad_01a.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　似乎是士官室。
　没有人影。也没什么可疑之处——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031sh0010a03">
「……咦？
　景明大人，看那个。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031sh0020a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　镶着再普通不过的风景画的画框，倒在地板上。
　房间已经全部收拾整理过，画框也不可能一开始
就是那个样子。

　是因为什么缘故才掉下来的吧。
　原本是——<k>挂在那里的吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031sh0030a04">
「是暗格吗？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031sh0040a00">
「好像是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　在墙壁的一角，挖出一个方形的空洞作为储物空间。
挂画框的钩子就在那上方。
　也就是说，画框挂在那里，目的是为了隐藏后面的
暗格。

　我走向暗格，拿出里面的东西一看究竟。
　
　……是酒瓶。

　标签上的文字是英语。
　上面还画着身穿像是伦敦塔卫兵队服装的士兵
图案。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031sh0050a03">
「是英格兰人啊。」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031sh0060a04">
「东西似乎还不错。
　那么，凑斗大人，如果要喝的话，最好用什么
把它弄开。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031sh0070a00">
「我不喝。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　虽然不喝……
　不过还是先拿着吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆フラグ調整
//◆$酒_Flag = true;

//◆→●廊下１

..//ジャンプ指定
//次ファイル　"mc02_031rouka1.nss"




}
