
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031start.nss_MAIN
{

	mc02_FlagDef();
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg081_�w�д�����Bc_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

	$Next_GameName = $GameName;
	$GameName = "mc02_031time.nss"

}

scene mc02_031start.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc02_030.nss"



//��̽���_ʼ
//�����������䅗�}���Τ褦�ʺ��g�ʥޥåפ����⤹�룿

	PrintBG("�ϱ���", 30000);

	CreateColorSP("�}ɫ100", 10000, "Black");

	Delete("�ϱ���");


	CreateSE("�ȥ�ǥޥ�", "se���L_����_������02_L");
	MusicStart("�ȥ�ǥޥ�",0,500,0,1000,Dxl3,true);
	WaitKey(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��
�����������������������ߵ���ʮ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ڡ��}�죱


	SetVolume("�ȥ�ǥޥ�", 1500, 0, null);
	SoundPlay("@mbgm21",0,1000,true);
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bc_01.jpg");
	FadeDelete("�}ɫ100", 1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��һ����˵���ؽ������ڷ��н�����Ҫͨ��
ר����������еġ�
���Ʊ�ǿ�д����ֱ����ѵ���ɱ��ʽ������Ҳ����
���˹�ʺ�˰ɣ��ò����׳ɹ��ˡ�

�������������������������ԭ���Ѿ�˦����
���ﻤ���ͻ�����ˡ������ǵ��ֶΣ������ƿ��Ķ���
�ǽ�������׾١�
������Ҳֻ��Ӳ��ͷƤ���������ˡ�

�������⵽��Щ������״�������Ľ���ʿ���л���
�ҵ��ж��͵���Ϊֹ�ˡ�
�������Ҵ������֧Ԯ�����ξ�����á���������Ѱ
ը������ҪĿ�ķ��β��ܣ�����ʲô�öԲߡ�

�������������˵�ͬʱѰ��ը�������������Ч��
�ñ���ʽ��
��
�����ˡ���

�������ƺ��ǲֿ⡣���۶�����ɨ���ߡ����͹�
֮�����Ʒ��û�з���ը����
����������ǰ�Ĳ�״����ԭ��������ˣ�����
�Ҵ���ǽ��ʱ������������ɵİɡ�

��Ҫ˵����ڣ���ͷ������һ���������������ֱ�
Ҳ��һ����
��
��Ӧ�ô��ı߳�ȥ�أ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����׷�������
//���׷������}�죲
//������������£�

//�������ƄӤζȤ�"mc02_031time.nss"�Ǖr�g���Ƅ��ݳ������ޤ���
//���ƄӤ�ǰ�ˤ�Ŀ���趨�ؤΥե饰�����֤����ƄӤ����ˤ���Ȥ�
//��Ŀ�ĵإե饰���Ť��ޤ���

..//������ָ��
//���׷������}�죲��"mc02_031souko2.nss"
//������������£���"mc02_031rouka3.nss"


}

//���x�k֫���`��
scene mc02_031start.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_�w�д�����Bc_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(9);
//���x�k֫
	SetChoice02("���׷���","����");
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
			mc02_SelectIcon_Delete();
//���׷������}�죲��"mc02_031souko2.nss"
				$GameName = "mc02_031souko2.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//������������£���"mc02_031rouka3.nss"
				$GameName = "mc02_031rouka3.nss";
		}
	}
}

