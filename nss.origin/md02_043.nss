//<continuation number="1080">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_043.nss_MAIN
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
	#ev128_�����ι�_g01=true;
	#ev128_�����ι�_g02=true;
	#bg053_ܥԽ������ͥ_01=true;
	#ev901_�y�Ǻ�����ʧ��С����_c=true;
	#bg097_ܥԽ�����ھ����β���_01=true;
	#bg097_ܥԽ�����ڹ�β���_03a=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md02_043.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md02_042.nss"


//���ãǣ������ι⣨�F�ڥЩ`�����
//��������^ȥ�Щ`������ͬ����

//��ȫ��Ĥ������}���ʾ�����΢��ˤʤäƤ��ޤ����`�����˼���Τ������}���Ĥ�δʹ�� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�ۥ磻�ȥ���", 5000, "WHITE");
	Delete("�ϱ���");

	CreateTextureSP("����", 1000, @0, @0, "cg/ev/ev128_�����ι�_g02.jpg");

//�����ߣ�EV������{�������åץ�����`���ݳ�

	CreateTextureSP("�������å�", 1000, -380, -460, "cg/ev/resize/ev128_�����ι�_g02lex.jpg");

	Move("�������å�", 6000, -510, -180, null, false);
	FadeDelete("�ۥ磻�ȥ���", 3000, true);

	Wait(2800);

	FadeDelete("�������å�", 1000, true);

	SoundPlay("@mbgm37", 0, 1000, true);


	Wait(1500);

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/md02/0430010a00">
����������������������������������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������֪����
����ô�᲻֪����

��������ÿ��ÿ�첻��ע�ӵĹ⾰��

���������ܿ��������������ܽ������⾰��
���־��ű��ҽ�֣��������컹��ά�������״��

�����ɷ������龰��
��һ��䣬������֤�š�

���⸱������

��<RUBY text="����������">��Ⱦ�󶾲�</RUBY>��<RUBY text="������������������������">����;���Ⱦ�ϼ����Ĺ�</RUBY>��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/md02/0430020a01">
���⡭�����ǡ���

//��������
<voice name="����" class="��������" src="voice/md02/0430030a01">
�����ǡ���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430040a07">
���㲻֪����
���ն���Ĳ�����

{	FwL("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430050a01">
��֪��֪���������཭֮���м�������
����Ȼ֪����������

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430060a01">
������ʲô!?
�����Ǵն���Ļ�������˭
װ��<RUBY text="ĸ�״���">����</RUBY>��Ϊ���Ǻŵ�!?��

{	FwL("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430070a07">
����˭�أ���

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430080a01">
����Ҫ�����⣡��

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430090a07">
���ҿ�û�����⡣ֻ��׽Ū���㡣
��������Ҳ��Ҫ��֪�����в�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430100a07">
���ն����ڵĻ�����Ȼ������Ĵն���װ�׺�
��Ϊ���Ǻŵġ���

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430110a01">
������ô�У�
��������������!?��

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430120a01">
����ֲ��״̬���ز����ˡ���
��ô����װ��ս������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��û��
����ô���ܡ�

���ⲻ����ġ�
�����Ժ���֡�������ˡ�

��������ƭ�˵ġ�
����Щ��ȫ����ƭ�˵ġ�

�����������￪ʼ��

�������ﵽ�����Ǽٵģ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430130a07">
����ô���������ǻ��ƵĻ���
�����ǣ���ɲ��Ǽٻ�����

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430140a07">
����ʵ�ϣ�����ն���������Ǻš���

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430150a01">
������˵��������������������
����������ô���ܣ���

{	FwL("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430160a07">
����˯����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��Ԥ����һ�Ե�������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md02/0430170a01">
������ʲô��˯����

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430180a07">
���ն���һ˯�ţ������Ǻš��ͻ���֡���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430190a01">
�����ǡ���ʲô����

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430200a00">
������������

//��������
<voice name="����" class="����" src="voice/md02/0430210a00">
��˫���˸񡭡�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��һ�������ڼ������������ҡ�
����Ȼ����˵�����־���ת���Ĵ��ڡ���

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430220a07">
���������ԡ�
�����ǺŲ���<RUBY text="����">�˸�</RUBY>����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430230a07">
��ʵ����������

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430240a00">
��ʵ�飿��

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430250a07">
�����������<RUBY text="��������">����״̬</RUBY>ʱ��
Ҳֻ��Ϊ������˯������֡�
����ʼ��ʱ���Ҳ���֪����
�ն��������Ⱦ�󶾲�����ɷ��˵ġ���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430260a00">
��������

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430270a07">
���������ֿ�ʼ������֡�
��������̽����һ���Բ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430280a07">
������״̬���Լ��������״̬����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430290a01">
���Բ���������

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430300a07">
���򵥵������˵���������ڵ�Ѫѭ�������
����˵�ǽ��ڵĿ�ѧ������������֪���ġ���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430310a07">
�����������Ǵ���Ӧ�ñ�˭���������
�������ܲ���������������Ļ���������
��д�˵ľ��񣿡�

{	FwL("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430320a01">
������������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430330a07">
������̽�����Բ���
��������෴����

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430340a00">
���෴������

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430350a07">
��<RUBY text="������������������������">���״̬�Ĵն��������ѵ�</RUBY>��
��<RUBY text="������������������������������">�״̬�����Ǻ�ͨ����˯��״̬</RUBY>����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430360a00">
��������������������

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430370a07">
�����Ρ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430380a07">
�������Ǻš��Ǵն�����Ρ���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430390a07">
���ѱ��ٻ����˸�
��ɢ�ҵ���ʶ�ײ��������Ρ���

{	FwL("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430400a01">
�������Ρ�������

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430410a07">
��û����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430420a01">
����ô�������Ƶ��¡���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430430a07">
��û�뵽ʲô�𣿡�

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430440a01">
����ô���ܻ��С�����

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430450a07">
������أ���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430460a00">
������������

{	FwL("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430470a01">
��������������

</PRE>
	SetTextEXL();
	TypeBeginTimeLIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���Ǹ�ʱ��
�������������죬��ս����Ǹ�ʱ��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoIn1(18000,300);

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg053_ܥԽ������ͥ_01.jpg");
	CreateTextureSP("�}����200", 2100, 300, InBottom, "cg/st/st��_ͨ��_˽��.png");

	EfRecoIn2(600);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ȷʵ��ô�����

��<RUBY text="������������">���ڸ�̫ϡ��</RUBY>��
��<RUBY text="����������������">���������������</RUBY>��֮��ġ�

��������������ԣ��Ƕ����Ժ�ֱ����һ�ֺ��������

���Ρ�

�����εĻ����������Ǻϡ�
����<RUBY text="��������������">�ȴ����಻����</RUBY>��

����֮ǰ���о�����ȱ����ʵ�ԡ���
�����г���ĸ����У�����˵����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);

	Delete("�}����*");

	EfRecoOut2(600,true);


	SetFwL("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430480a07">
���аɣ�
����Ҳ˵�ˡ�����������������ǰ��ȴ����
���ڸе����ʡ���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430490a00">
������������
����Ȼ�������ǲ����ܡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺�y�ǺŤΑ��L

	EfRecoIn1(18000,600);

//�����} inc�Ѿ�
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ef/ef037_�|�I���ħ����b.jpg");
	CreateTextureEX("�}����200", 2100, @0, @0, "cg/ev/ev901_�y�Ǻ�����ʧ��С����_c.jpg");
	Fade("�}����200", 0, 500, null, false);

	EfRecoIn2(300);

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md02/0430500a00">
��˵<RUBY text="����">��Щ</RUBY>ȫ������˯���е���Ϊ����

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430510a07">
��Ҫ˵�Ļ���������Ȼ����������뽣��
���������޵�Ҳ�Ǻ���ġ���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430520a07">
���������������кܴ󲿷ֶ���Щû�õ��ˡ�
��������Ǻ�˵Ҫ����Щû�õ�ȫ��������
ֻ���¶��Լ���Ҫ�Ķ�������������սʤ����

{	FwL("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430530a00">
�������ܡ���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430540a07">
������������˴��ɵ�<RUBY text="����">�漣</RUBY>����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430550a00">
������������

{	FwL("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430560a07">
�����İɡ�
���Ⲣ����ʲô������漣����

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430570a07">
�����������䡣
�����д��۵ġ���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430580a00">
������ʲô��˼����

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430590a07">
����磬�㿴�ⲡ��������
��������ǰ�Ƚϡ���

{	FwL("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430600a00">
��������������������

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430610a00">
��˥���ˡ�������

{	FwL("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430620a07">
���š�
����˵����е�ǿ����������ƭ��������˯��
��һ�ж�����˰ɣ���

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430630a07">
�������������⡣
����Ȼһ����Ͷ����������ߵ�ҽ�Ƽ�����
����ǿǿ���ܱ�ס��������
��Ҳά�ֲ���̫�á���

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430640a00">
���⡭����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ʲô�������������

������ǰ����������ƿ󶾲���
����ȻΪʱ����������ֹ�˲���Ľ�һ���񻯡�

������˥��������Ҳû�б�ġ�
��
����������˵��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	EfRecoOut1(300);

	Delete("�}����*");
	Delete("����");
	OnBG(101, "bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0, true);

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�룺���������Ƥ룩��090930��
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430650a07">
�����������޷���ֹ����֮���磬
���Ǻ��ܷ��ӳ����˵���������
�����Ƿݸ��ɵ�ȫ��ȴ����
��ʵ�дն�������������ܡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430660a07">
�������Ļ�������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430670a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430680a07">
�����ҿ�������ʣ���Ρ�
�����ǺŵĻ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430690a00">
�����Ρ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430700a07">
����Űɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430710a00">
����֮���ء�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430720a07">
��û���ˡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430730a00">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430740a07">
���Ǿ����սᡣ
�����Ǻš����Լ��ն��⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���սᡣ

������������ʧ��
�������ڡ�

��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md02/0430750a01">
������������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430760a07">
����ô��
�������Ҫ��ô�죿��

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430770a00">
������������ô�죿��

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430780a07">
��������Լ����
��������һ��ɱ�����Ļ��ᡣ��

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430790a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430800a07">
�������������С����Ҳ�ܰ쵽��
������������ס���������ˡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430810a07">
���ǣ���ɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430820a00">
��������������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430830a00">
�������ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���²����֡�

��<RUBY text="��������">���ǹⰡ</RUBY>��
���ҵļ��ˡ���������Ҫ�ػ��ģ����ȵļ��ˡ�

��ɱ����
������Ц�ɡ�

�����ˡ�һ�ж����ˣ�
���þ������ֶΣ��������˥���Ĺ����ҵ����Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430840a07">
���������Ρ�
����������Ҳ��֪Ҫ�������˰�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430850a00">
����������������������������������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430860a07">
�������Ǻš��Ǵն��������˯��״̬��
������������
��û�취��ֹ����֡���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430870a07">
���������ֺ�Ҳû��������ֹ��
������ֻ�����ڡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430880a07">
����硣
�������������ߵĻ�����ֻ������ɱ����Ӵ����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430890a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430900a00">
������������������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430910a01">
����������������

//��������
<voice name="����" class="��������" src="voice/md02/0430920a01">
������΢�����뿪һ�¡�
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����һֻ�֣���ס������Ļ���
����������

�����˵Ļ����Դ�����ʹ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430930a07">
�������˿���
������˵����û˵�������ɡ���

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430940a07">
�����������ֻ�����һ���ˡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430950a00">
����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0430960a01">
������������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430970a07">
��û��
��һ�ж��Ǹ��һ���˵ľ��ϡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0430980a07">
��һ��Ҫ�Ǹ�������־��
�����ն��⡭��ɱ��������

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/md02/0430990a00">
�������ꡭ����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0431000a07">
���첻������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0431010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ն��⡣
��ͬʱҲ�����Ǻţ�����ɱ¾�����ڡ�

���ն��⡣
��������Ҫ�ػ��Ĵ��ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0431020a07">
����硭��
����������Һ��Ǻ���˵�Ļ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0431030a00">
����������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0431040a07">
�����ҡ�
�����ն�������Ը�ն������Ļ�����
�Ǿ�����ն����������ݡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0431050a07">
����ΪӢ�ۡ�
������<RUBY text="ħ��">���Ǻ�</RUBY>�������������Ը����

{	SetVolume("@mbgm*", 5000, 0, null);
	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0431060a00">
����������������������������������������
����������������������������������������
����������������������������������������
������������������������������������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0431070a07">
����硣��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0431080a07">
����ȥ���Ұɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
��Ϊ������������ɢ�����������Ǻš�

���ҡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//���x�k��Ӣ�ۤˤʤ룯�����ʤ�ʤ�

}

..//������ָ��
//��Ӣ�ۤˤʤ롡"md02_043a.nss"
//�������ʤ�ʤ���"md02_043b.nss"



//���x�k֫���`��
scene md02_043.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg097_ܥԽ�����ڹ�β���_03a.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��ΪӢ��","������Ϊ����");
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
//��Ӣ�ۤˤʤ롡"md02_043a.nss"
				$GameName = "md02_043a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//�������ʤ�ʤ���"md02_043b.nss"
				$GameName = "md02_043b.nss";
		}
	}
}