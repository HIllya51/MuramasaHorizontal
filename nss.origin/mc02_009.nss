//<continuation number="1180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_009.nss_MAIN
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
	#ev171_����֦�˹򤯾���=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_010.nss";

}

scene mc02_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_008.nss"

//��memo�������������}��Ҫ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����10", 11, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");

	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStR(0, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	SoundPlay("@mbgm06",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc02/0090010a00">
��������˴λع���Ϊ���游���𣿡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090020a03">
�������ǰ���
�������˵�Լ�û�����뷨������ƭ�˵ġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090030a03">
�������ֻ��Ҫ��ʨ�Ӻ���и���
��Ҳ����ص�������Ұɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090040a00">
��������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090050a03">
��������͵�Ŀ���ж�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090060a03">
����һ�����Ҽ̳��˸߹��Ѫͳ��
Ҫ�����Լ���ְ��
�����Ǵ�������������ʳ��
����������Ҫ�������ǡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090070a03">
���ڴ������ǰ��δ����Σ��֮��ʱ��
�Ҳ���Զ�����������е������Թۡ�
����������Ϊ���ȹ���
�������Լ���ְ�𡣡�


{	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090080a04">
�����ǣ����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ҲĬĬ�ص�ͷ��Ӧ��
��������������ԭ���������Ĺ���׼���Ӧ��ˡ�
���Թ�ʱ�������������Ź������ţ�
���񽥽���������ֻ��Ȩ��һζ����ǿ��

������ҵ��Գ��õ�����������������ԭ��
�����ڴ������˶�����λ����֦С��һ�㣬
Ϥ���������屾�֡���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090090a03">
������������һ��ԭ��
����Ϊ�˱������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090100a00">
����ָ������������𣿡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090110a03">
���ǵġ�
����֦�����ҵ����һλѪ�ס���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090120a04">
�����С��������ꡣ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������ܴ�
��ԭ����ˡ������Ը��Ƿ��ⵣ�İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090130a03">
������˵��ʵ�ڻ����й��Ǻ��ӣ�
��ʵֻ��˳����Ϊ���Ҹ����Ͳ��ں�
����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090140a00">
��ɶ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090150a04">
��������ˡ�
���һ��ǵô�С���ٽ���ѧ֮ǰ��
�������˵�������������ƽ��״̬����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090160a03">
�������ⲫŤ����ȡʤ��
���ȴ�����������ء�����


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090170a04">
����λ�����ó�ʹ����ı��ƣ�
�����ɲ������ء���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090180a03">
��û��û��
�����ҽ�Ȼ��ͬ����


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090190a04">
�����������̾�����������ò�Ű�����Ĵ�С��
֮���ѪԵ��ϵ��
����ô�������ү�ͷ��˾�Ȼ��������ôһ��
������Ů��Ľ��ã��ϱ��ӵ�������ʲô��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090200a04">
��˵������ʵ�Ǵ��ŵ��¼����ĺ����ء���


{	FwC("cg/fw/fw����֦_ŭЦ.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090210a03">
����˵����ѽ����������ǰ���������ˣ�
������ӹ�ϵ��ʲô����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090220a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������������һλ���ð���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����衿
<voice name="����" class="����" src="voice/mc02/0090230a04">
���Զ���֮��
����λС�㼴ʹ������ʵ�ص���
һ�����ܵ��ң�Ҳ������һֱ������״����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090240a00">
��������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090250a03">
����ʹ���������˵�Ԯ�֣�����ٹ����꣬
�����ܲ���ʨ�Ӻ𣬳�Ϊ��ʵ��ߵ�
���ҡ��������Ҹղ�˵���Ҳ���Ϊ��
������ع�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090260a03">
���������Լ�������£�����ȫȨ�������ã�
���������֮�٣�����Χ�Ľ���Ҳ�ܽ���
����ͳ̶ȡ�
���ҶԴ���֪��������������Ϊ������


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090270a04">
��ʨ�Ӻ���¿϶�����λС��е����֡�
����Ϊ��֦���˾߱��������Ĳ����뱩Ű��
����һ�������������Ի�ѡ�����»��
��������ĥ�Է�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090280a00">
��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090290a03">
�������þ����������ˡ�
���������ԣ�����������
�Ҹ��뱣��������һ���ˡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090300a03">
�������Һͻ�֦�����ֵܡ�
��ʨ�Ӻ�ƴ��׷Ѱ�Ĵ��񱾼���ͳ�ĵ��ӡ�
����������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090310a00">
��������
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���������ԣ���λ�����ĵ���Ӧ����
����֦���õ����аɡ�
��Ҫ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����衿
<voice name="����" class="����" src="voice/mc02/0090320a04">
���������β��������˼ʹ�ϵ��һ�У�
�ն����ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090330a00">
�������ǡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090340a03">
����ĸ֮��Ĺ�ϵ�ܸ��ӣ�
�������Ǿ��������ˡ�
���Һͻ�֦���ǳ�ϲ��������ֵܡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090350a03">
��ӵ�����Ǹ�СС���к��ӣ�
���оͻ�����Ҹ�����
����֦Ҳ����һ�����������ǻ���Ϊ
������˭������������������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090360a03">
����֦������δ���ޡ�������
δ����ɩ�ӡ���
�����Ƕ������Լ����н��Ǻ���
ӵ�뻳�е�Ȩ�����������á���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090370a00">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���Ժ�����˵�������������С�
��ԭ����ˣ���ô�Ͳ��ỳ�е����˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc02/0090380a00">
����ô������ν�ı�����ָ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090390a03">
�����ڴ���һ��Զ�׵ļ�ͥ�й���ƽ�ȵ����
��ȫ��֪�����ࡣ
����˼ǰ��󡭡�ά��ԭ�������
һ���ȱ����ɴ��񵱼������Ҹ��� ��

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090400a03">
��������Լ������Ϊ���ң����Ұա���ʨ�Ӻ�
�϶������������Ƿ������Ը��
������ܾ���һ���ᶯ����������ȡ��
���ұ���������ʱ���־�������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090410a03">
��Ϊ���ػ������Ҹ���
��ҲΪ�˷�ֹ��֦����������ĵ���
�����õ���
���������Ǵ�����ô���ġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090420a03">
�����ǡ���
����ȴһ���޳ɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090430a00">
������������


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, false);

//������դ������뤿������S���� inc�Ѿ�

	SetVolume("@mbgm*", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ͻȻ��һĨ���޵����ɫ����
�����ҵ�Ŀ��������ȥ��

��һ˿��Ѫ�Ӵ�������֦��ΪƯ���Ĵ���
���¡�
��Ӧ���ǰ��촽�ڲ࣬�����������桭����
ĳ���ط�ҧ���ˡ�

������������������Ϊ����ʹ��֮�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/0090440a00">
��Ϊʲô������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090450a03">
��Ϊʲô����


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090460a04">
�����ʣ�Ϊʲô����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090470a00">
������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090480a03">
���������ˡ�
���������ˡ�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090490a03">
���Ǹ��к��ӡ�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090500a03">
���Ǹ�������ŵĺ��ӡ�����


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090510a03">
���������֡�����

{	SetVolume("@mbgm*", 1000, 0, null);}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090520a03">
���������۷ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);


//�������`�󡣤���������å���


	OnSE("se�M��_���ꥢ��_����å�01", 1000);
	
	CreateColorEX("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 1000, 1000, null, true);

//��������
	EfRecoIn1(18000,600);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg015_�`�}·���Y_02.jpg");
	Delete("�\Ļ��");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw���w_ŭ��a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0090530b56">
��ι�����Ǹ����������Ļ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������

	EfRecoIn1(18000,600);

	Delete("�}����*");
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg009_�`�}סլ��a_01.jpg");
	CreateTextureSP("�}����200", 1100, 150, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");
	CreateTextureSP("�}����300", 1101, 618, InBottom, "cg/st/st����_ͨ��_˽��.png");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw���w_���a.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0090540b56">
��������Ǹ�������Ա�ﲻ�á�
����������ΪѰ��С����Щʲô��
ҲӦ��ȥ��Щʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//�����ߣ����ԥ��I�팝��
//	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������

	EfRecoIn1(18000,600);
	Delete("�}����*");

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_a.jpg");

	EfRecoIn2(300);

	SetFwC("cg/fw/fw���w_Ц�b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����w��
<voice name="���w" class="���w" src="voice/mc02/0090550b56">
�������š�
��������������Ļ�飬���д�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//�����ߣ����ԥ��I�팝��
//	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);


	Delete("�}����*");
	Delete("Memory_cover");
	EfRecoOut2(600,true);

	SoundPlay("@mbgm33", 0, 1000, true);
	
	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090560a03">
�������ˡ�
���ǵġ��������ˡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090570a03">
���������ң��뻨֦������ʨ�Ӻ�
��ȫ�޹صĵط���
��ͻȻ������ȥ�ˡ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090580a03">
���������˱��κ��˶�����ɣ�
���԰ɡ�������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090590a00">
������������


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090600a04">
���������ܲ�֪������
��<RUBY text="����">����</RUBY>���¡���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090610a04">
�����ǵ����˺ܶ࣬Ϊ���ұ�ʾ��Ǹ��
������Ҫ���ǡ�����Ȼ���úܲ���ò��
�������ڽ�֮����<RUBY text="������">͵����</RUBY>����ѩ����µ�
̸������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090620a04">
��ÿÿնɱ����֮ʱ���Ͳ��ò�նɱһλ���ˣ�
����ʹ�õĽ��л������鷳ѽ����


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090630a00">
����������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090640a03">
��������ˣ����Բ��ò�ʹ���⽣�С�
�����Ǻš���Ϊ����ֹ�Ǹ�ħ�����������ֻ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090650a03">
�������������������š�
�����������ˣ��������ˡ���

//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090660a03">
�����������Ǻŵġ��ѡ�֮�ˣ�����ñ�նɱ��
����նɱ������������
����Ϊ�����֮���ܣ��ͻ��ɵڶ���
���Ǻš���������ζ�ֻ�ܽ���նɱ����

//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090670a03">
�����ǣ���Ҫն����
���ͱ�����ɱһ������֮�ˡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090680a03">
������Զû�����������������Ҫ��
�����ԣ��㡭��ɱ�����޹����ˡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090690a03">
����غ��ѹ��ɡ�
����ʹ��ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���۰׵�ָ���������ľ�����ҡ�
�����������ҵ����գ�������ظ�����

�������������ɫ�ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090700a03">
���������޷�ԭ���㡣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090710a00">
��������

{	SoundPlay("@mbgm14", 0, 1000, true);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090720a03">
����ɱ���۷ɡ���
�����������������Ǻ��ӵ���������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090730a03">
�������������ǵ��ѡ�
�޿��κε�ѡ��
����ʹ���������ȵĴ������
һ�����񶼳����������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090740a03">
��Ϊ�������������ȶ������İ�̾��
���Ҳ���ԭ���㡣��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_�y�Ǻ�_����AȾ��_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSPmul("�}������", 4100, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	CreateTextureEX("�}��������", 4110, Center, Middle, "cg/ef/ef034_����AȾ.jpg");
	FadeDelete("�}ɫ��", 500, false);
	Zoom("�}��������", 500, 1500, 1500, Dxl2, false);
	Fade("�}��������", 250, 1000, null, true);
	Fade("�}��������", 250, 0, DxlAuto, true);
	FadeDelete("�}������", 300, true);
	Delete("�}��������");
	SetVolume("SE01", 1000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���ұ����߰�������ȵ����������ӡ�
��
���ҵ�ϥ�ǿ�ʼ�������о������Ҫʧ���ˡ�

�����Ǻεȵ�ɱ�Ⱑ��
�����Ǻεȵ����Ⱑ��

������˾���<RUBY text="��������������������">��������������һ��</RUBY>��
<RUBY text="������������">ҲҪ���Ҹ���</RUBY>��

���Ҿ��Բ���õ�ԭ�¡�
��<RUBY text="����������������">�Ҿ��Իᱻɱ����</RUBY>��

����񣬾������˲�䣬��Ҳ����

�����¡�
���Ҵ�δ�������־塣

����������ǰ���ҿ϶��ǲ�֪�־�Ϊ����ġ�
��<RUBY text="������">�����</RUBY>�־塣

���������ܡ�
�������ź���
������Ҫ���κ�һ���ܹ�����������������Ϊ��

�����������ԭ���ҡ�

��������֪���᲻��ԭ���ҡ�
�������Ҳ����߳ܣ��������棬�����ֶε�
�оٳ���ڡ�������Ǹ�����Ļ������
˵��������

����λŮ�ԡ�����ԭ���ҡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStR(300, false);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mc02/0090750a00">
���㡪���㡭����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090760a03">
���š���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090770a00">
��Ҫ���ҡ��������¡���
��ɱ����ɱ������


{	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090780a04">
����ѽ���ն���������ô����
����������ǰ��һ��̹Ȼ��������Ϊʲô
��ɱ���㣬˵��������ɱ��Ӧ��������׾ٵġ���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090790a04">
�����������ڲ���Ŷ��
����������β��¶�����˰ɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090800a00">
������ɱ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
���̴�¶�ǵ������Դǣ�����������������
�����ĵĿ־�С�
���������Զԣ�������������

���Һò����׿���ס��������ͷ��������
����֦С��˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/mc02/0090810a00">
��ɱ�������𣿡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090820a03">
��������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090830a00">
���㡭���Ѿ�֪����
���йش��������й����Ǻš�����

//��������
<voice name="����" class="����" src="voice/mc02/0090840a00">
����Ϊ�λ�ɱ����������

//��������
<voice name="����" class="����" src="voice/mc02/0090850a00">
����������һ�С���
�����ǣ��㻹��Ҫ�����ҡ�����

//��������
<voice name="����" class="����" src="voice/mc02/0090860a00">
���������ҡ�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090870a03">
���Ҳ���ԭ���㡣
����Ҫɱ���㡣��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090880a00">
��������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090890a00">
����������ʹ�ҡ���
������������󷢴ȱ�������

//��������
<voice name="����" class="����" src="voice/mc02/0090900a00">
�����Ľ��Լ�ʣ�µ�����ȫ�������������

//��������
<voice name="����" class="����" src="voice/mc02/0090910a00">
��������űߣ������㡭����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090920a03">
������������


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0090930a04">
����ѽ��ѽ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090940a00">
������������������ˡ�
��������ˣ��㡭����

//��������
<voice name="����" class="����" src="voice/mc02/0090950a00">
���㻹�ǡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090960a03">
���ǵġ�
���������ˡ�����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090970a03">
���Ҿ���ԭ���㡣��


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0090980a00">
������������������������������������


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������ˡ�
���Ҳ������������������ù���

���Ҳ���õ�ԭ�µġ�
���һᱻɱ����

���ն��������������ܵ��ͷ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0090990a03">
����������غܲ���Ը�ɡ�
�����۷�ͬ��Ҳ�����Ĳ����鲻Ը��
���Ծ������ˣ���������͡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0091000a04">
������������Ȼ�ġ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091010a03">
������ġ�
���Ҳ��Ǽ�˵���������������Ǻ�һ��
��ʰ�����ġ���Ҳ��һ�������Э���㡣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091020a03">
�����������Ҳ����װ���Ӷ�������
����Ҫ�����������˵�����������������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091030a03">
�����ԡ���<RUBY text="����������">�����һ��</RUBY>��<RUBY text="������������">�Ҿ����̶���</RUBY>��
�������˰ɣ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0091040a00">
������������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091050a03">
����Ȼ���Ҳ�������ؽ�ֹ��ֿ���
Ҫ����ȥ�������Ǹ���������ս�ɡ�
���������������������Ҳ�����ˣ�
��ʵ���н��С�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������Ӥ�
	Request("@StR*", Smoothing);
	Zoom("�}����10", 300, 1500, 1500, null, false);
	Zoom("@StR*", 300, 1500, 1500, null, false);
	Move("�}����10", 300, @-200, @0, null, false);
	Move("��StR*", 300, @-500, @0, null, false);
	DeleteStL(300, false);
	DeleteStR(300, true);

//���ţ֣��򤤤�����֦���֤�Ѻ����������
	CreateTextureEX("�}�ţ�", 5100, Center, Middle, "cg/ev/ev171_����֦�˹򤯾���.jpg");
	OnSE("se����_����_����01",1000);
	Fade("�}�ţ�", 300, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	WaitKey(1000);

	SetFwC("cg/fw/fw����֦_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091060a03">
����������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0091070a04">
����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
������˫ϥ��ء�
���������������۰׵�˫�֡�

����������������ƽ����������������µ���ˮ��
�����Ѿ��̲�ס�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/mc02/0091080a00">
������лл�����㡭��������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091090a03">
����������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0091100a00">
���Ҹ�л��Ĵ��ڡ�
����л��<RUBY text="������">������</RUBY>����


//��������
<voice name="����" class="����" src="voice/mc02/0091110a00">
����л�㡭����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0091120a04">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݣţ�", 5110, -1556, InBottom, "cg/ev/resize/ev171_����֦�˹򤯾���lm.jpg");
	Move("�}�ݣţ�", 6000, @0, -810, DxlAuto, false);
	Fade("�}�ݣţ�", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
����˵Ҫ����
����ҪΪ���ڷ����������۷ɸ���Ҫɱ���ҡ�

����˵����ԭ�´ն�������
��Ҫɱ���ҡ�

����������������

��̫�����ˡ�

�����������Ķ����ߡ�

��������������ڴն������ġ�

�������ٺ��ʲ����Ĵ��̡�

������˻�ɱ���ҡ�
������Ϊ�������۷ɱ���ѩ��!!

�������������õ��ģ�����Ľ�֡�
��ͻ�������ش�������ˡ�

����������Ķ��ݡ�

�������������塣
������а����Ʋ���Ĵ��ڡ�

������֮�⣬�ҡ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/mc02/0091130a00">
����������֦��
���ҽ�һ�ж����׸��㡣��

//��������
<voice name="����" class="����" src="voice/mc02/0091140a00">
�����Ҵն�������һ���׸��㡣��

//��������
<voice name="����" class="����" src="voice/mc02/0091150a00">
���һ����Ψ���Ǵӡ�
������������ȫ������Ը�����

//��������
<voice name="����" class="����" src="voice/mc02/0091160a00">
���������ʱ����
��������֮�л���������Դ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091170a03">
����������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�������һ�����ǡ�

����Ҫ����ְ�𡣴����Ǻš�
�������ұ�������������������
�Ի���ɱ��ĳ���ˡ�������Ҳ����ν��

������֮ǰ���Ҿͻᱻɱ�ġ�

��������λ������Ů�Ի�ɱ���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��", 2000, 1000, null, true);

//��ҕ��ܞ�Q

	PrintGO("�ϱ���", 30000);

	Fade("�\Ļ��", 0, 1000, null, true);

	OnBG(100, "bg030_�ǣȣѱO������_01.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");

	FadeDelete("�\Ļ��",2000,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0091180a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݣţ�", 5110, -400, -190, "cg/ev/resize/ev171_����֦�˹򤯾���lm.jpg");
	Fade("�}�ݣţ�", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����������֦�ܲ��⡣

������Ϊ��Ҳ��ᾫ����ҡ��������¡�
������Ϊ��Ҳ���󶯸λ��Ϯ���Լ���

������Ϊ��Ҳ���������ġ�
������Ϊ��Ҳ������þ��������ҵ�
����ͷ��

�����ǣ���Ψ��ûԤ�ϵ�<RUBY text="��������">�������</RUBY>��
��
��������л��

�����⡣

����������֦Ū�����ն�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc02_010.nss"