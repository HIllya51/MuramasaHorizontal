//<continuation number="890">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_033.nss_MAIN
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

	$GameName = "mc02_034.nss";

}

scene mc02_033.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_032.nss"

	PrintBG("�ϱ���", 30000);
	SoundPlay("@mbgm35",0,1000,true);
	CreateTextureSP("�}����10", 1000, Center, Middle, "cg/ev/ev173_����׏�������.jpg");
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc02/0330010a00">
������������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330020a03">
���ڿ���ʲô���ĵ����𣿣�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330030a00">
����������Ϊ����ĳ���ᱸ�н���ɡ��
����ξ���£������뽻���ҡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330040a03">
������Ϊ������ʱ��ȥ�����ֶ����𣿣�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330050a00">
�����ǡ�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330060a03">
��û�е��ǣ�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330070a00">
���������ǣ���ξ���¡�
��γ���ԭ�������ҽ���ġ�
������һ�������е������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330080a03">
���غ���ͽ���������״̬�����Լ�����
�����ҵ��Ǿ������ˡ�
������֮�󣬾���Ӧ����ô�������ң�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330090a03">
���ֲ�����������˵���ֻ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330100a00">
���������ǣ�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330110a03">
����ֹ���ǣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330120a00">
����������
�������������𣿣�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330130a03">
��û��ʲô�ò��õġ�
���ҿ���<RUBY text="����">����</RUBY>����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330140a03">
��Ϊ����������Ҹ���֮�¡�����
�ҵ�����
����Ѫ����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330150a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�������Զԡ�
����Ҫ�ı��������⣬���Ƕ��������衣

�����֮�ˡ�
�������ţ�����Ѫͳ�Ľ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330160a03">
���������˲��ǡ�
����������û���������ң�
����Ҳ�ǿ��Եģ�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330170a00">
������⿪������Ц��


//�����`�󡤥���å�
{	OnSE("se�M��_���ߥ���_���`��01", 1000);
	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330180a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0330190a04">
�������ۣ�


{	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330200a03">
������Ц��!!��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330210a00">
��ʧ��
�����ǣ������ξ���ҵ���������Ѿ�
�������������ˣ�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330220a00">
�����Ǵ�ξ����Ƭ����ɥ������Ҳ��
������ȥ�ģ�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330230a03">
���������������о������˵�ʹ���ɡ�
���������Ǻ����𣿣�


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330240a00">
������ȫû����
�����ԣ�������ζ�ϣ����ξƽ�����µ�
ɱ����Χ��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330250a00">
��ֻ�д�ξ����������ȥ���Ҳ��ܼ���
׷�����м���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330260a03">
������������


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0330270a04">
��������������
�����Ǿ;������ͣ�Ŭ����Ҫ�����ɣ�
��С�㣩


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330280a03">
���š��š�û��


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0330290a04">
���������ǣ����Ļ�ʱ�������
�����ǲ�Ҫ͵͵�����ض��ڱ������
�ȽϺ�Ŷ����


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0330300e141">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330310b03">
����������
���ٹ�����Ļ�������ô���أ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330320a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á��Ϥ��饭��Υ���F

	OnSE("se����_����_���S01", 1000);
	WaitKey(550);
	OnSE("se����_�n��_ܞ��01", 1000);
	StL(1100, @0, @0,"cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStL(200,false);
	Move("@StL*", 150, @0, @30, Dxl2, true);
	Wait(200);
	Move("@StL*", 100, @0, @-30, Axl1, true);
	SoundPlay("@mbgm36", 0, 1000, true);

	SetNwC("cg/fw/nw�o�T��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0330330e141">
���С�����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���Ǹ����ˣ�<RUBY text="������">���Ϸ�</RUBY>������
���������컨���ϡ�

������ʲôʱ������������������ء�
������������ͬ�鶼�Ŀ���ࡣ�������Ҳ��ȫû��
Ԥ�ϵ��ɡ�

����������ֻ���������˼�һ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1100, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330340a03">
������������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330350b03">
�������ˡ�
���������ͽ����Ұɡ���


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0330360e141">
�������ǣ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330370b03">
�����ˡ�
�����������ξ��������Ա�����дն�����
�𡣡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330380a00">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330390b03">
�������������ʲô��
ֻ�������ʾ͹������ˡ�
��Ҫ������Ϊʲô�͸����ˡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330400a03">
����ѽ��Ƭ�������˿ɲ���Ŷ����ũ������
���������ǳ������������ϵ����Ⱑ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������̾Ϣ�ĵ�������ξ��Ƥ�ػ�Ӧ�š�
������������������Ƥ��������ȡʱ����ֶΡ�

��������Ѷ�������̸��֮�У��������ʱ�䡣
��
�����ǡ�����ͬ���Ѿ��˵��󷽹�ֱ�Ľ�У��
��������Կ�ũ�����е�ͨ�𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330410b03">
���ţ�������ԭ����ˡ�
����ô�Ҿ��ڴ�һ������ɡ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330420b03">
��������λ���ϴ���Ŀ����ʲô����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330430a03">
���ǳ���ɢ����
���Ҿ���ż���������ڿ���ɢ��Ҳ��һ��
��Ȥ����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330440b03">
�����ǽ������˶���
������������ô��Ȥ�ɣ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330450a03">
��������û��ʲô������Ȥ�ļƻ���
����������


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330460b03">
���˻���������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330470a03">
��Ҫ�ٰ��̻����˰ɣ�
�����Ѿ���������Ŷ����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330480b03">
������<RUBY text="����">����</RUBY>��
���٣����Σ��������ÿ������𣿡��Դ�
�����ڽ�֮��֮�����ǿƵ��鱨����
�ͱ�������������˰�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330490a00">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330500b03">
���̻𰡡�
����ȷ��Ԥ��<RUBY text="��">��</RUBY>һ���޴���̻𡣡�


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330510b03">
����������뿴��ϣ������ǰ�������ǡ�
���ѵ����˿��ˣ��ҷ��������׼�������
�Ĵ���������������������ô��������û��
׼���ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330520b03">
���д����˲��ܣ�����ʿ�ĳ��衣��


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330530a03">
��ʧ��������ǡ�������Ҫ�������ϡ�
���ο����ǲ��������۹�ġ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330540b03">
��Ŷ��
��������Ŀ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ũ����һ����
������ȥȷ�ϣ����ľ���ֻ����������
�沿�ļ����˶��ϰ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330550a03">
���š�
��ʵ���ϣ����ڿ���Ҫ��Ҫ���̻���ӵ�ˮ����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330560a03">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������֦С����һֻ�֣�����ʾ����ʱ��
������ը����λ�á�
�������ÿ��ŵ���̬��С������İ�����Ӧ�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330570b03">
��ιι�������Ұɣ�
��������������Ļ�����ɷ�ѿ������õ��̻𲻾�
���������𣡡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330580a03">
�������˵�����������أ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330590b03">
����ô��������
������������������ҵġ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330600a03">
���ǰ������ٲ�����ȫ���ԡ�
���������뷨�Ѿ��ı��ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330610b03">
�����ʲô���ˣ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330620a03">
���ؼҵ�Ӣ����ʿ�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330630b03">
���������������Ѿ�������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330640a03">
����Ҫ�������͵Ļ����Һܻ�ӭ��
�����ڲ���Ь��̤�����ڣ��������������
���ƶ������Ŀ��ˣ���Ц����ӭ�Ѿ����ҵ�
�����ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330650b03">
�����Ⲣ������һ���˾����İɣ�
Ůʿ��
����˭��������أ���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330660b03">
������λ��ʿ�ɣ�
�������Ц�ݴ���������ߵĿɶ�һ��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330670a03">
������������������Ҳ̫�����ˡ�
���Һ;�����������Ϊ�氮�Ž�ϵģ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330680b03">
����ƭ��Ů������˵����ͬ�Ļ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0330690a04">
���ǵġ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330700a00">
��û����


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0330710e141">
���š���


{	FwC("cg/fw/fw����֦_�@��.png");}

//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330720a03">
��������ôƫƫ����һ������ôĬ��!?��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330730b03">
��Ůʿ���ҿ��Ծ����������Ҫ��
�Ҳ�����������խ�����ˡ�
���㲻����ص�������𣿡�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330740a03">
�������������ˣ�������
��Ů��һ�����ģ�����Ҳ�ز�����ȥ�ˡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330750a03">
�������˿ɲ�һ������


{	FwC("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330760b03">
����ô��������
���Ѿ����������������𣡡�


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330770b03">
��������������ԭ�µ����˰����ն�������
�������Ҳ��ò�������������ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330780b03">
����ô���Ѱ����׷���������ء�����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330790a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����Խ�����Ϸ�ʶ������Ƶ����ߣ��ҳ�Ĭ��
��������
����˵Щʲô����ȴ˵��������

������֦С��Ҳһ����
����������Ҳ�ǡ�

���ҷ��������˶����쳣��
��
������Ϊʲô��

��<RUBY text="����">�ι�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw����Υ�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330800b03">
����������
������ʱ�䵽�˽������𡣡�


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330810b03">
���������š����Ѿ��㹻�˰ɡ�
����������ӵ�д������ӳ�ȥ��
������������Ҳ�޼������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm21", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����פ������������
��
��Ϊʲô��

��Ϊʲô����Ҫ<RUBY text="������">�����</RUBY>����ʱ���أ�
��û�С�����ʾ���κ����ʡ�

�����˵������ը��Ͷ�µ��ҷ���ʤ������
����ȡʱ�䣬��ô��ҪͶ��ը���ĶԷ���ʤ
����������ѹ��ʱ�䡣
��Ӧ������ȡ��ը����

������Ӧ���������Ŷԡ�
��
��
�������⿪���ì�ܵĹؼ�������תʤ����������

����Ҫ����ʱ��ģ����������ǡ�
��<RUBY text="��������">��������</RUBY>������������

��Ҳ����˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0330820a03">
������ɴ��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0330830a04">
��˫��������������������������
����������Ħ����������ȫ�޵ģ���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0330840a04">
���ѵ�����


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0330850a00">
���������ҡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����ʹŪ����״��ҲΪʱ����
��ʱ���Ѿ���ȥ�ˡ�

����صĻ��ᡪ������û���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330860b03">
�����ǵ����۵㲻��
�����ǡ����ò������ߵ���һ����
���ǳ���һ�㰡����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����ũ����΢΢Ц�ˡ�
���ǲ����ǰ�����ʤ�����ԡ�

���������ϵ���˼һ���������ڰ�ο���ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����Υ�_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330870b03">
�����Ƕ����׵��ı�������
���Ѿ��տ���Ҳ�ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330880b03">
������Ķ����Ѿ����˷ɴ�����


{	FwC("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0330890b03">
�����ǡ���
��<RUBY text="��������">û�ܸ���</RUBY>������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("�\Ļ��", 15000, "BLACK");
	Fade("�\Ļ��",1000,1000,null,true);
	DeleteStA(0, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��
����������������������˵����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣԣ���������װ��
//������׏�Ͷ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 18990, "#000000");
	Delete("�ϱ���");

	CreateWindow("�}��", 19000, 0, 0, 1024, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSPadd("�}��/�}��ɫ", 19010, "#FFFFFF");

	CreateTextureSP("�}����", 100, -30, -2520, "cg/bg/bg201_�����ݳ������нֵ�_01.jpg");

	CreateSE("SE01","se�ճ�_����_�Ϊz���_��01");
	MusicStart("SE01",0,1000,0,600,null,false);

	Wait(200);
	Zoom("�}��", 800, 1000, 1000, DxlAuto, true);

	CreateSE("SE02","se���L_����_���д��C_L");
	MusicStart("SE02",2000,1000,0,1000,null,true);

	Wait(600);

	Delete("�}ɫ�\*");
	FadeDelete("�}��/�}��ɫ", 2000, true);
	Delete("�}��*");

	CreatePlainSP("�}��д", 19900);
	Wait(10);
	Delete("�}����*");
	Delete("�}����*");
	Delete("�}ɫ�\*");

	CloudZoomSet(1110);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,0,-800,null,false);

	CreateTextureSP("�}����", 200, Center, Middle, "cg/bg/resize/bg026_���ӘSɽ��a_01m.jpg");

	CreateTextureSP("�}������", 100, Center, InBottom, "cg/bg/resize/bg204_�����ر���_01tl.jpg");
	SetVertex("�}������", center, bottom);
	Zoom("�}������", 0, 1000, 1500, null, true);

	Move("�}����", 3000, @0, 0, null, false);
	FadeDelete("�}��д", 300, true);

	Wait(700);

	CloudZoomVertex(3300,0,800,null,false);
	Move("�}������", 3000, @0, 4551, Dxl2, false);

	FadeDelete("�}����", 1000, true);
	WaitAction("�}������", null);

	Move("�}������", 400000, @0, -8526, null, false);

	CreateTextureSP("�}�����}", 1110, Center, Middle, "cg/st/3d��`�����`���`_�T��_ͨ��.png");
	Request("�}�����}", Smoothing);
	Rotate("�}�����}", 0, @0, @0, @-70, null,true);
	Zoom("�}�����}", 0, 750, 750, null, true);
	Shake("�}�����}", 2160000, 2, 2, 0, 0, 1000, null, false);
	Move("�}�����}", 0, @200, @-1100, null, true);

	FadeDelete("�}��д", 600, true);

	CreateSE("SE03","se���L_����_�ռ�����01");
	MusicStart("SE03",1000,1000,0,1000,null,false);

	Move("�}�����}", 4000, @-200, @1200, Dxl2, false);

	Wait(2000);

	Move("�}�����}", 30000, @-80, @-300, Dxl2, false);

	Wait(2000);

	CreateSE("SE04","se���L_����_���ϕN01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Wait(200);
	Move("�}�����}", 400, @0, @1200, Axl3, false);

	Wait(2000);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc02_034.nss"