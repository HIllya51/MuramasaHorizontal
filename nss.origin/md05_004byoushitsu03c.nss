
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004byoushitsu03c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg086_����_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004byoushitsu03c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_004byoushitsu01.nss"


//��Ŀ�Ĥ������
//�������}�������_܊װ�ξ�����ϴ×�У��i��

	SoundPlay("@mbgm30", 0, 1000, true);

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ɱ���ն��⡣
�����ǣ��ն������޷�ɱ���ն��⡣

�����Խ���ͬ���ߵ������ɡ�
��
����ϣ��ͬ������ʲô�أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k���ؤäƤ�餦�������Ƥ�餦

}

..//������ָ��
//���ؤäƤ�餦��"md05_004byoushitsu03ca.nss"
//�������Ƥ�餦��"md05_004byoushitsu03cb.nss"



//���x�k֫���`��
scene md05_004byoushitsu03c.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	SoundPlay("@mbgm30", 0, 1000, true);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateColorSP("�}��/�}��ɫ", 5010, "#990000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, -180, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureSP("�}��/�}�����}װ��", 5100, -30, InBottom, "cg/st/st�����AȾ_���L_�Ʒ�.png");

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("Ϊ���ػ���","Ϊ��ɱ����");
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
//���ؤäƤ�餦��"md05_004byoushitsu03ca.nss"
				$GameName = "md05_004byoushitsu03ca.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�������Ƥ�餦��"md05_004byoushitsu03cb.nss"
				$GameName = "md05_004byoushitsu03cb.nss";
		}
	}
}

