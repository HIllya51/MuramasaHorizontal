//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_012.nss_MAIN
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
	#bg088_�������ƳǤΥ۩`��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_011.nss"


//���ۥ磻�ȥ��������L�ųǤ��С�

//BGM�ʤ��Ϥ虜�ȤǤ� inc�Ѿ�

	PrintBG("�ϱ���", 30000);

	OnSE("se���L_����_⟱ڴ����w�Ф�", 1000);
	CreateColorSP("�ϰ�Ļ", 30001, "WHITE");
	DrawTransition("�ϰ�Ļ", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	Delete("�ϱ���");

//	CreateColorSP("��", 5000, "WHITE");

	OnBG(100, "bg088_�������ƳǤΥ۩`��_01b.jpg");
	FadeBG(0, true);

	CreateTextureEX("��`���ݳ�", 4500, @0, @0, "cg/bg/bg088_�������ƳǤΥ۩`��_01b.jpg");
	Zoom("��`���ݳ�", 0, 1500, 1500, null, true);
	DrawEffect("��`���ݳ�", 50, "SuperWave", 0, 500, null);
	Fade("��`���ݳ�", 0, 500, null, true);

	FadeDelete("�ϰ�Ļ",1500,true);

	Fade("��`���ݳ�", 1000, 0, null, true);
	Delete("��`���ݳ�");

	Wait(1000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/0120010a01">
�����������ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����������

�����Ǹ�ʿɽ�Ͽա���ô���������
����ֹ��ˣ��ƺ������ڴ�͹��ڡ�

��ʯ���ĵذ塢ǽ�桢�컨�塣
���봿�ͷ罨����ּȤ��Ȼ���졣

��������ʽ�ģ������ڳǱ�һ��Ľ������С�
��������ô˵��Ҳ�޷��϶�����
���������ĳһ������

���˽��������������µķ��
��Խ��Խ���ã��ⶨ��ŷ�޴�ͳ����׼�����ס�ĳǱ���

�����������治�����ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md05/0120020a00">
��������Ҫ�ȵ���ʱ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0120030a01">
����Ҫ�š����ˡ�
�������Ǵ��������������������
�ںú���������

//��������
<voice name="����" class="��������" src="voice/md05/0120040a01">
������û���κ��鷳�������������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(300);

	SetNwH("cg/fw/ny������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�������
//�����ʤ�
//�����衿
<voice name="����" class="����" src="voice/md05/0120050a04">
��˭�������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(300);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md05/0120060a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0120070a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������ƽ�oˮ��ĺ���������������Ϯ����
���ӵ�·���棬���ڵ����

��Ů�Ե�����������������������ԡ�
����ͬ��Ӣ����ǣ���Ӣ��ͬһ��Դ��ŷ�����ԡ�

����ȫ�޷����������״����
��������������

//�����ġ����ġ�������`��

{	CreateSE("����", "se����_����_�i��06");
	MusicStart("����", 0, 1000, 0, 1500, null,true);}


������ԭ����΢�ĽŲ�������ʯ�콨�����쳹��
���ػ�����
��
�������������ڵķ�λ����ֱ�ƽ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md05/0120080a01">
������������ô�죿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0120090a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ܺ�������������ǣ���ϡ�

��Ϊ�˲��������У�����ȡ�κ��ж�����õġ�
��������ʲô������Ҳ�ᱻǣ���ϡ���

�����ڣ�
������Ӧ����ô����

���Ų���ÿ����һ�Ρ���
���ұ�ȫ��ë���������ھ�����
������<RUBY text="��������������">ǹս����Ҵ�</RUBY>�𡪡�����?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���x�k�����ģ��Ӥ���

}

..//������ָ��
//�����ġ�"md05_012a.nss"
//���Ӥ��롡"md05_012b.nss"



//���x�k֫���`��
scene md05_012.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg088_�������ƳǤΥ۩`��_01b.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("�ȴ�","����");
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
//�����ġ�"md05_012a.nss"
				$GameName = "md05_012a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���Ӥ��롡"md05_012b.nss"
				$GameName = "md05_012b.nss";
		}
	}
}