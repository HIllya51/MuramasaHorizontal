//<continuation number="700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_022.nss_MAIN
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
	#ev238_�����̫ꖤ��¤Ƚ���_a=true;
	#bg109_������g=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_023.nss";

}

scene md05_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md05_021.nss"


//���Ϥ�������܉�����x�꤫�顣ev238a



	PrintBG("�ϱ���", 30000);
	CreateColorSP("���\", 90, "BLACK");

	CreateTextureSP("����", 1000, @0, @0, "cg/ev/ev238_�����̫ꖤ��¤Ƚ���_b.jpg");


	FadeDelete("�ϱ���",0,true);

	Wait(1000);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md05/0220010a01">
�������������ǵ����總������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

���ɵù�Զ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md05/0220020a00">
�����������𡭡���

{	FwC("cg/fw/fw����֩��_�亹.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220030a01">
���ⲻ���������µ�̤��������ʷ�ϵ�ΰ��
һ���𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������Լ�̤������һ�����п�Ҳ��֮ӿ����
�����ڱ��߷�����£�ȴ�޷������κθ��롣

  Ȼ��տ����
��Ȼ��ңԶ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	OnBG(100, "bg109_������g.jpg");
	FadeBG(0, true);

	FadeDelete("����", 1000, true);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md05/0220040a00">
���޷����Ǵ�<RUBY text="����">����</RUBY>����Ҳ����˵��
�����뵽��������Ȧ���ˣ�
����������ɵ��ٶ��ж�찡��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220050a01">
���ƺ�Ҳ��������ȫ���롣
�����ܸе�һ˿�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����������ǹ��������
��
������������û���൱���ٶ���Ӧ���ﲻ�ˡ���<k>
  ԭ����ˣ��ѹֻ������ˡ�

���ﵽ�ٶȵĴ��ۣ��Ǻʹ���Ħ���Ľ����
������������ˡ�
��������������˵��
Ҳ���Ӧ�öԾ�Ȼû���վ�����±������ʡ�

����ʹ���ǵ��������Ϻ�����Ӳ�ȣ��ܾ���ס�߻��ʹ�
����Ħ���ȶȣ�Ҳ���ò�˵�ǽ��ҡ�
��������Ϊ������������ǿ���������ء���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md05/0220060a00">
����������Ӧ������գ�ֻ�ǽӽ���ա�
��Ϊʲô��û��Ϣ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220070a01">
�����÷����ƽ����������任�����������
�Թ�������
��������Ϊ��֪����վ�ͷû�п�����
��Щ���ž����ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220080a00">
��ԭ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ʹ������������Ҳ���õ���û��������
����û��ˮ�ĵط��Ͳ�������������������л��л�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md05/0220090a01">
��ֻ�ǣ����ܼ�ֺܾá�
�������Ҫ֪������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220100a00">
��Ҫ�������þ�ǰ��
����ص�����Ȧ�ڵķ����ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220110a01">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥԡ�

	OnSE("se����_���å��ԥå�_����`��", 1000);
	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md05/0220120a01">
����������
������֮ǰ���и����⡣��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220130a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm01", 0, 1000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����������
���ص����ϣ������һ��ս��

��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md05/0220140a00">
�������Ļ�������ȥ�ķ�����û��Ҫ�����ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220150a01">
���������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������������ǡ�
���������������ȫ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ��w����������`��

	CreateColorSP("�}�\", 20000, "#000000");
	DrawTransition("�}�\", 200, 0, 1000, 500, null, "cg/data/slide_01_02_0.png", true);

	CreateSE("SE01","se���L_����_��ͻ�M04");
	CreateSE("SE05","se���L_����_��ͻ�M02");
	CreateSE("SE06","se���L_����_��ͻ�M02");
	CreateSE("SE10","se���L_����_��ͻ�M05");
	CreateSE("SE11","se���L_����_��ͻ�M05");


	CreateTextureSP("�}����100", 100, Center, -700, "cg/bg/bg109_������g.jpg");
	Zoom("�}����100", 0, 2000, 2000, null, true);

	CreateTextureEX("�}�ݴ���", 1010, Center, Middle, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Request("�}�ݴ���*", Smoothing);
	Rotate("�}�ݴ���*", 0, @0, @0, @20, null,true);
	Zoom("�}�ݴ���*", 0, 5, 5, null, true);

	SetBlur("�}�ݴ���", true, 1, 300, 70, false);
	Move("�}�ݴ���", 0, 177,-213, null, true);

	CreateTextureEXadd("�}����������", 17500, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");

	CreateColorEXadd("�}ɫ200", 18500, "WHITE");
	CreateTextureEXadd("�}�����ݤ�", 18000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}����100", 0, 1000, null, true);

	MusicStart("SE01",0,1000,0,900,null,false);
	MusicStart("SE10",0,1,0,1250,null,true);
	MusicStart("SE11",0,1,0,1200,null,true);

	Request("�ץ�����", Start);

	Move("�}����100", 3000, @0, @-200, Axl1, false);
	DrawTransition("�}�\", 200, 1000, 0, 500, null, "cg/data/slide_01_02_1.png", true);
	Delete("�}�\");

	SetVolume("SE10", 800, 1000, null);

	SetVolume("SE10", 1000, 1, null);
	SetFrequency("SE10", 1000, 800, null);
	Shake("�}�ݴ���", 2000, 1, 0, 0, 0, 1000, Axl2, false);
	Rotate("�}�ݴ���", 1100, @0, @0, @-30, Axl3,false);
	Zoom("�}�ݴ���", 1100, 5000, 5000, Axl3, false);
	BezierMove("�}�ݴ���", 1100, (-277,-213){-280,-250}{-260,-250}(7000,-148), Axl1, false);
	Fade("�}�ݴ���", 300, 1000, null, false);

	Wait(800);

	SetVolume("SE11", 600, 0, null);
	SetFrequency("SE11", 1000, 800, null);
	MusicStart("SE06",0,1000,0,950,null,false);
	Shake("�}����100", 500, 50, 30, 0, 0, 1000, Dxl2, false);

	Wait(200);

	Fade("�}�ݴ���", 100, 0, null, false);
	Fade("�}ɫ200", 200, 1000, null, true);
	SetFrequency("SE10", 0, 1200, null);

	Delete("�ץ�����");
	Delete("�}����*");
	CloudZoomDelete(0,true);
	Delete("�}����������");
	Delete("�}��*");

	CreateTextureSP("gin", 1200, 400, 200, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_am.jpg");
	SetBlur("gin", true, 3, 500, 50, false);
	Zoom("gin", 0, 2000, 2000, null, true);

	DrawDelete("�}ɫ200", 200, 500, "slide_01_02_1", false);
	Wait(100);
	CreateSE("SE03","se���L_����_���ϕN01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("gin", 600, 1000, 1000, Dxl2, false);
	Move("gin", 600, @-800, @-400, Dxl2, true);

	Wait(600);

	SetFwC("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md05/0220160a14">
���ǺǺǡ���
�������������о����أ���������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0220170a14">
�����Χ�ŵ���ת�ĳ�Ĭ��ɫ���ǣ�
�������ź�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220180a00">
�����������ź��ء���

{	FwC("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0220190a14">
����ˣ����������ѵõ�����ɡ�
��������������Σ���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0220200a14">
�����ڴ˴�˼�Ǻ��£�
�������Żص�ε���Ĺ����𡪡����ǿ���
Զ����Ⱥ�Ƕ���ǰ����Զ��ֱ����ͷȥ�����أ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220210a00">
���������߶����ǡ�
��������������ŵģ�ֻ��һ���¡���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/0220220a14">
��˵����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220230a00">
�����Ǻš�
����������ص����ϡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ص����೤�ӵ����硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���⡿
<voice name="��" class="��" src="voice/md05/0220240a14">
������˵�úá�
����ô�����������ſ������ѹ����ڴ˵ذ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������h�����y�Ǻ��ä��Ƥ����� inc�Ѿ�

	CreateTextureSP("�Ȥ��y�Ǻ�", 1000, @0, @-100, "cg/st/3d�y�Ǻ�_�Tͻ_ͨ��.png");
	Zoom("�Ȥ��y�Ǻ�", 0, 100, 100, null, true);
	Rotate("�Ȥ��y�Ǻ�", 0, @0, @0, @-5, null, true);

	FadeDelete("gin", 1000, true);
	Zoom("�Ȥ��y�Ǻ�", 150000, 500, 500, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��ȼ������֮�ƣ�ɢ����֮��Ե��������Ƚ���
�������ޱȵ�<RUBY text="������">�ٶ�</RUBY>��
�쳣���µ�<RUBY text="�������">����</RUBY>��

��������Ϯ���ң�һ����Ὣ�һ���ɡ�

��������ε���Ҫ��ɱ����

��û��ӭ��������Ҳû�з���������
�������������ϣ����޶Կ�֮����

����ǰ����ֵ�ʤ�㣬���Ҳ�����ܡ�
�������Ѿ�������֡��Һʹ����������ˣ�ս��������
���������Ǻź�������

�����¸���ζԿ��ء�

����ô������Ӯ�ء�

����ħ�������漣��ķ�����

��û�С�<k>
��
������������������������������������������

���С�

���Ȳ���ħ��Ҳ�����漣��
��ʤ���ķ������еġ�

��ֻ��һ����

�������ԡ�
���ն�����Ҫɱ���ն��⣬����ֻ��һ����

���������ⳡս��ǰ������֪����
������֪�������ȴ�޴Ӿ��ϡ�

���������ڣ����ϵ��ϡ�
�����ϵ��ϡ�

���һ���ս����

�����ԣ����ڲ��ò�����

�������������ɡ�

��ʵʩ��Ψһ�ķ����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md05/0220250a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220260a01">
���ȵȡ�
���ڵȴ����뽻սȦ��ʱ������Խ��лָ�����

//��������
<voice name="����" class="��������" src="voice/md05/0220270a01">
��˳���Ļ��������ܸ������ڵ�״��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220280a00">
�����ˡ�
����ô��Ҳ�����ʤ��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220290a00">
��Ҫ���ʤ����ֻ��һ������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220300a01">
����������ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���е�ӿ��������ս��֮����������ë������
�������Ѿ��ƽ���ûʱ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/md05/0220310a00">
��������
�����ڣ����̣�

{	SetVolume("@mbgm*", 1000, 1, null);
	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220320a00">
�����ҽ��о�����Ⱦ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(800);
	SetVolume("@mbgm*", 1000, 1000, null);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md05/0220330a01">
��������������������������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220340a00">
�����Ǿ���֧�䡣
����<RUBY text="��">����</RUBY>�ľ������ƻ�<RUBY text="��">�ٿ���</RUBY>�ľ���
Ȼ��ͬ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220350a00">
������������ǰ�ھ���������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220360a01">
��Ϊ����Ϊ��Ϊʲô?!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220370a00">
��������Ұ̫������ʱ���°ɡ�
���Ǿ��Ǵ𰸣�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���ڲ���˼������������еõ��Ľ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����

	CreateColorEX("�\", 4000, "BLACK");
	Fade("�\", 1000, 1000, null, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�������ն�����ɱ���˴ն��⡣

���������ԡ�
����ɱ�˴ն�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ���
	FadeDelete("�\", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md05/0220380a00">
��ֻҪ���ڣ���Ӯ�������Ǻš���
��Ӯ���˹⣩

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220390a00">
��������Σ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220400a01">
�������¡�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220410a00">
������������ʵ��
���ղ�Ҳ����ˣ�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220420a00">
��ȷʵ��Ҫն����˲�䣬�ҵ���ʶ��������
���ģ������
���������������Ҳ��������ڿռ�Ť���ķ�
����ն�¶Է���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220430a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220440a00">
��������������İ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220450a00">
������ɱ���ң�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220460a00">
���ٵ��ҵ�˼�룩

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����100");

	CreateTextureSP("����", 4900, -200, @0, "cg/bg/bg204_�����ر���_04.jpg");
	CreateTextureSP("����2", 4900, -200, @0, "cg/bg/bg204_�����ر���_04.jpg");
	CreateTextureSP("�}����100", 5000, 110, -240, "cg/st/3d������K_�T��_ͨ��b.png");

	CreateSCR1("@����","@����2",20000,-50,@0);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0245]
//��������
<voice name="����" class="��������" src="voice/md05/0220470a01">
���������������ܡ���

//��������
<voice name="����" class="��������" src="voice/md05/0220480a01">
��ʧȥ�˲ٿ��ߵ��ģ����޷�ս������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220490a00">
����ͨ����ʿȷʵ��ˡ�
�����Ǵ��������Ǳ���ʹ���������Ľ��У�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220500a00">
����ʹ���������ڵ�ʹ����ͬ��
����ʹ�����ҵ��ģ������ʹ�������ڣ�
���޲��

//��������
<voice name="����" class="����" src="voice/md05/0220510a00">
��ս���ɣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220520a01">
���������������ǡ���

//��������
<voice name="����" class="��������" src="voice/md05/0220530a01">
�����ǣ��ҡ���

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220540a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220550a01">
���ҡ�����Ҫ�ػ������־����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ�����

	CreateColorSP("���\", 15000, "BLACK");
	DrawTransition("���\", 200, 0, 1000, 100, Dxl3, "cg/data/circle_01_00_0.png", true);

	Delete("����*");
	Delete("�}����100");

	CreateColorSP("�\", 3000, "BLACK");
	CreateTextureSP("�}����100", 3100, Center, Middle, "cg/bg/bg109_������g.jpg");

	CreateTextureEX("gin", 3500, @-400, @-500, "cg/st/resize/3d�y�Ǻ�_�Tͻ_ͨ��l.png");
	Zoom("gin", 0, 500, 500, null, true);
	Request("gin", Smoothing);
	SetBlur("gin", true, 3, 500, 50, false);
	Fade("gin", 0, 1000, null, true);

	OnSE("se���L_����_��ͻ�M03", 1000);

	FadeDelete("���\", 200, false);


	Zoom("gin", 300, 1000, 1000, Dxl3, true);




	SetFwR("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/md05/0220560a00">
����㣡��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220570a01">
���������ģ�
����Ϊ���ҡ�������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220580a00">
�������˴�����
�����ǣ��ǽ�̤ʬ��һ·�����ģ�

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220590a00">
��Ϊ�˵ִ�˴�����̤�˶���������

//��������
<voice name="����" class="����" src="voice/md05/0220600a00">
���������ǽ��Ҵ���Ⱦ�оȳ�֮ʱ��
�����Լ�������˵���Ļ���

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220610a01">
������������

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220620a00">
���Ƿ�������<RUBY text="������">������</RUBY>�������������壬
�����ǽ�Ҫ��ͷ��
�������Ի󡭡�Ҳ�������Ի�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220630a01">
������������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220640a00">
�����ɣ�

{	FwR("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220650a00">
�������ҵ����Σ�

{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220660a00">
������������Σ�

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220670a01">
��������

{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220680a00">
��������

{	FwR("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0220690a00">
����ȡ�ҵ���ʶ!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0220700a01">
������������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������AȾ���Щ`��
	SetVolume("@mbgm*", 500, 0, null);

	CreateColorEXadd("�AȾ", 15000, "#990000");
	CreateColorEX("�·�", 3200, "BLACK");

	OnSE("se����_냇��_���Q01", 1000);
	Fade("�AȾ", 500, 700, null, true);
	CreateTextureEX("�AȾ��", 14000, @0, @0, "cg/ef/ef034_����AȾ.jpg");
	Fade("�AȾ��", 1000, 1000, null, false);

	EffectZoomadd(15000, 1000, 1000, "cg/ef/ef034_����AȾ.jpg", true);

	DeleteStA(500,true);
	Fade("�·�", 1000, 1000, null, false);
	Fade("�AȾ", 1000, 0, null, true);
	Delete("gin");
	CreateSE("SE01", "se���L_�y�Ǻ�_����AȾ��_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����Ѫ�����ĳ�������������ģ�
���սᡣ���졣

����Ϊ��ڵĸ�����

����̡�
����Ӳ��

��ǿ��
�����͡�

����Ϊ�޷���ҡ�����顣

�����������ͺá�

������������ﵽ�����ҵľ��硣

�����е����ɥ��ֻʣΨһ֮���塣

���������κ��˶������Ե�Ĵն�������
��ͨ������Ĩɱ��һ��ʽ��<k>
��
���������Ӣ����Ƶ����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���AȾ����


	OnSE("se����_냇��_������", 1000);

	CreateColorEX("�AȾ����", 15000, "#990000");

	OnSE("se����_������_������01", 1000);

	Zoom("�AȾ��", 1500, 2000, 2000, null, false);

	Fade("�AȾ����", 500, 1000, null, false);
	DrawTransition("�AȾ����", 1500, 0, 1000, 200, null, "cg/data/zoom_01_00_0.png", true);

	FadeDelete("�Ȥ��y�Ǻ�", 1000, false);

	Delete("@OnBG*");
	Delete("�AȾ��");

//��Τ�����\ inc�Ѿ�

	FadeDelete("�AȾ����",1500,true);
	SetVolume("SE*", 1000, 0, null);

	WaitKey(1500);

//�������ᡢ�ƥ����ȥܥå���������AȾ�r�ä�
//���ե��`�ɥ�����

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md05_023.nss"