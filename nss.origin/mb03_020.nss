//<continuation number="220">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_020.nss_MAIN
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
	#bg061_���ӘS�Ǵ����Ta_02=true;
	#bg105_���T�����ڂ�_02=true;
	#bg062_���ӘS�Ǵ��ֵ�_02=true;
	#bg072_��Ĥǵ����������L���B_02=true;
	#ev001_�y�Ǻ��¼�����`����=true;
	#ev003_�y�Ǻ��¼�����`����=true;
	#ev002_�y�Ǻ��¼�����`����=true;
	#ev152_Ҋ�¤��y�Ǻ�_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_021.nss";

}

scene mb03_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_019.nss"

//��С��������һ����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}�ݱ���", 500, Center, Middle, "cg/bg/bg061_���ӘS�Ǵ����Ta_02.jpg");
	Rotate("�}�ݱ���", 0, @0, @180, @0, null,true);

	CreateTextureSP("�}�ݱ�����", 200, Center, Middle, "cg/bg/resize/bg103_���ӘS������ٛg����_02l.jpg");
	Rotate("�}�ݱ�����", 0, @0, @180, @0, null,true);
	Move("�}�ݱ�����", 0, -500, 0, null, true);

	OnBG(100,"bg105_���T�����ڂ�_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��С����ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/mb03/0200010a00">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200020a02">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����������ˡ�����ǰ��
���Ӷ����ƽ�����׼�����ߵļ�϶��������ʱ��װ��
���С����ֵͿո߶ȣ���׼������ǰ����

����ʼ���ն�û������ӭ����
��
������һ�ж�����˳���ˡ�

����������Ż�Ѱ�ҷ����ı���֮�����Ϳշ�����ʮ��
֮Զ����Ӱ���ᱻĿ����û�п��ܶ����һ�������֣�
���Ͼͻ����繫������ͬʱ����ն��´�ָ����ǵ�
���ֱ�ʿ��žͻ�ǰ��׽�����ǡ�

��ԭ������ô���ǵġ����ֻ�����̶ֳȵĻ�����ʱ��
��ǿ��ͻΧҲ���ǲ����ܡ�
������Ҳ�������ֹ��ƶ�̫���ֹۡ�

������ʵ���ӿ��ţ���ֱ����ɰ�ǵ��ġ�

��װ����̬��̰�ĺ��������Һ�һ����ֱ������Ŀ
�ĵء�
��ԭ����Ϊ���ȼ��ѵ�Ǳ��֮�о�Ȼ˳����չ���ˣ���
������������ĥ��

������������<RUBY text="����">����</RUBY>������ĥ��
��
�������ͷ�Ľ���ʹ���������������׵���լۡ������
���ȫ�������۵ף�ֱ����ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��С������ȫ������ǜg�ߡ�һ��ȼ���Ƥ��ꡣ


	CreateSE("SEL01","se����_����_��������_L");
	MusicStart("SEL01",2000,500,0,700,null,true);

	Move("�}�ݱ�����", 70000, -1000, 0, null, false);
	FadeDelete("�}�ݱ���", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��С���ǳأ��Ѿ����ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200030a02">
��������ô��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0200040a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200050a02">
���ѵ��ǣ�С�����ǡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���⵽���ԸԲ��൳Ϊ���������ĵ�Ļ���ӵ�Ϯ������
��
�����ȣ����ǲ����ܵġ���һ���Լ�����ȫ�������Լ�
˵���Ļ���

����һ����ȶ�ս���г��롣�ڶ�����ν����ͯ���ټ�
������ǧ����������ܹ��ݹ��������������ж�����Ѹ
�١�
�����ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateMovie("���ӻ�", 300, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-400, null, true);


	CreateTextureSP("�}�ݱ�����", 200, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Rotate("�}�ݱ�����", 0, @0, @180, @0, null,true);

	OnBG(100,"bg062_���ӘS�Ǵ��ֵ�_02.jpg");//���ߩ`ע��
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����̤���˹��ڣ��������죬����ޱȡ�
��һ��Ҳβ���Ҷ�����

��������һƬ�ǽ塣
�����������������ͻϮ��˲�䱻�����ڲ����������
������ǹ⾰��

���ӱ��ٺۼ�������ֻ����Ϊ�ǻ���ǹɨ����ɵġ�
��������ǽ��ǰ�����������Ť�����Ȼ��ڡ�������ʲ
ô���������ڹ���ʹ���������������ڻ��ɣ�

������ʬ�塣
������������������

������ʬ�嶼���������޵ľ�װ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200060a02">
����������֡�
�������Ǳ�˭ɱ���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200070a02">
��û��һ��<RUBY text="����">����</RUBY>��ʬ�塭��
��������ô���£����ѵ��������޹���������
�ޣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200080a02">
�����������˵����ļһﶼ�����ˡ����ǻ�
�����ļһ��ء�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0200090a00">
��û�С���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200100a02">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0200110a00">
��û�л��������ˡ�
�������˶����ˡ���


//��������
<voice name="����" class="����" src="voice/mb03/0200120a00">
�����������ֻ����ʬ��
������������ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���l������
	CreateSE("SE01","se����_����_���S01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("���ӻ�");
	Delete("�}�ݱ���*");

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	DrawDelete("�\Ļ��", 150, 100, "circle_01_00_1", true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������ܡ�
���ɹ�ʬ���Ϸ���������Ѫɫ��ĭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/mb03/0200130a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������������¡��������һ���̶����䡣
��Ȼ����ʱȴ����մ���¯���ۻ������Ŀ���������
���ȡ�

��װ���������ң�����Ҳ�������ưɡ�
����������ȵ�����У���ʶ�·��Ҫ������ʾ�ͷ��

���ұ����ţ�����׷Ѱ�����ʱ�ᳬԽ��ʵ����ʶ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߤä�
//���¤��g�ء��ݸ��ⴵ���w��Ǥ�
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	WaitKey(200);
	OnBG(100,"bg072_��Ĥǵ����������L���B_02.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 500, 0, null);
	DrawDelete("�\Ļ��", 150, 100, "circle_01_00_1", true);

	CreateSE("SEL01","se����_����_��������_L");
	MusicStart("SEL01",2000,500,0,700,null,true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����Ҳ���������ǳص���������ס�ķ���ɡ�
���ƺ�һ�ȳ����Ѥ�õ�װ�Ρ�

���������̡�

����������������Ӱ��
�����顢���ѣ����е�һ�ж�һȥ������

���������ǵ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200140a02">
��������һ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0200150a00">
���ǰ���
�����ڴ�ͣǣп�������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����������������һ����ʱ�Ȼ���ҳ������ͷ��
�����������ɵ��ŵ��ǣ����ࡪ���Ĳ�������Ƭ��

�����ڼ��ҵ�ս������ɵĽ����
�����ݻ��Ľ���װ��������С���������׵����·���
����լۡ�����ֻ�һ�㣬���ֳ����˵�ģ��
<RUBY text="����������">�������ɢ</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200160a02">
�������⾿������ô���¡�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0200170a00">
��˭֪������ô���¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��ҧ��������仰��
����������𡣲������෴��

�����һĿ��Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mb03/0200180a00">
����Ӧ�ü�����һ����
������⾰����Ӧ�����ۼ���һ�Ρ���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0200190a02">
�������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����׵����ˡ�
��С�������������ˡ�

�����ǣ����ǻ�ʲô��û����
����Ϊ���ǵĵ��ˣ����ǻ�ʲôҲû����

�����ԣ����ǲ��Ǳ����˴ݻٵġ�
��ս����û��ɱ�����ǡ�

����ʲôɱ�����ǣ���ʲô������һ�С�
����ȫ��ͬ��ս����ȴ�ܻ�����������ʲô��

�������֡�
�������������еı��硣�˷�����Ĵ�������ذ���
��Х��ɽ��ŭ�𣬽��ܱ߱�Ϊ�˼�����Ļ�ɽ������

������Щͬ��������
��һ����ͻ��������һ�����޷��ֿ���һ����������顣
ȡ������������Ӫ����ֻ����Щ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);

	CreateTextureEX("�}��", 4000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	Zoom("�}��", 0, 1250, 1250, null, true);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,500,0,1000,null,false);
	FadeFR2("�}��",0,750,200,0,0,30,AxlDxl, true);
	Delete("�}��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0225a]
�����ǳ�֮Ϊ��
��ɱ¾֮����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 4000, Center, Middle, "cg/ev/ev003_�y�Ǻ��¼�����`����.jpg");
	Zoom("�}��", 0, 1250, 1250, null, true);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,750,0,1000,null,false);
	FadeFR2("�}��",0,750,200,0,0,30,AxlDxl, true);
	Delete("�}��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0225b]
�����ǳ�֮Ϊ��
������֮�ꡣ

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}��", 4000, Center, Middle, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	Zoom("�}��", 0, 1250, 1250, null, true);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR2("�}��",0,750,200,0,0,30,AxlDxl, true);
	Delete("�}��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0225c]
�����ǳ�֮Ϊ��
��ħ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 5000, "#000000");
	Fade("�}ɫ�\", 300, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0225d]
�����ң����ǳ�֮Ϊ��
��
������֮�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ߵ[�����˥쥤��`�ؤͤ��y�Ǻţ�
//���ݳ��������ơ�
//��������ݳ��������ǤΣţ֤Ϥ��äȱ����Ǥ�ʹ�÷����Ȥ��`��냇����ҕ�ǁ���졹
	CreateTextureSP("�}�ţ�", 2000, -324, -576, "cg/ev/resize/ev152_Ҋ�¤��y�Ǻ�_a��.jpg");

	CreateMovie("���ӻ�", 2001, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
	Request("���ӻ�", AddRender);
	Move("���ӻ�", 0, @0, @-400, null, true);
	Rotate("���ӻ�", 0, @0, @180, @0, null,true);


	FadeDelete("�}ɫ�\", 3000, false);
	Move("�}�ţ�", 30000, 0, @0, null, false);
	SoundPlay("@mbgm37",0,1000,true);

	Wait(4000);

	SetFwC("cg/fw/fw�y�Ǻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���⡿
<voice name="��" class="��" src="voice/mb03/0200200a14">
��Ϧ��������������
�������ƻͻ͵�ԭҰ������


//���⡿
<voice name="��" class="��" src="voice/mb03/0200210a14">
���㲻�����𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0200220a00">
���������Ǻ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�ȥ��`���Фä�
//���y�Ǻ�
	CreateTextureSP("�}�ţ֣�", 1990, Center, Middle, "cg/ev/ev152_Ҋ�¤��y�Ǻ�_a.jpg");
	SetBlur("�}�ţ֣�", true, 3, 300, 70, false);
	Zoom("�}�ţ֣�", 0, 2000, 2000, null, true);

	CreateSE("SE01","se����_냇��_�z�ǈ���02");

	CreateMovie("���ӻ�", 1999, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 4000, null, true);
	Request("���ӻ�", AddRender);
	Move("���ӻ�", 0, @0, @-100, null, true);
	Rotate("���ӻ�", 0, @0, @180, @0, null,true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}�ţ֣�", 500, 1000, 1000, Dxl2, false);
	FadeDelete("�}�ţ�", 500, true);
	Wait(2000);


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_021.nss"


