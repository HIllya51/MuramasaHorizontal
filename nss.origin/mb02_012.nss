//<continuation number="1160">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_012.nss_MAIN
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
	#bg063_���ӘS��������_01=true;
	#bg045_���ӘS�ǹ������g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_013.nss";

}

scene mb02_012.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_011.nss"

//����������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg063_���ӘS��������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ȼ�����Ե�ɣ��һ���ǰ���������ɰ������ȴ�֮
����

�������������·��Ů��ѯ�������ɡ�
������ֻ���䵭������һ�䡸��֪�������������

����֪���Ƿ��治֪������Ҳ�޷������ٸ��ʵף�
��ֻ�þʹ˱տڡ�
�����ǣ������������һ�䷿��ǰ��

�������ߴ��£��ҿ������Ƿ��䡣
��Ů��ֹ���ڴˣ����������������Ȼһ���󣬸��ȱ�
�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������˽��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg045_���ӘS�ǹ������g_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120010b49">
���ģ�
��̫���ˣ������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120020a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����Ϻ����Ѿ�������ã�¶�������Ц�ݡ�
����Ȼ��û�������ɢ�����е�����������ߵ�ݲ���
���þ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb02/0120030a00">
���������밲������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120040b49">
�����ض���ƽ��ƽ��
��������������Ϊ���ⷬ�����Ƚڡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120050a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ȷʵ��ˣ�������������������λȨ��֮������
��������ֹ�ְС����Ի��ء�

���������ԣ�������ʲô��ٳ����ⳡ�Ի���
��������Ϊ�ϴ�һ�£���λ���������ʵ���⣬Ҳ
�����ڻỽ���������һ�������塣

�����ɰ�����ڳ���ȥ���ѣ�ȴҲû�������ᵽ��
�¡�
�������������Ų�֪��ο��ڵļ�Ĭ��

�����ڱ˴˵��������Ҳ�����ȥ�ߴٶԷ���
����ô����������Ǻá�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120060b49">
������������˵������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120070a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������ʮ�롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb02/0120080a00">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120090b49">
���������롭����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120100a00">
���ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������
	WaitKey(4000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ܳ���һ��ͯҥ��ʱ���ȥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb02/0120110a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120120b49">
��������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120130a00">
���ǡ���


{	FwC("cg/fw/fw����_����.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120140b49">
��Ů�ӡ���
����Ȼ�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mb02/0120150a00">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120160b49">
���š���
��������Ҳ���Ǿ����ڻ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����ڿ�ʼ�ĶԻ���ȴ����һͷ��ˮ��
�����ϡ��ҡ�Ů�ӣ������߾��������Ϊ����ϵ��һ��
��ȫ׽����͸��

��������������ֻ�þ����������ش�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/mb02/0120170a00">
����һ��������ԣ����������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120180b49">
��һ�㡭����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120190a00">
�������������ӡ���
�������׻���˵���е����������е�ϲʳ��
�࣬С����Ϊ���������ưɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120200b49">
���š���
������ʵ�ϣ������������
�Ȳ�������Ҳ�������ࡣ��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120210a00">
�����Լ��ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120220b49">
��Ů��Ҳ���ǽ԰����������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120230a00">
���˸��������ɡ�
�����Ե��������ʻ������ӡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120240b49">
�������ʻ��������𡭡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120250a00">
���ǡ���


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120260b49">
�����ӻ����ϲ�𡭡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120270a00">
���ǡ���


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120280b49">
�������ģ������������Ϊ��!?
��ͻȻ�������͸�һ��Ů�ӣ�����ķ�����Ů
���������!?��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120290a00">
�������ǽ����Ϊһ��ǰ������ս����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����϶�Ȼ�ع鳣̬������Ҳ�ָ�ԭ״����״�Ҹ�æҡ
��ҡͷ��
��Ӧ���ⳡ��֪���ƵĶԻ������൱�鷳��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/mb02/0120300a00">
��������Ҳ��Ů��������һ�㣬���������յ�
�������ʻ����ſ�һ�۾�ŭ��һ����׾�ӡ���
̧�ű��ߣ����öԷ��������²�Ȭ��������


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120310b49">
����δ��˵���˵ȹ��˹��£�
��������������ˡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120320a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120330b49">
����λŮ�ӡ������ӵء�����


{	FwC("cg/fw/fw����_����.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120340b49">
����������ǡ���
���������������ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120350a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������ϣ����ƾ�������ȥ����ⷬ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120360b49">
������Ҳ��ֻ��������������ˡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120370a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120380b49">
�����ԲŰ����������
������ʲô��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120390a00">
���ǡ�
������֮ǰ�����¡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120400b49">
���š���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120410a00">
��С���ޱ�����δ�������»���֮�⡣
��ʵ�ڲ�����������ͽ̡���


{	FwC("cg/fw/fw����_����.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120420b49">
������������



//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120430b49">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120440b49">
��������Ǹ��
�����ķ��գ����¡������˷��硣��

{	FwC("cg/fw/fw����_����.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120450b49">
���ǹ���ӣ��С����¡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120460a00">
���Բ��ҵģ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120470b49">
���š�
��������Բ�����֮�䡭�����й����ֹ�������


//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120480b49">
������һ�ж��������¡�
����ϣ���ܼ������̡�������������ֻ�ǲ���
���ε�˵�ǰ��ˡ���


//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120490b49">
�������Ҿ���ӣ��С�㲻��ʼ�վ�������
�޹⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��ʤ���������Ͳ������¡�
�����������԰��ߵ���͡�

���������ɵ��ԴǶ�����������֮�������������Ϊ��
�������еĸ��ܰɡ�
���Ҿ�����������������ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mb02/0120500a00">
����С��ð����С��Ҳ��ô�롣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120510b49">
�������
���š������֪����һ������ͬ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������ΪЩ��Ӵ�����λ���꾹��������ҡ�
������˼���Լ�����ʵ��ݣ���ͷ����һ���ʹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb02/0120520a00">
����ô������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120530b49">
��ǰ���գ���Ҳ����ӣ��С���˰ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120540a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120550b49">
����ʱ��ӣ��С�㡪����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�������ڲ���ƺ����ڻ������»��䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	WaitKey(6000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���ܳ���һ�������ʱ���ȥ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���ɥ�`��
{	SetComic(@0,@0,13);}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120560b49">
������������


{	DeleteComic();
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120570a00">
���������¡���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120580b49">
������������!?��


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�룺������Ԓ���Ƥ�����090930��
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120590b49">
��������Ǹ��
������˵�����ˣ���


{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120600a00">
���ص��£�����˵����ʱ��ӣ��С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���ܾ������Լ����ˣ������ⷬ��������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120610b49">
�������š�
����ʱ������


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120620b49">
�����ҿ���������ʹ�࡭����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120630a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����ʱӣ��С�������ڱ����ϣ�Ӧ���Ǳ�����ƽ���ġ�
��������λ���꣬��Ȼ�����ٶۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ʧ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���ܥ����ϡ��_�����ä����ɡ�����С���ǡ�
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120640b49">
������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120650a00">
����ô�ˣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120660b49">
��û��ûʲô��
�����ԣ����롭����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120670b49">
����Բ�֮���ս��������û����á�ӣ��С
����е���Ҳʵ���޿��κΡ���
�����뾡�������������Ի�������ʹ�࣬�а�
���𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120680a00">
��ԭ����ˡ�
�����Բ�˵�𻨡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120690b49">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����ڽ��ⷬ�Ի������һ��ͷ����
��������һ�������㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/mb02/0120700a00">
�����������¡�
��Ϊ�ν��ⷳ�ո�֪�����أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120710b49">
����ֻ���뵽�㡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120720a00">
���⡪����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
������˵�����޴��¡������һ��Ǳ������졣
��������ߵĻ����һ������յ��龰��

���������߹¶�����Ϸ����Χ�������ǻ������̴ӡ�
������Ҳ����ı������ˡ���λ�������ߣ�û����
�����������������Ļ��⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb02/0120730a00">
�������������������
��ʵ�����Ϲ��١���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120740b49">
����������˵����Ҳ�ܸ��ˡ�
����ô�����������أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120750a00">
���⡭����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120760b49">
���������ѡ�������Ļ������������ӣ��С
��������ϲ������
������˵���ͱ�ıȽϺ��ء�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120770a00">
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���ҽʾ���֭��
���ҵ�Ȼ���˽�ӣ��С��İ��á�

�������µ���������һ�����������ཻ��ǳ����
û�н�̸����Ҳ���ǻ�����⡣
��������������ˣ���Щ�»��Ǻ�����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120780b49">
���ģ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120790a00">
��С����Ϊ����
����Ҳδ�����ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120800b49">
��ʲô��˼��
���Ǿ���˵��Ķ���Ҳ�����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120810a00">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120820b49">
��������ָ�����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120830a00">
�����Ҳ�ɡ���


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120840b49">
���ġ�
���������濼���𡭡�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120850a00">
����Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�������λ���Բ����������ҵ��������ߣ��ұ���ǳǳ
��΢Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��������
<voice name="����" class="����" src="voice/mb02/0120860a00">
������������ð��ϵ��µĴ�ѯ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120870b49">
�����ǡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120880a00">
�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
������ɫ������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/mb02/0120890a00">
���������͸�ӣ��С��ģ����������ﱾ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120900b49">
����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120910a00">
��������������������һ����ϧӣ��С
����İɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120920b49">
���š��š���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120930a00">
������ˣ�С����Ϊ������������Ҫ��
��ֻҪ���Դ�����µ�һƬ�����ɡ���


//�룺������֪��̣���090930��
//��������
<voice name="����" class="����" src="voice/mb02/0120940a00">
������֪��С���ϲ�ã��������ۣ������Ȼ
�����˽���ϲ��ʲô����ô�ؼ������ڴ���һƬ
���⡣
������°��Լ�����˼ѡ�������



{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120950b49">
����������յ�������֮�ӣ��С��������
���𡭡�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0120960a00">
��С����Ϊ���²���Ϊ�˹��ġ�
��С�����ַ������ӱ��ʹ�Ħ��͸�߹�֮�˵�
��������


//��������
<voice name="����" class="����" src="voice/mb02/0120970a00">
�����������λС�㣬��һ������
���ڽӵ������ͬʱ��������ᵽ���µ�һƬ
�ȳ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120980b49">
���������𡭡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0120990b49">
���ţ�һ���������ģ�
��лл�㣬�ġ��Ҳ�������ԥ�ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0121000a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����ǰ�İ�������չ��Ц�գ�������ش�����ͷ��
�������Լ�����ݻ�������ӵ��ľ����Ҿ�������һ��
������ȴ��

��ϣ���ܰﵽ��λ��������ꡣ
����Ȼ���Ҽ縺��ְ���޹�ϵ����Ȩ������;������
һ���ӱ�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121010b49">
���ã��Ҿ����ˡ�
�������ͻ��ɡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0121020a00">
����Ϊ���ס�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121030b49">
���ǰ������ˣ��ġ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0121040a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����������

���ţ�
���Ҹ����ģ��ѵ����ǵ���Ϊֹ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121050b49">
����Ҫ�����͸�ӣ��С�㣬�������󡣡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0121060a00">
����������<?>
{	Wait(500);}
���¡�
���������飬���ǵ��������ʹ�Ϻá���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121070b49">
��������ˡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0121080a00">
�������ڴ���������


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121090b49">
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
�������Եú����š�
���ƺ�������������Ҳ���Ǻ���֮�ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/mb02/0121100a00">
�����£���


{	FwC("cg/fw/fw����_ʧ��.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121110b49">
��������������֮������������
����һ���ҡ�������֣������ʦ���ڡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0121120a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
����ȷ��ˡ�

��û�취��
���Ѿ��ﻢ���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//��������
<voice name="����" class="����" src="voice/mb02/0121130a00">
����ּ��
������ʹ��һְ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121140b49">
����Ը���𣡡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0121150a00">
���ǡ���ô�������
����Ҫ�����������£������ٽ����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����ϡ�
<voice name="����" class="����" src="voice/mb02/0121160b49">
�����ء�
����ʵ�����Ѿ�ѡ���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb02_013.nss"