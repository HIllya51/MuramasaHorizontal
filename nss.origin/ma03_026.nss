//<continuation number="2000">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_026.nss_MAIN
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

	$GameName = "ma03_027vs.nss";

}

scene ma03_026.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_025.nss"

//�����`���åȈ�����
//�����`���åȈ���Ϧ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

	WaitKey(1000);

	OnBG(100,"bg035_�`�}���`���åȸ��a_02.jpg");
	FadeBG(2000,true);

	WaitKey(1000);

	SetFwC("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0260010a08">
���������š���˿��Ļ�����������������
���ῴ����������ս������

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0260020a08">
����Ȼ�����˲��ҵ��¹ʡ���������Ҳ��ս����
��ɫ����Щ��������ΪΣ�ն�ҫ�ۡ�
��õ��Ĵ̿��Ǻܼ����Ŷ����

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0260030a08">
���ܴ�����������п�Ķ�����ʤ�����˲�ֵ
�õõ���ߵ�������
���ԡ��ơ��ƣ���

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0260040a08">
��������ʤ����Ŷ��
����ͣǣеĹ�������ǵ��ˣ���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0260050a08">
�������ǡ���
����ʷ������һλһͳ���װ�׾���������!!��

{	CreateSE("SE01","se����_����_�Z��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0260060a08">
����ϲ��
���������������ʤ���Ľ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(2000);

//���ѥɥå�����
//��������`���󥰥�ǥ�
	ClearWaitAll(2000, 1000);

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	StR(1000, @0, @0,"cg/st/3d��������_����_ͨ��.png");
	FadeStR(0,true);
	FadeDelete("�}��ܞ", 2000, true);

	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������ء�
������������װ�ס�

��һ������˵Ļ�����һ������һ̲����һ��˯�š�
��ѹ�����ĵ�ƣ�ͻὫ��ǿ���Ե����밲�ȵ����硣

�����ڵ��ң�����û������ס��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

	StL(1010, @-60, @0,"cg/st/st����_ͨ��_˽��.png");
	StCL(1000, @60, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStA(300,false);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0260070a03">
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260080a00">
����ʲô�¡���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0260090a03">
����������Ķ�������Ѿ���ȥ�ˡ�
������Ҳ������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260100a00">
������ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0260110a04">
����·��Ů���񲻾�ǰ�ŴӼ���������
������
�����ڸոգ��ػ���ȥ�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260120a00">
���ǳ���л��
��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0260130a01">
���š���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260140a00">
�����ѡ��ķ�Ӧ�ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0260150a01">
�����ڣ����������
��һֱ�����Ǳ��پ��ѵ�״̬������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260160a00">
�������ˡ�
���������ų��������ۿ���˵�Ѿ������ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0260170a01">
��������Űɡ���

//��������
<voice name="����" class="��������" src="voice/ma03/0260180a01">
�����ǣ�Ϊʲô����
��ͣ����<RUBY text="����">����</RUBY>�׶��ء�������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0260190a02">
���ն���������
�����棬�Ǹ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260200a00">
��֮������ҵ�ְ���ˡ�
�����ȥ�ɡ���ָʾ�´�֮ǰ��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0260210a02">
�������Ǹ���
����ҲҪ��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260220a00">
����ȥ����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0260230a02">
�����������õġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260240a00">
����ξ����Ҳ�ǡ�
������������뽻���ҡ���

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0260250a03">
�������������ˡ�
���Ժ��ټ��ɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0260260a04">
��������ô��
���ȸ���ˣ��ն����ˡ���

//��ɴ����
<voice name="����" class="����" src="voice/ma03/0260270a04">
��ף�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ˡ�ȥ��
	CreateSE("SE01","se����_����_�i��01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	DeleteStA(300,true);
	SetVolume("SE*", 5000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma03/0260280a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1500, 0, null);

//�������㡣���`�������_������
//�������Υ���`��
	CreateSE("SE01","se�ճ�_ѧУ_���ҥɥ��_����01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	StL(1000, @0, @0,"cg/st/st��·_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260290b24">
��������
�����ǡ����ն��������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������ͻȻ�Խ�����̬���ֵ��ң���·׿¶�����ȵ�
���顣
�����������ǻ�·�١�����һ������Ҳ�����Ž�
�С�����Ǳ����������ڣ�û��ʱ�����ɡ�

��ֻ��ͷ��ժ�����ˣ�����һ�ԡ�
���ѵ��Ǹպ�������

��û�п�������������Ա����Ӱ��
��ֻ�л�·��Ů�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260300b24">
����ô�ˣ����ִ�硣
������û�л�ȥ�𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260310a00">
���ǵġ�
���м��£����ò�������

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260320b24">
��������
���ѵ�������ר��ǰ��ף�ص��𣿡�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0260330b24">
���ǻ����ǶԲ�ס�ˡ������õ��˰ɡ�
�������⵽��ý��������ϵ�Ϯ����������
�е㡪����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260340a00">
���ǳ��ź������ǵġ���

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260350b24">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260360a00">
��������ĺ��ź���
��������Ϊ������¡���·��������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260370b24">
������������ô�������ǡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260380a00">
��������������Ϊһ�����������ġ�
���ҷ���������񡣡�

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260390b24">
����������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0260400b42">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260410a00">
������ҵְԱ����·׿���Լ���·�١�
�����Ƕ�λ����ɱ�����Դ�������

//��������
<voice name="����" class="����" src="voice/ma03/0260420a00">
�������ҵ�������һ�ˡ���

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260430b24">
�����������⡢������ô���¡�
������ȫ�����ס���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0260440b24">
������Ϊ����ŵ��¹���
������������װ�׾����в����ټ���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260450a00">
���ǵġ���

//��������
<voice name="����" class="����" src="voice/ma03/0260460a00">
����������ų����˹���ϯ�����ұ�ը�����
�����°���������������������������ʮ����
���ˡ���

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0260470b42">
�������ء�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260480a00">
����������
����ȷʵ����װ�׾����лᷢ���ġ�����ʲô
ֵ�ô�С�ֵ����顣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260490a00">
��������ȷ��<RUBY text="����">�¹�</RUBY>�Ļ�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260500b24">
��û��û����
��������ؼ����ǣ��Ǹ��¹ʺ�����û��һ��
��ϵ����ֻ������ŵ����ּ���֮���Լ�����
���󡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260510a00">
�����ԡ���

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260520b24">
������!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260530a00">
�������û�м�������ɡ�
����������£��ἱ��ĳ������Ǳ������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260540a00">
����˵�����𡣡�

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260550b24">
�������ǡ���û�������ǵ�ȷҲ�ܽ��ǡ���
���辩Ӧ��Ҳһ����
�����������Ƶ�һ����Ҳ������һ����ѹ������
�ն���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260560a00">
���Ҳ�������һ�㡣
�������Լ����辩��������΢֪��һ�㡣����
����һ���������̶ȵĽ��Ÿо��������Լ�
��ӵ�еļ������ˡ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260570b24">
�������ǡ�������ô����
�������������˵�����ǿ϶�������Щʲô�𣡡�

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260580b24">
�����ǹ�磡
���ն���������˵�Ļ�һ�㶼��������
  ���Ƿ̰�����

//����·��
<voice name="��·" class="��·" src="voice/ma03/0260590b24">
����������Ӧ���������ϵģ�����������ж���
��һ���Ҿ����˰ɡ�
����أ������̣���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260600a00">
������������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260610b24">
�������ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260620a00">
�������Ǹ�ʱ��
���ܹ�ȷ�ϵ�<RUBY text="������">�Ǽ���</RUBY>���ˣ��дӺ󷽹۲�����
�ź���Ϯ������������ҡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260630a00">
�����й���ϯ�ϼ�����ϸ������λ�ú��ӽǶ�
�ǳ����ʵ��ˡ�����û�����˰ɡ�
����������һ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����Ǵ����ξ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_�|��_������01");
	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260640b24">
���㡭������˵ʲô����
������ȫ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260650a00">
���������Ϊ�˳�����Ϯ���ע�������е�
��Ϯ�����ϵ��Ǹ�˲�䡣
����Ϯ��װ�׵�һ����<RUBY text="������">���滯</RUBY>��������
���⡣��

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260660b24">
��!!��

{	SoundPlay("@mbgm32",0,1000,true);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260670a00">
�������������Ϯ�ż��ٷ��裬��Ҫ����ȥ��
һ˲�䡣
������ŵ�����ɥʧ�Ӿ���ʧȥ�˿��ơ���
�������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260680a00">
���ɴ������˲Ҿ硣
�������Լ����ڣ������˶�ʮһ�������ߡ���

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0260690b42">
��������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260700b24">
������֤����֤�ݡ���
��֤���ء�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260710a00">
���������
��������·�١����̽����װ����

//��������
<voice name="����" class="����" src="voice/ma03/0260720a00">
���Ǹ������ý��н���Ϊ֤����п�Ѻ����

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260730b24">
���ء����ذ���������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0260740b42">
��������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260750b24">
���ء���������������

//�����㥭��
//���|�򘋤����·
{	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0260760b42">
���������ף���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260770a00">
����������û���������Ϊ��
�����ǹ���¡�������ֻ�������������С���

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260780b24">
����������û�����壿
�����ԡ������԰�����

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260790b24">
���ҶԾ����ý���һ������������־����£�
���ֿھ����ӵ��ǵ��������ġ�
���ն�����������ʧ�ͺ��ˡ�ֻҪ�㡭����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260800a00">
��û������ġ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260810b24">
���������
�������Ҫ�����ҵ�ʤ��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260820a00">
�����ǹ���¡���

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260830b24">
���������ɣ�
����ȥ���ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���`��
//�������`��
	OnSE("se���L_�|��_����01",1000);
	CreateColorEX("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 10, 800, null, true);
	FadeDelete("�}�ե�", 300, true);

	SetFwC("cg/fw/fw��·_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260840b24">
��������!?��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260850a00">
��������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260860b24">
�������������ܡ�
�����ǲ����ܵģ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф���`��Ф���`��
//�����󤫤�
	CreateSE("SE01a","se���L_�|��_����01");
	CreateSE("SE01b","se���L_�|��_����01");
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("�}�ե�", 300, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma03/0260870a00">
������Ͷ���ɡ���·׿��
�����ĵֿ������õġ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260880b24">
��Ϊ����Ϊʲô������
�������ý����Ǳ�����װ�ף������ǲ����ܷ�
��ס�İ�����!?��

//����·��
<voice name="��·" class="��·" src="voice/ma03/0260890b24">
�������ѡ�
���ѵ�˵�����Ǹ��ǡ�����

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260900b24">
���Ǹ��ǡ���!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260910a00">
�����������ڽ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0260920a01">
����������ˣ�
��̫���ˡ����ڿ��Դ������ˡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260930a00">
������ն��
�����߱�𡣡�

//��������
<voice name="����" class="����" src="voice/ma03/0260940a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х��`��
//�������Ω`�ޥ��`��

	OnSE("se����_�z_װ��03",1000);
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}�ե�", 15000, "#FFFFFF");
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	StR(1000, @-24, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);
	FadeDelete("�ϱ���", 2000, true);
	WaitKey(1000);
	FadeDelete("�}�ե�", 2000, true);

	SetFwC("cg/fw/fw��·_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260950b24">
����������С�����
����ô���ܣ�Ϊʲô������ᡭ��!?��

{	DeleteStR(300,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260960a00">
����·׿����ǹ���¡�
����·�١�������С���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0260970a00">
���������λͶ����
��һ�еĵֿ��������õġ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0260980b24">
����������������

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0260990b42">
��������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261000b24">
��Ϊʲô����
��Ϊʲô��������������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261010b24">
���ò����ס�����ȡ����ʤ����
���ò����ף��ſ�����������ս�ġ���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261020b24">
���ա��ն���������������Ϊ���ź����ģ�
����֪���ҵ��ź��ɣ���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261030b24">
���ҡ����ң��ò����ײŴ��Ǵδ������ߵ���
һ������
�������˶��ٵĿడ��������Ļ���Ӧ�û���
���ҵİ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261040a00">
��������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261050b24">
����Ź��Ұɡ�����
�������ˡ������㡭����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261060a00">
�������������ܵĿࡣ
����Ȼ���޴������������е�ͬ�顣��

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261070b24">
���ա����ն�����������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261080a00">
�����ǡ�
����ɱ���ˡ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261090b24">
�������أ���

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261100b42">
�������ն���������
��ɱ�˵ġ������ҡ�����

//���١�
<voice name="��" class="��" src="voice/ma03/0261110b42">
���������ǡ������ס�����

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261120b24">
���١�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261130a00">
������������

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261140b24">
���ҡ���ɱ���辩���Ǹ��һ��������Ρ�
����Ҳ�����˰ɣ������������˺������ǡ���
��Ҫɱ�����ǰ�����

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261150b24">
����ֻ��������Щ�һ�����һ�������飡��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261160a00">
����������˺�����һ�������顣
��ҲӦ�ú����ǳе���һ�������𡣡�

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261170b24">
�����ء�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261180a00">
��������һ��˵��
����ʹ����һ���ϷŹ����ǡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261190a00">
�����ڱ������¹ʵĹ�����˵��һ�еĽ��Ͷ�
���в�ͨ�ġ�
������û�ж��������κ��¡���ȴ��ɱ������
���������ˡ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261200b24">
���ء��������ء���
���ɶ񣬿ɶ񣬿ɶ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф����Ф����
	CreateSE("SE01a","se���L_�|��_����02");//���ߩ`ע��
	CreateSE("SE01b","se���L_�|��_����02");//���ߩ`ע��
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("�}�ե�", 300, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma03/0261210a00">
��������

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261220b24">
����������ô�ˣ�
����Щ�һ����һ�Ծ��ʱ��������������Ȳʣ�
������ʤ�������񡣡�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261230b24">
��һ����ʧ���ˣ������ϰ������øɸɾ�����
����һ��Ӣ��΢Ц��
������ֻ�ǰ��ҵ���һ�����ѣ�����ʳ��һ
�����������һ������

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261240b24">
�����ּһ���ܵ���󲨼���������ʲô��ϵ��
��������ʲô��ϵ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф����Ф����
	CreateSE("SE01a","se���L_�|��_����02");//���ߩ`ע��
	CreateSE("SE01b","se���L_�|��_����02");//���ߩ`ע��
	MusicStart("SE01a",0,1000,0,1300,null,false);
	CreateColorEX("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 10, 800, null, true);
	MusicStart("SE01b",0,1000,0,700,null,false);
	FadeDelete("�}�ե�", 2000, true);

//������������������������
	OnSE("se���L_�|��_�}��������01",1000);//���ߩ`ע��

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma03/0261250a00">
������Ͷ���ɡ���

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261260b24">
���ء�������������������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261270a00">
���������Ͷ�������־��ܣ��Ͳ������¡�
���ұ�֤���ܵõ��Ϸ��Ĵ�������

{	FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261280b24">
����������Ļ����һ���ô������
���ٻ���ô������

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261290b24">
�������ʤ���ء���
�����������ս�أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261300a00">
��������

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261310b24">
����Ҫ������!?
��ȫ����һ�У���Ҫ�������������!?��

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261320b24">
�����ҷ����𡪡�
����Ҫ��һ�ζ���˵�����ҷ����𣡡�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261330b24">
���Ҳ�Ҫ������Ҫ��Ҫ��Ҫ��
������������һ�ζ����뾭�������ѵ�
��Ҫ�Ҿ����ڶ����𣡡�

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261340b24">
�������ø���ģ�
�������ʤ���������ҵģ���ͨ������ĵ�·
�������ҵģ����Ҳ����ø��κ��˵�!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261350a00">
����·׿��
�����Ѿ����������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261360a00">
����������
�������ս����ʽ��ʱ�򡣾��Ѿ�ʧȥ�ˡ���

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261370b24">
�������ϡ���
���Ҳ�����ϵġ�����

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261380b24">
���١���
������װ�ף���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261390b42">
���������ס�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261400a00">
����·׿��
����Ͷ������

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261410b24">
���٣���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261420b42">
���������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����㥭����װ��
//�����٥�
	CreateSE("SE01","se����_�z_װ��01");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(300);

	StL(1000, @0, @0,"cg/st/3d���٥�_����_ͨ��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma03/0261430a00">
����·�١�������㸸�׵�ָʾҲû�����壡
��������Ҫ��β��ݾ����ý��ж��ǲ����ܷ�
���ģ���

//��������
<voice name="����" class="����" src="voice/ma03/0261440a00">
�������װ����

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261450b42">
�������Բ��𡣴ն�������
����ȷ��һ�����϶�����������

//���١�
<voice name="��" class="��" src="voice/ma03/0261460b42">
�����ǡ���������ˡ���
���һ��������׵ġ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261470a00">
�������ء�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261480b24">
��û�����١�
�����ǲ��Ƿֿ��ġ�������һ��ġ���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261490b24">
���Ҿ����㡣
��������ҡ���

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261500b42">
���ǡ���

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261510b24">
�����ʤ�������ҵ�ʤ����
�����������ʤ������

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261520b42">
���ǡ���

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261530b24">
���ұ���������ʤ������
������Ҫ��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������á�
//��x�k�ӤޤȤ�
	CreateSE("SE01","se����_��x_�k��04");
	CreateSE("SE02","se�ճ�_����_�����饹�Ɖ�01");
	CreateSE("SE03","se�ճ�_��_ľ�䉲���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);

	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma03/0261540a00">
������!?��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0261550a01">
��������
���������ǡ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����·׿�ӻ���ȡ����һ��������
��ȭͷ��С�ģ���������塪��

�������Ǻŵġ��ѡ�!!

�������ѵ�û��ֲ����!?
�����Ǻž��������ֽ���������!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma03/0261560a00">
�����Բ�û�з����𡭡�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0261570a01">
�����Բ�û�з�����!?��

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261580b42">
�����ס���
�����ǡ�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261590b24">
����<RUBY text="����">����</RUBY>��
���϶��ǣ��ǳ��ǳ��ֲ�����������

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261600b24">
���Ǵ���ɫ�Ķ�ħ����õ���Ŷ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261610a00">
�����ϰ��Ǹ����ң���·׿��
���ǲ����������κζ�������

//��������
<voice name="����" class="����" src="voice/ma03/0261620a00">
��ֻ����ߣ�
����һ�ж����ߣ���

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261630b24">
�������š���ħҲ��ô˵����
����������Ļ��ͻ�ʧȥһ�С���

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261640b24">
��Ȼ����Ϊ��������
���Ϳ��Եõ�����Ҫ����������

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261650b24">
������ʵ��ͳ�쾺����������룡��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261660a00">
��������ƭ!!
��Ҳ���ȷ���Ի����������������������ֻ
���������������Ů����ͨͨ��ʳ�ɾ�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261670b24">
��������ô����
�����������Լ��Ļ�����Ҳ������ʧȥ�Լ�
��һ���֣��١�
���޷����ܵ�ֻ�С�����

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261680b24">
���޷����ܵ�ֻ��ʧȥ�ҺͲٵ�ʤ��!!��

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261690a00">
����·׿!!��

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261700b24">
���٣�
������ҪӮ��������һ��ҪӮ!!��

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261710b42">
�������ǡ����ס���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0261720a01">
��������
�����У���ֹ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261730a00">
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؓ�
	SetVolume("@mbgm*", 10, 0, null);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��", 10, "#000000");
	Delete("�ϱ���");

	OnSE("se���L_����_�����01",1000);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	WaitKey(500);

//�����Ф��塣
	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	SL_centerdam(@0, @0,1000);
	SL_centerdamfade2(10);

	CreateColorEX("�}Ѫ", 5000, "#CC0000");
	Fade("�}Ѫ", 600, 1000, null, true);

	PrintGO("�ϱ���", 25000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fw���٥�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���١�
<voice name="��" class="��" src="voice/ma03/0261740b42">
��������������!?��

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261750b24">
���ء�����

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261760b24">
��Ŷ��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å��塣�ԥ��`��
//��x�k�ӤޤȤ�
	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/ma03/0261770a01">
�����ѡ�����!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261780a00">
���ء�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥�
//���ե�å��塣�ʤ������ޤä��äݤ�������äȉ��Σ�
	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwC("cg/fw/fw���٥�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���١�
<voice name="��" class="��" src="voice/ma03/0261790b42">
�����ף�
����������!!��

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261800b24">
��ȥ����ȥ�ɡ�
��ȥ�ɡ�����!!��

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261810b24">
��ҪӮ��
��Ҫսʤ���磡��

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261820b42">
��Ѫ����������������

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261830b24">
���٣�
���Ҿ��������

//����·��
<voice name="��·" class="��·" src="voice/ma03/0261840b24">
���Ǹ���Ϯ������ң�
�����Ѫ������ң�
���������𣡡�

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261850b42">
�������ء�����

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261860b24">
��ȥ��Խ����ɣ��٣�
�����ҵ����壡
�����ҵļ�������

{	FwC("cg/fw/fw��·_���.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261870b24">
�����ҡ���ȥ����Ķ��㣡
���١���������������������������!!��

{	FwC("cg/fw/fw���٥�_ͨ��.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0261880b42">
��������������������

//���١�
<voice name="��" class="��" src="voice/ma03/0261890b42">
����������������������
������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥���ʧ
//���Ф�`�󡣷��Ƥ롣
//��x�k�ӤޤȤ�
	CreateSE("SE01a","se���L_����_��ͻ�M01");
	CreateSE("SE01b","se���L_����_��ͻ�M02");
	CreateSE("SE02","se�ճ�_����_�����饹�Ɖ�01");
	CreateSE("SE03","se�ճ�_��_ľ�䉲���01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	WaitKey(100);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}�ե�", 600, 0, null, false);
	DrawDelete("�}�ե�", 300, 500, "slide_05_00_1", true);

	SetFwC("cg/fw/fw��·_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261900b24">
������û�����١�
�����졭������ؼ��ۡ�����

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0261910b24">
��ֱ��������ġ�����ͷ����������

//���������������
{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261920a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����·׿���ˡ�
����ɱ������

�����ң�û����ֹ��������
��ֻ�ǡ���ɱ�������ѡ�����

����ô����
�����ӵģ����

���ҡ�����һ�Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/ma03/0261930a01">
����������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261940a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0261950a01">
����������׷��ȥ����׷����
���Ǹ����ѡ����پ����˰������Ǹ����϶�
�������������б�<RUBY text="����">����</RUBY>��֮��
��ȡ�����İ�������

//��������
<voice name="����" class="��������" src="voice/ma03/0261960a01">
����������Ϊֹ��û�з�����
�������ڲ�һ���ˣ������ѡ����Ǹ�����
�п�ʼ�����ˣ���ûʱ���ˣ���

//��������
<voice name="����" class="��������" src="voice/ma03/0261970a01">
��������������ȥ������֪��
����������İɣ�����!?
��<RUBY text="��������������">���ֻᱻ�����</RUBY>!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0261980a00">
������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����ˡ�
�����ڡ������ǳ���������Ϊ�ǵĻں��е�ʱ��

������Ҫ�������˺������б��ҵ����Ұ�ο��ҲӦ��Ҫ
�������������֮��
�������б���Ҫ���ġ������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma03/0261990a00">
�������߰ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0262000a01">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���w�����ġ��ФҤ�`��
	OnSE("se���L_����_���ϕN01",1000);
	CreateColorEXadd("�}�ե�", 15000, "#FFFFFF");
	Fade("�}�ե�", 200, 1000, null, true);

	WaitKey(1000);

	ClearWaitAll(2000, 2000);

//���դ��l���륢�٥�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
		CreateTextureSP("�}Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg204_�����ر���_03.jpg");
		CreateTextureSP("�}Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg204_�����ر���_03.jpg");
		CreateSCR1("@�}Circuit01","@�}Circuit02",35000,0, @0);
	CreateTextureEX("�}����100", 100, Center, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	Fade("�}����100", 0, 1000, null, true);
	BGMoveAuto("@�}����100",1);

	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������˵������
��������ȫ����<RUBY text="����">���</RUBY>�Ĵ��ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);
	BGMoveDelete();
	SCR1stop();

}

..//������ָ��
//�Υե����롡"ma03_027vs.nss"