
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

		Reset();
	}

}

scene mc01_021vsaa.nss_MAIN
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

scene mc01_021vsaa.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_021vsa.nss"

//��"mc01_021vsa.nss"���x�k֫�˺Ϥ碌���ݳ���С��᪤���
//���϶�or�¶�
//�������϶�or�¶�
//�룺�ե饰��ӛ�d
//$nc01_021vsaa_�϶�=true;
//$nc01_021vsaa_�¶�=true;
	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("�ϱ���", 30000);
	CreateSE("SE01","se���L_����_��ͻ�M01");
	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");

	if($mc01_021vsaa_�϶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	}else if($mc01_021vsaa_�¶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	}else{
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d���٥�_�T��_ͨ��.png");
	}

	Move("�}�����}", 0, @376, @-50, null, true);

	MusicStart("SE01",0,1000,0,750,null,false);
	Move("�}�����}", 300, @-60, @0, Dxl2, false);
	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ȼ�󡭡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�������Ф�B���ĤĔؤ먔��_����Ĥ�Ҋ�����o��������_

}

..//������ָ��
//�������Ф�B���ĤĔؤ먔��_��"mc01_021vsaaa.nss"
//����Ĥ�Ҋ�����o��������_��"mc01_021vsaab.nss"

//���x�k֫���`��
scene mc01_021vsaa.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_01.jpg");
	if($mc01_021vsaa_�϶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���La.png");
	}else if($mc01_021vsaa_�¶�==true){
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d�����˜�_�T��_���Lb.png");
	}else{
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d���٥�_�T��_ͨ��.png");
	}
	Move("�}�����}", 0, @316, @-50, null, true);
	Delete("������");

//���x�k֫
	SetChoice02("��������������ն�����򳱡�","��װ����ʵ����������ۡ�");
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
//�������Ф�B���ĤĔؤ먔��_��"mc01_021vsaaa.nss"
				$GameName = "mc01_021vsaaa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//����Ĥ�Ҋ�����o��������_��"mc01_021vsaab.nss"
				$GameName = "mc01_021vsaab.nss";
		}
	}
}

