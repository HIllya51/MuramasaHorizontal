//<continuation number="340">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_011vs.nss_MAIN
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

scene mc01_011vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_010vsa.nss"
//ǰ�ե����롡"mc01_010vsb.nss"
//ǰ�ե����롡"mc01_010vsca.nss"
//ǰ�ե����롡"mc01_010vscb.nss"


//������
//��ֱ�M����ܞ�C�Ӥ�
	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}�ݱ���", 100, Center, InBottom, "cg/bg/resize/bg002_��a_01.jpg");
	Move("�}�ݱ���", 650, @0, @200, Dxl2, false);
	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����Ǹ���ɳ����ˮһ�㣬�����������������ӿ�����
��������ȥ�Ļ�������������ܹ�ȡʤ��Ҳ�ᵼ���޿�
��صĽ����

������������ݲ����ĵ��ˣ����Ҷ���Ҳû���κ���
�塣ǰ�������¾ȳ��������𳤲����ҵ�Ŀ�ġ�
����ǰ�ĵ���ֻ�Ƿ�������һĿ�ĵ��ϰ�����ѡ�

�����½���һ���ӣ����ڱ��뾡��ͻ�ơ�
��
��������ˣ����Ѿ���ս�������غϣ���ȴ��δ������
���˿���˺���

����Ӧ�á����ɴ��׿����������������߶��ŵ�ս����
ֱ��ǰ����������
����һ��ͷ�����ҵ��Ժ�������Ȼ������������ô����
���ܱ��׿������塣

�������ҷ��������ĵģ����п��ܵ��½�������������
��ǰ�ĺ����
����������Σ����ڵ���Ҫ�����ѵ�������ȷ��������
��ȫ��

��������ô�죿

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����L�A�У������x��


}

..//������ָ��
//�����L�A�С�"mc01_011vsa.nss"
//�������x�ѡ�"mc01_011vsb.nss"

//���x�k֫���`��
scene mc01_011vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	Cockpit_AllFade0();
	CreateTextureSP("�}�ݱ���", 100, Center, InBottom, "cg/bg/resize/bg002_��a_01.jpg");
	Move("�}�ݱ���", 0, @0, @200, Dxl2, false);
	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice02("ս������","ս������");
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
//�����L�A�С�"mc01_011vsa.nss"
				$GameName = "mc01_011vsa.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�������x�ѡ�"mc01_011vsb.nss"
				$GameName = "mc01_011vsb.nss";
		}
	}
}

