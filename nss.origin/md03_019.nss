//<continuation number="540">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_019.nss_MAIN
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
	#bg056_���L�����Tǰ_01=true;
	#bg077_�����µ���¥ǰ_01=true;
	#bg032_��ᦌm�������b_01=true;
	#ev128_�����ι�_g01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_020.nss";

}

scene md03_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_018.nss"


//��bg056_��

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg056_���L�����Tǰ_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\",2000,true);

	Wait(500);
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������Ѷ���

�����ǣ����֮����δ����
�����������뿪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��bg077_��
//��bg032a_��

	OnBG(101, "bg077_�����µ���¥ǰ_01.jpg");
	FadeBG(2000, true);

	Wait(1000);

	OnBG(102, "bg032_��ᦌm�������b_01.jpg");
	FadeBG(2000, true);

	Wait(500);

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190010a10">
����Ҫ����ȥ�����ֳǣ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190020a01">
���ǵġ���

{	StL(1000, @0, @0, "cg/st/st�\��_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw�\��_ŭ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190030b26">
��̫³ç�ˣ�
������Ҳ�������ɼ����ȥ����˳��Ǳ��ȥ��
�������������ɡ���

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190040b26">
�������������׼����ּ��䣬������ƽʱ��
Ҫɭ�ϡ�
����������������֮���Ľ��У����˻��Ǻ�
�϶������ϱ�ץס����

{	StR(1000, @0, @0, "cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300, false);
	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190050a11">
�����Ļ���ڲ����˰�æ��·����˵�ˡ���
��������������׼������

{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190060a11">
�����ڲ��У���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190070a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������뵽�ˣ�û����ͬ��
��û�з��Ե�ֻ�г�Ĭ��������һ����ԭ��
�Ͳ��ڳ������

����������֦�������̴Ӳ������
���ƺ�Ϊ��ʲô���¹������������Ĺ�����Ȼ
��˵��������Ҫȥ���Ϲ��ܲ���ʲô�£�����
���Ǻ����ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190080a10">
������֪������Ⱦ�������
������Ҳ�롭����

//�����m��
<voice name="���m" class="���m" src="voice/md03/0190090a10">
�����ǣ�����óȻ���¡�
����ʱ���Ҫ�侲����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190100a01">
�������ס�
�����ǡ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190110a01">
��ûʱ���ˡ�
�����ֻ�ǵ��Ż������٣�������޷�����ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190120a01">
����������������ġ���

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190130a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��һ����ֱ����
������Ҳ�и��ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�����ι�
	EfRecoIn1(18000,600);

	CreateTextureSP("˼����", 5000, Center, Middle, "cg/ev/ev128_�����ι�_g01.jpg");

	EfRecoIn2(300);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ն����������ʣ�޼������������˵���ġ�
���ǲ�����˵�ѡ��������ý���֮����죬�ó��Ľ���
Ҳһ����

����ô����
����ô����Ҫά�ִն��������ľ��������������Ǻ�ʵ
��ĳ����ͼ�Ĳ������˵��ʱ�䶼��ʣ�޼���

�����ǲ����ƶ��߳��ļƻ���
����Ȼ����Ŀ�꣬�϶������ڶ�ʱ���ڴ��Ŀ�ġ�

��Ȼ��һ�����Ǵ��Ŀ�ġ�
���Ǿ͡�����Ҳ<RUBY text="����������">�޷������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);
	Delete("˼����");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md03/0190140a01">
�����ԣ������ж�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190150a10">
������������

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190160b26">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190170a01">
�����������չˣ�ȴ����ô���ԣ��ǳ���Ǹ��
�����ǡ������ǽ��١���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190180a01">
������Ҫȥ<RUBY text="����">�ٿ���</RUBY>��ߡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��˵�ţ���վ��������
���������߱߿��ǡ���ȴ�벻���κ�Ǳ��ķ�����

�����������Ǻ�ʱȥ�������Ǽ��Σ���������ľ�����
��ɭ���Լ��ǳ������
�����湥���϶����в�ͨ�ġ�����취����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_�䅗.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190190a11">
���������ȵȣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190200a01">
��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190210a11">
�������¡��������𣿡�

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190220a10">
���ǰ���
������һ�����¶������ˡ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190230b26">
��ȷʵ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190240a01">
����������

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190250a11">
����������Ҫȥ�Ļ��������Ǻ����ɡ�
�������ϣ������

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190260a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190270a01">
���������ǣ��Ǹ�������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190280a11">
����Ҫ��ᡣ
������Ҳ�����ǵĿ��ԡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190290a10">
��˵ʵ����������Ҳ���������ص����ˡ�
�������Ѿ��Ͼ������ǲ��ò���ˮһս�ĵ�
���ˡ���

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190300b26">
��������������Ч�����������Ͼ��δ����
ּ���Ѿ�ȷ���ˡ�
�����������ʱ�ն������ˡ���

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190310a11">
����ּ����Ŀ����ͬ�����������Ƶĸ��
����ζ�����פ��չ����ս��
��������������������ۿ���Ҫ�����ˡ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190320a10">
������֦�������Ϲ�������Ŭ�������ǲ�֪��
�������ü���
������Ҳ�����ж���������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190330a11">
��������Ӳ�ģ�ҲҪ��ʹ������ֹ����ʹ�����ڡ�
������������������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190340a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�\��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190350b26">
�����⣬���˻���˽��ԭ��
����������������������ֳǡ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190360b26">
����Ȼ�ƻ��˼��ξȳ��ж���ȴ��û�ܳɹ���
�����һ��Ҫ�ɹ��ȳ���������

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190370a10">
��ӣ����
���ǰ�������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190380a11">
������ļƻ�������

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0190390a02">
����̸ʲô�ƻ��ˡ�
��������ô�ƶ���ս�ƻ���³ç����³ç����

{	StCR(1000, @80, @0, "cg/st/stһ��_ͨ��_�Ʒ�.png");
	FadeStCR(300, false);
	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0190400a02">
����Ǳ���Ǳ�룬��������֮��ʹ���һ����
�������Ǹ��췭�ظ���������������Ҳ
�첻�ɾ����ˡ���

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0190410a02">
�����Ӯ�ˣ���

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190420a10">
��������

{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190430a11">
��������

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190440a11">
��˵��û����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190450a10">
������!?��

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190460a11">
��Ŀǰ�����������������������ƶ�һ������
����ս�ƻ���
����Ȼ��ˣ��ٿ��Ǿ�ֻ���˷�ʱ���ˡ���

{	FwC("cg/fw/fw�\��_�Ŀ.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190470b26">
���ǰ��ǰ���
������Ҳ�޳�һ�����˵Ļ�����

{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/md03/0190480a10">
���������ǿ����ǵ��͵���Ѫ�����ء���

{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190490a11">
����ô���������ܽ�һ�°ɡ�
��Ǳ�������ֵ�����֡��\�����ˡ���������

//�����L��
<voice name="���L" class="���L" src="voice/md03/0190500a11">
��Ǳ�����ָ����ƻ����ڡ�
���\�����˾ȳ�ӣ�ӹ�����
������ȥ�Ҿ�����
���һ�׼����·����

{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/md03/0190510a11">
�������𣿡�

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/md03/0190520a02">
���С���

{	FwC("cg/fw/fw�\��_ͨ��.png");}
//���\����
<voice name="�\��" class="�\��" src="voice/md03/0190530b26">
���š���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md03/0190540a01">
�������á���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_020.nss"