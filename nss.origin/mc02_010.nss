//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_010.nss_MAIN
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
	#bg028_��亣ǣȣѻ���_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�������=true;

	$PreGameName = $GameName;

	$GameName = "mc02_011.nss";

}

scene mc02_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_009.nss"


//����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	
	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);
	
	WaitKey(1000);
//�����Ϧ��ҹ
	CreateTextureSP("�}����11", 9, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	FadeDelete("�}����10",1000,true);
	WaitKey(1000);
	CreateTextureSP("�}����12", 8, Center, Middle, "cg/bg/bg002_��a_03.jpg");
	FadeDelete("�}����11",1000,true);
	WaitKey(1000);
//����亻���
	CreateTextureSP("�}����13", 7, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_03.jpg");
	FadeDelete("�}����12",1000,true);
//���������
	StR(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw�������_ͨ��.png");

	#voice_on_�������=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100010a13">
����ѽ��������Ҳû�С�����

//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100020a13">
������ȥ������ѽ��
�����Ǹ����������鷳�ġ���Ů������


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100030a13">
������ץ�����������������ڿ㣬
��������ë������


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100040a07">
��������ꡣ
����Ȼ�Ҳ�֪����˵����˭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��
	StL(1000, @-50, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	Move("@StL*", 300, @50, @0, Dxl1, false);
	FadeStL(300, true);


	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100050a13">
����ѽ��ѽ��
������Ѱ�ҡ���Ů����
û�뵽��������һλ��Ů�ˡ���

//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100060a13">
�������������ûѽ��
�����ڿ��ѵ��ɣ���


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100070a07">
�����Ρ���


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100080a13">
�������ˡ���������������������ˡ�
�����Ǽ���ֻ���Լ�����ȷ�ģ�����
���������˶����޴��ģ�������������Ц������
���һ������ڿ㡣����Ϊʲô!?��


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100090a07">
��������˵��
����Ȼ����ô���ѣ������Լ����¡���


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100100a13">
��һ���������ѵ��ڿ���ʲô��˼��
�����Ǳ����𣿡�


{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100110a07">
���ۡ�������������ֵĵط��ͱ��ֵú������
��˵��ʵ������������ȥ�����Σ�
�������ڻ������ˡ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100120a07">
��������֪ͨ�������
�������������������������


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100130a13">
�������ޣ���


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100140a13">
����ȷ���𣿡�


{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100150a07">
�����ҵ�����������Ҳ�ͻῴ��
һ�˩������ҡ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100160a13">
���Ǿ�û�����ˡ���


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100170a07">
��������һ��Ȼ�Ա��˵�װɵ�Ӷ���������
�������Ŵ��ñ��������Ĳۡ�����


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100180a13">
����˵˭���������������������ˣ���


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100190a07">
���Ҳ�û��ô˵����


{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100200a07">
���۰�������С�����˸�������ɫ
�Ĳۡ���!!��


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100210a13">
�������ˡ���׳��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_�䵨.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100220a07">
�������ұ��۸��ˡ�����
���ұ��۸��˰ɣ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100230a13">
���ǣ���ʱ�����������ᱻ����
�����ֳǰɣ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100240a07">
���š�
���ⷽ�����Ѿ����ź��ˡ���


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100250a13">
���������ͷ������
��ϣ��������ʧ�󡣡�


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100260a13">
����ȷ���𣿡�


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100270a07">
����ȷ������


{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100280a13">
���ڿ��أ� ��


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100290a07">
�����š���


{	FwC("cg/fw/fw�������_ŭ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100300a13">
������������


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100310a07">
��������


{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100320a13">
�����뿴��Ů������°�����


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100330a07">
������!!��


//��Is someone there?
{	NwC("cg/fw/nw�����.png");}
//������㣯Ѳ�ر�ʿ��
<voice name="����㣯Ѳ�ر�ʿ" class="����������" src="voice/mc02/0100340e119">
��������˭�������


{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100350a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥ�󡣲衩��������
	OnSE("se����_����_���S01", 1000);
	DrawDelete("@StL*", 300, 100, "slide_01_01_0", false);

	WaitKey(1000);

	OnSE("se����_����_�ߤ�01_L", 1000);
	WaitKey(2000);

//���������ˣǣȣѱ�ʿ
	StL(1000, @60, @0, "cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	Move("@StL*", 300, @-60, @0, Dxl2, false);
	FadeStL(300, true);
	SetVolume("@OnSE*", 1000, 0, null);

//�������

	SetFwH("cg/fw/fw�������_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100360a13">
������ʧ��
����ֻ��������һ������Ƕ��ѡ�
�������㹤�����𣿡�


{	NwH("cg/fw/ny�����.png");}
//������㣯Ѳ�ر�ʿ��
<voice name="����㣯Ѳ�ر�ʿ" class="����������" src="voice/mc02/0100370e119">
������������ֱ�Ǹ��
��ԭ���ǽ��ڰ�����


{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100380a13">
��û��û��û�¡�
�������⣬�ص���λ�ϰɡ���


{	NwH("cg/fw/ny�����.png");}
//������㣯Ѳ�ر�ʿ��
<voice name="����㣯Ѳ�ر�ʿ" class="����������" src="voice/mc02/0100390e119">
���ǣ���


{	FwH("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100400a13">
�������ȵȡ�����


{	NwH("cg/fw/ny�����.png");}
//������㣯Ѳ�ر�ʿ��
<voice name="����㣯Ѳ�ر�ʿ" class="����������" src="voice/mc02/0100410e119">
��ʲô�£���


{	FwH("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100420a13">
������û���ѵ��ڿ����Ů��
����������ͷ��ȱ����


{	NwH("cg/fw/ny�����.png");}
//������㣯Ѳ�ر�ʿ��
<voice name="����㣯Ѳ�ر�ʿ" class="����������" src="voice/mc02/0100430e119">
������û�С����Բ���
���Ҹ���ˡ���


</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ȥ��
	DeleteStL(300, false);
	OnSE("se����_����_�i��01_L", 1000);
	WaitKey(2000);
	SetVolume("@OnSE*", 1000, 0, null);

//���k����
	StL(1000, @0, @40, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, false);
	Move("@StL*", 300, @0, @-40, DxlAuto, true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100440a07">
��������������


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100450a13">
���������޴���ʧ̬������������СΣ����
�������ע���ŵ�Ŷ����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100460a07">
����Ҳ������������ˡ�����


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100470a07">
����˵��������Ӣ��˵����ð��������Ҳ
ͦ����
��������ǵ¹����𣿡�


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100480a13">
���¹���ȷ���ҵĹ��磬�����������ʱ��
Զ�������������ʱ��Ҫ����
��������Ǹ����衣��


{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100490a13">
��Ҫ��˵�Ļ����ѵ��ڿ����Ů����ס�Ĺ��Ҳ���
�ҵ����������


{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100500a07">
��������û���������֮��Ŷ����


{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100510a13">
���������ǵ�����Ĺ�����ʽ���ҵ�רҵ��
���׾��ܾ����ף���������Ӣ�������
��������֮�еġ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100520a07">
������������


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100530a13">
����������������淽�㡣
�����������ڵ�ͻȻ���֣�
��Ȼ��ʧ����


//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100540a13">
����Ҳȥ����һ�£��ǲ���Ҳ���յ�һЩ��Ч����


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100550a07">
����֪������Ҳ���ܰɣ�
����֮����һ������ԳŰɡ���


{	FwC("cg/fw/fw�������_�~��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100560a13">
���㵱�棡����������Ŷ!?
�����û�ܾʹ�ѧ�ᣬ�Ҿ��������ڿ�!!��


{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100570a07">
�����ۡ����Բ��𣡡��������ˣ�
������ƻ�˵�������������Ҵ��Ҳ�޷��ֿ���
��������Ź��Ұɣ���


{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100580a13">
������������û�ޡ�
����ξ�ֹ�����Ӽ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Shake("@StL*", 500, 5, 0, 0, 0, 300, null, true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100590a07">
�����أ���Ҫ����
����ճ�˵����߲��ţ��ܶ���������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100600a13">
�����������ˡ�
���ƻ��Ѿ����ƺ��˰ɣ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100610a07">
���Ҳ������ء�
�����Ѿ�׼����<RUBY text="����">����</RUBY>���𣿡�


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100620a13">
�����ص��ġ�
����ũ�������ж��ġ�Ҳ����˵ά��
�ٽ�Ҳ��μӣ��ǣȣ�Ҳ��һ���ӡ���


{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100630a07">
����һ����һ������֯����̫���ˡ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100640a13">
��Ϊ��ΰ������ˡ�����ũ���Ȳʡ�
���ҿ���Ϊ�������������ڿ�ɣ���


{	FwC("cg/fw/fw�衩��_�@��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100650a07">
���㻹��Ҫ����!?��


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100660a13">
����������Ц�ģ���������һ�º���
�������Ҳ�˵�����̫��Ȥ����


{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100670a07">
�������Բ�����λ���񡭡�
�����Ǳ����ֱ�̬�����ˡ���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100680a13">
���һὫ����ƽʵ��װ�á���Ԥ���õ�ʱ��
���ͳ�ȥ��
�����롰�����������˻Ὺ�ٳ�����
��׷��ĵ�·�ɡ���


{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100690a07">
�������š���


{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/mc02/0100700a13">
����Ϊ�ƽ��������
��ͬ־����衣��


{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/mc02/0100710a07">
����Ϊ�ƽ��������
��ͬ־�ֶ��򡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc02_011.nss"