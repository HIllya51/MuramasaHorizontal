
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsa.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_017vsa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_017vs.nss"

//��ҕҙ
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����08EX", 5800, @0, @0, "cg/ev/ev186_�����֣�㑷�_k.jpg");

	Delete("�ϱ���");

	CreateTextureEX("�}��", 6000, -1730, InBottom, "cg/ev/resize/ev186_�����֣�㑷�_klm.jpg");
	Fade("�}��", 600, 1000, Dxl2, false);
	Move("�}��", 6000, @0, -750, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������Ҫ�����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("@�}��", null);

//���x�k���ϣ��£�����
//��������˥ե饰�����z��ǡ��ΤΥե�����Ǥ���ˌ��ꤷ���Ӥ��򤵤��ޤ���

}

..//������ָ��
//���¡�"mc04_017vsaa.nss"
//�������⡡"mc04_017vsab.nss"

//���x�k֫���`��
scene mc04_017vsa.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}��", 6000, -1730, -750, "cg/ev/resize/ev186_�����֣�㑷�_klm.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("��","��","��","��");
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
//���ϡ�"mc04_017vsab.nss"
				$mc04_017vsa = ��;
				$GameName = "mc04_017vsab.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//���¡�"mc04_017vsaa.nss"
				$GameName = "mc04_017vsaa.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//����"mc04_017vsab.nss"
				$mc04_017vsa = ��;
				$GameName = "mc04_017vsab.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���ҡ�"mc04_017vsab.nss"
				$mc04_017vsa = ��;
				$GameName = "mc04_017vsab.nss";
		}
	}
}