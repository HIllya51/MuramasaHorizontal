
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004yashiki01d.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg051_�����Ҿ��g_01=true;

	$md05_�����ݳ�=false;

	//����`�ȥե饰���x�k֫���Τ�GameName

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
		call_scene @->md05_004yashiki01d_01.nss;
		if($ͬ����==""){
			if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT03";}
			else{$SelectGameName="@->"+$GameName+"_SELECT01";}
		}else if(!$ͬ����){
			if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT03";}
			else{$SelectGameName="@->"+$GameName+"_SELECT01";}
		}else{$SelectGameName="@->"+$GameName+"_SELECT02";}
		call_scene $SelectGameName;
	}else if($�y�Է�_Flag && $�yĿ��_Flag && $�����Է�_Flag && $����Ŀ��_Flag && $���I�Է�_Flag && $���IĿ��_Flag && $�����Է�_Flag && $����Ŀ��_Flag && $���Է�_Flag && $��Ŀ��_Flag){
		$PreGameName = $GameName;
		$GameName = "md05_004start02.nss";
	}else{
		call_scene @->md05_004yashiki01d_01.nss;
		if($�Yɽ�K��_Flag==true){$SelectGameName="@->"+$GameName+"_SELECT03";}
		else{$SelectGameName="@->"+$GameName+"_SELECT01";}
		call_scene $SelectGameName;
	}


}

scene md05_004yashiki01d.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

	Delete("�ϱ���");


..//������ָ��
//ǰ�ե����롡"md05_004yashiki01.nss"


//���ƄӤ���
//���ե饰���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A�K�˥ե饰��ȫ�Ƥ��äƤ���
//��$�y�Է�_Flag��$�yĿ��_Flag��$�����Է�_Flag��$����Ŀ��_Flag
//��$���I�Է�_Flag��$���IĿ��_Flag��//��$�����Է�_Flag��$����Ŀ��_Flag

..//������ָ��
//�Υե����롡"md05_004start02.nss"


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��ͬ���ߤ����ʤ�orͨ���r

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ȥ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

//���x�k�����죯�Yɽ
//��$�Yɽ�K��_Flag�����äƤ�����ϡ��Yɽ���x�k֫�����⤹


..//������ָ��
//�����졡"md05_004hazure01.nss"
//���Yɽ��"md05_004urayama01.nss"


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��ͬ���ߤ�����
//���x�k������


..//������ָ��
//�����ҡ�"md05_004byoushitsu01.nss"



//���x�k֫���`��
//ͬ���ߤ����ʤ�orͨ���r
scene md05_004yashiki01d.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����","��ɽ");
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
			ChoiceA02();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���Yɽ��"md05_004urayama01.nss"
				$Next_GameName = "md05_004urayama01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}

scene md05_004yashiki01d.nss_SELECT02
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

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


scene md05_004yashiki01d.nss_SELECT03
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg051_�����Ҿ��g_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);

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
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}

