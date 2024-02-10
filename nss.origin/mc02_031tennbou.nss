//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031tennbou.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg083_飛行船後部展望室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：デバッグフラグ
//	$香奈枝合流_Flag = true;
//	$隠し扉発見_Flag = true;
//	$鍵_Flag = true;


//香奈枝合流済み:if01
	if($香奈枝合流_Flag==true){
//隠し扉発見済み:if02
		if($隠し扉発見_Flag==true){
//鍵取得済み:if03
			if($鍵_Flag==true){
				call_scene @->mc02_031tennbou_kkk.nss;
				$tennbou_k=false;//香奈枝合流フラグのみ
				$tennbou_kk=false;//香奈枝フラグ+扉発見済み
				$tennbou_kkk=true;//香奈枝フラグ+扉発見済み+鍵ゲット
				$tennbou_No=false;//フラグなし
			}else{
				call_scene @->mc02_031tennbou_kk.nss;
				$tennbou_k=false;//香奈枝合流フラグのみ
				$tennbou_kk=true;//香奈枝フラグ+扉発見済み
				$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
				$tennbou_No=false;//フラグなし
			}//if03 End
		}else{
			call_scene @->mc02_031tennbou_k.nss;
			$tennbou_k=true;//香奈枝合流フラグのみ
			$tennbou_kk=false;//香奈枝フラグ+扉発見済み
			$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
			$tennbou_No=false;//フラグなし
		}//if02 End
//フラグなし
	}else{
		call_scene @->mc02_031tennbou_No.nss;
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=true;//フラグなし
	}//if01 End



//次ポイント確認用
	if($tennbou_k){
	//嶋：フラグ初期化
		$GameName = "mc02_031rouka3.nss";
		$隠し扉発見_Flag=true;
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($tennbou_kk){
		$GameName = "mc02_031rouka3.nss";
	//嶋：フラグ初期化
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}else if($tennbou_kkk){
		$GameName = "mc02_031end.nss";
	//嶋：フラグ初期化
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
	}else if($tennbou_No){
		$GameName = "mc02_031rouka3.nss";
	//嶋：フラグ初期化
		$tennbou_k=false;//香奈枝合流フラグのみ
		$tennbou_kk=false;//香奈枝フラグ+扉発見済み
		$tennbou_kkk=false;//香奈枝フラグ+扉発見済み+鍵ゲット
		$tennbou_No=false;//フラグなし
//嶋：カウント調整
//		$Next_GameName = $GameName;
//		$GameName = "mc02_031time.nss";
	}

	//◆フラグ分岐
//	$GameName = "mc02_031end.nss";



}

//通過用スクリプト
scene mc02_031tennbou.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_031rouka3.nss"

//●展望室
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	OnSE("se日常_建物_扉開く01", 1000);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　船体末尾的瞭望台。
　可以欣赏到雄伟壮观的景色……但因为这是军用船只，
和观光船不同，不能在四周镶上玻璃，所以视野有一些
限制。

　引人注目的只有景色，没有任何可疑的物体。
　而且出入口也只有一处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}


//◆フラグ分岐
.//◆※香奈枝がいない場合―――――――――――
//◆香奈枝合流_Flagが無い場合
..//mc02_031tennbou_No.nss
scene mc02_031tennbou_No.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我折回通道。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆→●廊下３

..//ジャンプ指定
//次ファイル　"mc02_031rouka3.nss"


}


.//◆※香奈枝がいる場合―――――――――――
//◆香奈枝合流_Flagがある場合
..//mc02_031tennbou_k.nss
scene mc02_031tennbou_k.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	OnSE("se日常_建物_扉開く01", 1000);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0010a03">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　正要离去之时——
　
　大鸟大尉突然停下了脚步。

　皱着眉头，盯着地面上的一点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0020a00">
「怎么了？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0030a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　香奈枝小姐没有回答，走上前去。
　停在她所注视的地点前，从侧面盯着那里。

　我跟在她的后面，绕到她对面。
　侍从永仓心领神会，站在门边警戒着外部。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0040a03">
「景明大人，这里。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我凝视着她手指向的地方。
　
　有什么——只有一处凹陷。

　大尉用指甲，轻轻地抠了抠那里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0060a00">
「——这是……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0070a03">
「钥匙孔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　——是钥匙孔。
　藏在大尉用指甲撕下来的薄板之下。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0080a00">
「但这是用来干什么的？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0090a03">
「是入口吧。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0100a00">
「入口？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0110a03">
「您请看。
　这周围的地面上……五〇厘米方圆。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0120a03">
「虽然完全嵌合。
　但仔细观察一下，发现<RUBY text="··">门道</RUBY>了吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　…………真的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0130a00">
「那，大尉阁下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0140a03">
「这下面有<RUBY text="··">什么</RUBY>。
　而且是一定要用这种方法隐藏起来的
东西——能这么解释吧。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0150a00">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0160a03">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0170a00">
「劈开它——
　不行，风险太大了吧？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0180a03">
「是的。即使是万分之一的可能性也要顾及。
　还是以欲速则不达为鉴，先试着
去寻找钥匙吧。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0190a00">
「明白了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……但是，在哪里呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


//◆フラグ調整
//◆$隠し扉発見_Flag = true;

//◆→●廊下３

..//ジャンプ指定
//次ファイル　"mc02_031rouka3.nss"

}

//――――――――――――――――――――――――――――――
.//◆※隠し扉発見済
//◆隠し扉発見_Flagがある場合
..//mc02_031tennbou_kk.nss
scene mc02_031tennbou_kk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	SoundPlay("@mbgm21",0,1000,true);

	OnSE("se日常_建物_扉開く01", 1000);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　不，地面上有隐藏入口。
　如果不先拿到钥匙的话，就不能查明
这里面的东西了。

　要找到钥匙。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//◆→●廊下３

..//ジャンプ指定
//次ファイル　"mc02_031rouka3.nss"



}


//――――――――――――――――――――――――――――――
.//◆※鍵有り
//◆鍵_Flagがある場合
..//mc02_031tennbou_kkk.nss
scene mc02_031tennbou_kkk.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg083_飛行船後部展望室_01.jpg");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　慢着——地面上有隐藏入口。
　而且，我有从船长那里借来的钥匙。

　我怀着一股祈祷的心情，将钥匙插入了小小的
锁孔。
　如果，不是这把钥匙的话……恐怕就会到此为止了。
我没有时间去找别的钥匙。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0200a03">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031te0210a04">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_ロック解除01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　转动。

//◆カチャリ。

　——转动了！

　地板升起来了。
　轻松地将地板挪开，通往下层的阶梯就
暴露在我们的面前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031te0220a00">
「大尉阁下。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031te0230a03">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　寥寥数句，互相示意。
　
　——到了现在这种时候，不能犹豫。

　我首先踏上台阶。
　接着是大鸟大尉。老侍从在最后形影不离。

　放轻脚步，走向下层………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearWaitAll(2000, 2000);

//◆→●探索終了


..//ジャンプ指定
//次ファイル　"mc02_031end.nss"



}




