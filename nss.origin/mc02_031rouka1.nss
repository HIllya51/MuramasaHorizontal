
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031rouka1.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg082_�w�д�����_01a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss";

}

scene mc02_031rouka1.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031rouka2.nss"
//ǰ�ե����롡"mc02_031sennshitsu.nss"�����ң���Ŀ�Τ�
//ǰ�ե����롡"mc02_031shikann.nss"



//�����£�

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg082_�w�д�����_01a.jpg");

	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������ȵľ�ͷ��
����β����ǰ������һ·��ͨ������ͷ
�����н�������һ�ȴ��š�

���ұ�Ҳ���š�
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����׷���أ���β����أ��Ҥ�
//���ס�����
//��β�������£�
//���Ҥء���ʿ����

}

..//������ָ��
//���ס����ҡ�"mc02_031sennshitsu.nss"
//��β�������£���"mc02_031rouka2.nss"
//���Ҥء���ʿ���ҡ�"mc02_031shikann.nss"

//���x�k֫���`��
scene mc02_031rouka1.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg082_�w�д�����_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(2);


//���x�k֫
	SetChoice03("��ͷ����","��β����","����");
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
			mc02_SelectIcon_Delete();
//���ס����ҡ�"mc02_031sennshitsu.nss"
				$GameName = "mc02_031sennshitsu.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
			mc02_SelectIcon_Delete();
//��β�������£���"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
			mc02_SelectIcon_Delete();
//���Ҥء���ʿ���ҡ�"mc02_031shikann.nss"
				$GameName = "mc02_031shikann.nss";
		}
	}
}


