
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004saidenn01d.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	$md05_�����ݳ�=false;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;


/*
	$md05_���LĿ = true; 
	$md05_���LĿ = true;
	$�Yɽ�K��_Flag=true
	$�y�Է�_Flag = true;
	$�yĿ��_Flag = true;
	$�����Է�_Flag = true;
	$����Ŀ��_Flag = true;
	$���I�Է�_Flag = true;
	$���IĿ��_Flag = true;
	$�����Է�_Flag = true;
	$����Ŀ��_Flag = true;
	$���Է�_Flag = true;
	$��Ŀ��_Flag = true;
*/

	if($md05_���LĿ == true || $md05_���LĿ == true){
		call_scene @->md05_004saidenn01d_01.nss;
		if($ͬ����==""){if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT03";}else{$SelectGameName="@->"+$GameName+"_SELECT01";}}
		else if(!$ͬ����){if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT03";}else{$SelectGameName="@->"+$GameName+"_SELECT01";}}
		else{$SelectGameName="@->"+$GameName+"_SELECT02";}
		call_scene $SelectGameName;
	}else if($�y�Է�_Flag && $�yĿ��_Flag && $�����Է�_Flag && $����Ŀ��_Flag && $���I�Է�_Flag && $���IĿ��_Flag && $�����Է�_Flag && $����Ŀ��_Flag && $���Է�_Flag && $��Ŀ��_Flag){
		$PreGameName = $GameName;
		$GameName = "md05_004start02.nss";
	}else{
		call_scene @->md05_004saidenn01d_01.nss;
		if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT03";}
		else{$SelectGameName="@->"+$GameName+"_SELECT01";}
		call_scene $SelectGameName;
	}

}

scene md05_004saidenn01d.nss
{

..//������ָ��
//ǰ�ե����롡"md05_004saidenn01.nss"


//���ƄӤ���
//���ե饰���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A�K�˥ե饰��ȫ�Ƥ��äƤ���
//��$�y�Է�_Flag��$�yĿ��_Flag��$�����Է�_Flag��$����Ŀ��_Flag
//��$���I�Է�_Flag��$���IĿ��_Flag��//��$�����Է�_Flag��$����Ŀ��_Flag

..//������ָ��
//�Υե����롡"md05_004start02.nss"


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��ͬ���ߤ����ʤ�orͨ��
scene md05_004saidenn01d_01.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ȥ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����죯���ң��󤭤��ݷ��Yɽ
//��$�Yɽ�K��_Flag�����äƤ�����ϡ��Yɽ���x�k֫�����⤹


..//������ָ��
//�����졡"md05_004hazure01.nss"
//�����ҡ�"md05_004byoushitsu01.nss"
//���󤭤��ݷ�"md05_004yashiki01.nss"
//���Yɽ��"md05_004urayama01.nss"


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��ͬ���ߤ�����
//���x�k������


..//������ָ��
//�����ҡ�"md05_004byoushitsu01.nss"


}



//���x�k֫���`��
scene md05_004saidenn01d.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);
	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("����","����","��լ��","��ɽ");
	select
	{
		//���`������
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
	
		case @�x�k֫��
		{
			ChoiceA04();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//�����ҡ�"md05_004byoushitsu01.nss"
				$Next_GameName = "md05_004byoushitsu01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���Yɽ��"md05_004urayama01.nss"
				$Next_GameName = "md05_004urayama01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
scene md05_004saidenn01d.nss_SELECT02
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice01("����");
	select
	{
		//���`������
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

		case @�x�k֫��
		{
			ChoiceA01();
//�����ҡ�"md05_004byoushitsu01.nss"
				$Next_GameName = "md05_004byoushitsu01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}


//���x�k֫���`��
//ͬ���ߤ����ʤ�or�����r
scene md05_004saidenn01d.nss_SELECT03
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("����","����","��լ��");
	select
	{
		//���`������
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
	
		case @�x�k֫��
		{
			ChoiceA04();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//�����ҡ�"md05_004byoushitsu01.nss"
				$Next_GameName = "md05_004byoushitsu01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}

//���x�k֫���`��
//ͬ���ߤ����ʤ�or�����r
scene md05_004saidenn01d.nss_SELECT03
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	StR(1000, @0, @200, "cg/st/3d����֩��_���.png");
	FadeStR(0, true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("����","����","��լ��");
	select
	{
		//���`������
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
	
		case @�x�k֫��
		{
			ChoiceA04();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//�����ҡ�"md05_004byoushitsu01.nss"
				$Next_GameName = "md05_004byoushitsu01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}
