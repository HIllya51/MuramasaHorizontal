//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_014.nss_MAIN
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

	$GameName = "mc02_015.nss";

}

scene mc02_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_013.nss"


//�������β���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");
	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ؽ��յ���������Ͼ��Ǳ��������¶�����յ�
��������֧�䡣
�����ۺ�ʱ�εأ��ⶼ�ǲ��������

����Ȼ�Ҳ���Ϊ���������һֱ������ȥ����
���������ǽ��������ڣǣȣѵĻ�����һ�£�
��������֦С��ĸ���ԭ��֮�⣬��û�Уǣȣ�
ǣ�����б����֡�û�о��ӻ��޹ʷ�²�ˡ�

���޷�������Ϊ��������Ϊ�������������
ι�Ҷ�ʳ������Ŀ�ı���
����һ������������ж��ɡ�

����������ȴû����������
�����������Ӳ��ϳ����ţ�ֻҪ�������Ҵ����ⵥ������
��κ�ԭ���Ҷ���ӭ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(700);

//������֦
	StL(1000,@-30,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140010a03">
������Ҫ��Ҫһ��ɢ��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140020a00">
���ҵ�Ȼ������ͬ����
����ξ���¡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140030a03">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_����_�Ϊz���_��02",1000);
	WaitKey(800);

//��������

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se����_����_�i��_����_L",1000);
	WaitKey(1500);
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_01.jpg");
	DeleteStL(0,false);
	SoundPlay("@mbgm16",0,1000,true);
	SetVolume("OnSE*", 100, 0, null);
	DrawDelete("�\Ļ��", 1000, 1000, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������³������ѷ���������Ĺ��ң������Ϊ
<RUBY text="����">����</RUBY>��������ʱ�����ᱻ������ۡ�

�����뻪�ȴ�����л���������ͬ��
��������ҵĿ���ƾ������Ļ��ȣ�����������Ľ���
�����ǵľݵ㣬ͬʱҲ�ǹ����д�ա�����Ъ֮�أ�
�����˶��ѡ�

�����Ǿݵ�Ҳ�ǹ�����л��֣��ڷ�չ���о����ԡ�
��ֻҪ��������֧Ԯ�Լ�����������Ǳ㲻�����
���Ź�ģ��

������³������ѷ�Ķ��л᲻������
����������ֹ����

�������ھ���ռ�������֮���ƻ������Ļ�������
������ǿȡ�����а��ձ����Ļ�������ж��л���
��������ó�׹�ϵ�Ĺ��ң����ǻ���������Լ���������
�ս��������б�������

�����������������ϵ������ߡ�
�����Գ�Ϊ����³������ѷ���������Ĵ�Ӣ���
�������η���ѹ�����������ң������ۼ�
�Ļ���ͼ��һ����Ϊ������

����Ȼ���Դ����˵�Ⲣ�Ǻ�����ء�
���´�����Ϊ�������ڵĲ�ҵ���Ļ���������ó���ס�
���䱻�Ʒ�һ�ٶ���������񣬽�������������Ϣ��
����֮������·������

�������ֱ仯�е��־壬���𾯽��Ƶ���Ҳ���٣�
���������ۡ�������ʯ��������������ˡ�������
�෴�ģ�Խ��Խ������ڽ�����仯������ӭ����
���Ǹ����������Լ����ҵİ���³������ѷ��Щ��������

�����ֱ仯����������Ӧ�����ɡ�
������³������ѷ���ó��Ժ�������Ϊ��������Ʒ������
�����Ļ��ı���������෽���������Ļ��޷�Ч�µġ�
��������֮����١��޴�ǿ׳��

�����ԲŻᱻ��Ҫ������ռ���
��
������¶����̹�׵������ϣ�������
��Խ�����˵����塣

�����������ӵ����Խ�Ŀ�ѧ�����������Ž����
������ȥƫԶ�ط������壬��Ϊ�������Ժ�����ԥ��
������³������ѷ�۹���ҵ�ĳɾͣ�����˵��
һ�ֱ�Ȼ�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1100,@-30,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc02/0140040a00">
�����Ǻ�ΰ�ľ��¾ݵ㡣
�����ۺϻ��ܣ������ű������ֳ�
����Խ�ɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140050a03">
���ǰ�������


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140060a00">
�����Դ���Թ������ľ�ѧ���������޷�����
�������Ч�ʵĹ��졣
����Ϊ��֪Ϊ�θ�������ϸ΢�����ӡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140070a00">
������ƾ�������޵��ܱ������Ƿ��ܹ���
������в���֪��
�������ж������صġ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140080a03">
��û������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140090a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ź�����֦С���л�̸�죬
�����ķ�Ӧȴ��һ����̬�سٶۡ�
�������ú����Ĵ𰸻�Ӧ�ҡ�

����Ȼ����Ϊ���Ƕ�������Ϊ��²��ȴ����������
�������������̬�ȸе��Ծ������ƺ�������ˡ�
���۲��������飬�һ�������û����������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc02/0140100a00">
����ξ���¡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140110a03">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140120a00">
�����ò���������״��Ƿ�ѡ�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140130a03">
�������ף���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140140a03">
�������ԡ���Ҳ��ô��Ϊ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140150a00">
����Ȼ��ˡ��������ء�
����Ȼ�������˰�����������һͬɢ����
����ȴ���������ξ����Ϊ��
��ǿ�Լ�������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140160a03">
���ף���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140170a00">
�����ǿ��ȥ�ɡ�
���Է���һ�����ҽ������


{	StCL(1200,@ 80,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStCL(300,false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140180a04">
����ѽ�ն����ˡ�
���㲻����˻��ţ��ް�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140190a00">
�����ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140200a04">
����С�㣿
���ն����˶Դ�С���Ĳ����ɵ�״̬
�е����ġ���


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140210a04">
�����ԲŻ�ѯ�ʴ�С���Ƿ����
������������Ҫ��Ҫ���أ���


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140220a03">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140230a03">
��������ķǳ���Ǹ���������ˡ�
���Ҹ�ƽʱһ�����ܽ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140240a00">
������𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140250a03">
���ǵģ����ǵģ��Ҵ�ͷ���Ŷ�������
���������ء�
���������ˣ������뿴һ���𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	

	SetFwC("cg/fw/fw����֦_����.png");
	SetComic(@0,@0,13);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140260a03">
�����ᣬ��Ȼ�����ֵط�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteComic();
	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����衿
<voice name="����" class="����" src="voice/mc02/0140270a04">
������������ʲô�أ�����ɫŮ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc02/0140280a00">
�����������Ǿͺá�
���ҷ����ˡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140290a00">
����ξ���£�������˵��
����λ�޿�ȡ�����ˡ�
������ر������塣��


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140300a03">
���š����õġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140310a03">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140320a04">
���Ȳ�������״����
������������ƽʱ��̫һ���أ�
��С�㡣��


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140330a03">
���š���û�ǻ����ء�
���Ҿ͸�ƽʱһ������


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140340a04">
����������������˵������������


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140350a03">
������Ĵ������


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140360a04">
�����ǣ����������㣬�����Ǳ�������
�����еĵ粨Ũ����������Ŷ��
������ƽ�����С��Ļ���Ӧ�û����̷���
����������������ˮ��Ŷԡ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140370a03">
���ã��������ˣ��Եȡ�
��ʱ��������ȷ������������ȷ��
�粨������ȷ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStCL(200,true);

	WaitKey(500);


	Shake("@StL*", 1500, 6, 0, 2, 0, 1000, Dxl3, false);

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0091]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140380a03">
������������������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Move("@StL*", 200,@ 200,@ 0, Axl3, false);
	OnSE("se����_����_���饤�ǥ���",700);
	DeleteStL(200,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0092]
//�����衿
<voice name="����" class="����" src="voice/mc02/0140390a04">
������̫����ˡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140400a00">
������̫����ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����Ȼ��֪��������ʲô�£�������Ĵ����ξ�о�
����෽�涼���ܵ��¡�
����ֱ����һ����δ�ߣ���д��ԭ���
С˵��һ����

����Ȼ���˵��ģ�����ȴ���þ��㵣��
Ҳ�޼����¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000,@ 0,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,false);


	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����衿
<voice name="����" class="����" src="voice/mc02/0140410a04">
�����ˣ��ܿ�ͻ�ָ�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140420a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140430a04">
���Ȳ�������ˣ��ն����ˡ�
�������ֶ�����ڻ����˰ɣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140440a00">
���ǵġ�
�������ҵ������ڣ���Ȼʱ��̣ܶ�
�����ǽ����˻�̸����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140450a04">
��̸��Щʲô�ء�
����Ȼ��ֻҪ˵����Ӱ������˽��
���ݾ����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140460a00">
����������
����֮������ӡ������̵ľ��ǡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140470a00">
���ڿ�������ʲ�ʱ�س�����
���ǵĶԻ��С���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140480a04">
������������


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140490a04">
���ƺ���������һ���о����������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140500a00">
��ʧ���ˡ���


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140510a04">
��������λ����һֱ������
����Ȼ�Ҳ��������ͯ�굽���ж�Ť����
�������ƺ����ڿ�����������ִ�š���


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140520a04">
�����ڱտڶ����ڿ㡪����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140530a00">
���̴Ӹ��¡�
�����ƺ�������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140540a04">
��ʲô����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140550a00">
���������ڲ����Ƕ��ڿ�
����ִ�š�
������ִ�������ڿ�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����������ȭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/0140560a00">
���������µ���˼��������ȫ��ͬ��
�����ɽ����߻�Ϊһ̸����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140570a04">
���ǡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140580a00">
��������˵����������Ũ���Ｊ��ʦ
����Ϊ��ͽһ������


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0140590a04">
����Ȼ����ȫ����������˵ʲô��
���������ӿɲ�̫ǡ����
��������������Ȼ���С��Ĺ��췽ʽ��ͬ��
���ն�����Ҳ��ƽʱ��̫һ���ء���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140600a00">
������
������Ҳ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	OnBG(1100,"bg001_��b_01.jpg");
	FadeBG(1000,true);

	DeleteStL(0,false);
	DeleteStR(0,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����̧ͷ������ա�

��տ����
���������Ƶ���ա�

������������ν֮�¡�
��
��������������ν֮�£��Ƿ�Ҳ�Ѿ�����
����������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����`��
//�����衿
<voice name="����" class="����" src="voice/mc02/0140610a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("@OnBG*");

	WaitKey(500);

	DrawDelete("�\Ļ��", 1000, 1000, "blind_01_00_1", true);

	SoundPlay("@mbgm36",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����㳡�ƺ�����ϰ����
���Һ�Ȼͣ�½Ų���

��ʮ���˵���Ⱥӳ��������
�����������ǽ������ƺ�����Ҫ��ϰ��

�������˶����ޱ��顣
������һ�ˣ�������Ҳû�С�

������֮�����Ƕ��ǡ�
����һ������ȱ�ٱ��飬����������
����ͼ���ڲر��顣

����λʧȥ������ˣ����ֶ�������ס��
���տ�����˫�ֵ��������⿪��������������ȫ����
����׮��֮�ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc02/0140620a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��ʱ����һ�̣���Ҳ�����Ŀǰ����̬��

����������ס�۾�������������������������
���뿪�˹㳡��
�������ֳ�����Ľ�У�����ڳ���ĳ�¡�

{	OnSE("se���L_�|��_������01",1000);}

����������ǹ��ʿ���жӡ�
��ǹ�ڵ�Ȼָ����λ����ס�����ˡ�

����У����ʩ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�����Ф�Ф�Щ`��

	DeleteFwC(100,false);
	Fade("@box*",150,0,null,true);

	CreateColorEXadd("�}ɫ100", 1500, "White");

	OnSE("se���L_����_�饤�ե�Ĥ�4��",700);
	WaitKey(280);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, false);
	WaitKey(280);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, false);
	WaitKey(240);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, false);
	WaitKey(340);
	Fade("�}ɫ100", 0, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, false);

	Wait(10);
	OnSE("se����_Ѫ_�����01",1000);
	WaitKey(1000);


//	FadeFwC(300,false);
	Fade("@boxCC",150,800,null,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0181]

������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�\Ļ��", 1000, true);
	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/mc02/0140630a00">
����������������


{
	StL(1000,@-30,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300,false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140640a03">
�����ǿƲ����������� ��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140650a00">
����ξ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������һ��ͣ�½Ų�������һ��ԶԶ���������ǰɡ�
��ǰ���̵������
�������ξע������ϰ����С��˵�š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140660a03">
���������ջߡ���ı����
���������ҡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140670a00">
�����ң���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140680a03">
�������ǵú���ص��¹��𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140690a00">
���������ǵá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������ĵ绰�У�����֦��С���ἰ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mc02/0140700a00">
����ȷ����ʱ˵��ν�¹�ֻ�Ƕ���֮�ǡ���
��Ҳ����˵����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140710a03">
��û������ʵ�����ҡ�
�����������Ѿ������ĿƲ�������������ġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140720a03">
����������
����ȷ��˵��������������ġ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140730a00">
��������˵ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����������ģ�
������ؾ��۵������¼���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mc02/0140740a00">
��������ξ���¡�
���⵽������ô���£���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140750a03">
������֪���𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140760a00">
���ǵġ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140770a03">
��������£��Ѿ�������Ŷ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0140780a00">
��������ˣ�����ϣ��������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140790a03">
������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0140800a03">
���������ˡ�
�����������İɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 3000);

//���ե��`�ɥ�����

}

..//������ָ��
//�Υե����롡"mc02_015.nss"