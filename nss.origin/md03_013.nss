//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_013.nss_MAIN
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
	#bg027_���ӘS�u�h���g_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_014.nss";

}

scene md03_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_012.nss"


//���u�h���g

//�������Τ����äƤ�����붨���������_���������Ƥ��ޤ��� inc�Ѿ�

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm20", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����´�����Ϻ���ȥ��Ļ�����Ի㱨�����
���źӹ�������ͯ�ġ�С���������׵����Լ���ʱ��
�ǵĺS����������ʨ�Ӻ������ҵı��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_�h��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130010a06">
���š�����������
���������ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130020a06">
������ú��׵����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130030a09">
���š�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130040a00">
���ǡ�
����л�佱����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130050a08">
����������
����ƾ����ʧ�ٲ����б���˵������ͨ���𴦣�
�Ͱ��������ϵ���������ǲ���̫����ˣ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130060a06">
���������������������ʣ�
�ܾ����������Ե�Υ�͸С�����

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130070a08">
��Ϊʲô��!?��

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130080a09">
����ͨ������ı���������İɣ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130090a08">
��������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130100a09">
���ǰɣ��ն���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130110a00">
���������졣��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130120a08">
��������ô���£���

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130130a06">
��������˵��һ�¡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130140a00">
���ǡ�
����������Ƿ�Ļ�����������ķ�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130150a00">
��ͨ�����߽���᳡�ı���Ʒ�����ӹ���
����ʹ�������ڡ�
����Ȼ��С�ֶΣ�ȴ����Ч����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130160a00">
���¹���Ϊʧ�ٵ����ʿ����Ѿ��ڳ���
������ˡ���
����Ϊ�������͵ȥ��Ǯ����û��Ҫð
�ŷ��մ����ǡ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130170a08">
��������
����Ϊʲô���������̲������ɶ������Ĳֿ�
����Ա����ȫ�Ǳ�ԩ���ġ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130180a08">
���㱾����֪�����໹����
ץ�����Σ���

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130190a00">
���ǡ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130200a08">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130210a08">
��Ŷ����ԭ����ˣ�
������ô���°�����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130220a06">
�������������
��û����������ʵ˵�������ס���

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130230a06">
�����ǵ�Ļ��Ǳ����ڽ��е�����һ��ʵ���
����ȥ�����ڰ�ᦹ��¼�����δɢ֮ʱ���϶�
��ʹ�ٱ�ǿ�Ҷ�ҡ����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130240a09">
�����������Ϊ˽���¼�������޴˹����ˡ�
�������Ĵ��ַ��������پ��͡�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130250a09">
����ѽ����������ڶ�ʱ��������ô�డ��
����ĵ�ʶҲ�൱�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130260a00">
�������̿֡���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130270a08">
���Ǻǣ��ǰ��ǰ���
���������������˾����ܲ����֧�䣬�����
��ͦ����˼��ġ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130280a06">
�������ǡ�
��������ϸ�����������ǵ�������ô��ʶ
�ġ�����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130290a00">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130300a09">
����˵���ն�������
����֮�������ô������

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130310a00">
���򱻴����Ĳֿ����Ա˵��Ե�ɣ�
Ȼ�����������������ĸ�����
�������˵��Ȼ�����˰ɡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130320a09">
���š�����

{	FwC("cg/fw/fw�����AȾ_���L.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130330a00">
�����˵ĵ��鵱ȻҲ��������Ѹ�ٵؽ��С���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130340a09">
���á���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0130350a08">
�����½�����ɡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130360a06">
�����ʵĲ����أ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130370a00">
���Ѿ���ҵ����ϵ���ˡ�
����Ȼ���ٻ��е�ϣ����ǲ������ӹ��ڡ���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130380a06">
���ܺá�
���ǳ��ã��ն���������

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0130390a06">
�������ǲ�������ʧ��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130400a00">
���������ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130410a09">
����ѽ��ѽ��ƶɮҲ��ô���á�
����������ʲô����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130420a00">
����������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130430a09">
�����壡��

{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md03/0130440b21">
���ڣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���x��

	StR(1000, @0, @0, "cg/st/st�x��_ͨ��_˽��.png");
	FadeStR(300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���źӹ���������Ǿ�����������ߵ�С�ա�
����һ����ʵ��С��һ��Ѹ����������������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/md03/0130450a00">
����������

{	FwC("cg/fw/fw�x��_ͨ��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md03/0130460b21">
���������кηԸ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0130470a09">
���š�
��ο��һ����λ�˲š���

{	FwC("cg/fw/fw�x��_Ц��.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md03/0130480b21">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����й�һ��ת���ҡ�
��Ȼ�󿪿��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


	SetFwC("cg/fw/fw�x��_�դ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��΢��˳��
//���x�塿
<voice name="�x��" class="�x��" src="voice/md03/0130490b21">
���������ˡ�
����ϲ���������ܣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0130500a00">
����������������������������������������
����������������������������������������
����������������������������������������
���������������������������������������ˡ���

{	FwC("cg/fw/fw�x��_�դ�.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md03/0130510b21">
���������죬�ý�Ҳ���ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("@text0070*");

/*
//Ҋ��Ҋ���� inc�Ѿ�
	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("voice01",30411,Center,inherit,auto,auto,"���Y������");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @10, @10, null, false);

	SetBacklog("���Y������", "voice/md03/0130520a00", ����);
	CreateTextureEX("�01", 30400, 451, 4, "cg/fw/fw����_ŭ��a.png");


	Fade("�01", 150, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("�01", 150, false);
	Fade("@boxCT", 150, 0, null, true);

*/

/*
	CreateVOICE("����","md03/0130520a00");
	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	MusicStart("����",0,1000,0,1000,null,false);
	CreateText("voice01",30411,Center,inherit,auto,auto,"���Y������");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @0, @10, null, false);

	SetBacklog("���Y������", "voice/md03/0130520a00", ����);
	CreateTextureEX("�01", 30400, 451, 4, "cg/fw/fw����_ƣ��.png");


	Move("�}st200", 0, @0, @0, AxlDxl, false);

	Shake("�}st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("�}����100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("�01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("�01", 150, false);
	Fade("@boxCT", 150, 0, null, true);
*/

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//����ե����
//��������
<voice name="����" class="����" src="voice/md03/0130520a00">
<FONT size=40>�������ˡ���</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_014.nss"