//<continuation number="1420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_019vs.nss_MAIN
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
	#ev247_�򤭺Ϥ��������y�Ǻ�=true;
	#ev248_�AȾ�������ɤ����y�Ǻ�=true;
	#ev002_�y�Ǻ��¼�����`����=true;
	#ev008_���Ӥ򱧤���Ů=true;
	#bg051_�Զ��Ҿ��g_03a=true;
	#ev131_�����������Ҥ�������=true;
	#ev132_Ц���y=true;
	#ev005_�ؤ���줿��=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_020vs.nss";

}

scene md05_019vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_018.nss"

//�������y�Ǻš��N�R
	PrintBG("�ϱ���", 30000);

		SoundPlay("@mbgm01", 0, 1000, true);
		CreateTextureSP("������", 100, 0, 0, "cg/ev/ev247_�򤭺Ϥ��������y�Ǻ�.jpg");
		CreateSE("������ɣ�","se����_����_ȼ����K��_L");
		CreateSE("������ɣ�","se����_������_���݅���_L");
		SoundPlay("������ɣ�",3000,1000,true);
		SoundPlay("������ɣ�",3000,500,true);

	FadeDelete("�ϱ���", 3000, true);

//�����Ҥκ����ϡ����Ť���������y�Ǻ�
//���ˤ�С�������تz�L����󤭤�ȡ�똋����

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ɻ��ɴ˴����������ɡ�
����������⾰�ģ�ĳ���ˡ�

��ɥʧ�������ĸ�ʿɽ�����緢����Ѫ������ҡ�
����ֹ�������ڣ���ֹ���У���ֹ���죬���ǳ�ȴ
���𣬽�ֹһ�е���硣

��˭�������
��˭�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

		SetVolume("������ɣ�", 3000, 250, NULL);
		SetVolume("������ɣ�", 3000, 500, NULL);

	Wait(2000);

	SetFwC("cg/fw/fw��_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0010a14">
��Ψ��ʤ�ߡ���

//���⡿
<voice name="��" class="��" src="voice/md05/019vs0020a14">
��ֻ��Ψһ��ʤ�ߣ����������ġ���

//���⡿
<voice name="��" class="��" src="voice/md05/019vs0030a14">
�����˲Żᱻ��Ϊ��
����������������ԭ�µ����飬
��Ⱥ��Ȩ���ߡ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����о�������ˡ�

���ڴ���������Ҳ�����˱������֮�¡�

���⡣
���ҵ����á�
��
�����������������ξ��еģ��ն��⡣

�����Ѿ�����������ɱ������

��������Ϊ���Ѿ�����
�����ڣ����̡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/019vs0050a00">
���⡣��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0060a14">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
����ʹ�����Ҳδ���ԣ������ش�
����ͷ���溬Ц�ݡ�

��ȼ�յĴ���Ϲ����ȷ磬����֮�У���ȴ��һ
��������̬��
��
�����ǣ��ң�����Ӧ�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md05/019vs0070a00">
�����㡭���𣿡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0080a14">
����ô����Ī�������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0090a14">
���������ǲ��⡣��֪Ϊ�α�����
�ֱ��񵽵��£�������ż�����£��ٰ�������
�����㵣���ˡ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0100a00">
��������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0110a14">
������˼����
����Ȼ���գ��ҵ���Ҳ����һͷ��ˮ��
  ������ǹ⡣���������κ��ˡ���

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0120a14">
���������������ɴ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0130a00">
���������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������ԡ�
��������Ҫ���Ի���

���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md05/019vs0140a00">
�����ᵽ�����ء�����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0150a14">
���š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0160a00">
���㣬���Ϊ�����������𣿡�

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0170a14">
��<RUBY text="����������">���Ϊ����</RUBY>��
����������δ���ǹ�����

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0180a14">
�����ǣ���֪��<RUBY text="��������">�������</RUBY>��
�������޷�ʵ�ֹ��Ը������

//���⡿
<voice name="��" class="��" src="voice/md05/019vs0190a14">
����Ϊ���<RUBY text="����">����</RUBY>�̵��ҵĵ�·����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0200a00">
����������
�������㣬�Ѿ�����һ���˰ɡ���

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0210a14">
�������ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������ԡ�
��������Ѱ�ұ�����һ�㣬��Ū�Դǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md05/019vs0220a00">
��һ���������ס���
���Ǹ��������ѱ��ƻ���
����<RUBY text="����">����</RUBY>��û����ʧ����

//��������
<voice name="����" class="����" src="voice/md05/019vs0230a00">
����������������

{	FwC("cg/fw/fw��_��˼�h.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0240a14">
����������

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/019vs0250a15">
����������ָ<RUBY text="����">����</RUBY>�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`���������`��Ȥ�����ʸФ����ݳ�

	OnSE("se����_������_��Υ��`��",1000);

	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
	Fade("ɫ��", 1000, 500, null, true);
	Fade("ɫ��", 1000, 0, null, false);

	SetFwC("cg/fw/fw��_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0260a14">
��������������𣡡�

{	FwC("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md05/019vs0270a15">
���Ǽ�Ϊ�˲���Ķ�������

{	FwC("cg/fw/fw��_Ц��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0280a14">
���о�������ʮ�����ҵĸ����ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0290a00">
���������Ѿ��㹻�˰ɡ�
����ӵ�н�����������е���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0300a00">
���ڴ�֮�ϣ�������ʲô����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0310a14">
���Ǻǡ�
��ӲҪ������Ȼ���ĵ��¡��������㲻��˼��
֮���ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0320a00">
��������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0330a14">
���������������⻹δ�ﵽ��ĵ�λ����

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0340a14">
�����֮��ŷ��֣����ֵ���֮����
��ȷʵ��Ϊ���󡭡���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0350a14">
��������ƾӵ����������������
����ô��������񡣺�Х����񡣰˩�����
���г�������񡪡���

//���⡿
<voice name="��" class="��" src="voice/md05/019vs0360a14">
��������ͬ�ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0370a00">
��������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0380a14">
���������������������ˡ�
�����򣬷ǹ�����

//���⡿
<voice name="��" class="��" src="voice/md05/019vs0390a14">
����ȥ����������ڼΪ��
������Ϊ����ӵ�������𡣷���������ӵ��
��������ʹ����������£���������������
���ԡ�����������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0400a00">
��������ô���㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0410a14">
��������ʷ������δ����ʾ֮��·������䳼����
������ӵ�ж�������������ɹ�չ¶����ǰ��
�������Գ�������

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0420a14">
���Ҿ����ص����ޣ���

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0430a14">
�����հ�����������;���䡣
������ȫ��������ǰ�����㣬������������
��Ϊ����ȫ֮�񡣡�

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0440a14">
���ʱ��򵹡�����

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0450a14">
���ң�������ˡ�
���һ�̤�ư���֮·���յ㡣��

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0460a14">
���ն���������ʮ�����ಢʹ��������
�����ʵ��������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0470a00">
���㣬������Σ�
�����޷�������������?!��

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0480a14">
������������
�����������룬�����ǳ��
Ȼ�����־�ϱ��ǹ����������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0490a14">
������������̨�ɡ�
��������ڹ�֮��������
�ָ������������㹻����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0500a00">
������������ʲô?!��

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0510a14">
����һ��֮Ը����ȫ����ս����
������λ������з��������������
������ˣ���<RUBY text="������">����ƽ</RUBY>����

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0520a14">
���ʴ��������ǣ�
����֮һ������ɱ����������������ǣ���

{	SetVolume("@mbgm*", 500, 0, null);
	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0530a14">
�����²���!!
����ʱ�˿̣��ն��ⷢ��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm37",0,1000,true);

//���R������
	OnSE("se��Ȼ_��_�R��02",1000);

	Fade("ɫ��", 0, 1000, null, true);

		CreateColorEX("ɫ��", 19999, "#000000");
		CreateTextureSP("������", 2000, 0, 0, "cg/bg/bg001_��a_02.jpg");
		CreateTextureSPadd("���ե����ȣ�", 2000, 100, -200, "cg/ef/ef038_�������.jpg");
		Rotate("���ե����ȣ�", 0, @0, @0, -70, null, true);
		Zoom("���ե����ȣ�", 0, 3000, 3000, Dxl2, true);
	
		CreateTextureSP("������", 1000, 0, 0, "cg/bg/bg002_��b_03.jpg");
		CreateTextureSPsub("���ե����ȣ�", 1000, -505, -281, "cg/ef/ef045_���ѩ`��.jpg");
		Zoom("���ե����ȣ�", 0, 2000, 2000, Dxl2, true);

	Fade("ɫ��", 500, 0, null, false);
	Move("���ե����ȣ�", 1000, @50, @400, Dxl1, false);
	Wait(500);
	Fade("ɫ��", 500, 1000, null, true);

	Fade("ɫ��", 0, 0, null, false);
	Fade("������", 0, 0, null, false);
	Fade("���ե����ȣ�", 0, 0, null, true);
	Fade("ɫ��", 1000, 0, null, false);

	SetVolume("�������*", 2000, 0, NULL);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����֮����ָ����죬�������⡣
������������ϵ����硣

���谵�Ŀ��У���������һ����ͬǹ�˵Ŀס�
��
������������Χ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ�����̨�L
	CreateSE("������ɣ�","se���L_�y�Ǻ�_����AȾ��_L");
	SoundPlay("������ɣ�",1000,1000,true);

	CreatePlainSP("�}��д", 18010);
	SetVertex("�}��д", 0, 0);
	SetBlur("�}��д", true, 3, 500, 200, false);

		Delete("���ե�����*");
		Delete("����*");
		CreateTextureEX("������", 100, 0, 0, "cg/ev/ev248_�AȾ�������ɤ����y�Ǻ�.jpg");
		SetVertex("������", 512, 50);
		Zoom("������", 0, 4000, 4000, Dxl2, true);
		SetBlur("������", true, 2, 500, 100, false);

	Zoom("�}��д", 2000, 4000, 4000, Axl2, false);
	Fade("�}��д", 2000, 0, null, false);
	Wait(2000);



	Fade("������", 2000, 1000, null, false);
	Zoom("������", 2000, 1000, 1000, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����о���

���Ʋ�˺�ѡ�
������ƽ���������ձ�ò�����ӿ��

���������<RUBY text="��">��</RUBY>Ϊ�ᣬ����ϯ����
��������̨�硪�����ǡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md05/019vs0540a00">
�����������ǡ�����

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/019vs0550a01">
����������Ⱦ���ĶѼ���
�����Ǻ��͵�Ũ�ȡ�����

//��������
<voice name="����" class="��������" src="voice/md05/019vs0560a01">
���ܵ�����Ũ�ȵ�Ϯ����װ��Ҳ�����ˣ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������������Ҳ���ӹ��ľ�����Ⱦ��
��
�����Ǳ����������ġ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md05/019vs0570a01">
���ο�������ֹ����ˡ�������

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0580a14">
����Ȼ��֩�롣
����Ϊ<RUBY text="��������">��֮�籩</RUBY>����

//���⡿
<voice name="��" class="��" src="voice/md05/019vs0590a14">
�������ķ��겻��ע���ء���
������������֮��������꣬
��Ϊ�͹�ͬ�ȵ����ߡ���

{	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0600a00">
������ʲ����?!��

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0610a14">
����˱㽫���������Ϥ����װ!!
�������е�ٮٮ�ߣ�������ϳ�Ϊ��֮����!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����ǣ�
���ѵ���
�����ǡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���AȾ�⾰
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev002_�y�Ǻ��¼�����`����.jpg");
	SetTone("������", Monochrome);

	Fade("������", 500, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���������Ǵθ����µĲҾ�?!

��ǿ�����ǽ�����ν��ɱ¾�붷������
���ڸ���<RUBY text="����������������">�����Ǻ�ͬ��֮��</RUBY>֮��

����������
���ǽ��ᡪ����ɶ����ƻ������?!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	FadeDelete("������", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����վ������̬�к�����Ц����㯡�
������Ҫ����ȫ���࣬����֮ǰҪʹȫ�������Լ�һ��
ǿ�󣬽���תΪʵ���ж���

����������Ϊ���޻��ɡ�
��
����������籩��

����ֹһ����
���������������������ɡ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0620a14">
������˹�۹�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̨�L�k�M���m�����ݳ���
	CreatePlainSP("�}��д��", 18090);
	SetVertex("�}��д��", 1024, 50);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("ɫ��", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);

	Zoom("�}��д��", 500, 1200, 1200, Axl1, false);
	FadeDelete("�}��д��", 500, true);

	SetFwR("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0630a14">
���󺺣���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̨�L�k�M��
	CreatePlainSP("�}��д��", 18080);
	SetVertex("�}��д��", 50, 50);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("ɫ��", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);

	Zoom("�}��д��", 500, 1200, 1200, Axl1, false);
	FadeDelete("�}��д��", 500, true);

	SetFwR("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0640a14">
��ŷ�ޣ�
���ж�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̨�L�k�M
	CreatePlainSP("�}��д��", 18070);
	SetVertex("�}��д��", 900, 50);
	CreatePlainSP("�}��д��", 18060);
	SetVertex("�}��д��", 700, 50);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("ɫ��", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);
	Zoom("�}��д��", 500, 1200, 1200, Axl1, false);
	FadeDelete("�}��д��", 500, 500);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("ɫ��", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);
	Zoom("�}��д��", 500, 1200, 1200, Axl1, false);
	FadeDelete("�}��д��", 500, true);

	SetFwR("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0650a14">
���´�½��
�����ڴ�½����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̨�L�k�M
	CreatePlainSP("�}��д��", 18050);
	SetVertex("�}��д��", 200, 50);
	CreatePlainSP("�}��д��", 18040);
	SetVertex("�}��д��", 100, 50);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("ɫ��", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);
	Zoom("�}��д��", 500, 1200, 1200, Axl1, false);
	FadeDelete("�}��д��", 500, 500);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("ɫ��", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);
	Zoom("�}��д��", 500, 1200, 1200, Axl1, false);
	FadeDelete("�}��д��", 500, true);

	SetFwR("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0660a14">
����ͣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��̨�L�k�M��
	CreatePlainSP("�}��д��", 18080);
	SetVertex("�}��д��", 512, 50);

	OnSE("se���L_����_��ͻ�M03",1000);
	Fade("ɫ��", 0, 500, null, true);
	Fade("ɫ��", 500, 0, null, false);

	Zoom("�}��д��", 500, 1200, 1200, Axl1, false);
	FadeDelete("�}��д��", 500, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���������Ǻ�һ�����¡�
���籩�������ҳϵĲ��°㣬����ָʾ�ķ���ǰ����

��һ����ɢ�ڰ����硣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 1000, 0, NULL);

	CreateTextureEX("������", 100, 0, 0, "cg/bg/bg002_��b_03.jpg");
	Fade("������", 1000, 1000, null, true);

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/md05/019vs0670a00">
����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/019vs0680a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0690a00">
����Щ�籩��Ⱦȫ������Ҫ�೤ʱ�䣬
��֪���𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/019vs0700a01">
�����ܡ���һСʱ����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0710a14">
��Լ��ʮ��ְɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev247_�򤭺Ϥ��������y�Ǻ�.jpg");
	Fade("������", 500, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��ʵ�������������е�˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/md05/019vs0720a00">
��������

//��������
<voice name="����" class="����" src="voice/md05/019vs0730a00">
����ֹ�ķ����أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/019vs0740a01">
���жϸ�Դ����

//��������
<voice name="����" class="��������" src="voice/md05/019vs0750a01">
����Щ�籩���Ƕ�����
�������뷢��Դ��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
������Դ��
�����ǺŻ���Ļ�����Ⱦ�籩Ҳ����ɢ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md05/019vs0760a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�����ò�ɱ������
��
�������������Ե��£���Ϊ�����ȵ���ʵ�������ҵ���ǰ��

  ����Ҫɱ�����⡣
�����̡����̡�

������ã֮�����ǡ�
������ԥ֮�����ǡ�
���γ�̫�����������̡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/md05/019vs0770a00">
������������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0780a00">
������׷��ʲô�����⣡��

//��������
<voice name="����" class="����" src="voice/md05/019vs0790a00">
��������ز���������õ�ʲô!!��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0800a14">
���á����ܼ��ζ��ش��㡣
����Ȼ�����η��ʣ��ǹ�Ҳ�������ò���
�ľ���ɡ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0810a14">
������!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0820a00">
��������������

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0830a14">
���ҵ�Ը�����˶��ѣ�
��<RUBY text="��������������">�����׹黹����</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�������ն������ĵĴ��ڣ������ն����<RUBY text="��">��Ը</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ŭ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0840a14">
��������ܽ������ڴ����ĸ�Դ����
�����׵İ�����

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0850a14">
��Ϊ�ˣ�������ĸ�ף��������硣
�������Ҹ��׵�����Ϥ������
��Ϊ�ˣ��һ��Ϊ��������Ȩ��
�����������������ڵĸ��ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
���Ǿ����ǡ���
������ͬ��������⡪��Ѱ�ҵ���󺣵�һ�����飬
ȥ��ҵ��������ˮ��Ϊ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_�_�.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0860a14">
��Ҫ�ʣ�Ϊ�Σ�
��Ϊ�Σ������׷�󡣡�

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0870a14">
������Ϊ<RUBY text="��������">��������</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤������r
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("ɫ��", 500, 1000, null, true);
	CreateTextureSP("�}�ţ�", 1000, Center, Middle, "cg/ev/ev008_���Ӥ򱧤���Ů.jpg");
	SetTone("�}�ţ�", Sepia);
	Fade("ɫ��", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��
���������������⺢��û�и��ס���


�������������⺢�Ӳ������Ů������


�����������⺢�ӡ���<k>�㲻���԰�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Fade("ɫ��", 500, 1000, null, true);
	Delete("�}�ţ�");
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fw��_�_�.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0880a14">
���Ҽǵá�
���ǵ�ĸ�׶Ը������ǿ�����棬�ǵ��Ǹ�˲�䣬
������ӡ������ꡣ��

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0890a14">
�����Ա�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
���ǲ��Ǵ��Ե��뷨���������Ŀ�����

��������˵����͵��������ˣ�
���ܲ�ȥ����Լ���������

��һ�������޷����Ƶĳ嶯��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/md05/019vs0900a00">
������������

//��������
<voice name="����" class="����" src="voice/md05/019vs0910a00">
���������ס�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0920a00">
����ģ����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롤�Զ�����
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("ɫ��", 500, 1000, null, true);
	CreateTextureSP("�}�ţ�", 1000, Center, Middle, "cg/bg/bg051_�Զ��Ҿ��g_03a.jpg");
	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	SetTone("�}�ţ�", Sepia);
	SetTone("@StL*", Sepia);
	FadeStL(0,true);
	Fade("ɫ��", 500, 0, null, true);


	SetFwC("cg/fw/fw����_ͨ��.png","Sepia");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����ҡ�
<voice name="����" class="����" src="voice/md05/019vs0930b52">
��������������ߣ���

//�����ҡ�
<voice name="����" class="����" src="voice/md05/019vs0940b52">
���Ҷ��㲢���κ�Թ�ޡ���������㣬
��Ҳ���Ĳ�����
�����µ����
Ψ�и�̾�ⱻ����ѡ�е������ˡ���

//�����ҡ�
<voice name="����" class="����" src="voice/md05/019vs0950b52">
�����������˶ϰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("ɫ��", 500, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("�}�ţ�", 100, Center, Middle, "cg/ev/ev131_�����������Ҥ�������.jpg");
	SetTone("�}�ţ�", Sepia);
	Fade("ɫ��", 500, 0, null, true);

//���y
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("ɫ��", 500, 1000, null, true);
	CreateTextureSP("�}�ţ�", 100, Center, Middle, "cg/ev/ev132_Ц���y.jpg");
	SetTone("�}�ţ�", Sepia);
	Fade("ɫ��", 500, 0, null, true);

//�������
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("ɫ��", 500, 1000, null, true);
	CreateTextureSP("�}�ţ�", 100, Center, Middle, "cg/ev/ev005_�ؤ���줿��.jpg");
	SetTone("�}�ţ�", Sepia);
	Fade("ɫ��", 500, 0, null, true);

//������
	Fade("ɫ��", 500, 1000, null, true);
	Delete("�}�ţ�");
	Fade("ɫ��", 2000, 0, null, true);

	Wait(2000);

	SetFwC("cg/fw/fw����_������.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="����" src="voice/md05/019vs0960a00">
�����������ˡ�
�����������ϵģ��κεط�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0970a00">
����ĸ��ף���������Ϊ����Ӧ��֮�¡�
�������ˡ���Ҫ�����������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs0980a14">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs0990a00">
����֪���İɡ���

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1000a14">
��֪������

//���⡿
<voice name="��" class="��" src="voice/md05/019vs1010a14">
�����ԣ��ҷ����ˡ���
ֻ��<RUBY text="������">�����</RUBY>�ն�������ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1020a00">
��������

{	FwC("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1030a14">
�����������ȴ���������������Լ���
��������ˣ�Ҳ���󱻸�������������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1040a14">
���������ҵģ�һ�����롣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
�����Ǳ�ʹ��
�������ǿ�ҫ��
��
����˵���Լ����鹹��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/md05/019vs1050a00">
�������㡭����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1060a14">
���������������ĸ��ס���
��ֻҪ���������췭�ظ�һ����
����������ɣ���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1070a14">
���Ǻǡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1080a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
����������ζ��Ц�š�
����ȴʲôҲ�޷��ش�

  ����ͣ��Ц֮ǰ����ֻ����ʯͷ�㱣�ֳ�Ĭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1090a14">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1100a00">
��������

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1110a14">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1120a00">
���⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
����ͬСָ�ᴥ���һ���ƺ������϶�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/md05/019vs1130a00">
����ô���㡭��
��ֻҪ���׹���������������Ů����
�������ˣ���

//��������
<voice name="����" class="����" src="voice/md05/019vs1140a00">
��������ƻ������𣿡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1150a14">
�����������⣬��ǰҲ���ش������

//���⡿
<voice name="��" class="��" src="voice/md05/019vs1160a14">
��������֮�ﲢ����Ϊ��Ʒ����ʬ���⡣
��������ʵ���ġ���

{	FwC("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1170a14">
����������������Ϊ�أ�
���Բ����Ϲ�������Ů����
��������ˣ�
Ҳ���Ϊ�ػ��������Ӧ�����Ը����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1180a14">
�����ǣ����ǲ��еģ�
��û����ʵ��������ֻ�б������Ʒ��
�Ҳ�����Ҫ���ֶ�������

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1190a14">
��Ϊ�˵õ���ʵ����
��Ψ�н��������֮���ĸ��ͳ��
��������ᣬ��һ���ƻ��������С���

{	FwC("cg/fw/fw��_�Ȼ.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1200a14">
��<RUBY text="��������">�������</RUBY>���ᰮ����
���ų�������Ҳ�޷����ųɾ�������Ҳ�޷���
ֻҪʣ��һ�֣�����Щ΢��������һ����Ƭ��
�ܸ�������֮���Ļ�����

//��ˤ��褦��
{	FwC("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1210a14">
��������á���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1220a00">
������������

{	FwC("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1230a14">
�������ұ����㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
����������������ǹ⾰��
��������

���⣬¶�����ΰ�ı��飬��̾һ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="����" src="voice/md05/019vs1240a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
���������ߵĴ��ڡ�

�����������һ���ߡ�
������̫�����ӣ��������Ϊ�λ���������
�Ѿ��޴�֪����

����Ҫ�⿪����ʱ���������������ȷ�ķ�����
��
�����ǣ����û��ʱ�䡪��

��ֻ��һ���ֶΡ�
��ֻ���ü���������

��ֻ�н����֮�����ϣ��⿪�ߡ�
��
��Ҫ�⿪����ᣬֻ���ⷽ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="����" src="voice/md05/019vs1250a00">
������������

{	FwC("cg/fw/fw��_�Ȑ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1260a14">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1270a00">
����ô���⡣��

//��������
<voice name="����" class="����" src="voice/md05/019vs1280a00">
�����Ὣ���׸��㡣��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1290a00">
�����������ȥ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	SetVolume("@mbgm*", 3000, 0, NULL);
	Wait(5000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
�����˵����б��������ˡ�
���ǲ����ɶ�����������ɵġ�

������Դ��һ���������ı�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1300a14">
������Ǵ��𣬾�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1310a00">
��������

{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1320a14">
�������ˡ�
��û�����վ���ĸ�״��˵Ļ�顭��
�������ҵġ���

//���⡿
<voice name="��" class="��" src="voice/md05/019vs1330a14">
��ĸ�ײ����ҵĵ��ˡ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1340a14">
���������ĸ����־��
�����־�������Ҳ�ǹ�ĵ��ˣ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1350a00">
������������ˡ���

{	SoundPlay("@mbgm11",0,1000,true);
	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1360a14">
��ɱ����

//���⡿
<voice name="��" class="��" src="voice/md05/019vs1370a14">
����Ҫ�ᾡ�������ĸ�׵��������ǡ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1380a14">
����Ҫ����ĸ�׵�һ�У���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/019vs1390a00">
������������

{	FwC("cg/fw/fw��_�_�.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1400a14">
��Ȼ������硣��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1410a14">
����һ���սᡭ��
�������ڴ������������������һ�˸�������

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/019vs1420a14">
�����赲�ҵĻ������԰�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
�����Ǻš����ն����ɱ�⡣
�����ڣ����Ҷ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

..//������ָ��
//�Υե����롡"md05_020vs.nss"