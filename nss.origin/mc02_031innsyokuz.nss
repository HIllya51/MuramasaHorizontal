
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031innsyokuz.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss";

}

scene mc02_031innsyokuz.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc02_031innsyoku.nss"
//ǰ�ե����롡"mc02_031innsyokua.nss"
//ǰ�ե����롡"mc02_031innsyokub.nss"
//ǰ�ե����롡"mc02_031innsyokuc.nss"
//ǰ�ե����롡"mc02_031innsyokud.nss"


//��Τ�ɤ��ʤ�

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg080_�w�д�����Ab_01a.jpg");

	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���˷�ʱ�䡣
���Ͻ��ж���

  ��ô��Ҫ���Դ򿪴�ͷ���������
�����Ǵ��ұߵ��Żص�����ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k������ͷ���򣯻ص�����
//���ס���̨��
//�����¡������£�
..//������ָ��
//���ס���̨����"mc02_031daidokoro.nss"
//�����¡������£���"mc02_031rouka3.nss"


}



//���x�k֫���`��
scene mc02_031innsyokuz.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg080_�w�д�����Ab_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(7);
//���x�k֫
	SetChoice02("����ͷ����","�ص�����");
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
			mc02_SelectIcon_Delete();
//���ס���̨����"mc02_031daidokoro.nss"
				$GameName = "mc02_031daidokoro.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//�����¡������£���"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}