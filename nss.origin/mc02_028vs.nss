//<continuation number="270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_028vs.nss_MAIN
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
	#ev172_�����å��`���ᥤ�ե饤Mk4C��_a=true;
	#ev172_�����å��`���ᥤ�ե饤Mk4C��_b=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#av_ST09��`�����`���`=true;

	$PreGameName = $GameName;

	$GameName = "mc02_029.nss";

}

scene mc02_028vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_029.nss"

//���w��Ş�kҊ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 5000, "#000000");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݿ�", 100, Center, -864, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");
	CreateTextureSP("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");

	CreateTextureEXadd("�}�ݴ�����", 1011, Center, Middle, "cg/st/3d�����˜�_�T��_ͨ��3b.png");
	Fade("�}�ݴ�����", 0, 600, null, true);
	DrawTransition("�}�ݴ�����", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Zoom("�}�ݴ�����", 0, 1050, 1050, null, true);

	Move("�}�ݴ���*", 0, @-400, @60, null, true);
	Shake("�}�ݴ���*", 216000, 1, 2, 0, 0, 1000, null, false);

	Move("�}�ݿ�", 75000, @0, @576, null, false);
	Move("�}�ݴ���*", 2000, @20, @-60, DxlAuto, false);

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,@256,@0,null,false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0010a01">
���������Ǹ���!?��


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0020a00">
��û��
���ҵ��ˡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 2000, 0, null);

	CreateSE("SEL01","se�\��_�w�д�_Ѳ����_L");
	MusicStart("SEL01",2000,600,0,750,null,true);

	CreateTextureEX("�}�ţ�", 5000, Center, Middle, "cg/ev/ev172_�����å��`���ᥤ�ե饤Mk4C��_a.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

	Delete("�}�ݴ���*");
	CloudZoomDelete(0,false);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���Ӻ������Լ�����Ӻ�
��������ȷ��Ư���ڿ��еľ޴�����

������Ѹ�ٲ�ֻ����Ϊ��ǰ���Ʋ��
����ս������ֱ��ǰ��Ŀ�ĵء�
������ս�����������ӷ������ǰ���Ļ�е��
���п��ܻ��������Ӱ�캽��

����ʵ�ϣ�����ս���ĺ����Ԥ����ƫ�ϡ�
����û���������˷�ʱ�䣬�ܴ��ԭ����
�������˼�����׼���˷�������

����Ǳ��ս���ڵĴ������ӣ�
�뿪������ú�㷢���źţ�
֮�����Ǳ�ɹ�׷�ٵ����ǵ��ټ���
�����ֻ��Ԥ��ʹ�����̽���ŻỨ�ѽ϶�ʱ�䡣

�������Ӿ��ܲ�׽���źſ���˵����ѡ�
��Ϊ�˲��׷����ѵõĳɹ���
���뾡����ս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
//������Ҋ�¤��Ф���
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}�ţ�");
	CreateTextureEX("�}�ݣţ�", 1000, Center, -130, "cg/ev/resize/ev172_�����å��`���ᥤ�ե饤Mk4C��_bm.jpg");
	CreateTextureSP("�}��", 1000, Center, -130, "cg/ev/resize/ev172_�����å��`���ᥤ�ե饤Mk4C��_am.jpg");
	Request("�}��*", Smoothing);
	Zoom("�}��*", 0, 700, 700, null, true);

	MusicStart("SEL01",2000,800,0,800,null,true);

	Move("�}��*", 650, @0, @-26, Dxl2, false);

	DrawDelete("�}ɫ�\", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ս����Ҫ����<RUBY text="����">��ͷ</RUBY>��
����Ϊ���͵����ң��޷�������ȷ�϶Է��Ľӽ���

��͸���ź�̽���֪������Ĵ��ڣ�
�������ǵ�����Ǵ������࣬�ֻ�ֻ��������Ӧ��
�в����жϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0030a01">
�������ô󡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0040a00">
���Ծ��÷��д���˵�Ƚ�С����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ά��˹��ʽ��ȫ��Լһ�ĩ����ߡ�
������������һ�ܵ�֪����������ѩ����֮���ս����ȣ�
������С�׼����ס�

����ʹ��ˣ���������ĽǶ����������ֱ�ǿ��и�¥��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0050a01">
����˴�ĳǱ�Ϊ�����ڿ���
Ư��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0060a00">
��ԭ��ܼ򵥡�
�����Ǹ�������װ�бȿ�����������塣��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0070a01">
������Ŷ��
�������Ǳ���ɣ�����һ�����ܽ��Ǳ���ɵ�
��ߡ���

//��������
<voice name="����" class="��������" src="voice/mc02/028vs0080a01">
���������ʱ���Ĳ��죬��Щ����
����񡣡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0090a00">
���Ȼ��ٸ�̾��
�����Ǵ���ͷ�ƽ�ȥ����ֱ�������ҡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0100a00">
��Ҫ����ѹ��ס�ƶ��֣������������
�Ļ���Ӧ������ȡ��ʱ�䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������Ҳ�Ƚ�������ը����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0110a01">
�����ס���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0120a00">
���ҹ���ȷ��һ�£���Χû�е���ɣ���


{	CreateSE("SE01","se����_���å��ԥå�_̽��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0130a01">
������û�С�
��������ֻ�����Ǻ�
�·����еĴ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������̽����ź�̽�飬˵����
��
����û�����������ڽ��д��������ϻ�������
��ͷ�ǹǵ��ڲ�ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w��Ş��ꎤ��锳�T���F�����T��
//���ӣԣ�������`�����`���`
	#av_ST09��`�����`���`=true;

	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,500,0,700,null,false);

	Fade("�}�ݣţ�", 0, 1000, null, true);
	FadeDelete("�}��", 1000, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0140a01">
���ס���
����������!?��

//��������
<voice name="����" class="��������" src="voice/mc02/028vs0150a01">
����ô���ܡ����ȵȡ���
�����������մ�����!?��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0160a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���һ�������������ֹ�Ž��е�������Ϊ��
��Ҫ˵��������մ�֢���ˣ���Ҳ���ҡ�

�������ξ��˵������
����������������ӡ����Ѵ��ڣ�

��������ս��ʹ�õ�ֻ������һ���;ֻ��Ͷ��ը����
����ս����<RUBY text="����������">���λ�����</RUBY>
������ʹ������ս�ϡ���
�����Լ����ʲôʱ����˭���������µ�!?

����������Ҳ���и��޶Ȱɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc02/028vs0170a00">
�������ϴ����Ƶ�ͬ�ࡣ��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0180a01">
�����ƣ�
��������ɽ����λ!?��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0190a00">
������ӵ�н��źŷ��併����С��װ�׹��졣
�����У����Ǹոն��ڷ���ս����Ӱ�ӵ��°ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������Ļ����ܶ���ź�̽�鼰����ȷ�ϡ�
��������Դ̽��Ļ������ܲ�׽
�����ǵ����١������Ҳ�û��
���������̶ֳȡ�

�������㹻�����Ļ������ܷ��ֵз��ӽ������ǣ�
Ҳ�������¿���ͻ�뷽���˰ɡ�
������Ҳ�����޲��ˡ�

����Ȼ���ڹؼ�ʱ�̣�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0200a01">
����ô��!?��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0210a00">
���ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ƽ�����������ֻ��
��ֻҪ�۲����ǵĶ������������������ߵ�ʵ��
���������ܡ�

�����൱����ˮ׼��
�����ǵ�Ȼ�ġ�����Ϊǰ�����ܿ�ũ����������
���������ս���˲š��������ǹ������˾���
����������ӣ�-���š�

��������ж�ħ��������ơ�
�����������֮�£����ǲ�������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mc02/028vs0220a00">
������ֱ�����գ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0230a01">
���ӡ����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0240a00">
����<RUBY text="������">��һ��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm08",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����û�����鹥���������ˡ�
��Ϊ�˶�����������塪������ֻ����
����ս����

��ֻҪ�ܳɹ����봬�գ����ٻ�������Э�������ξ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/mc02/028vs0250a00">
�������������Ӧ��ɣ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc02/028vs0260a01">
����˼��˳����Ȼ��!?��


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/028vs0270a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����T�Ȥ�
//���ɤ��ˤ��رܤ���
	SetBlur("�}�ݣţ�", true, 3, 500, 80, false);

	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE00","se���L_����_���ϕN01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Zoom("�}�ݣţ�", 600, 2000, 2000, null, false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("�}��*");

	CreateTextureSP("�}�ݱ���", 100, InLeft, Middle, "cg/bg/bg204_�����ر���b_01.jpg");
	Move("�}�ݱ���", 100000, -5088, @0, null, false);

	CreateTextureSP("�}�ݥ�`�T��", 1200, -355, 460, "cg/st/resize/3d��`�����`���`_�T��_���Lsex.png");
	CreateTextureSP("�}�ݥ�`�Tͨ", 1000, -960, 80, "cg/st/resize/3d��`�����`���`_�T��_ͨ��sex.png");
	Zoom("�}�ݥ�`�Tͨ", 0, 700, 700, null, false);
	Request("�}�ݥ�`*", Smoothing);
	Shake("�}�ݥ�`�Tͨ", 2160000, 1, 1, 0, 0, 1000, null, false);
	Shake("�}�ݥ�`�T��", 2160000, 1, 1, 0, 0, 800, null, false);

	CreateSE("SE01a","se���L_����_��ͻ�M02");
	CreateSE("SE01","se���L_����_��ͻ�M02");

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_03_1", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	BezierMove("�}�ݥ�`�Tͨ", 600, (-960, 80){-166,-40}{-10,-115}{20,-280}(-22,-320), Dxl1, false);

	Wait(200);

	MusicStart("SE01a",0,1000,0,800,null,false);
	Zoom("�}�ݥ�`��", 600, 800, 800, null, false);
	BezierMove("�}�ݥ�`�T��", 600, (-355, 460){-30,160}{120,50}{100,-130}(-341,-90), Dxl1, true);

	CreateSE("SE02","se���L_����_���ϕN01");
	CreateSE("SE02a","se���L_����_���ϕN01");


	Move("�}�ݥ�`�Tͨ", 3000, -110, @0, DxlAuto, false);
	Wait(240);
	Move("�}�ݥ�`�T��", 3000, -380, @0, DxlAuto, false);

	Wait(2760);

	MusicStart("SE02",0,1000,0,1000,null,false);
	BezierMove("�}�ݥ�`�Tͨ", 380, (-110, -320){70,-273}{270,-262}{380,-385}(1000,-400), Dxl1, false);

	Wait(240);

	MusicStart("SE02a",0,1000,0,1100,null,false);
	BezierMove("�}�ݥ�`�T��", 280, (-380, -90){40,-30}{320,0}{660,-20}(1000,-20), Dxl1, true);

	WaitKey(2000);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("�}�ݥ�`*");

	CreateTextureSP("�}�ݴ���", 1100, 1024, -572, "cg/st/3d�����˜�_�T��_��xb.png");
	Request("�}�ݴ���", Smoothing);
	Zoom("�}�ݴ���", 0, 400, 400, Dxl2, false);
	Shake("�}�ݴ���", 2160000, 1, 0, 0, 0, 1000, null, false);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���c_01.jpg");
	Move("�}�ݱ���", 300000, 0, @0, null, false);

	CloudZoomSet(2000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@1024,@-144,null,false);

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateSE("SE03","se���L_����_�ռ�����01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	BezierMove("�}�ݴ���", 600, (1024,-572){-37,-405}{-37,-300}(115,-230), Dxl1, false);

	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

	Wait(750);

	Move("�}�ݴ���", 2000, -33, @0, null, false);
	Wait(2000);

	CreateTextureSP("�}�ݥ�`�Tͨ", 1000, -735, -352, "cg/st/resize/3d��`�����`���`_�T��_ͨ��sex.png");
	CreateTextureSP("�}�ݥ�`�T��", 1200, -877, -50, "cg/st/resize/3d��`�����`���`_�T��_���Lsex.png");

	Request("�}�ݥ�`�T*", Smoothing);
	Zoom("�}�ݥ�`�T*", 0, 400, 400, Dxl2, false);
	SetBlur("�}�ݥ�`�T*", true, 1, 500, 80, false);

	CreateSE("SE04","se���L_����_��ͻ�M08");
	MusicStart("SE04",0,1000,0,1000,null,false);
	BezierMove("�}�ݥ�`�Tͨ", 600, (-735,-352){-37,-405}{-37,-300}(750,500), Dxl1, false);

	Wait(100);

	CreateSE("SE04a","se���L_����_�z_�ϵ�������01");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	SetBlur("�}�ݴ���", true, 2, 500, 60, false);
	Rotate("�}�ݴ���", 600, @0, @0, 30, DxlAuto,false);
	BezierMove("�}�ݴ���", 300, (-33,-230){-50,-200}{-80,-180}(-122,-170), Dxl3, false);

	Wait(200);

	CreateSE("SE04b","se���L_����_��ͻ�M08");

	MusicStart("SE04b",0,1000,0,1100,null,false);
	BezierMove("�}�ݥ�`�T��", 600, (-877,-50){-293,-127}{77,-140}(800,-150), Dxl1, false);

	Wait(100);

	CreateSE("SE04c","se���L_����_�z_�ϵ�������01");
	MusicStart("SE04c",0,1000,0,1000,null,false);
	Rotate("�}�ݴ���", 600, @0, @0, -30, DxlAuto,false);
	BezierMove("�}�ݴ���", 300, (-122,-170){-141,-260}{-141,-260}(-200,-275), Dxl3, false);

	Wait(100);

	CreateSE("SE04d","se���L_����_��ͻ�M01");
	MusicStart("SE04d",0,1000,0,1000,null,false);
	Move("�}�ݴ���", 600, -883, -41, Axl2, true);

//�����΂���˻ؤä�ͻ�롣�����`��

	CreateSE("SE01","se���L_����_⟱ڴ����w�Ф�");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, null, true);

	Delete("�}�ݴ���");
	Delete("�}�ݥ�`*");
	CloudZoomDelete(0,false);

	Wait(1000);

	SetVolume("@m*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("�}ɫ�\", 19900, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��
�����������������������ߵ��婖��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1000, 0);


}

..//������ָ��
//�Υե����롡"mc02_029.nss"