
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_031souko2.nss_MAIN
{

	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//�����٥�ȣã�
	#���٥�ȥե�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

//�룺�ǥХå��ե饰
//	$����֦����_Flag=true;
//	$�}�죲һ��Ŀ_Flag=true;
//	$��ʿ�ݽ~_Flag=false;


.//�룺��`���ж�
//����֦���������
	if($����֦����_Flag==true){
//�}�죲����ä����Ȥ��ʤ�����
		if(!$�}�죲һ��Ŀ_Flag){
			call_scene @->mc02_031souko2_k.nss;
			$souko2_k = true;//����֦�����ե饰�Τߥ�`��
			$souko2_ks = false;//����֦����+�}�죲һ��Ŀ��`��
			$souko2_ksk = false;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
			$souko2_No = false;//�ե饰�ʤ���`��
			$�}�죲һ��Ŀ_Flag = true;
//�}�죲����ä����Ȥ��������
		}else{
			if(!$��ʿ�ݽ~_Flag){
//��ʿ���ݽ~���Ƥ��ʤ�����
				call_scene @->mc02_031souko2_ks.nss;
				$souko2_k = false;//����֦�����ե饰�Τߥ�`��
				$souko2_ks = true;//����֦����+�}�죲һ��Ŀ��`��
				$souko2_ksk = false;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
				$souko2_No = false;//�ե饰�ʤ���`��
			}else{
//��ʿ���ݽ~���Ƥ������
				call_scene @->mc02_031souko2_ksk.nss;
				$souko2_k = false;//����֦�����ե饰�Τߥ�`��
				$souko2_ks = false;//����֦����+�}�죲һ��Ŀ��`��
				$souko2_ksk = true;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
				$souko2_No = false;//�ե饰�ʤ���`��
			}
		}
//����֦�����ʤ�
	}else{
		call_scene @->mc02_031souko2_No.nss;
			$souko2_k = false;//����֦�����ե饰�Τߥ�`��
			$souko2_ks = false;//����֦����+�}�죲һ��Ŀ��`��
			$souko2_ksk = false;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
			$souko2_No = true;//�ե饰�ʤ���`��
	}


//�Υݥ���ȴ_�J��
	if($souko2_No==true){
		$SelectGameName="@->"+$GameName+"_SELECT1";
		call_scene $SelectGameName;
//�룺�ե饰���ڻ�
			$souko2_k = false;//����֦�����ե饰�Τߥ�`��
			$souko2_ks = false;//����֦����+�}�죲һ��Ŀ��`��
			$souko2_ksk = false;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
			$souko2_No = false;//�ե饰�ʤ���`��
			$Next_GameName = $GameName;
			$GameName = "mc02_031time.nss"
	}else if($souko2_k==true){
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
//�룺�ե饰���ڻ�
			$souko2_k = false;//����֦�����ե饰�Τߥ�`��
			$souko2_ks = false;//����֦����+�}�죲һ��Ŀ��`��
			$souko2_ksk = false;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
			$souko2_No = false;//�ե饰�ʤ���`��
//			$�}�죲һ��Ŀ_Flag = true;
	}else if($souko2_ks==true){
		$SelectGameName="@->"+$GameName+"_SELECT2";
		call_scene $SelectGameName;
//�룺�ե饰���ڻ�
			$souko2_k = false;//����֦�����ե饰�Τߥ�`��
			$souko2_ks = false;//����֦����+�}�죲һ��Ŀ��`��
			$souko2_ksk = false;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
			$souko2_No = false;//�ե饰�ʤ���`��
	}else if($souko2_ksk==true){
		//���ե饰��᪣������
		$GameName = "mc02_031rouka2.nss";
//�룺�ե饰���ڻ�
			$souko2_k = false;//����֦�����ե饰�Τߥ�`��
			$souko2_ks = false;//����֦����+�}�죲һ��Ŀ��`��
			$souko2_ksk = false;//����֦����+�}�죲һ��Ŀ+��ʿ��ȫ�ݽ~��`��
			$souko2_No = false;//�ե饰�ʤ���`��
			$Next_GameName = $GameName;
			$GameName = "mc02_031time.nss"
	}


}

scene mc02_031souko2.nss
{

..//������ָ��
//ǰ�ե����롡"mc02_031start.nss"
//ǰ�ե����롡"mc02_031souko2.nss"

//��}�죲
//������֦ͬ�С���ʿ�ˣϥե饰�ˤƷ�᪤��ޤ�

/*
//����֦���������
	if($����֦����_Flag==true){
//�}�죲����ä����Ȥ��ʤ�����
		if(!$�}�죲һ��Ŀ_Flag){
			call_scene @->mc02_031souko2_k.nss;
//�}�죲����ä����Ȥ��������
		}else{
			if(!$��ʿ�ݽ~_Flag){
//��ʿ���ݽ~���Ƥ��ʤ�����
				call_scene @->mc02_031souko2_ks.nss;
			}else{
//��ʿ���ݽ~���Ƥ������
				call_scene @->mc02_031souko2_ksk.nss;
			}
		}

//����֦�����ʤ�
	}else{
		call_scene @->mc02_031souko2_No.nss;
	}
*/

}

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������֦���ʤ�
//������֦����_Flag���o������
..//No_Flag mc02_031souko2_No.nss
scene mc02_031souko2_No.nss
{

	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg081_�w�д�����Bb_01b.jpg");
	OnSE("se�ճ�_����_���_��01", 1000);
	DrawDelete("�ϱ���", 500, 1000, "blind_01_00_1", true);
	WaitKey(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������Ҳ�ǲֿ⡣
����һ��ʼ�ĵط���ȣ����ӻ����Ƴ�֮��������Ҫ��
��ࡣ

��������������������ܺ��ʣ�����
���ڵ�����˵�����ô���
�������ж���

������������β����������ţ��ͻ�ص�һ��ʼ��
�ֿ⡣
����������ȥ����ֻ�ܴ���λ��������ȳ���
��ͷ������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x�k����β�������أ�������
//��β����}�죱
//����ء������£�


..//������ָ��
//��β����}�죱��"mc02_031souko1.nss"
//����ء������£���"mc02_031rouka2.nss"

}



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������֦���롤����
//������֦����_Flag�����ꡢ���Ă}�죲һ��Ŀ_Flag���o������
..//mc02_031souko2_k.nss
scene mc02_031souko2_k.nss
{

	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 1500, "Black");
	SoundPlay("@mbgm21",0,1000,true);
	OnBG(100,"bg082_�w�д�����_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������׼�����ŵ��ң������̴�������ֹ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 500, true);

	StL(1000, @-60, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StL*", 300, @60, @0, DxlAuto, false);
	FadeStCL(300, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0060a04">
�������ȵȣ�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031so0070a00">
��������ô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��ͬ�������������Ÿ����Ӧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0080a04">
������������ˡ�
��������ȫ����װ��ʿ���𡭡���

//�����衿
<voice name="����" class="����" src="voice/mc02/031so0090a04">
���ƺ�����Щʲô��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031so0100a00">
���������Ҳ����������𣿣�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0110a04">
���ƺ������ɣ�

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031so0120a03">
����ô���أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031so0130a00">
����ҪóȻ�����ͻ��
�������ۻ�ȥ�����������ط��ɣ�

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0140a04">
���������²��У�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031so0150a00">
���̴Ӹ��£���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0160a04">
�����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����ˣ�
��
�������Ѳ������Ҫ�ӷ������������

���������ϲ�����Ҳ�Ѿ��������ˡ�
��ֻ�ܴ������ڣ�������Ϊǿ�����Է�ѹ�ơ�

��Ҫ���öԷ��д�Ϣ�ռ䣬������ͬ��Ͳ��ð��ˡ�
������һ��ʹ���޷��ֿ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031so0170a03">
��������

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0180a04">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ͨ�����߽��㣬���������Ѵ�ɹ�ʶ��
�������������ǽ���˭��ʵʩ�����⡣���ŵĿ���޷�
������������ͬʱ���롣

������������
��Ҫ����ȥ���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե饰�{��
..//��$�}�죲һ��Ŀ_Flag = true;
	$�}�죲һ��Ŀ_Flag = true;

//���x�k������������֦������


..//������ָ��
//��������"mc02_031souko2a.nss"
//������֦��"mc02_031souko2b.nss"
//�����衡"mc02_031souko2c.nss"


}


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//��������֦���롤����Ŀ�Խ�����ʿ�ˣ�ǰ
//������֦����_Flag�Ȃ}�죲һ��Ŀ_Flag�����ꡢ���ı�ʿ�ݽ~_Flag���ʤ�����
..//mc02_031souko2_ks.nss
scene mc02_031souko2_ks.nss
{

	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ100", 1500, "Black");
	SoundPlay("@mbgm21",0,1000,true);
	OnBG(100,"bg082_�w�д�����_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090a]
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0190a04">
���ն����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090b]
//��������
<voice name="����" class="����" src="voice/mc02/031so0200a00">
�������ѵ��������ˣ���

{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/031so0210a04">
���ǡ�
����֪���Ǹո���Щ�������ˣ����������µ�һ��
ʿ��ǰ��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/031so0220a00">
������������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/031so0230a03">
����δ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���Ŷ���ĽŲ������ڳ����ǿ�������
����Ͼ��ء�
����Ȼ��ˣ�����ֻ���ȷ����ˡ�

����ô�������˭�ϣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͬ���x�k

..//������ָ��
//��������"mc02_031souko2a.nss"
//������֦��"mc02_031souko2b.nss"
//�����衡"mc02_031souko2c.nss"


}




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
.//������ʿ��ȫ�ˣϤΈ���
//����ʿ�ݽ~_Flag��������ϡ����֤���ȄI��
..//mc02_031souko2_ksk.nss
scene mc02_031souko2_ksk.nss
{

	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg081_�w�д�����Bb_01b.jpg");

	DrawDelete("�ϱ���", 500, 1000, "blind_01_00_1", true);

	Wait(300);

//��}�죲

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text010]
���������仹����ǰ�������Ǹ��⾰��
�����ڵ��ϵ�ʿ��Ҳ���ޱ仯��

�����ǻص����ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���������£�
..//������ָ��
//�Υե����롡"mc02_031rouka2.nss"

}


//------------------------------------------------------------//
//No_Flag
.//SELECT1
scene mc02_031souko2.nss_SELECT1
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg081_�w�д�����Bb_01b.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

	mc02_SelectIcon(6);
//���x�k֫
	SetChoice02("��β","����");
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
//��β����}�죱��"mc02_031souko1.nss"
				$GameName = "mc02_031souko1.nss";
//�ƄӴ_�J�åե饰
				$�����Ƅ� = false;
				$�}�죲�Ƅ� = true;
		}
		case @�x�k֫��
		{
			ChoiceB02();
			mc02_SelectIcon_Delete();
//����ء������£���"mc02_031rouka2.nss"
				$GameName = "mc02_031rouka2.nss";
		}
	}
}

//------------------------------------------------------------//
//k
.//SELECT2
scene mc02_031souko2.nss_SELECT2
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	OnBG(100,"bg082_�w�д�����_01a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice03("����","����֦","ɴ��");
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
//��������"mc02_031souko2a.nss"
				$GameName = "mc02_031souko2a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//������֦��"mc02_031souko2b.nss"
				$GameName = "mc02_031souko2b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//�����衡"mc02_031souko2c.nss"
				$GameName = "mc02_031souko2c.nss";
		}
	}

}


