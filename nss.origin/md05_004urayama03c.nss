
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_004urayama03c.nss_MAIN
{

		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg055_ɽ�\������_01=true;

	$md05_�����ݳ�=false;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$�Yɽ�K��_Flag = true;

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_004urayama03c.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_004urayama01.nss"

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg055_ɽ�\������_01.jpg");
	FadeBG(0,true);

	SoundPlay("@mbgm30", 0, 1000, true);
	StL(1000, @0, @0, "cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(0, true);

	Delete("�ϱ���");


//���m��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������ʹ���װ��Ů��ͬ�С�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0100b31">
����������˵ʲô����

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0110b31">
����Ļ�鲻���Ұ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����Ƹ��һ���˵����Ů��ץס���˫�磬
Ѹ�ٵ������ת����
�����ţ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����I����
//���Ѥ��󡣤Ϥ����ӣ�

	DeleteStL(300,true);

	OnSE("se����_����_�ӥ�01", 1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���������㱳������һ�ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0120b31">
��������Ȼ���ڵ��Ҳ����ǲ���
�����������ҵ�ʵ�������
���ǻ�����ͬ���°ɡ���

//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0130b31">
���ӱܹ�ȥ�ɲ��С�
�����۶�ô��������ҲҪ����δ����
������ʵ����

{	FwC("cg/fw/fw���I_΢Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0140b31">
���ն�������
������ʤ���ҵ����Ӱɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/004ur0150a00">
������һβ����������

{	FwC("cg/fw/fw���I_΢Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/md05/004ur0160b31">
�����ߺá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��Ȼ��Ů����˫��������ƶ����㡣

��������û�л�ͷ���뿪������ɽ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�ȵص㣨K�ߣ�
//�����Խ����Yɽ���ƄӲ���
	SoundPlay("@mbgm30", 0, 1000, true);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 1000, 1000, "blind_01_00_1", true);
	Wait(500);
	DrawDelete("�}ɫ�\", 1000, 1000, "blind_01_00_1", true);


//���ե饰�{��
//��$�Yɽ�K��_Flag = true;

//���x�k���󤭤��ݷ�����

}

..//������ָ��
//���󤭤��ݷ�"md05_004yashiki01.nss"
//�����졡"md05_004hazure01.nss"



//���x�k֫���`��
scene md05_004urayama03c.nss_SELECT
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
	SetChoice02("��լ��","����");
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
//���󤭤��ݷ�"md05_004yashiki01.nss"
				$Next_GameName = "md05_004yashiki01.nss";
				$GameName = "md05_004time.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�����졡"md05_004hazure01.nss"
				$Next_GameName = "md05_004hazure01.nss";
				$GameName = "md05_004time.nss";
		}
	}
}


