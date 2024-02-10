//=============================================================================//
.//■体験版用高感度（！？）画面■
//=============================================================================//
chapter main
{
	Wait(16);

	//★ロックの場合
	if($LOCAL_extra_lock){
		if($PLACE_hmode){$SYSTEM_keydown_h=true;}
		return;
	}

	$LOCAL_hmode_enable=true;
	judgment_of_count();

}

..//★連想配列を定義するマクロ
function ArrayHex()
{
	//連想配列
	Array($H_Name,"Others","Muramasa","Kanae","Ichizyou");
	AssocArray($H_Name,"Others","Muramasa","Kanae","Ichizyou");
	Array($H_Name[Others],その他,385,389);
	Array($H_Name[Muramasa],村正,453,457);
	Array($H_Name[Kanae],香奈枝,521,525);
	Array($H_Name[Ichizyou],一条,589,594);

	Array($SatugaiRate,"Others","Ichizyou","Kanae","Muramasa");
	AssocArray($SatugaiRate,"Others","Ichizyou","Kanae","Muramasa");

	//初期化
	if(!$H_Start){
		$H_While=0;
		while(Count($H_Name)>$H_While){
			VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag",0);
			VariableValue($,$H_Name[$H_While]+"_Kill",false);
			$H_While++;
		}
		$H_Start=true;
	}
}

..//★本体
function judgment_of_count()
{
	//★超速からの変遷用
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	if(!$LOCAL_hmode_enable){
		$express_log=#SYSTEM_skip_express;
		$skip_log=$SYSTEM_skip;
		$auto_log=$SYSTEM_text_auto;
	
		$SYSTEM_skip_lock = true;
		$SYSTEM_text_auto_lock = true;
	}


	//■準備「スクリーン」//※右クリックから来ていなければ
	if($LOCAL_hmode_enable){
		if(!$SYSTEM_menu_enable){
			CreateTexture("H_video", 50000, 0, 0, VIDEO);
			CreateTexture("H_video2", 100000, 0, 0, VIDEO);
		}else{
			CreateTexture("H_video2", 100000, 0, 0, SCREEN);
		}
	}else{
		$PLACE_hmode=true;
		$LOCAL_extra_lock=true;
		//CreateTexture("H_video2", 999998, 0, 0, SCREEN);
		CreateEffect("H_video2",999998,0,0,1024,576,"Plain");
		Request("H_video2",Passive);
	}


	//■定義
	//連想配列
	ArrayHex();

	//ロードデータ
	LoadImage("H_image", "cg/sys/Fav/ゲージicon.png");
	LoadImage("H_image2", "cg/sys/Fav/ゲージマスクicon.png");

	//背景
	CreateTexture("H_back", 50100, 0, 0, "cg/sys/Fav/好感度画像背景.png");

	//アイコン
	$H_While=0;
	while(Count($H_Name)>$H_While){
		if(!VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"死亡")&&!$LOCAL_hmode_enable){
			$H_Win="H_Win_"+$H_Name[$H_While][0];
			CreateWindow($H_Win, 51000, 385, 430, 600, 340, false);
			$H_Nut=$H_Win+"/H_Mask_"+$H_Name[$H_While][0];
			CreateTexture($H_Nut, 51000, $H_Name[$H_While][2], 93, "H_image2");
			if($H_Name[$H_While][0]=="一条"){Move($H_Nut, 0, @-1, @0, Dxl1, true);}//位置調整
			Fade($H_Nut, 0, 0, null, false);
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_002.png";
			$H_Nut="H_Kill_"+$H_Name[$H_While];
			CreateTexture($H_Nut, 51001, $H_Name[$H_While][1], 371, $H_Image);
			Fade($H_Nut, 0, 0, null, false);
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_001.png";
		}else if(VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"死亡")){
			$H_Nut="H_Mask_"+$H_Name[$H_While][0];
			CreateTexture($H_Nut, 51000, $H_Name[$H_While][2], 93, "H_image2");
			if($H_Name[$H_While][0]=="一条"){Move($H_Nut, 0, @-1, @0, Dxl1, true);}//位置調整
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_002.png";
		}else{
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_001.png";
		}
		$H_Nut="H_"+$H_Name[$H_While];
		CreateTexture($H_Nut, 51000, $H_Name[$H_While][1], 371, $H_Image);
		$H_While++;
	}
	//村正隠蔽
	if(!$Muramasa_Flag){
		CreateColor("H_村正", 51000, $H_Name[Muramasa][1], 371, 48, 58, BLACK);
		CreateTexture("H_Mask_村正", 51000, $H_Name[Muramasa][2], 93, "H_image2");
	}


	//カウント画像
	$H_x=389;
	$H_While=0;
	while(Count($H_Name)>$H_While){
		CreateHex();
		$H_x+=68;
		$H_While++;
	}

	//▼描画準備
	if(!$LOCAL_hmode_enable){
		$H_While=0;
		while(Count($H_Name)>$H_While){
			if(VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag")!=VariableValue($,$H_Name[$H_While]+"_Flag")){
				FadeHex();
				$H_Count=VariableValue($,$H_Name[$H_While]+"_Flag");
				$H_Last=String("H_%s%2d",$H_Name[$H_While],$H_Count);
				$H_Plus=true;
			}
			$H_While++;
		}
	}

	//●描画
	Fade("H_video2", 300, 0, null, true);

	//ポイント追加処理
	if(!$LOCAL_hmode_enable&&$H_Plus){
		$H_While=0;
		while(Count($H_Name)>$H_While){
			if(VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag")!=VariableValue($,$H_Name[$H_While]+"_Flag")){
				StartHex();
			}
			$H_While++;
		}

		Fade($H_Last, 300, 1000, null, true);
		Fade($H_Last, 300, 0, null, true);
		Fade($H_Last, 300, 1000, null, true);
		Fade($H_Last, 300, 0, null, true);
		Fade($H_Last, 300, 1000, null, true);
		$H_Plus=false;
	}

	//殺害処理
	$H_While=0;
	while(Count($H_Name)>$H_While){
		if(!VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"死亡")&&!$LOCAL_hmode_enable){
			$H_Win="H_Win_"+$H_Name[$H_While][0];
			$H_Nut=$H_Win+"/H_Mask_"+$H_Name[$H_While][0];
			CreateSound("H_Sound", SE, "sound/se/se特殊_ヒロイン_惨殺01");
			Wait(1000);
			SetVolume("H_Sound", 0, 1000, NULL);
			Request("H_Sound", Play);
			Fade($H_Nut, 0, 1000, null, true);
			Move($H_Win, 300, @0, 90, Dxl1, false);
			$H_Nut="H_Kill_"+$H_Name[$H_While];
			Fade($H_Nut, 300, 1000, null, true);
		}
		$H_While++;
	}

	//★選択
	$SYSTEM_r_button_down=false;
	$SYSTEM_keydown_h=false;
	select{
		if($LOCAL_hmode_enable&&($SYSTEM_r_button_down||$SYSTEM_keydown_h||$SYSTEM_l_button_down||$SYSTEM_keydown_enter)){
			break;
		}else if($SYSTEM_text_waitkey&&($SYSTEM_keydown_h||$SYSTEM_l_button_down||$SYSTEM_keydown_enter)){
			break;
		}
		$SYSTEM_keydown_h=false;

		if($LOCAL_hmode_enable){
			//★キーダウン系
			if($SYSTEM_keydown_f){
				if(!#SYSTEM_window_full_lock){
					#SYSTEM_window_full=!#SYSTEM_window_full;
					#SYSTEM_window_full_lock=false;
					Wait(300);
					$SYSTEM_keydown_f=false;
				}
			}else if(($SYSTEM_keydown_esc||$SYSTEM_buttondown_close)&&!$Title_Load){
				call_chapter nss/sys_close.nss;
			}else if($SYSTEM_keydown_t){
				call_chapter nss/sys_reset.nss;
			}else if($SYSTEM_keydown_r){
				call_chapter nss/sys_backselect.nss;
			}
		}
	}

	SetVolume("H_Sound", 300, 0, NULL);

	Fade("H_video2", 300, 1000, null, true);

	if(!$LOCAL_hmode_enable){
		Delete("H_*");
	}

	//代入
	SetHex();

	if(!$LOCAL_hmode_enable){
		$SYSTEM_skip_lock=false;
		$SYSTEM_text_auto_lock = false;
	
		if(#keep_auto_and_skip){
			if($express_log){
				#SYSTEM_skip_express=$express_log;
			}
	
			if($skip_log){
				$SYSTEM_skip=true;
			}else if($auto_log){
				$SYSTEM_text_auto=true;
			}
		}
	}

	$LOCAL_extra_lock=false;

	$SYSTEM_mousewheel_up=false;
	$SYSTEM_mousewheel_down=false;

	$PLACE_hmode=false;
	$LOCAL_hmode_enable=false;
}

//アイコンを定義するマクロ
function CreateHex()
{
	$H_Max=1;
	$H_y=333;
	while(VariableValue($,$H_Name[$H_While]+"_Flag")>=$H_Max){
		$H_Nut=String("H_%s%2d",$H_Name[$H_While],$H_Max);
		CreateTexture($H_Nut, 50100, $H_x, $H_y, "H_image");
		$H_y-=30;
		$H_Max++;
	}
}

//増えた分のアイコンを消すまくろ
function FadeHex()
{
	//２以上の差であれば
	if((VariableValue($,$H_Name[$H_While]+"_Flag")-VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag"))>1){
		$H_Plus=true;
	}

	$H_Count=VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag")+1;
	while(VariableValue($,$H_Name[$H_While]+"_Flag")>=$H_Count){
		$H_Fade=String("H_%s%2d",$H_Name[$H_While],$H_Count);
		Fade($H_Fade, 0, 0, null, false);
		$H_Count++;
	}
}

//アイコンを順番に出すマクロ
function StartHex()
{
	$H_Count=VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag")+1;
	while(VariableValue($,$H_Name[$H_While]+"_Flag")>=$H_Count){
		$H_Fade=String("H_%s%2d",$H_Name[$H_While],$H_Count);
		Fade($H_Fade, 200, 1000, null, true);
		Wait(100);
		$H_Count++;
	}
}

..//★アイコンを前情報とあわせるマクロ
function SetHex()
{
	//連想配列
	ArrayHex();

	$H_While=0;
	while(Count($H_Name)>$H_While){
		//前後調整
		if(!VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"死亡")&&!$LOCAL_hmode_enable){
			VariableValue($,$H_Name[$H_While]+"_Kill",true);
		}
		VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag",VariableValue($,$H_Name[$H_While]+"_Flag"));

		//死亡の呪文
		if(VariableValue($,$H_Name[$H_While][0]+"死亡")&&!$LOCAL_hmode_enable){
			VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag",0);
			VariableValue($,$H_Name[$H_While]+"_Flag",0);
		}
		//復活の呪文
		if(VariableValue($,$H_Name[$H_While][0]+"復活")){
			VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag",0);
			VariableValue($,$H_Name[$H_While]+"_Flag",0);
			VariableValue($,$H_Name[$H_While]+"_Kill",false);
			VariableValue($,$H_Name[$H_While][0]+"死亡",false);
			VariableValue($,$H_Name[$H_While][0]+"復活",false);
		}

		$H_While++;
	}
}

..//★死亡判定用
function SatugaiSystem(){
	//連想配列
	ArrayHex();

	$S_While=0;
	while(Count($SatugaiRate)>$S_While){
		$SatugaiRate[$S_While][0]=true;

		$H_While=0;
		while(Count($SatugaiRate)>$H_While){
			if($S_While!=$H_While){
				if(VariableValue($,$SatugaiRate[$S_While]+"_Flag")>=VariableValue($,$SatugaiRate[$H_While]+"_Flag")){

				}else{
					$SatugaiRate[$S_While][0]=false;
				}
			}
			$H_While++;
		}

		if($SatugaiRate[$S_While][0]){
			VariableValue($,$H_Name[$SatugaiRate[$S_While]][0]+"死亡",true);
			break;
		}
		$S_While++;
	}
}






















..//しまながれ作成フラグチェック
function RouteChicker($RouteChicker_Deb){


	$Ichizyou_Can  = $Ichizyou_Flag;
	$Kanae_Can = $Kanae_Flag;
	$Muramasa_Can = $Muramasa_Flag;
	$Others_Can = $Others_Flag;

//順位確定用変数【初期化】
	Array($Numbering,"NotFound","NotFound","NotFound","NotFound");
	$i=0;


//デバッグ用フラグ差し込み
	if(!$RouteChicker_Deb){}
	else if($RouteChicker_Deb==""){}
	else if($RouteChicker_Deb=="一条"){$Ichizyou_Can = 7;$RouteChicker_Deb = "";}
	else if($RouteChicker_Deb=="香奈枝"){$Kanae_Can = 7;$RouteChicker_Deb = "";}
	else if($RouteChicker_Deb=="村正"){$Muramasa_Can = 7;$RouteChicker_Deb = "";}
	else if($RouteChicker_Deb=="アナザー"){$Others_Can = 7;$RouteChicker_Deb = "";}
	else{}

	while(1){
		$Ichizyou_Can++;
		$Kanae_Can++;
		$Muramasa_Can++;
		$Others_Can++;

		if($Others_Can==10){
			$ルート分岐用フラグ = "アナザー";
			$Numbering[$i] = "アナザー";
			if($i==3){break;}
			$i++;
		}

		if($Ichizyou_Can==10){
			$ルート分岐用フラグ = "一条";
			$Numbering[$i] = "一条";
			if($i==3){break;}
			$i++;
		}

		if($Kanae_Can==10){
			$ルート分岐用フラグ = "香奈枝";
			$Numbering[$i] = "香奈枝";
			if($i==3){break;}
			$i++;
		}

		if($Muramasa_Can==10){
			$ルート分岐用フラグ = "村正";
			$Numbering[$i] = "村正";
			if($i==3){break;}
			$i++;
		}

	}

//初期化コマンド
	Array($RC_N,"","","","");

	AssocArray($RC_N,"一条","香奈枝","村正","アナザー");

		if($Numbering[0] == "一条"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "一条"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "一条"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "一条"){
			$you_typing_rocal = 4;
		}
		$RC_N["一条"] = $you_typing_rocal;

		if($Numbering[0] == "香奈枝"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "香奈枝"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "香奈枝"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "香奈枝"){
			$you_typing_rocal = 4;
		}
		$RC_N["香奈枝"] = $you_typing_rocal;

		if($Numbering[0] == "村正"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "村正"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "村正"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "村正"){
			$you_typing_rocal = 4;
		}
		$RC_N["村正"] = $you_typing_rocal;

		if($Numbering[0] == "アナザー"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "アナザー"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "アナザー"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "アナザー"){
			$you_typing_rocal = 4;
		}
		$RC_N["アナザー"] = $you_typing_rocal;

}

function RouteChicker2($RouteChicker_Deb2){


	$Ichizyou_Can2  = $Ichizyou_Flag;
	$Kanae_Can2 = $Kanae_Flag;
	$Muramasa_Can2 = $Muramasa_Flag;
	$Others_Can2 = $Others_Flag;

//順位確定用変数【初期化】
	Array($Numbering2,"NotFound","NotFound","NotFound","NotFound");
	$i=0;


//デバッグ用フラグ差し込み
	if(!$RouteChicker_Deb2){}
	else if($RouteChicker_Deb2==""){}
	else if($RouteChicker_Deb2=="一条"){$Ichizyou_Can2 = 7;$RouteChicker_Deb2 = "";}
	else if($RouteChicker_Deb2=="香奈枝"){$Kanae_Can2 = 7;$RouteChicker_Deb2 = "";}
	else if($RouteChicker_Deb2=="村正"){$Muramasa_Can2 = 7;$RouteChicker_Deb2 = "";}
	else if($RouteChicker_Deb2=="アナザー"){$Others_Can2 = 7;$RouteChicker_Deb2 = "";}
	else{}

	while(1){
		$Ichizyou_Can2++;
		$Kanae_Can2++;
		$Muramasa_Can2++;
		$Others_Can2++;

		if($Muramasa_Can2==10){
			$ルート分岐用フラグ2 = "村正";
			$Numbering2[$i] = "村正";
			if($i==3){break;}
			$i++;
		}

		if($Ichizyou_Can2==10){
			$ルート分岐用フラグ2 = "一条";
			$Numbering2[$i] = "一条";
			if($i==3){break;}
			$i++;
		}

		if($Kanae_Can2==10){
			$ルート分岐用フラグ2 = "香奈枝";
			$Numbering2[$i] = "香奈枝";
			if($i==3){break;}
			$i++;
		}

		if($Others_Can2==10){
			$ルート分岐用フラグ2 = "アナザー";
			$Numbering2[$i] = "アナザー";
			if($i==3){break;}
			$i++;
		}

	}

//初期化コマンド
	Array($RC_N2,"","","","");

	AssocArray($RC_N2,"一条","香奈枝","村正","アナザー");

		if($Numbering2[0] == "一条"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "一条"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "一条"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "一条"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["一条"] = $you_typing_rocal2;

		if($Numbering2[0] == "香奈枝"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "香奈枝"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "香奈枝"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "香奈枝"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["香奈枝"] = $you_typing_rocal2;

		if($Numbering2[0] == "村正"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "村正"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "村正"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "村正"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["村正"] = $you_typing_rocal2;

		if($Numbering2[0] == "アナザー"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "アナザー"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "アナザー"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "アナザー"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["アナザー"] = $you_typing_rocal2;

}
