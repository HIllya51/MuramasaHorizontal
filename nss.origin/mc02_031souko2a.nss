
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2a.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;


//�룺�ǥХå��ե饰
//	$�޷�ľ_Flag=true;

	if($�޷�ľ_Flag==true){
		call_scene @->mc02_031souko2a_s.nss;

		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}else{
		$GameName = "mc02_031souko2ab.nss";
	}

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//���޷�ľ_Flag��������ϡ��x�k֫���ʾ�����������ӛ
	//$GameName = "mc02_031souko2ab.nss";


}

scene mc02_031souko2a.nss
{

..//������ָ��
//ǰ�ե����롡"mc02_031souko2.nss"

}

scene mc02_031souko2a_s.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg082_�w�д�����_01a.jpg");
	Delete("�ϱ���");

//����
//�����޷�ľ������ϤΤ��x�k֫���o������ԄӤ�����
//���޷�ľ_Flag��������ϡ��x�k֫���ʾ

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������˵�������ӳ����������������ĥ����
���ƺ��ʺ��������ʶȵ��������˻���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���޷�ľ��ʹ����ʹ��ʤ�

}

..//������ָ��
//���޷�ľ��ʹ����"mc02_031souko2aa.nss"
//��ʹ��ʤ���"mc02_031souko2ab.nss"

//���x�k֫���`��
scene mc02_031souko2a.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg082_�w�д�����_01a.jpg");

	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice02("ʹ����ĥ��","��ʹ��");
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
//���޷�ľ��ʹ����"mc02_031souko2aa.nss"
				$GameName = "mc02_031souko2aa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//��ʹ��ʤ���"mc02_031souko2ab.nss"
				$GameName = "mc02_031souko2ab.nss";
		}
	}
}


