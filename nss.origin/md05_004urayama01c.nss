
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama01c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg055_ɽ�\������_01=true;

//	$md05_���LĿ = true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($md05_���LĿ == true){
		$SelectGameName="@->"+$GameName+"_SELECT02";
		call_scene $SelectGameName;
	}else{
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
	}


	$PreGameName = $GameName;
	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004urayama01c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004urayama01.nss"

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("�ϱ���");


//��Ӎ��
//���ե饰���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//����һ���A
//���x�k��܊װ��Ů���£��Է֤��£�Ŀ�Ĥ���


..//������ָ��
//��܊װ��Ů���¡�"md05_004urayama01ca.nss"
//���Է֤��¡�"md05_004urayama01cb.nss"
//��Ŀ�Ĥ��¡�"md05_004urayama01cc.nss"


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ڶ����A
//���x�k��Ŀ�Ĥ��£������


..//������ָ��
//��Ŀ�Ĥ��¡�"md05_004urayama01cc.nss"
//������¡�"md05_004urayama02ca.nss"

}



//���x�k֫���`��
//��һ���A�r
scene md05_004urayama01c.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(0, true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("���ھ���װ���Ů�Ե���","�����Լ�����","����Ŀ�ĵ���");
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
			ChoiceA03();
//��܊װ��Ů���¡�"md05_004urayama01ca.nss"
				$GameName = "md05_004urayama01ca.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//���Է֤��¡�"md05_004urayama01cb.nss"
				$GameName = "md05_004urayama01cb.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//��Ŀ�Ĥ��¡�"md05_004urayama01cc.nss"
				$GameName = "md05_004urayama01cc.nss";
		}
	}
}


//���x�k֫���`��
//��һ���A�r
scene md05_004urayama01c.nss_SELECT02
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0, "cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(0, true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("����Ŀ�ĵ���","���ڹ����");
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
//��Ŀ�Ĥ��¡�"md05_004urayama01cc.nss"
				$GameName = "md05_004urayama01cc.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//������¡�"md05_004urayama02ca.nss"
				$GameName = "md05_004urayama02ca.nss";
		}
	}
}





