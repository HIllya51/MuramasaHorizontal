
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vsb.nss_MAIN
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


	call_scene @->mc04_017vsb_over.nss;

	$GameName = "mz00_000.nss";

}

scene mc04_017vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_017vs.nss"

//��ҙ
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("�}����08EX", 5800, @0, @0, "cg/ev/ev186_�����֣�㑷�_k.jpg");

	Delete("�ϱ���");

//���ե��`�ɥ����ȡ�霡�
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("�", 6000, "BLACK");
	Fade("�", 3000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��������ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���������������κ������L������

//���ɤ��x��Ǥ��v�S�ʤ�
//���������Ȥ��Ф餯


}


scene mc04_017vsb_over.nss
{

	Wait(1500);

//���Ҥ�󡢤�����`���ؤ�줿��
	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	SL_rightdown2(6100,@0, @0,1500);
	SL_rightdownfade2(10);

	Wait(500);

	OnSE("se���L_����_���̤���05", 1000);

	CreateColorSP("��", 16000, "#990000");
	DrawTransition("��", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("��",2000,true);

	ClearWaitAll(1500, 0);

//���������
//�����`�४�`�Щ`

..//������ָ��
//�Υե�����


}



//=========================================================
//���x�k֫���`��
scene mc04_017vsb.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	CreateTextureSP("�}����08EX", 5800, @0, @0, "cg/ev/ev186_�����֣�㑷�_k.jpg");

	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice03("���˵ĽŲ���","���˵ĺ���","�������");
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

		case @�x�k֫��{ChoiceA03();}
		case @�x�k֫��{ChoiceB03();}
		case @�x�k֫��{ChoiceC03();}
	}
}


