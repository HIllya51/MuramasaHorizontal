
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031daidokoroaa.nss_MAIN
{

//$豚肉_Flag=true;$材料名前="猪肉";
//$牛肉_Flag=true;$材料名前="牛肉";
//$羊肉_Flag=true;$材料名前="羊肉";
//$鹿肉_Flag=true;$材料名前="鹿肉";
//$兎肉_Flag=true;$材料名前="兔肉";
//$馬肉_Flag=true;$材料名前="马肉";
//$魚肉_Flag=true;$材料名前="鱼肉";
//$カニ_Flag=true;$材料名前="蟹肉";
//$果物_Flag=true;$材料名前="水果";
//$野菜_Flag=true;$材料名前="蔬菜";
//$熊肉_Flag=true;$材料名前="熊肉";
//$二足羊肉_Flag=true;$材料名前="双脚羊羊肉";
//$ウジ虫とダチョウ_Flag=true;$材料名前="蛆虫与鸵鸟肉";
//$ビヤーキー_Flag=true;$材料名前="拜亚基龙";

	$料理名前 = "　";
	$料理音声 = "　";

		if($豚肉_Flag==true){$料理名前 = "嫩煎猪排";$美味料理_Flag=true;$豚肉_Flag=false;$料理音声 = "031da0080a00";}
		else if($牛肉_Flag==true){$料理名前 = "煎牛排";$美味料理_Flag=true;$牛肉_Flag=false;$料理音声 = "031da0090a00";}
		else if($羊肉_Flag==true){$料理名前 = "羊肉烩饭";$美味料理_Flag=true;$羊肉_Flag=false;$料理音声 = "031da0100a00";}
		else if($鹿肉_Flag==true){$料理名前 = "焙烧鹿肉";$美味料理_Flag=true;$鹿肉_Flag=false;$料理音声 = "031da0110a00";}
		else if($兎肉_Flag==true){$料理名前 = "兔肉炒饭";$美味料理_Flag=true;$兎肉_Flag=false;$料理音声 = "031da0120a00";}
		else if($馬肉_Flag==true){$料理名前 = "马肉锅";$美味料理_Flag=true;$馬肉_Flag=false;$料理音声 = "031da0130a00";}
		else if($魚肉_Flag==true){$料理名前 = "鱼肉香肠";$美味料理_Flag=true;$魚肉_Flag=false;$料理音声 = "031da0140a00";}
		else if($カニ_Flag==true){$料理名前 = "蟹肉炒饭";$美味料理_Flag=true;$カニ_Flag=false;$料理音声 = "031da0150a00";}
		else if($果物_Flag==true){$料理名前 = "沛斯特泡芙";$美味料理_Flag=true;$果物_Flag=false;$料理音声 = "031da0160a00";}
		else if($野菜_Flag==true){$料理名前 = "凉拌卷心菜";$美味料理_Flag=true;$野菜_Flag=false;$料理音声 = "031da0170a00";}
		else if($熊肉_Flag==true){$料理名前 = "熊排骨";$熊料理_Flag=true;$熊肉_Flag=false;$料理音声 = "031da0180a00";}
		else if($二足羊肉_Flag==true){$料理名前 = "奇妙杂果";$二足羊料理_Flag=true;$二足羊肉_Flag=false;$料理音声 = "031da0190a00";}
		else if($ウジ虫とダチョウ_Flag==true){$料理名前 = "凉拌鸵鸟肉";$ダチョウ料理_Flag=true;$ウジ虫とダチョウ_Flag=false;$料理音声 = "031da0200a00";}
		else if($ビヤーキー_Flag==true){$料理名前 = "拜亚基龙的生刺身";$ビヤーキー料理_Flag=true;$ビヤーキー_Flag=false;$料理音声 = "031da0210a00";}

	$料理音声2 = "voice/mc02/" + $料理音声;
	$料理音声 = "mc02/" + $料理音声;


		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

//▼フラグ
//嶋：フラグ初期化
	$美味料理_Flag = false;
	$熊料理_Flag = false;
	$二足羊料理_Flag = false;
	$ダチョウ料理_Flag = false;
	$ビヤーキー料理_Flag = false;

	//▼ルートフラグ、選択肢、次のGameName
	$mc02_TimeCount = $mc02_TimeCount+30;

	$PreGameName = $GameName;

	$GameName = "mc02_031daidokoroz.nss";

}

scene mc02_031daidokoroaa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc02_031daidokoroa.nss"


//●料理する
//◆冷蔵庫の中身に対応したテキストを以下から選択


//◆料理っぽいＳＥ

//嶋：音声に合わせて修正【09/03/30】
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ac_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	Delete("上背景");

	OnSE("se擬音_コミカル_料理音02",1000);
	$残時間=RemainTime("@OnSE*");
	WaitKey($残時間);

	SetVolume("@OnSE*", 300, 0, null);

	StR(1000, @60, @0,"cg/st/3d村正標準_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");
	CreateVOICE("景明",$料理音声);

		if($料理名前 == "嫩煎猪排"){SetBacklog("「做好了。嫩煎猪排。」", $料理音声2, 景明);}
		else if($料理名前 == "煎牛排"){SetBacklog("「做好了。煎牛排。」", $料理音声2, 景明);}
		else if($料理名前 == "羊肉烩饭"){SetBacklog("「做好了。羊肉烩饭。」", $料理音声2, 景明);}
		else if($料理名前 == "焙烧鹿肉"){SetBacklog("「做好了。焙烧鹿肉。」", $料理音声2, 景明);}
		else if($料理名前 == "兔肉炒饭"){SetBacklog("「做好了。兔肉炒饭。」", $料理音声2, 景明);}
		else if($料理名前 == "马肉锅"){SetBacklog("「做好了。马肉锅。」", $料理音声2, 景明);}
		else if($料理名前 == "鱼肉香肠"){SetBacklog("「做好了。鱼肉香肠。」", $料理音声2, 景明);}
		else if($料理名前 == "蟹肉炒饭"){SetBacklog("「做好了。蟹肉炒饭。」", $料理音声2, 景明);}
		else if($料理名前 == "沛斯特泡芙"){SetBacklog("「做好了。沛斯特泡芙。」", $料理音声2, 景明);}
		else if($料理名前 == "凉拌卷心菜"){SetBacklog("「做好了。凉拌卷心菜。」", $料理音声2, 景明);}
		else if($料理名前 == "熊排骨"){SetBacklog("「做好了。熊排骨。」", $料理音声2, 景明);}
		else if($料理名前 == "奇妙杂果"){SetBacklog("「做好了。奇妙杂果。」", $料理音声2, 景明);}
		else if($料理名前 == "凉拌鸵鸟肉"){SetBacklog("「做好了。凉拌鸵鸟肉。」", $料理音声2, 景明);}
		else if($料理名前 == "拜亚基龙的生刺身"){SetBacklog("「做好了。拜亚基龙的生刺身。」", $料理音声2, 景明);}

//	SetBacklog("「做好了。是$料理名前。」", $料理音声, 景明);
	MusicStart("景明",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆豚肉_Flag == true;
//◆美味料理_Flag
//【景明】
//<voice name="景明" class="景明" src = $料理音声>
「做好了。
　<VALUE name=$料理名前>。」

</PRE>
	SetTextEXC();
	Request("@text0010",NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@景明", 0, 0, null);


	DeleteStR(300,true);

//◆※豚肉～野菜
//◆美味料理_Flag == true;
//◆選んだ食材が上記の場合は以下のテキスト

if($美味料理_Flag == true){

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0220a03">
「哇，好像很好吃。」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0230a04">
「了不起的手艺……
　实在非常钦佩，凑斗大人。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0240a00">
「倍感惶恐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

}else if($熊料理_Flag == true){

//◆※熊
//◆熊料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0250a03">
「这样的食物，本小姐我……唔咕唔咕唔咕。」


{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0260a04">
「完全上钩了，大小姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



}else if($二足羊料理_Flag==true){


//◆※二足羊
//◆二足羊肉料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0270a03">
「哎呀，这奇异的口感。」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0280a04">
「桃子或洋梨般的齿感，柔软而有弹力。
　仔细咀嚼会发现口感清爽，香味浓郁……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


}else if($ダチョウ料理_Flag==true){

//◆※蛆虫ダチョウ
//◆ダチョウ料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

	SetFwC("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0290a04">
「哦，本应是瘦鸵鸟肉却变成五花肉。」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0300a03">
「多么美味的肉！
　景明大人，这油脂到底是……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0310a00">
「等吃完再告诉你。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


}else if($ビヤーキー料理_Flag==true){

//◆※ビヤーキー
//◆ビヤーキー料理_Flag == ture;
//◆選んだ食材が上記の場合は以下のテキスト

//◆シャギャー。


	OnSE("se擬音_ギャグ_ビヤーキ鳴き声01",1000);
	WaitKey(1000);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0320a03">
「嘎—————!!」


{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0330a04">
「凑、凑、凑、凑斗大人！
　召唤龙的石笛、石笛在哪里!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0340a00">
「没有。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どすんばたん。シャギャー。
	OnSE("se戦闘_攻撃_乱戦02",1000);
	WaitKey(1000);
	OnSE("se擬音_ギャグ_ビヤーキ鳴き声01",1000);
	WaitKey(1000);

}


//◆合流
//◆上記分岐を全てこなしてここに合流
//◆全ての料理フラグを解除する？　使用した食材だけフラグ復帰しない？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　我们和睦地围着饭桌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	SetVolume("@OnSE*", 1000, 0, null);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0350a04">
「——话说回来。
　现在，本该比黄金还贵重的时间，就像
生活排水般白白流逝而去，对于这一事实
我们该怎么办？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0360a03">
「不怎么办。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0370a00">
「…………」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0380a00">
「请避免这种情况！」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031da0390a03">
「……并不是真的想变成那样。」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031da0400a04">
「……我觉得要是现在吐槽，就输了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　…………
　
　
　悔恨自己的失策。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆五分経過

//◆→●移動

..//ジャンプ指定
//次ファイル　"mc02_031daidokoroz.nss"

}



//嶋：一次退避
/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆豚肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0080a00">
「做好了。
　嫩煎猪排。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆牛肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0090a00">
「做好了。
　煎牛排。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆羊肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0100a00">
「做好了。
　羊肉烩饭。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆鹿肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0110a00">
「做好了。
　焙烧鹿肉。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆兎肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0120a00">
「做好了。
　兔肉炒饭。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆馬肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0130a00">
「做好了。
　马肉锅。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆魚肉_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0140a00">
「做好了。
　鱼肉香肠。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆カニ_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0150a00">
「做好了。
　蟹肉炒饭。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆果物_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0160a00">
「做好了。
　沛斯特泡芙。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆野菜_Flag == true;
//◆美味料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0170a00">
「做好了。
　凉拌卷心菜。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//◆熊肉_Flag == true;
//◆熊料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0180a00">
「做好了。
　熊排骨。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆二足羊肉_Flag == true;
//◆二足羊肉料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0190a00">
「做好了。
　奇妙杂果。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆蛆虫とダチョウ_Flag == true;
//◆ダチョウ料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0200a00">
「做好了。
　凉拌鸵鸟肉。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆ビヤーキー_Flag == true;
//◆ビヤーキー料理_Flag
{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031da0210a00">
「做好了。
　拜亚基龙的生刺身。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


*/


