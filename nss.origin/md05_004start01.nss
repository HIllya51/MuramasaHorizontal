//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004start01.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg047_�������_�a_01=true;

	$md05_�����ݳ�=false;

	//����`�ȥե饰���x�k֫���Τ�GameName
	if($�y�Է�_Flag==true && $�yĿ��_Flag == true && $�����Է�_Flag==true && $����Ŀ��_Flag == true && $���I�Է�_Flag==true && $���IĿ��_Flag == true && $�����Է�_Flag==true && $����Ŀ��_Flag == true && $���Է�_Flag && $��Ŀ��_Flag){
		$PreGameName = $GameName;
		$GameName = "md05_004start02.nss";
	}else{
		$SelectGameName="@->"+$GameName+"_SELECT";
		call_scene $SelectGameName;
	}

//	$PreGameName = $GameName;
//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

scene md05_004start01.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_003.nss"


//��̽���_ʼ
//���£ǣ�
//�����_���

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 101, "BLACK");


	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);

	CreateTextureSP("�}����100a", 100, Center, Middle, "cg/bg/bg047_�������_�a_01.jpg");
	CreateTextureSP("�}����100b", 100, Center, Middle, "cg/bg/bg047_�������_�a_01.jpg");
	Request("�}����100*", Smoothing);
	SetShade("�}����100b", HEAVY);
	Zoom("�}����100*", 0, 1300, 1300, null, true);


	Delete("�ϱ���");
	FadeDelete("�\",2000,false);

	Zoom("�}����100*", 2500, 1100, 1100, Dxl1, false);
	Fade("�}����100b", 2500, 500, Dxl1, true);

	Zoom("�}����100*", 400, 1200, 1200, Dxl1, false);
	Fade("�}����100b", 300, 1000, null, true);
	Wait(500);

	Zoom("�}����100*", 2500, 1000, 1000, AxlDxl, false);
	FadeDelete("�}����100b", 2500, true);

	FadeDelete("�}����100*", 100, true);


	SoundPlay("@mbgm30", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������

������������������������������������������������

������������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(1500);


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/004st0010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������ԭ�ء�

��չ�������ܵķ羰������ʶ����
�����ǣ����������أ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/004st0020a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��˵�������ܾ����Լ�������Ѱ����ʲô��

��Ѱ����ʲô����
����ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/004st0030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����㡹������˭��
�����ö���Χ�ľ�ɫ����ӡ����Ѱ��Щʲô��
�����˸񵽵���ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md05/004st0040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����֮��ǰ���ɡ�
����֪Ϊ�Σ���֪����ĳ���ƺ�����ʲô��

�����ҡ��������˷�ʱ�䡣
������޸��ݵ������š�����Ͽ졪��
�������ҳ�ʲô��

��������Ȼ�����ˡ�

��������㡣
�����ٴ���ǲ�֪��ʲô��Ŀ��ɡ�

��ȥ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���󤭤��ݷ����죯�Yɽ
//�������Υѩ`�Ȥ��Ƅӻ����򥫥���Ȥ���

//����ȫ�Ƥ����g�ˡ��Է֤��¡��ȡ�Ŀ�Ĥ��¡���Ӎ��
//���ȥե饰�������Τζ��A��
//���ե饰��������״�B�ǡ��ƄӤ��롹�x�k������Ԅ�
//���Ĥˡ���ڶ����A"md05_004start02.nss"

}

..//������ָ��
//���󤭤��ݷ�"md05_004yashiki01.nss"
//�����졡"md05_004hazure01.nss"
//���Yɽ��"md05_004urayama01.nss"



//���x�k֫���`��
scene md05_004start01.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice03("��լ��","����","��ɽ");
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
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//���Yɽ��"md05_004urayama01.nss"
				$Next_GameName = "md05_004urayama01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}


