//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004gameover.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev002_�y�Ǻ��¼�����`����=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004gameover.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	Delete("�ϱ���");

..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu02ca.nss"
//ǰ�ե����롡"md05_004byoushitsu03caa.nss"
//ǰ�ե����롡"md05_004byoushitsu03cab.nss"
//ǰ�ե����롡"md05_004time.nss"


//��ʧ��
//���ե��`�ɥ�����
//�����`�४�`�Щ`�ã�
	PrintBG("�ϱ���", 30000);

	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se����_������_�����ʑ��L_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	CreateColorSP("�ե�å����", 3000, "WHITE");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");

	Delete("�ϱ���");
	FadeDelete("�ե�å����",1500,true);

	Wait(2000);

	SetVolume("SE*", 3000, 0, null);

	CreateColorEX("�ե�å����\", 5000, "#000000");
	Fade("�ե�å����\", 2000, 1000, null, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ҫ����սһ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����餹�룯�����ȥ�ˑ���
//�����ֱ���x�k�ʤ�ե饰���ڻ����ơ���̽���_ʼ

}

..//������ָ��
//�Υե����롡"md05_004start01.nss"



//���x�k֫���`��
scene md05_004gameover.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintBG("������", 30000);

	CreateColorSP("�ե�å����\", 3000, "BLACK");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��ս","����");
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
//�����餹�롡"md05_004start01.nss"
				md05_Clearflag();
				$GameName = "md05_004start01.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�������ȥ�ˑ��롡	$GameCircle=0;
//			$GameCircle=0;
			$GameName = "mz00_000.nss";
		}
	}
}