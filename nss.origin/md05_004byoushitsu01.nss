//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu01.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg086_����_01a=true;
	#bg097_ܥԽ�����ڹ�β���_03a=true;
	#ev128_�����ι�_g01=true;


//	$�yĿ�ģ�_Flag = true;
//	$�y��_Flag = true;
//	$����Ŀ�ģ�_Flag = true;
//	$������_Flag = true;
//	$���IĿ�ģ�_Flag = true;
//	$���I��_Flag = true;
//	$����Ŀ�ģ�_Flag = true;
//	$���ҹ�_Flag = true;
//	$md05_���LĿ = true;
//	$ͬ���� = "�y";
//	$ͬ���� = "����";
//	$ͬ���� = "����";
	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	if($md05_���LĿ == true){
	//�룺ͬ���ߤ����ʤ�
		if($ͬ���� == ""){
			$SelectGameName="@->"+$GameName+"_SELECT03";
			call_scene $SelectGameName;
		}else if(!$ͬ����){
	//�룺ͬ���ߤ����ʤ�
			$SelectGameName="@->"+$GameName+"_SELECT03";
			call_scene $SelectGameName;
		}else{
	//�룺ͬ���ߤ�����
			$SelectGameName="@->"+$GameName+"_SELECT04";
			call_scene $SelectGameName;
		}
	}else if($�yĿ�ģ�_Flag == true && $�y��_Flag == true && $����Ŀ�ģ�_Flag == true && $������_Flag == true && $���IĿ�ģ�_Flag == true && $���I��_Flag == true && $����Ŀ�ģ�_Flag == true && $���ҹ�_Flag == true){
		$SelectGameName="@->"+$GameName+"_SELECT02";
		call_scene $SelectGameName;
	}else{
		$SelectGameName="@->"+$GameName+"_SELECT01";
		call_scene $SelectGameName;
	}



}

scene md05_004byoushitsu01.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_004hazure01d.nss"
//ǰ�ե����롡"md05_004saidenn01d.nss"
//ǰ�ե����롡"md05_004yashiki01d.nss"��ͬ���ߤ���r�Τ�

//����
//���ե饰���
//�������ι�
	SoundPlay("@mbgm30", 0, 1000, true);

	if($md05_�����ݳ�==ture){

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	Delete("�ϱ���");

	}else{

	$md05_�����ݳ�=ture;

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 1000, "blind_01_00_1", true);
	Wait(1000);
	DrawDelete("�}ɫ�\", 1000, 1000, "blind_01_00_1", true);

	}

	PrintBG("�ϱ���", 30000);

	if($byoushitsu01first){

		CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

		FadeDelete("�ϱ���",300,true);

	}else{

		WaitKey(1000);
	
		CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

		FadeDelete("�ϱ���", 1000, true);

	}

	$byoushitsu01first = true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��̤�밲���ķ��䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ե饰δ����
//���x�k��Ҋ�룯Ԓ����Ӎ�����ƄӤ���


..//������ָ��
//��Ҋ�롡"md05_004byoushitsu01a.nss"
//��Ԓ����"md05_004byoushitsu01b.nss"
//��Ӎ����"md05_004byoushitsu01c.nss"
//���ƄӤ��롡"md05_004byoushitsu01d.nss"



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���ե饰�����r
//���x�k��Ҋ�룯Ԓ����Ŀ�Ĥ���������ƄӤ���
//������Ŀ�ġ�����ȫ�T���顸Ŀ�Ĥ��¡�������¡���
//��Ӎ���K����ޤǳ��F���ʤ�

//�����±�Ҫ�ե饰
//��$�yĿ�ģ�_Flag��$�y��_Flag��$����Ŀ�ģ�_Flag��$������_Flag
//��$���IĿ�ģ�_Flag��$���I��_Flag��$����Ŀ�ģ�_Flag��$���ҹ�_Flag


..//������ָ��
//��Ҋ�롡"md05_004byoushitsu01a.nss"
//��Ԓ����"md05_004byoushitsu01b.nss"
//��Ŀ�Ĥ��������"md05_004byoushitsu02c.nss"
//���ƄӤ��롡"md05_004byoushitsu01d.nss"



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//���������A
//���x�k��Ҋ�룯Ԓ����Ŀ�Ĥ���������ƄӤ���

//����ͬ���ߤ����ʤ����ϡ�Ŀ�ġ����ϳ��F����
//����ͬ���ߤ�������ϡ��ƄӤ��롹�ϳ��F����

//��$����ͬ��_Flag��$�yͬ��_Flag��$����ͬ��_Flag


//��Ҋ�롡"md05_004byoushitsu01a.nss"
//��Ԓ����"md05_004byoushitsu01b.nss"
//��Ŀ�Ĥ��������"md05_004byoushitsu03c.nss"
//���ƄӤ��롡"md05_004byoushitsu01d.nss"



}



//���x�k֫���`��
//���ե饰δ�����r
scene md05_004byoushitsu01.nss_SELECT01
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("�۲�","˵��","ѯ��","�ƶ�");
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
//��Ҋ�롡"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//��Ԓ����"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//��Ӎ����"md05_004byoushitsu01c.nss"
				$GameName = "md05_004byoushitsu01c.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���ƄӤ��롡"md05_004byoushitsu01d.nss"
				$GameName = "md05_004byoushitsu01d.nss";
		}
	}
}

.//���ե饰�����r
//��$�yĿ�ģ�_Flag��$�y��_Flag��$����Ŀ�ģ�_Flag��$������_Flag
//��$���IĿ�ģ�_Flag��$���I��_Flag��$����Ŀ�ģ�_Flag��$���ҹ�_Flag
scene md05_004byoushitsu01.nss_SELECT02
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice04("�۲�","˵��","���Ŀ��","�ƶ�");
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
//��Ҋ�롡"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB04();
//��Ԓ����"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC04();
//��Ŀ�Ĥ��������"md05_004byoushitsu02c.nss"
				$GameName = "md05_004byoushitsu02c.nss";
		}
		case @�x�k֫��
		{
			ChoiceD04();
//���ƄӤ��롡"md05_004byoushitsu01d.nss"
				$GameName = "md05_004byoushitsu01d.nss";
		}
	}
}

.//���������A
//����ͬ���ߤ����ʤ����ϡ�Ŀ�ġ����ϳ��F����
scene md05_004byoushitsu01.nss_SELECT03
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("�۲�","˵��","�ƶ�");
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
//��Ҋ�롡"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//��Ԓ����"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//���ƄӤ��롡"md05_004byoushitsu01d.nss"
				$GameName = "md05_004byoushitsu01d.nss";
		}
	}
}


.//���������A
//����ͬ���ߤ����ʤ����ϡ�Ŀ�ġ����ϳ��F����
scene md05_004byoushitsu01.nss_SELECT04
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	CreateTextureSP("�}hikaru", 2000, @0, @0, "cg/ev/ev128_�����ι�_g01.jpg");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("�۲�","˵��","���Ŀ��");
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
//��Ҋ�롡"md05_004byoushitsu01a.nss"
				$GameName = "md05_004byoushitsu01a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//��Ԓ����"md05_004byoushitsu01b.nss"
				$GameName = "md05_004byoushitsu01b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//��Ŀ�Ĥ��������"md05_004byoushitsu03c.nss"
				$GameName = "md05_004byoushitsu03c.nss";
		}
	}
}

