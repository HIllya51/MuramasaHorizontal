//=============================================================================//
.//�����Y���ø߸жȣ������������
//=============================================================================//
chapter main
{
	Wait(16);

	//���å��Έ���
	if($LOCAL_extra_lock){
		if($PLACE_hmode){$SYSTEM_keydown_h=true;}
		return;
	}

	$LOCAL_hmode_enable=true;
	judgment_of_count();

}

..//���B�����Ф��x����ޥ���
function ArrayHex()
{
	//�B������
	Array($H_Name,"Others","Muramasa","Kanae","Ichizyou");
	AssocArray($H_Name,"Others","Muramasa","Kanae","Ichizyou");
	Array($H_Name[Others],������,385,389);
	Array($H_Name[Muramasa],����,453,457);
	Array($H_Name[Kanae],����֦,521,525);
	Array($H_Name[Ichizyou],һ��,589,594);

	Array($SatugaiRate,"Others","Ichizyou","Kanae","Muramasa");
	AssocArray($SatugaiRate,"Others","Ichizyou","Kanae","Muramasa");

	//���ڻ�
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

..//�ﱾ��
function judgment_of_count()
{
	//�ﳬ�٤���Ή��w��
	$SYSTEM_keydown_esc=false;
	$SYSTEM_buttondown_close=false;

	if(!$LOCAL_hmode_enable){
		$express_log=#SYSTEM_skip_express;
		$skip_log=$SYSTEM_skip;
		$auto_log=$SYSTEM_text_auto;
	
		$SYSTEM_skip_lock = true;
		$SYSTEM_text_auto_lock = true;
	}


	//���ʂ䡸������`��//���ҥ���å��������Ƥ��ʤ����
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


	//�����x
	//�B������
	ArrayHex();

	//��`�ɥǩ`��
	LoadImage("H_image", "cg/sys/Fav/���`��icon.png");
	LoadImage("H_image2", "cg/sys/Fav/���`���ޥ���icon.png");

	//����
	CreateTexture("H_back", 50100, 0, 0, "cg/sys/Fav/�øжȻ��񱳾�.png");

	//��������
	$H_While=0;
	while(Count($H_Name)>$H_While){
		if(!VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"����")&&!$LOCAL_hmode_enable){
			$H_Win="H_Win_"+$H_Name[$H_While][0];
			CreateWindow($H_Win, 51000, 385, 430, 600, 340, false);
			$H_Nut=$H_Win+"/H_Mask_"+$H_Name[$H_While][0];
			CreateTexture($H_Nut, 51000, $H_Name[$H_While][2], 93, "H_image2");
			if($H_Name[$H_While][0]=="һ��"){Move($H_Nut, 0, @-1, @0, Dxl1, true);}//λ���{��
			Fade($H_Nut, 0, 0, null, false);
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_002.png";
			$H_Nut="H_Kill_"+$H_Name[$H_While];
			CreateTexture($H_Nut, 51001, $H_Name[$H_While][1], 371, $H_Image);
			Fade($H_Nut, 0, 0, null, false);
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_001.png";
		}else if(VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"����")){
			$H_Nut="H_Mask_"+$H_Name[$H_While][0];
			CreateTexture($H_Nut, 51000, $H_Name[$H_While][2], 93, "H_image2");
			if($H_Name[$H_While][0]=="һ��"){Move($H_Nut, 0, @-1, @0, Dxl1, true);}//λ���{��
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_002.png";
		}else{
			$H_Image="cg/sys/Fav/"+$H_Name[$H_While][0]+"_001.png";
		}
		$H_Nut="H_"+$H_Name[$H_While];
		CreateTexture($H_Nut, 51000, $H_Name[$H_While][1], 371, $H_Image);
		$H_While++;
	}
	//�����L��
	if(!$Muramasa_Flag){
		CreateColor("H_����", 51000, $H_Name[Muramasa][1], 371, 48, 58, BLACK);
		CreateTexture("H_Mask_����", 51000, $H_Name[Muramasa][2], 93, "H_image2");
	}


	//������Ȼ���
	$H_x=389;
	$H_While=0;
	while(Count($H_Name)>$H_While){
		CreateHex();
		$H_x+=68;
		$H_While++;
	}

	//���軭�ʂ�
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

	//���軭
	Fade("H_video2", 300, 0, null, true);

	//�ݥ����׷�ӄI��
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

	//�����I��
	$H_While=0;
	while(Count($H_Name)>$H_While){
		if(!VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"����")&&!$LOCAL_hmode_enable){
			$H_Win="H_Win_"+$H_Name[$H_While][0];
			$H_Nut=$H_Win+"/H_Mask_"+$H_Name[$H_While][0];
			CreateSound("H_Sound", SE, "sound/se/se����_�ҥ���_�Қ�01");
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

	//���x�k
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
			//�省�`������ϵ
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

	//����
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

//����������x����ޥ���
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

//�������֤Υ�������������ޤ���
function FadeHex()
{
	//�����Ϥβ�Ǥ����
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

//���������혷��˳����ޥ���
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

..//�異�������ǰ���Ȥ��碌��ޥ���
function SetHex()
{
	//�B������
	ArrayHex();

	$H_While=0;
	while(Count($H_Name)>$H_While){
		//ǰ���{��
		if(!VariableValue($,$H_Name[$H_While]+"_Kill")&&VariableValue($,$H_Name[$H_While][0]+"����")&&!$LOCAL_hmode_enable){
			VariableValue($,$H_Name[$H_While]+"_Kill",true);
		}
		VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag",VariableValue($,$H_Name[$H_While]+"_Flag"));

		//�����΅���
		if(VariableValue($,$H_Name[$H_While][0]+"����")&&!$LOCAL_hmode_enable){
			VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag",0);
			VariableValue($,$H_Name[$H_While]+"_Flag",0);
		}
		//�ͻ�΅���
		if(VariableValue($,$H_Name[$H_While][0]+"�ͻ�")){
			VariableValue($,"Pre_"+$H_Name[$H_While]+"_Flag",0);
			VariableValue($,$H_Name[$H_While]+"_Flag",0);
			VariableValue($,$H_Name[$H_While]+"_Kill",false);
			VariableValue($,$H_Name[$H_While][0]+"����",false);
			VariableValue($,$H_Name[$H_While][0]+"�ͻ�",false);
		}

		$H_While++;
	}
}

..//�������ж���
function SatugaiSystem(){
	//�B������
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
			VariableValue($,$H_Name[$SatugaiRate[$S_While]][0]+"����",true);
			break;
		}
		$S_While++;
	}
}






















..//���ޤʤ������ɥե饰�����å�
function RouteChicker($RouteChicker_Deb){


	$Ichizyou_Can  = $Ichizyou_Flag;
	$Kanae_Can = $Kanae_Flag;
	$Muramasa_Can = $Muramasa_Flag;
	$Others_Can = $Others_Flag;

//�λ�_���É��������ڻ���
	Array($Numbering,"NotFound","NotFound","NotFound","NotFound");
	$i=0;


//�ǥХå��åե饰��z��
	if(!$RouteChicker_Deb){}
	else if($RouteChicker_Deb==""){}
	else if($RouteChicker_Deb=="һ��"){$Ichizyou_Can = 7;$RouteChicker_Deb = "";}
	else if($RouteChicker_Deb=="����֦"){$Kanae_Can = 7;$RouteChicker_Deb = "";}
	else if($RouteChicker_Deb=="����"){$Muramasa_Can = 7;$RouteChicker_Deb = "";}
	else if($RouteChicker_Deb=="���ʥ��`"){$Others_Can = 7;$RouteChicker_Deb = "";}
	else{}

	while(1){
		$Ichizyou_Can++;
		$Kanae_Can++;
		$Muramasa_Can++;
		$Others_Can++;

		if($Others_Can==10){
			$��`�ȷ���åե饰 = "���ʥ��`";
			$Numbering[$i] = "���ʥ��`";
			if($i==3){break;}
			$i++;
		}

		if($Ichizyou_Can==10){
			$��`�ȷ���åե饰 = "һ��";
			$Numbering[$i] = "һ��";
			if($i==3){break;}
			$i++;
		}

		if($Kanae_Can==10){
			$��`�ȷ���åե饰 = "����֦";
			$Numbering[$i] = "����֦";
			if($i==3){break;}
			$i++;
		}

		if($Muramasa_Can==10){
			$��`�ȷ���åե饰 = "����";
			$Numbering[$i] = "����";
			if($i==3){break;}
			$i++;
		}

	}

//���ڻ����ޥ��
	Array($RC_N,"","","","");

	AssocArray($RC_N,"һ��","����֦","����","���ʥ��`");

		if($Numbering[0] == "һ��"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "һ��"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "һ��"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "һ��"){
			$you_typing_rocal = 4;
		}
		$RC_N["һ��"] = $you_typing_rocal;

		if($Numbering[0] == "����֦"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "����֦"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "����֦"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "����֦"){
			$you_typing_rocal = 4;
		}
		$RC_N["����֦"] = $you_typing_rocal;

		if($Numbering[0] == "����"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "����"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "����"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "����"){
			$you_typing_rocal = 4;
		}
		$RC_N["����"] = $you_typing_rocal;

		if($Numbering[0] == "���ʥ��`"){
			$you_typing_rocal = 1;
		}else if($Numbering[1] == "���ʥ��`"){
			$you_typing_rocal = 2;
		}else if($Numbering[2] == "���ʥ��`"){
			$you_typing_rocal = 3;
		}else if($Numbering[3] == "���ʥ��`"){
			$you_typing_rocal = 4;
		}
		$RC_N["���ʥ��`"] = $you_typing_rocal;

}

function RouteChicker2($RouteChicker_Deb2){


	$Ichizyou_Can2  = $Ichizyou_Flag;
	$Kanae_Can2 = $Kanae_Flag;
	$Muramasa_Can2 = $Muramasa_Flag;
	$Others_Can2 = $Others_Flag;

//�λ�_���É��������ڻ���
	Array($Numbering2,"NotFound","NotFound","NotFound","NotFound");
	$i=0;


//�ǥХå��åե饰��z��
	if(!$RouteChicker_Deb2){}
	else if($RouteChicker_Deb2==""){}
	else if($RouteChicker_Deb2=="һ��"){$Ichizyou_Can2 = 7;$RouteChicker_Deb2 = "";}
	else if($RouteChicker_Deb2=="����֦"){$Kanae_Can2 = 7;$RouteChicker_Deb2 = "";}
	else if($RouteChicker_Deb2=="����"){$Muramasa_Can2 = 7;$RouteChicker_Deb2 = "";}
	else if($RouteChicker_Deb2=="���ʥ��`"){$Others_Can2 = 7;$RouteChicker_Deb2 = "";}
	else{}

	while(1){
		$Ichizyou_Can2++;
		$Kanae_Can2++;
		$Muramasa_Can2++;
		$Others_Can2++;

		if($Muramasa_Can2==10){
			$��`�ȷ���åե饰2 = "����";
			$Numbering2[$i] = "����";
			if($i==3){break;}
			$i++;
		}

		if($Ichizyou_Can2==10){
			$��`�ȷ���åե饰2 = "һ��";
			$Numbering2[$i] = "һ��";
			if($i==3){break;}
			$i++;
		}

		if($Kanae_Can2==10){
			$��`�ȷ���åե饰2 = "����֦";
			$Numbering2[$i] = "����֦";
			if($i==3){break;}
			$i++;
		}

		if($Others_Can2==10){
			$��`�ȷ���åե饰2 = "���ʥ��`";
			$Numbering2[$i] = "���ʥ��`";
			if($i==3){break;}
			$i++;
		}

	}

//���ڻ����ޥ��
	Array($RC_N2,"","","","");

	AssocArray($RC_N2,"һ��","����֦","����","���ʥ��`");

		if($Numbering2[0] == "һ��"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "һ��"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "һ��"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "һ��"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["һ��"] = $you_typing_rocal2;

		if($Numbering2[0] == "����֦"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "����֦"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "����֦"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "����֦"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["����֦"] = $you_typing_rocal2;

		if($Numbering2[0] == "����"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "����"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "����"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "����"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["����"] = $you_typing_rocal2;

		if($Numbering2[0] == "���ʥ��`"){
			$you_typing_rocal2 = 1;
		}else if($Numbering2[1] == "���ʥ��`"){
			$you_typing_rocal2 = 2;
		}else if($Numbering2[2] == "���ʥ��`"){
			$you_typing_rocal2 = 3;
		}else if($Numbering2[3] == "���ʥ��`"){
			$you_typing_rocal2 = 4;
		}
		$RC_N2["���ʥ��`"] = $you_typing_rocal2;

}
