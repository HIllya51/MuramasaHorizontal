//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_030.nss_MAIN
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

scene md05_030.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_029a.nss"
//ǰ�ե����롡"md05_029b.nss"

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("�}�޴��", 1000, Center, Middle, "cg/ev/ev253_�|�I��դ��ڂ�.jpg");

	Delete("�ϱ���");

//������
	SetFwR("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���⡿
<voice name="��" class="��" src="voice/md05/0300010a14">
����һ�ʡ�
���Ǽһ��������ģ���������ʹ��Ҫ
��Ϊ�࡭�����𣿡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������
������ʹ�࡭��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������ե�å��壺�����Ȥ�ɫ�������L�Фä�
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev942_�����֣����.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev958_�L���R�\��.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev943_�����֣���ɽ.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev944_�����֣ӻ�҆��.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev123_�󄇤�֤ĥ��`���å�����.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev139_�y�򚢺�_c.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev215_���Ф˷�Ū��������.jpg");
	EfRecoIn2(300);

	WaitKey(400);

	EfRecoOut1(300);
	Delete("�}����*");
	EfRecoOut2(600,true);

//���x�k���϶�����

}

..//������ָ��
//���϶���"md05_030a.nss"
//���񶨡�"md05_030b.nss"



//���x�k֫���`��
scene md05_030.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateTextureSP("�}�޴��", 1000, Center, Middle, "cg/ev/ev253_�|�I��դ��ڂ�.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�϶�","��");
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
//���϶���"md05_030a.nss"
				$GameName = "md05_030a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���񶨡�"md05_030b.nss"
				$GameName = "md05_030b.nss";
		}
	}
}