//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_019.nss_MAIN
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

	$GameName = "mc02_020.nss";

}

scene mc02_019.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_018.nss"

//������Υ�β���
//���k����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg029_����Υ�����̄���_01.jpg");
	SoundPlay("@mbgm21",0,1000,true);
	CreateSE("SE01","se�ճ�_����_���_��01");
	StR(1800,@0,@ 0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", $�Еr�g, 100, "blind_01_00_1", true);

	FadeStR(300,true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190010a12">
�������ˡ�����


{	OnSE("se�ճ�_��_�����Q��02",400);
	StL(1800,@0,@ 0,"cg/st/st����Υ�_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190020b03">
���ˡ�
���㻹�������ӣ���ɫ�ܲ��ء���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190030a12">
�����������ġ���
�����������⡣��


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190040b03">
����Ǹ��
���������һ�ˡ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190050a12">
���١��١��١�����
���������˹���æ����Ҳû�취����


{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190060a12">
������Ҳ��������ֻ˵Ҫ�¡���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190070b03">
������
���һ������������
С��һ���ء���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190080a12">
�����ĺ����������ˡ�����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190090b03">
�����ϧ����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190100a12">
��Ҫ����ǿ����ȾƵ������ң�
�ٺ٣��ҿɾͶԲ������ء�����


{	FwC("cg/fw/fw����Υ�_��ʹ.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190110b03">
��������


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190120b03">
���Ҹ���˵�����������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190130a12">
���١��١����޿ɷ�档
���������ΰ����ˣ�
��ô��ȥ����������ν֮���ء�����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190140a12">
����Ϊ�����������������ĵ�
���顭���԰ɣ����ȷ�˵��������������
���룬�԰ɣ�
��ֻҪ����ӵ����Щ���Ͳ���Ҫ���ơ���


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//�����������ˣ���090930��
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190150a12">
���ȵ�����������֮��
������������ᵽ�Ƶ����á�����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190160b03">
��������ζ�����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190170a12">
������Ļ�������


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190180b03">
�����أ���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190190a12">
����˵���𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190200b03">
���ǰ�����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190210a12">
���ƿ����ҵ��Ŷ������


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190220b03">
����ɱ���
����Ҳ��С�Ŀɱ���������ơ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190230a12">
������С�ġ�����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190240b03">
��������ı���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_��_�����Q��01",1000);
	DeleteStA(150, true);

	SetFwC("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190250a12">
�������ǡ�
���ӽ����˵����ʧ���ˡ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190260b03">
���Ǹ���ʧ���𣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190270a12">
��������
���������ܵ��˼��޶�׹�䡣��


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190280a12">
������󲿷ֶ��⵽�ƻ������������
���ѻ��գ��ҿ����޸���
������<RUBY text="����">����</RUBY>���������Ѿ��ϵ�����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190290a12">
�������п�ʹ�á�
��Ҳ�������滻������


//���i�ߡ����åĥ������`��
{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190300b03">
����������
���ܵ�֮ǰ���ڽ�֮�����������ϴ̼���
������������Ȥ��������Ǹ����������Ѽ������


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190310b03">
����Ȼ�Ҳ��ڴ�����Ρ�
����û���ó�һЩ�ɹ�������


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190320a12">
������������
���ţ������Ѿ�Ŭ�����ˡ�����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190330a12">
�����ǵ��з��������
���������������һ���롭��
���г������ϵĿ�����Ŷ����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190340b03">
��ร���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190350a12">
�������ٴ����Ǽһ���ʵ�飬
���ݽ�������š�
�����ʵ��˳������С�Ľ������Ļ�������


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190360b03">
����������˵���ǲ��
ͻȻ��Ϊ�����о��ɡ�
������Ȥ���Һ�����Ȥ����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190370b03">
������ִ����ս�ƻ���ѩ���
��ϸ�ھͽ������ˡ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190380a12">
������������
���ⲻҪ���𡭡�����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190390b03">
����Ҫ���ɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190400a12">
��������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190410a12">
�����ǣ��������ˡ�
�����и����ţ�Ŀ��������
�Լ������١�����



{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190420b03">
����˵���������ն������𣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190430a12">
���ǵġ���


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190440b03">
�����ұ�ԹҲû�á�
�����˲�����Ŀ��ұ����𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190450b03">
������ն�Ǳ���ڹض�ĳ����ƾ�����������
��Ӧ�����̾����ҵ����ɣ���


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190460a12">
����������𡭡���


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190470b03">
�������ڹض��𣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190480a12">
���п��ܡ���
����Ȼ���������Ƕ�����
׷�鲻���ĵط�������


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190490a12">
�����������֡������ǹ���������
���������к������֮��ĵط�����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190500b03">
���ߡ�����
�����޴�����Ȼ�Һ���һЦ��֮����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190510b03">
���������Ͼ��⻰������֮�ڡ�
����Ҫ�Ѳ��»����𣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190520a12">
��������


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190530b03">
���һᷢ�������֤��
���ⲻ���¡���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190540a12">
����������������
����ֻ��˵˵���ѡ�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190550a12">
�������������ֵط��ġ�����


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190560b03">
���������˵�ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190570a12">
������������


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190580b03">
���������������𣿡�


{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190590a12">
��ûʲô�ˡ�����


{	FwC("cg/fw/fw����Υ�_Ц��.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190600b03">
������ͼ�����������ɡ�
��ɱ�˴ն���������

//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190610b03">
�����Ĵ��ڶԣǣȣѲ�������


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190620a12">
�������ǵġ���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190630b03">
����Ҫ֧Ԯ�Ļ��͸���˵���һ�������ֵġ�
��ֻ�ǣ�����ʱ����ǳ�æµ����
�����޷���ʱ������֧Ԯ����


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0190640b03">
����Ҫ��������׼����ѩ�����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/mc02/0190650a12">
�������������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc02_020.nss"