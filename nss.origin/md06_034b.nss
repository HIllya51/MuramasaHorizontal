//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_034b.nss_MAIN
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
	#bg003_�Ĥ�Ұ_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_035.nss";

}

scene md06_034b.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_034.nss"

//���x��������M��
	PrintBG("�ϱ���", 30000);

	OnBG(100, "bg003_�Ĥ�Ұ_02.jpg");
	FadeBG(0, true);

	CreateSE("SE�L", "se��Ȼ_�L_��Ұ_L");
	MusicStart("SE�L", 2000, 800, 0, 800, null,true);

	Delete("�ϱ���");

//BGM�ʤ��Ϥ虜�ȤǤ� inc�Ѿ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ȫ���쳣���ء�
���ֽ���ͬ����Ǧ��ͷ��Ҳ�Ʊ�ʯͷѹ��һ�㡣

�������ڣ�ǿ�ҵĳ嶯ʤ������ĳ��ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md06/034b0010a00">
������һ���¡���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0020a12">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0030a00">
����˵���ɡ�
�����Ŵ����㵽����ȥ�ͺ��ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0040a00">
���ǰ�����Ҳ�������ִ��㡣
��ֻ�ǻ�û���С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0050a00">
����Ϊɱ�˵�ͬʱҲ��Ҫ���ˡ���

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0060a12">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��ɱ�ˣ��ڱ�Ұʬ���Ϲ�����ƽ��
����������ѡ�ĵ�·��

�����ң������ڰ�;��

��������ǰ���¼������������ѻ�����������
�����������������Ķ��������֮�С�

��<RUBY text="��">��</RUBY>��<RUBY text="��������">��δ����</RUBY>��

���ҵ�ʹ������<k>���ԡ�<k>
���ҵ�<RUBY text="����">Ŀ��</RUBY>������δ��ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0070a12">
��Ȼ���ء�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0080a00">
����������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0090a00">
��ƽϢ�����������з�������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0100a12">
�����������������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0110a00">
��Ҳ���ǰɡ���

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0120a12">
������Ҫ��ô����
���Ĵ��ͻ�������˵���ǲ�Ҫ�����𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0130a00">
�������෴����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������������Щ�º������塣
���޷�ϴ��һ��Ѫ�ȵ�ɱ�˷�����ʧ�����ˡ�

�������¡���
��һ�����б𴦵��˻�ȥ����

�������ˣ����׳���覵�����

���������ҵĴ��㡣
����Ϊ���ӵķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0140a12">
����ô�ǣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0150a00">
����ֻ֪������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0160a00">
��<RUBY text="����������������������������">Ҫ������޶ȵ�ɱ¾������ս��</RUBY>����

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0170a12">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0180a00">
����Цô����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0190a12">
����������
��ûʲô��Ц�ġ���

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0200a12">
��������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0210a00">
��������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0220a12">
���Ѳ�������Ҫ����
��<RUBY text="��������">��Ϊ����</RUBY>��<RUBY text="����������">�޿������</RUBY>�������£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ѩ���Ťͷ����Ͷ�����ߡ�
�������ҵ�Ŀ����Į��Ȼ��

��������Ϊ���ѣ�
��
����˵����ǿȥ����Ը�����£�

����������˵ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md06/034b0230a00">
��ѩ���
��������ˡ���

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0240a12">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0250a00">
����<RUBY text="������">�����</RUBY>�͸�֮���¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0260a00">
����Ը��Ļ����Ͳ���ȥ����
��ֻ���������¡���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0270a00">
�������ⲻ�ǵ�Ȼ����
��˭��ȥ�����Ĳ��������£���

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0280a12">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ȷ��
�����ǵ�Ȼ�ġ�

��ֻ�ǡ���
��������ʶ������������Ȼ���ҽ�����������Ȼ
�����˺ܳ�ʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md06/034b0290a00">
�����Ҳ�ǡ�
����Ϊ����Ҫ�������Բ�ȥ������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0300a00">
����ɱ��ɱ����

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0310a12">
��������Ȼ��ˡ�
�����Ǹ�ʱ��ΪʲôҪ�ޣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0320a00">
����û�пޡ�
��ֻ�ǣ�������ȥ���ڿޡ�����

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0330a12">
��������

{
//��������ݳ��������Ʊ�����ʹ�á�
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0340a00">
����һ������ЦŶ��
��Ц�������ᶼ�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ѩ����ƺ���Ĭ��Ƭ�̡�

�����ú󡪡������أ�
�������ء�

��������������������
��������ͬ������Ц����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0350a12">
�������١�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0360a00">
������������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0370a12">
�����������Ƕ����о�������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0380a00">
����֪������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0390a12">
��׼�������᳹ʼ����
����С�ӻ��治���������ʡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0400a00">
��û����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0410a00">
����Ϊ�ҡ��������Լ���а�񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����Ϊ��Ŀ�ģ��Ѿ���ȥ����������
�������ⲻ�ɱ粵����ʵ�����š�

��а��
����ѹ�������ġ����ڰ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0420a12">
���ߡ�������������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0430a12">
���ǣ�����ɡ���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0440a00">
��������

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0450a12">
������һ�һ�𡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0460a00">
����һ��

{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0470a12">
�����㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ѩ��������վ������������ŵ��ǿ���ʯ�߽���
���Ա�����ȡ��ʲô������

���Ǹ����ӡ�
��
�����ǡ���ͨ�Ÿ���װ�ã�

{	CreateSE("SE01","se����_����_����_����01");
	MusicStart("SE01",0,1000,0,800,null,false);}
��ȡ�����ۣ������ӡ�
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/034b0480a00">
����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md06/034b0490a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����Ļ���������С�
����һ�۱�֪�������ڡ�

������ԭ����ˡ�
�������ͨ�Ÿ���װ����Ļ����������
Ҳ�ò���Ӧ��

�����ǣ��Ǹ���å�������װ��αװ��ɱ��
��������ͼ�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md06/034b0500a00">
��ѩ�����

{	FadeStR(300,false);
	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0510a12">
����ô����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/034b0520a00">
��Ҫ�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ҳ��Ų������ǵ�ѩ���Զȥ�ı�Ӱ��������
��ѩ���һ�ػ�ͷ���³�һ����ĭ��

��¶������������Ц�ݣ�˵������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/md06/034b0530a12">
�����죬�ͷŹ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����", 5100, Center, InBottom, "cg/bg/resize/bg002_��a_02.jpg");
	Move("�}����", 10000, @0, 0, DxlAuto, false);
	Fade("�}����", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���ƻ衣
�������ĵ�Ӱ������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����`���Ф�

	ClearWaitAll(1500, 2000);

}

..//������ָ��
//�Υե����롡"md06_035.nss"