
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031rouka3.nss_MAIN
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

scene mc02_031rouka3.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_031start.nss"
//ǰ�ե����롡"mc02_031rouka2.nss"
//ǰ�ե����롡"mc02_031souko1.nss"������֦�����r
//ǰ�ե����롡"mc02_031tennbou.nss"
//ǰ�ե����롡"mc02_031innsyoku.nss"
//ǰ�ե����롡"mc02_031innsyokuz.nss"


//�����£�
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg082_�w�д�����_01a.jpg");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	OnSE("se����_����_�z�i��01_L", 500);

	Wait(100);

	SetVolume("@OnSE*", 1000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Ų����������Ŀռ�������š���
�����������Լ������������Ҵ��ϵ�ĳ������ʿ����
�Ĵ�Ѳ�ߡ�����������Ѱ��ѷ�������ߡ�

�������ƺ��봬β�ܽ���
��������������ͷ���򡣷��������š�
����Ҳ���ţ������ұߵ���Ӧ�þ���ͨ��
���������Ĳֿ⡣

����ô������ô�졣û��ʱ����ԥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����׷���أ���β�أ��Ҥأ����
//���ס������£�
//��β����չ����
//���Ҥء���}�죱
//����ء����ʳ��


..//������ָ��
//���ס������£���"mc02_031rouka2.nss"
//��β����չ���ҡ�"mc02_031tennbou.nss"
//���Ҥء���}�죱��"mc02_031souko1.nss"
//����ء����ʳ�ҡ�"mc02_031innsyoku.nss"

}

//���x�k֫���`��
scene mc02_031rouka3.nss_SELECT
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

	mc02_SelectIcon(8);
//���x�k֫
	SetChoice04("��ͷ����","��β","����","����");
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
			mc02_SelectIcon_Delete();
//���ס������£���"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
			mc02_SelectIcon_Delete();
//��β����չ���ҡ�"mc02_031tennbou.nss"
				$GameName = "mc02_031tennbou.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
			mc02_SelectIcon_Delete();
//���Ҥء���}�죱��"mc02_031souko1.nss"
				$GameName = "mc02_031souko1.nss";
//�ƄӴ_�J�åե饰
				$�����Ƅ� = true;
				$�}�죲�Ƅ� = false;
		}
		case @�x�k֫��
		{
			ChoiceD04();
			mc02_SelectIcon_Delete();
//����ء����ʳ�ҡ�"mc02_031innsyoku.nss"
				$GameName = "mc02_031innsyoku.nss";
		}
	}
}


scene mc02_031rouka3.nss_SELECT02ex
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

//���x�k֫
	SetChoice04("��ͷ����","��β","����","����");
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
//���ס������£���"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//��β����չ���ҡ�"mc02_031tennbou.nss"
				$GameName = "mc02_031tennbou.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//���Ҥء���}�죱��"mc02_031souko1.nss"
				$GameName = "mc02_031souko1.nss";
//�ƄӴ_�J�åե饰
				$�����Ƅ� = true;
				$�}�죲�Ƅ� = false;
		}
		case @�x�k֫��
		{
			ChoiceD04();
//����ء����ʳ�ҡ�"mc02_031innsyoku.nss"
				$GameName = "mc02_031innsyoku.nss";
		}
	}
}


