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

scene md06_005.nss_MAIN
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
	#bg009_�`�}סլ��b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_006.nss";

}

scene md06_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md06_004.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

/*
	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}������", 150, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);

	CreateSE("SEL01","se��Ȼ_ˮ_����02_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
*/

	SoundPlay("@mbgm31", 0, 1000, true);
	OnBG(100, "bg014_�`�}���A��_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 1000, 100, "blind_01_00_1", true);

//����ʿ
	StL(1000, @0, @0, "cg/st/st�����_��ʿ_ͨ��_�Ʒ�.png");
	FadeStL(300, true);

	SetNwC("cg/fw/nwѲ߉����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯Ѳ߉������
<voice name="����㣯Ѳ߉����" class="����������" src="voice/md06/0050010e120">
�����������!?��

{	NwC("cg/fw/nwѲ߉����.png");}
//������㣯Ѳ߉���¡�
<voice name="����㣯Ѳ߉����" class="����������" src="voice/md06/0050020e121">
�����زأ�
���������ƺ���������ʳ�ꡣ��

{	NwC("cg/fw/nwѲ߉����.png");}
//������㣯Ѳ߉������
<voice name="����㣯Ѳ߉����" class="����������" src="voice/md06/0050030e120">
���ɶ񣬵������ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿȥ��
	CreateSE("SE01","se����_����_�ߤ�03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��˼���������÷���

���ں޲����ܴ���ʲô��
�����佫��Ͼ�˷����ź��ϣ�
��Ӧ����Щ����������¡�

��Ҫ�ڹ��Ļ���
������Ϊ�������������ʲô��

����Ӧ��ƽ�����Һ͹���ɵ��������Ҷ��ж���
����������Ӧ�����¡�Ҳ���ҵ����Ρ�

����������ֻ������

���ң���������Щʲô��

����Ҫ��β�����ֹ�������
����ɫɫ��ս����

��������ִ˫���������߳�����Χ�����������

��������ô���ܡ�

���Ҷ��ƶ���жϣ��������ж������塣
��ÿ���˶��в�ͬ�ļ�ֵ��׼��
���˶��ƶ���ж�Ҳ���ּ�����

������������ף������ƶ���֡�
��ÿ���˶�ֻ�����Լ����е��ƣ��������˵��ƻ���

��������֪������Ҫ����α�Ƶ�ս������
��
�������в�ͨ��

��α���Ѿ���ʳ��
������Ҫ���ǣ�α�Ƶ�ʤ���������´����˵��´���

���Ǹ�����Ǻá�

�����м��˵���������������

��������Ϊ����ġ�

�����Ȼ����ȷ�ġ�

��������<RUBY text="����������">����������</RUBY>���������ˡ�

��������Ҳ�����ʸ�
���������п����������������ɱ¾���ˣ�
��ʹ�ߺ�ֹͣ�����ɣ�������˵������

�����˻�����

��û�õġ�

���������˵�ɵ�ϡ�

��������ô��
����Ҫ��ô���źá�

�������ʴ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md06/0050040a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ǵġ�
��<RUBY text="��������">�޼�����</RUBY>��

����������ֻ���ƻ���ɱ¾��
û�д�����ƽ��������
��
�����ԣ��ҡ���

����ȥ����������������ɢ�����ѵ����ӡ�
��δ���Ʋã�Ҳ�޷���ֹ�Ѿ������µ����ѣ�
ֻ������Ŀ�ĵ���ʬ���⡣

��ֻ����ô����
�������ҵ�������ֻ����һ��·��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg015_�`�}·���Y_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	SetNwC("cg/fw/nwѲ߉����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������㣯Ѳ߉������
<voice name="����㣯Ѳ߉����" class="����������" src="voice/md06/0050050e120">
��ֹͣ�ֿ���
����ʵ�ذ������Ķ�������ȥ����

{	NwC("cg/fw/nw���Ӽ����.png");}
//������㣯���������
<voice name="����㣯�������" class="����������" src="voice/md06/0050060e254">
���ن��£�
������Ϊ������ô����!!��

{	NwC("cg/fw/nw���Ӽ����.png");}
//������㣯������¡�
<voice name="����㣯�������" class="����������" src="voice/md06/0050070e255">
���������Ļ������������ӣ���

{	NwC("cg/fw/nwѲ߉����.png");}
//������㣯Ѳ߉���¡�
<voice name="����㣯Ѳ߉����" class="����������" src="voice/md06/0050080e121">
��������Ⱥ�һ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�������Q
	OnSE("se���L_����_�饤�ե�Ĥ�4��", 1000);
	CreateSE("SE02", "se����_����_���Q01");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	WaitKey(2000);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0050090a00">
�������ء�����

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/md06/0050100a00">
�����������������ذ�����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���һ����š���

��Ϊʲô���š�

��Ϊ��ʲô�����š�

������Ϊ��ʲô!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_006.nss"