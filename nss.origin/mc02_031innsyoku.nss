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

scene mc02_031innsyoku.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg080_飛行船船室Ab_01a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//嶋：デバッグフラグ
//	$飲食室一回目_Flag = true;
//	$香奈枝合流_Flag = true;
//	$艦長酒必要_Flag = true;
//	$酒_Flag = true;
//	$艦長泥酔_Flag = true;
//$隠し扉発見_Flag=true;
//$鍵_Flag=true;
//	$擂粉木_Flag=false;
//	$洋梨_Flag=false;
//	$料理酒_Flag=false;
//	$ガスボンベ_Flag=false;


//飲食室既来訪:if01
	if($飲食室一回目_Flag==true){
//香奈枝合流済み:if02
		if($香奈枝合流_Flag==true){
//艦長酒必要確認済み:if03
			if($艦長酒必要_Flag==true){
//艦長酒泥酔済み確認済み:if04
				if($艦長泥酔_Flag==true){
//鍵持っていない+扉確認済み:if05
					if($隠し扉発見_Flag==true&& !$鍵_Flag){
						call_scene @->mc02_031innsyoku_ikkk.nss;
						$innsyoku_i = false;//飲食室既来訪
						$innsyoku_ik = false;//香奈枝合流
						$innsyoku_ikk = false;//艦長お酒必要
						$innsyoku_ikkk = true;//艦長泥酔
						$innsyoku_ikkkt = false;//扉発見済み
						$innsyoku_No = false;//フラグなし
					}else{
						call_scene @->mc02_031innsyoku_ikkk.nss;
						$innsyoku_i = false;//飲食室既来訪
						$innsyoku_ik = false;//香奈枝合流
						$innsyoku_ikk = false;//艦長お酒必要
						$innsyoku_ikkk = true;//艦長泥酔
						$innsyoku_ikkkt = false;//扉発見済み
						$innsyoku_No = false;//フラグなし
					}//if05 end
				}else{
					call_scene @->mc02_031innsyoku_ikk.nss;
					$innsyoku_i = false;//飲食室既来訪
					$innsyoku_ik = false;//香奈枝合流
					$innsyoku_ikk = true;//艦長お酒必要
					$innsyoku_ikkk = false;//艦長泥酔
					$innsyoku_ikkkt = false;//扉発見済み
					$innsyoku_No = false;//フラグなし
				}//if04 end
			}else{
				call_scene @->mc02_031innsyoku_ik.nss;
				$innsyoku_i = false;//飲食室既来訪
				$innsyoku_ik = true;//香奈枝合流
				$innsyoku_ikk = false;//艦長お酒必要
				$innsyoku_ikkk = false;//艦長泥酔
				$innsyoku_ikkkt = false;//扉発見済み
				$innsyoku_No = false;//フラグなし
			}//if03 end
		}else{
			call_scene @->mc02_031innsyoku_i.nss;
			$innsyoku_i = true;//飲食室既来訪
			$innsyoku_ik = false;//香奈枝合流
			$innsyoku_ikk = false;//艦長お酒必要
			$innsyoku_ikkk = false;//艦長泥酔
			$innsyoku_ikkkt = false;//扉発見済み
			$innsyoku_No = false;//フラグなし
		}//if02 end
	}else{
		call_scene @->mc02_031innsyoku_No.nss;
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = true;//フラグなし
	}//if01 end



//次ポイント確認用
	if($innsyoku_No){
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
		$飲食室一回目_Flag = true;
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_i){

//=============================================================//
..//嶋：持っているもの確認用　Start
//=============================================================//

//選択肢の数の決定
		$選択肢カウント=0;
//選択肢の名前
		$選択肢名前1 = "　";
		$選択肢名前2 = "　";
		$選択肢名前3 = "　";
		$選択肢名前4 = "　";
		$選択肢名前5 = "　";

//選択肢の名前
		$選択肢分岐1 = "　";
		$選択肢分岐2 = "　";
		$選択肢分岐3 = "　";
		$選択肢分岐4 = "　";
		$選択肢分岐5 = "　";


//回数カウント
		if($擂粉木_Flag==true){$選択肢カウント=$選択肢カウント+1;}
		if($洋梨_Flag==true){$選択肢カウント=$選択肢カウント+1;}
		if($料理酒_Flag==true){$選択肢カウント=$選択肢カウント+1;}
		if($ガスボンベ_Flag==true){$選択肢カウント=$選択肢カウント+1;}

//持ち物確認
		if($擂粉木_Flag==true){
			if($洋梨_Flag==true){
				if($料理酒_Flag==true){
//擂粉木,洋梨,料理酒,ガスボンベ
//擂粉木,洋梨,料理酒
					if($ガスボンベ_Flag==true){$選択肢名前1 = "递研磨棒";$選択肢名前2 = "递洋梨";$選択肢名前3 = "递料酒";$選択肢名前4 = "递液化气罐";$選択肢名前5 = "什么都不递";}
					else{$選択肢名前1 = "递研磨棒";$選択肢名前2 = "递洋梨";$選択肢名前3 = "递料酒";$選択肢名前4 = "什么都不递";}
				}else{
//擂粉木,洋梨,ガスボンベ
//擂粉木,洋梨
					if($ガスボンベ_Flag==true){$選択肢名前1 = "递研磨棒";$選択肢名前2 = "递洋梨";$選択肢名前3 = "递液化气罐";$選択肢名前4 = "什么都不递";}
					else{$選択肢名前1 = "递研磨棒";$選択肢名前2 = "递洋梨";$選択肢名前3 = "什么都不递";}
				}
			}else{
				if($料理酒_Flag==true){
//擂粉木,料理酒,ガスボンベ
//擂粉木,料理酒
					if($ガスボンベ_Flag==true){$選択肢名前1 = "递研磨棒";$選択肢名前2 = "递料酒";$選択肢名前3 = "递液化气罐";$選択肢名前4 = "什么都不递";}
					else{$選択肢名前1 = "递研磨棒";$選択肢名前2 = "递料酒";$選択肢名前3 = "什么都不递";}
				}else{
//擂粉木,ガスボンベ
//擂粉木
					if($ガスボンベ_Flag==true){$選択肢名前1 = "递研磨棒";$選択肢名前2 = "递液化气罐";$選択肢名前3 = "什么都不递";}
					else{$選択肢名前1 = "递研磨棒";$選択肢名前2 = "什么都不递";}
				}
			}
		}else if($洋梨_Flag==true){
			if($料理酒_Flag==true){
//洋梨,料理酒,ガスボンベ
//洋梨,料理酒
				if($ガスボンベ_Flag==true){$選択肢名前1 = "递洋梨";$選択肢名前2 = "递料酒";$選択肢名前3 = "递液化气罐";$選択肢名前4 = "什么都不递";}
				else{$選択肢名前1 = "递洋梨";$選択肢名前2 = "递料酒";$選択肢名前3 = "什么都不递";}
			}else{
//洋梨,ガスボンベ
//洋梨
				if($ガスボンベ_Flag==true){$選択肢名前1 = "递洋梨";$選択肢名前2 = "递液化气罐";$選択肢名前3 = "什么都不递";}
				else{$選択肢名前1 = "递洋梨";$選択肢名前2 = "什么都不递";}
			}
		}else if($料理酒_Flag==true){
//料理酒,ガスボンベ
//料理酒
			if($ガスボンベ_Flag==true){$選択肢名前1 = "递料酒";$選択肢名前2 = "递液化气罐";$選択肢名前3 = "什么都不递";}
			else{$選択肢名前1 = "递料酒";$選択肢名前2 = "什么都不递";}
		}else{
//ガスボンベ
			if($ガスボンベ_Flag==true){$選択肢名前1 = "递液化气罐";$選択肢名前2 = "什么都不递";}
		}


//選択肢先の確定
	if($選択肢名前1=="递研磨棒"){$選択肢分岐1="mc02_031innsyokua.nss";}
	else if($選択肢名前1=="递洋梨"){$選択肢分岐1="mc02_031innsyokub.nss";}
	else if($選択肢名前1=="递料酒"){$選択肢分岐1="mc02_031innsyokuc.nss";}
	else if($選択肢名前1=="递液化气罐"){$選択肢分岐1="mc02_031innsyokud.nss";}
	else{}

	if($選択肢名前2=="递研磨棒"){$選択肢分岐2="mc02_031innsyokua.nss";}
	else if($選択肢名前2=="递洋梨"){$選択肢分岐2="mc02_031innsyokub.nss";}
	else if($選択肢名前2=="递料酒"){$選択肢分岐2="mc02_031innsyokuc.nss";}
	else if($選択肢名前2=="递液化气罐"){$選択肢分岐2="mc02_031innsyokud.nss";}
	else{$選択肢分岐2="mc02_031innsyokuz.nss";}

	if($選択肢名前3=="递研磨棒"){$選択肢分岐3="mc02_031innsyokua.nss";}
	else if($選択肢名前3=="递洋梨"){$選択肢分岐3="mc02_031innsyokub.nss";}
	else if($選択肢名前3=="递料酒"){$選択肢分岐3="mc02_031innsyokuc.nss";}
	else if($選択肢名前3=="递液化气罐"){$選択肢分岐3="mc02_031innsyokud.nss";}
	else{$選択肢分岐3="mc02_031innsyokuz.nss";}

	if($選択肢名前4=="递研磨棒"){$選択肢分岐4="mc02_031innsyokua.nss";}
	else if($選択肢名前4=="递洋梨"){$選択肢分岐4="mc02_031innsyokub.nss";}
	else if($選択肢名前4=="递料酒"){$選択肢分岐4="mc02_031innsyokuc.nss";}
	else if($選択肢名前4=="递液化气罐"){$選択肢分岐4="mc02_031innsyokud.nss";}
	else{$選択肢分岐4="mc02_031innsyokuz.nss";}

	if($選択肢名前5=="递研磨棒"){$選択肢分岐5="mc02_031innsyokua.nss";}
	else if($選択肢名前5=="递洋梨"){$選択肢分岐5="mc02_031innsyokub.nss";}
	else if($選択肢名前5=="递料酒"){$選択肢分岐5="mc02_031innsyokuc.nss";}
	else if($選択肢名前5=="递液化气罐"){$選択肢分岐5="mc02_031innsyokud.nss";}
	else{$選択肢分岐5="mc02_031innsyokuz.nss";}


//嶋：もしカウントがゼロだった場合は強制的に何も渡さない
		if($選択肢カウント==1){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($選択肢カウント==2){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($選択肢カウント==3){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else if($選択肢カウント==4){$SelectGameName="@->"+$GameName+"_SELECT02ex";call_scene $SelectGameName;}
		else{$GameName = "mc02_031innsyokuz.nss";}
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
//=============================================================//
..//嶋：持っているもの確認用　End
//=============================================================//

	}else if($innsyoku_ik){
		$SelectGameName="@->"+$GameName+"_SELECT03";
		call_scene $SelectGameName;
		$艦長酒必要_Flag = true;
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikk){
		$SelectGameName="@->"+$GameName+"_SELECT04";
		call_scene $SelectGameName;
..//嶋：要調整
//嶋：フラグ初期化
		if($酒_Flag==true){$艦長泥酔_Flag=true;$酒_Flag=false;}
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikkk){
		$SelectGameName="@->"+$GameName+"_SELECT05";
		call_scene $SelectGameName;
		if($隠し扉発見_Flag==true && $鍵_Flag==false){$鍵_Flag = true;}
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}else if($innsyoku_ikkkt){
		$SelectGameName="@->"+$GameName+"_SELECT06";
		call_scene $SelectGameName;
//嶋：フラグ初期化
		$innsyoku_i = false;//飲食室既来訪
		$innsyoku_ik = false;//香奈枝合流
		$innsyoku_ikk = false;//艦長お酒必要
		$innsyoku_ikkk = false;//艦長泥酔
		$innsyoku_ikkkt = false;//扉発見済み
		$innsyoku_No = false;//フラグなし
		$Next_GameName = $GameName;
		$GameName = "mc02_031time.nss";
	}

	//◆フラグ分岐：デバッグのため選択肢にしてあります
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

.//mc02_031innsyoku.nss
scene mc02_031innsyoku.nss
{

..//ジャンプ指定
//前ファイル　"mc02_031rouka3.nss"
//前ファイル　"mc02_031daidokoroz.nss"
//●飲食室
//◆訪れる回数と所持アイテムフラグによって色々分岐

}

//――――――――――――――――――――――――――――――
.//◆※初回
.//mc02_031innsyoku_No.nss
scene mc02_031innsyoku_No.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　几张椅子围着桌子。
　大概是食堂或是会话间的景象……

　我把注意力集中到房间角落里的男人。
　穿走样的军服是联盟军的——<k>这里既然是敌方之地，
那与敌兵相遇，就是必然存在的！

　立即摆出架势，防备敌意袭来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0010a00">
「————」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0020a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　男人没有拔枪也没有要呼喊同伴的迹象。
　而且本来也没看到我。

　准确来说，是醉倒了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆ボイス「エクスキューズミー？」
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0030a00">
「……打搅了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我下定决心向其搭话，他依然一副醉汉的模样。
　一边喝着廉价酒，一边嘎嘎地唤着什么。

　语速快，再加上口齿不清，以我的英语水平连一半
的内容也无法理解。
　好像是在骂人，还掺杂着要人拿些什么来……？

　总之，只能放着不管。
　虽然很在意为何卡农中佐的绝密作战中会有这样的人，
但现在还是接受不用战斗便能解决的幸运吧。

　放眼望去，船头方向有门。
　是到那边去，还是沿路回去呢？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラグ調整
//◆$飲食室一回目_Flag = true;

//◆選択：船首方向の扉へ／通路に戻る
//●扉→●台所
//●通路→●廊下３

..//ジャンプ指定
//●扉→●台所　"mc02_031daidokoro.nss"
//●通路→●廊下３　"mc02_031rouka3.nss"

}

//――――――――――――――――――――――――――――――
.//◆※二回目以降
//◆飲食室一回目_Flagがある場合
.//mc02_031innsyoku_i.nss
scene mc02_031innsyoku_i.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　醉汉依旧在吵嚷。
　像是在诉说什么，但对我来说是无法理解的。

　试着递给他什么东西吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆所持アイテムの選択肢のみ出現する
//◆擂粉木_Flag、洋梨_Flag、料理酒_Flag、ガスボンベ_Flagの対応した選択肢を表示

//◆選択：递研磨棒／递洋梨／递料酒／递液化气罐／什么都不递

..//ジャンプ指定
//◆递研磨棒　"mc02_031innsyokua.nss"
//◆递洋梨　"mc02_031innsyokub.nss"
//◆递料酒　"mc02_031innsyokuc.nss"
//◆递液化气罐　"mc02_031innsyokud.nss"
//◆何も渡さない　"mc02_031innsyokuz.nss"


}


//――――――――――――――――――――――――――――――
.//mc02_031innsyoku_ik.nss
.//◆※香奈枝いる·初回
//◆香奈枝合流_Flagがある場合
scene mc02_031innsyoku_ik.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　依旧是醉汉吵嚷。
　像是在诉说什么，但对我来说完全无法理解其意图。

　但是——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0040a03">
「……唉。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0050a00">
「大尉阁下，他说什么？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0060a03">
「唔。
　……这位是飞行舰原来的舰长。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　舰长？
　这样的人物，为什么在如此重要的作战中离开舰桥，
而醉在这种地方……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0070a03">
「他反对卡农中佐为作战需要，
仅接收船只的举动。
虽然强行登上战舰，结果还是没能参与作战。
　没办法，只能在这里唠唠叨叨地说醉话了。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0080a00">
「……哦。原来如此。」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0090a04">
「卡农中佐做事也太苛刻了。
　飞行舰的船长对船的热爱，
与海上的同业者不相伯仲啊。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0100a03">
「确实呢。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0110a00">
「从中佐的角度来说，为求保密这样的措施
理所当然。
　但……那，他在要求什么……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0120a03">
「是酒。
　度数这么低的麦酒醉不了，拿本土的
蒸馏酒来……是这么说的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0130a00">
「……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0140a04">
「他这样说了呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　没办法。
　我们现在也不可能随身带着。

　虽说他对卡农中佐还有此次作战抱有不满，
可以拉拢过来协助我们……但现在这个样子看
来是不行的。
　香奈枝小姐用英语跟他搭话，似乎也没在听。

　走吧。
　要么打开船头方向的门，要么从右侧的门回到走廊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラグ調整
//◆$艦長酒必要_Flag = true;


//◆選択：船首方向の扉へ／廊下に戻る
//●船首→●台所
//●廊下→●廊下３


..//ジャンプ指定
//●船首→●台所　"mc02_031daidokoro.nss"
//●廊下→●廊下３　"mc02_031rouka3.nss"

}

.//mc02_031innsyoku_ikk.nss
//――――――――――――――――――――――――――――――
.//◆※香奈枝いる·二回目以降
//◆艦長酒必要_Flagがある場合
scene mc02_031innsyoku_ikk.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　飞行舰原本的舰长，一边独自狂饮一边嚷嚷着。
　似乎是想要酒……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆酒有りの場合のみ以下シーン――――――――――――――――
//お酒フラグ
//$酒_Flag = true

..//嶋：if文発生
	if($酒_Flag==true){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　方才，从士官室拿的杜松子酒。
　我自己带着也没用，于是便递给了他。

　只看了一眼，就知道瓶子里装的是什么了吧。
他欢欣雀跃地叫着猛扑了过来，拔开塞子，
咕咚咕咚地喝了起来。
　……不大工夫，一瓶烈酒便全没了。

{	CreateSE("SE01","se人体_動作_抱く02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　把酒喝光的同时，他横倒在地。
　十分惬意地打起呼噜来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0150a00">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0160a03">
「日行一善？」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0170a04">
「确实如此。
　不过，我们在这种情况下还真从容啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　的确。
　
　……舰长幸福地做着美梦，然而我们的情况似乎
也没什么好转。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆船長泥酔フラグ？
//◆フラグ調整
//◆$艦長泥酔_Flag = true;

//◆ここまで――――――――――――――――――――――――――

}


//◆酒無しなら直通でここ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　走吧。
　要么打开船头方向的门，要么从右侧的门回到走廊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆選択：船首方向の扉へ／廊下に戻る
//●船首→●台所
//●廊下→●廊下３


..//ジャンプ指定
//●船首→●台所　"mc02_031daidokoro.nss"
//●廊下→●廊下３　"mc02_031rouka3.nss"

}


//――――――――――――――――――――――――――――――
.//◆※船長にジンを飲ませ済
//◆艦長泥酔_Flagがある場合
..//mc02_031innsyoku_ikkk.nss
scene mc02_031innsyoku_ikkk.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg080_飛行船船室Ab_01a.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	OnSE("se日常_建物_扉開く01", 1000);
	WaitKey(500);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　酩酊大醉的舰长舒服地睡着了。
　……他也许是在感谢我们，但现在的状态完全无法
表示出感谢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆隠し扉を発見済·鍵入手前の場合のみ以下シーン―――――
//◆隠し扉発見_Flagがあり、かつ鍵_Flagが無い場合


..//嶋：if文発生
if($隠し扉発見_Flag==true && $鍵_Flag==false){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　——不对。慢着。
　这样的断定太过轻率。

　他是这艘战舰的舰长。
　那么，难道……

{
	OnSE("se人体_動作_荷物あさる01", 1000);
}
　我翻了翻他的衣服。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0180a03">
「……景明大人。
　我想，或许……
他其实有那方面的兴趣吗？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0190a04">
「正中核心。
　但是大小姐，那大概只是顺便而已，
似乎另有目的。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0200a03">
「……啊。原来是这样。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　旁边那两个人似乎也理解了。
　……不，似乎依然有一些微妙的误会。不过
还是不要考虑这些好了。

　之后，不久。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0210a00">
「……有了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　我拿出找到的东西。
　
　————小小的钥匙。

　大小与在瞭望台大鸟大尉找到的门的锁孔正好合适。
　这把钥匙是否正确，要试过才知道……
至少可能性是有的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/031in0220a03">
「ＧＯＯＤ　ＪＯＢ！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/031in0230a04">
「干得好啊，凑斗大人。
　作为犒赏，请继续吧。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031in0240a00">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆鍵入手
//◆フラグ調整
//◆$鍵_Flag = true;

//◆ここまで―――――――――――――――――――――――――

}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　走吧。
　要打开船头方向的门，还是从右侧的门回到走廊。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：船首方向の扉へ／廊下に戻る
//●船首→●台所
//●廊下→●廊下３

..//ジャンプ指定
//●船首→●台所　"mc02_031daidokoro.nss"
//●廊下→●廊下３　"mc02_031rouka3.nss"

}



//★選択肢シーン
.//SELECT01(No)
scene mc02_031innsyoku.nss_SELECT01
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("往船头方向的门","回到走廊");
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
			mc02_SelectIcon_Delete();
//●扉→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●通路→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


//★選択肢シーン
.//SELECT03(ik)
scene mc02_031innsyoku.nss_SELECT03
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("往船头方向的门","回到走廊");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}

//★選択肢シーン
.//SELECT04(ikk)
scene mc02_031innsyoku.nss_SELECT04
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("往船头方向的门","回到走廊");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


.//SELECT05(ikkk)
//★選択肢シーン
scene mc02_031innsyoku.nss_SELECT05
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("往船头方向的门","回到走廊");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}



//★選択肢シーン
.//SELECT06(ikkkt)
scene mc02_031innsyoku.nss_SELECT06
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	mc02_SelectIcon(7);

//■選択肢
	SetChoice02("往船头方向的门","回到走廊");
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
			mc02_SelectIcon_Delete();
//●船首→●台所　"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//●廊下→●廊下３　"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}


//★選択肢シーン
.//SELECT02ex(i)
scene mc02_031innsyoku.nss_SELECT02ex
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//	SetChoice02("往船头方向的门","回到走廊");
//選択肢分岐
//■選択肢
	if($選択肢カウント==1){SetChoice02($選択肢名前1,$選択肢名前2);}
	else if($選択肢カウント==2){SetChoice03($選択肢名前1,$選択肢名前2,$選択肢名前3);}
	else if($選択肢カウント==3){SetChoice04($選択肢名前1,$選択肢名前2,$選択肢名前3,$選択肢名前4);}
	else if($選択肢カウント==4){SetChoice05($選択肢名前1,$選択肢名前2,$選択肢名前3,$選択肢名前4,$選択肢名前5);}
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
		if($選択肢カウント==1){
			case @選択肢１{ChoiceA02();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB02();$GameName = $選択肢分岐2;}
		}else if($選択肢カウント==2){
			case @選択肢１{ChoiceA03();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB03();$GameName = $選択肢分岐2;}
			case @選択肢３{ChoiceC03();$GameName = $選択肢分岐3;}
		}else if($選択肢カウント==3){
			case @選択肢１{ChoiceA04();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB04();$GameName = $選択肢分岐2;}
			case @選択肢３{ChoiceC04();$GameName = $選択肢分岐3;}
			case @選択肢４{ChoiceD04();$GameName = $選択肢分岐4;}
		}else if($選択肢カウント==4){
			case @選択肢１{ChoiceA05();$GameName = $選択肢分岐1;}
			case @選択肢２{ChoiceB05();$GameName = $選択肢分岐2;}
			case @選択肢３{ChoiceC05();$GameName = $選択肢分岐3;}
			case @選択肢４{ChoiceD05();$GameName = $選択肢分岐4;}
			case @選択肢５{ChoiceE05();$GameName = $選択肢分岐5;}
		}
	}//Select_End

}


