//<continuation number="1390">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_031.nss_MAIN
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
	#bg104_���ӘS������󴬷���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_032.nss";

}

scene md04_031.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_030.nss"


//���ٛg��
//�����L

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg104_���ӘS������󴬷���_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);
	CreateSE("�|�đ�", "se���L_�|��_ȭ�|�|�đ�01_L");
	MusicStart("�|�đ�", 2000, 500, 0, 1000, null,true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStL(300, true);

	Wait(500);
	SetVolume("�|�đ�", 3000, 200, null);


	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310010a07">
���ܾ��á���
���������ְ�����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310020a00">
��������֣���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310030a07">
����פ���Ĳ��ӡ�
�����ǵĹ���Ҳ̫���˰ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310040a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310050a00">
��������ô˵ȷʵ��ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310060a07">
���ǰɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310070a00">
�����������ѵ�������Ϊ����Ľ�չ��Ԥ����
һ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���������ܺ����ڲ����Ķ���˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md04/0310080a00">
���Ҿ����������Ǵ�����֮�����Ͼ�ս������
�㲻�����ǿ�������װ�����ʿ������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310090a07">
��������ˡ���
���ܾ��ò�̫�Ծ�������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310100a07">
���ֶ���Ҳ��û�������ǡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310110a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310120a07">
��Ҫ��˳����ʰ���˵Ļ��������ܺ�����Ѷ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310130a00">
��ͨ����������������Ϣ�𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310140a07">
���š���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310150b37">
�������ڡ�
�����ڷ��ţ���������Ϣ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����霔�

	StR(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(300, false);
	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/0310160a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310170a07">
������������

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310180b37">
����ô�ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310190a00">
�������಻�ðɡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310200a07">
�������಻�ð�����

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310210b37">
��������ʧ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��һ��������������Ϣ���ֵ��Ǹ����ˣ�����������
����һ��
��Ȼ����ղŵ�����ͬ������ΧͶ�Ծ��������֮��
�ٶȿ�ʼ˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310220b37">
�������ֽ�פ����ʱ˾��е�һ��ͬ־
����������ͨ������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310230a00">
����������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310240a07">
�����������ֶ��򣿡�

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310250b37">
�����ǡ�
��������������ĳ�Ա����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310260a07">
����ô���¡�
����Ϊ������̫�����ң����������ֶ���˵��
�����е��������繤���ġ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310270b37">
���ֶ���������ѱ��н�����

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310280a07">
��������?!
���Ǹ��ڿ�����ڸ�ɶ����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310290a07">
���䡢��Ȼ���ò�̫���ܡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310300a00">
��������ǿ�������ɣ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310310a07">
��������ʱ��!!��

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310320b37">
��������̬����Ҫ������Щ��
���ƺ���ũ����Ҳ�ͽ���һ�������������ж�
���ɡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310330a07">
������ʲô������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310340a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
����ũ������
�������ֵ�����˵����

��Ӧ���ǡ���Ԥ��ִ�п�Ͷ�����׵���ս�ģǣȣѾ��١�
��
���Ǹ��ˣ����н��ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310350a07">
��ά���ٽ��أ���

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310360b37">
�����²�֪��
��Ҳ���ѱ�����Ŀ��ܡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310370a07">
������ʲô���ˣ���

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310380b37">
����ҹ�賿����������ȷ��˵Ӧ���ǽ��ա�
�����Ϲ������鳤·�ȡ����ް�������������
����������������Ұս˾����ƺ��´���ʲ
ô�����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310390b37">
���˺�ά���ٽ���֪ȥ��
����ũ�������ֶ�����ڱ��ֱ�������

//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310400b37">
�����ް���������Ϊ���Ϲ�ȫȨ�����Լ���Ӣ
����Ů�������δ�ʹ��������ʵ�������˾�Ȩ����

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310410a07">
������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310420a00">
����������裬��ô���£���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310430a07">
����¶�ˡ�����

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310440a07">
����ũ�����ƹܣǣȣѵĶԴ�����ߣ�������
�����´�½�����ɣ���硣
��Ϊ�˶�������ϣ���õ���ͣ���Ϊ�������
�ͣ�����Ҫʹ�ö����׵�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310450a07">
����ԭ����ϣ���ڰ���<RUBY text="����">������</RUBY>��
Ҳ�����ֶ�����ڵ�ͬʱ��
�����Ǽ������á�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310460a00">
����������
�������ֽ�Ҫ��ͷ����ũ����������ͬ��
�����Ϲ�ʶ���ˣ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310470a07">
��ֻ����ô�롣��

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310480b37">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ԭ����ˡ�
�����פ������ǿ��ľ�����֯���Ǳ����������ֹ���
����֯���֣��ͻ�¶����϶�����˳˻�����ɡ�

��<RUBY text="�²��е�">�´�½</RUBY>�����ɡ���<RUBY text="����������">�������������</RUBY>����Ҫ˵��Ӣ��
����Ĵ���Ƕ���˹�۹��Ļ�����ô����˵Ǳ�ڵĴ�
�б������ǡ�
�����ģ�������й��ĴΡ���С��ģ�����򲻼�������

����Ȼ��פ���������ɷ��ǰ�������Ӵ�Ӣ����Ķ���
�ɵĻ�����ô���ǽ��������ֶ������������Ŀ�ĵĺ�
���߱��������ˡ�
�������������Ϊ�������ó���ͬ����Խ��Խ�á�

��<RUBY text="����">����</RUBY>ʮ��˳����
��Ȼ�������������������ֽ񡪡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md04/0310490a00">
������������

{	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310500a07">
�������ɶ񡭡���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310510a07">
��Ϊʲô��ı���ֶ��������޷�˳��?!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310520a00">
����Ϊ����ı�ɡ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310530a07">
��������ȥ�����׵������Ͷ������
����Ϊ���Ϲ����ļһ����Ը����
����������ǣȣѰɡ�����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310540b37">
������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310550a00">
������衣
���Ǹ���ũ�������Ǹ�<RUBY text="������">�ܸɵ�</RUBY>�����𣿡�

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310560a07">
���ף���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310570a00">
��Ҫ�ǻ����������ɵĻ�������������״��
�����ջ�ʧ���𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310580a07">
���š����������Ҳ��һ�ְ취��
���Ǽһ���ǿ�úܣ�����Ҳ����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310590a07">
�������ܶ��ָ��Ȩ������ս�ɡ�
���Ǹ�ȫȨ����ĺ���Ҳ��û����Ŀ�ŵ���
�����������ѹ��߶Դ�������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310600b37">
���ţ�������ˡ�
�������ն����ˡ������кδ����أ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310610a00">
�����Ǿ����Ǹ��еľ��а취Ťת���ƵĻ�����
������������

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310620a00">
����ȥȥ��������

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310630a07">
�������Ҫȥ?!��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310640a00">
�������һ���˭��ȥ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310650a07">
���������ǡ���
������ѽ����Σ�յġ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310660a00">
����ɲ�������ս��Ӧ˵�Ļ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310670a07">
��ð��ҲҪ�и��Ȱ���
���������ôΣ�յ��¿ɲ�Ҫ����

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310680a00">
�������
����ָ��������ʱ�����𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310690a07">
����ʱ�����ҵ�ʧ��
��û�뵽�Ǹ����̫�ɾ�Ȼ�����ߡ���
�������Ҿ�Ȼ�������ȥ�������ּһ
����ݺ��ᷭ��ʱ���Լ�����

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310700a07">
����ʹ������������Ҳ��ʳ�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����AȾ_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md04/0310710a00">
�������������ɸɵ��Ǽһ����𡣡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310720a07">
���ӽ������˵����������
����פ��˾����������ɾ��Բ�ֻһ����
������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310730a00">
���һ���취�Ը��ġ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310740a07">
����ֻ��ȥ������а취�Ļ�������ǰ��ս��
�����ǹ��ҾͲ�������ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310750a00">
������ʲô��
���������޷��������𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310760a07">
���������ǵġ�
�����������ġ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310770a00">
������������

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310780a07">
���͡��������Ҳ���У� 
���������ҲŲ����أ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310790a07">
���ء�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310800a00">
�����ˡ�
����ͬ��Ҳ�ò�ͬ��Ҳ�ա���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310810a00">
�������ˡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310820a07">
���ҡ�������������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����뤺��
//	Request("@StL*", Smoothing);
//	Move("@StL*", 300, @50, @100, null, false);
//	Zoom("@StL*", 300, 1500, 1500, null, true);

	DeleteStL(150,true);
	CreateTextureEX("�Ǥ��������", 1000, @-250, @-300, "cg/st/resize/st�衩��_ͨ��_�Ʒ�a_l.png");

	Fade("�Ǥ��������", 150, 1000, null, false);


	OnSE("se����_����_����������_L", 1000);
	Shake("�Ǥ��������", 400, 1, 0, 0, 0, 1000, DxlAuto, true);
	Shake("�Ǥ��������", 400, 1, 0, 0, 0, 1000, DxlAuto, true);



	WaitKey(1000);
	SetVolume("@OnSE*", 1000, 0, null);


	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md04/0310830a00">
����ק��������

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310840b37">
��ܥԽ�н����ˡ�
���Ǹ��������ڿ��š���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310850a07">
�����в��в��С�������!!
�����Ҫȥ�Ļ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310860a00">
����������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310870a07">
����Ҳһ��ȥ����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310880a00">
������ɵ���𣿡�

//�����ߥ���ŭ
{	SetComic(@0,@0,15);
	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310890a07">
��û����ɵ����

{	DeleteComic();
	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310900a00">
�������������󣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310910a07">
������㻹���Ǹ��٣���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310920a00">
�����Ҳ������پͿ����˰ɡ���

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310930a07">
����Ҫ��������?!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0310940a00">
����Ȼ�����������㣬������Ȼ�����������
����Ϊ��û����ԥ�����ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310950a07">
����Ŷ�������˺ù��֣���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310960b37">
���ն����ˡ�
��ܥԽ�н����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�Ǥ��������", 300, true);


	StR(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStR(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���ұ����������ק�ţ���Ҫ�ٶ��߳�ȥ��һ��ǿ��Ц��
����������˽�����
����ò��������������쿴�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md04/0310970a00">
����������𣿡�

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0310980a07">
��������

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0310990b37">
������ؽ����½����������졣��

{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0311000a07">
��������������

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311010b37">
����ʵ�����±����д˴��㡣��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311020a00">
����Ҳû��ʲô�������Ͼ�ɡ���

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311030b37">
�����ݴ�����ְ֮���˶������֮�ꡣ��

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311040a00">
����Ҳ��һ����
������ߵ�������Щ����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311050b37">
�����������������������˾���š�
��������ר����Ǳ�빤������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311060a00">
��������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311070b37">
�������������ҵĴ̿ͣ�����һ��֮�ҳ���
��Ǳ�����֮�¾���Է���ˮһ��ƽ������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0311080a07">
�����������ܽ������𣿡�

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311090b37">
��Ϊ�������ᡣ
��Ϊ�����ǵ���������

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311100b37">
��������������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0311110a07">
���š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311120a00">
��������

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311130b37">
���ն��ˡ�
������ܥԽ�н�������˵����
���䲻������ʮ�а˾š���

{	FwC("cg/fw/fw��霔�_˼��.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311140b37">
��������б���������벻������̬������
����������ܥԽ�н�������ߣ��Է���̬�б䡣��

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311150b37">
�������ڴ�������ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311160a00">
�����������ˡ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311170a00">
����������ի����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311180b37">
�������ڡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311190a00">
���������������������޹ء���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311200b37">
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md04/0311210a00">
�����ǣ���Ҫ�װ�������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311220a00">
���ҡ����������������·���������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311230b37">
������������

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311240b37">
������֪���ˡ�
�����������˲��ص��ġ�����

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311250b37">
������Ԥ�У����н������µ�����֮�С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311260a00">
�����ˣ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311270b37">
���ǡ���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311280b37">
�����¡������ڴ˴��Ĵն�������Ȼ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311290a00">
������������

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311300b37">
���������ǵġ�
��˵��Щ��ͬԤ����һ��Ļ�����

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311310b37">
������Щ����֮������˴��˵Ķ��䡣��

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0311320a07">
������������

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md04/0311330b37">
�����¸��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����夤����ʧ


	OnSE("se����_����_���S02",1000);
	DeleteStA(200,true);

	Wait(200);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��������������ͬ����ʱ�ǰ�����һ�񡪡�
���������Ӱһ����ʧ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md04/0311340a00">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0311350a07">
����磬Ϊʲô˵���ֻ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311360a00">
��������ô˵�ء�
��Ԥ��ʲô�ģ���Ҳ�о����ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0311370a07">
��ʲôԤ�У���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md04/0311380a00">
�����Ǹ����ˣ�û���ټ��Ļ����ˡ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/0311390a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�|�đ�", 1500, 0, null);
	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_032.nss"
