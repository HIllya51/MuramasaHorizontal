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

scene mc02_032.nss_MAIN
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
	#ev173_����׏�������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_033.nss";

}

scene mc02_032.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc02_031end.nss"

//���\
//�������¡��k�����ܥå����yһ�ǡ��������Ю��ȟ��j
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	Delete("�ϱ���");
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����衿
<voice name="����" class="����" src="voice/mc02/0320010a04">
�������������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320020a00">
���������ǡ�������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320030a03">
���š�
�������ں�亻�����ԶԶ�ؿ���һ�Ρ���
���û����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������׏�����������
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev173_����׏�������.jpg");
	SoundPlay("@mbgm35", 0, 1000, true);

	FadeDelete("�\Ļ��",1000,true);

	Wait(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����κ�������������ơ�
���߶ȳ������ҵ���ߡ�

�����������ֻ�ǴֲڵĽ�������ѡ�
�������ǲ���ġ�����ġ���Ȼ����֪������������Ŀ
�����гɼ������������������ᡣ

������ǣ�
��
���������������׵���


{
//���ɤ��ɤ�������
	OnSE("se����_����_��ʿ����01", 1000);
}


��ͻȻ��������������ҵĽŲ�����
���Ҿ��ȵػع�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʿ���o�T��

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	//CreateTextureSP("�}����10", 1000, Center, Middle, "cg/bg/bg081_�w�д�����Bc_01.jpg");
	DrawDelete("�\Ļ��", 200, 1000, "slide_01_02_1", true);

	OnSE("se���L_�|��_�}��������02", 1000);
	Wait(100);
	StL(1000, @-40, @0,"cg/st/3d��`�����`���`_����_�i��.png");
	StC(1100, @-120, @0,"cg/st/st�ǣȣѱ�ʿ_ͨ��_�Ʒ�.png");
	Request("@StC*", Smoothing);
	Rotate("@StC*", 0, @0, @180, @0, null,true);
	StR(1000, @0, @0,"cg/st/st����֦_���_�Ʒ�.png");
	FadeStL(300,false);
	Move("@StC*", 200, @20, @0, Dxl1, false);
	Wait(50);
	Move("@StL*", 200, @20, @0, Dxl1, false);
	FadeStR(200,false);
	FadeStC(200,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ʮ�˵���װ��פʿ������
�����ǵ�ͳ��վ����ǰ�棬���л����������

���޴����ӡ����Ʒǳ�������
���з�����ֱ�Ӱڿ����ƣ����Ӳ���Ļ����ҷ�һ����
��Ϊ�����ϵĲ�����ѹ�ơ�

�����Ҳ�����װ�׷�����ң������ξ��
�����̴Ӻ��ѱ����ɡ�
��
��������ξ��ȴ����׼��ĬĬ�صȴ�������

��������ǰ����Щ�һﶯ�����죬��ǹ����׼��
����׼ը���Ӵ��������

��ʿ���Ǿ�ֹ�ˡ�
���������ϸ��ֳ���������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320040a03">
���ܺúܺá�
����������Ҫ��������


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320050e141">
�����������ʲô�������������Ĵ���ˣ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320060a03">
�����������ʲô������û������ũ����
˵���𣿡�


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320070e141">
��������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320080a03">
����ѽ������������ԭ�����ֻ���
û��Ҫ���߾������ء�
������������֪������Σ����Ʒ�ɣ���


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320090e141">
����������ҵ�����˵������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320100a03">
����ȷΣ�ա�
�������Ԥ�����Ͼ�Ͷ�ŵ������ֳǣ�
�������Ǵ�Ҷ��ҷ����������ը��Ŷ����


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320110e141">
��ʲô!?��


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320120a03">
�����Բ�Ҫ��Ŷ��
��ֻҪ���˸Ҷ�һ������
ವ�һ�£���磡��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320130a04">
�����������˶����ɿ����еĳ�����
��Ȼ��ͻᱻ��Ϊ�˵Ǳ�����ʷ�������ĲҰ�
������ʷ�ᡣ��


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320140e141">
����˵�˵���������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320150a03">
���϶����������ѣ�����ʲô�����𣿡�


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320160e141">
����������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320170a04">
����ֻ�Ǹ�������Ҹ�ѽ��
��Ȼ��ȥ��ʾһ�¿�ũ������ô������


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320180e141">
������û��Ҫ��
����ʹ����������˵������ը����
�ҿ�Ҳ�����ƾһ���ӵ�����������ը������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320190a03">
����ѽ����ġ�
���������˰ɣ��������ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320200a00">
���ǡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320210a03">
��һ����������������������������ը������


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320220a00">
���������ס���


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320230e141">
��ʲô!?��


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320240a04">
����ô���е��˰���
����Ȼ��Ϊû���⣬ֱ�Ӳ�ȡ�ж��ͺ��ˣ�
�������صظ����ǳ����⡣��


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320250a04">
����Ϊ�ղŵ��Ҹ������
��������˿������ûӢ����ʿ֮����
������Ϊ������


{	NwC("cg/fw/nw�o�T��.png");}
//������㣯���ڸo����
<voice name="����㣯���ڸo��" class="����������" src="voice/mc02/0320260e141">
�������ɶ񡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������Ů�������ţ������ҧ���гݡ�
������������ũ����ѡ�δ�ֻ�������˲ţ���Ҫ���
�����ǻ���������ֱ����Ȼ��֪�����ж��Ƿ���ȷ��
����������һ�������������

��������������Ը�ֱ�Ľ�У���������֮��
�������Ϳ϶����ǻ���䲻мһ�ˡ�
��
����Ȼ������ô��ģ����һ��ǿ���ס�ֹ۵���̬��

�����ܿ������ڵ����ơ�
�������ױƵ���Ͷ��·�������ǡ��ǻ���
������Ԩ�Ļ����ҷ���

�����������һ�㷢��ը���Ļ�����
�Һ��������
�����Ƶ����ֵز����������ƻ����Ƿ���
�������������޷���β��һ��Īչ��

���ڵо���в���д󵨵���������Խ�е�
��������Ҳ��ô��Ϊ������û��˿����
���Ӻ͵������ġ���Ȼ�������ޱ��飬
���Ӿ���Ͷ��Ķ����ϣ��ҿ��ó�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320270a03">
���������ˣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320280a00">
�����ڣ�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320290a03">
������������ʱ��ɡ�
������ֻҪһ�����ӣ�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320300a03">
����˵�����԰�ȫ�黹ը����Ϊ������
Ҫ��������뿪����ô������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320310a00">
��һ�����ӿ����𣿣�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320320a03">
��ֻҪ�������ʱ�䣬���ܱ�֤�ɴ��϶��Ѿ��ɳ�
�������Ͽա�
����ʹ��Ͷը����Ҳ�������ˣ�


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320330a00">
�������н����ܹ��ڿ���ֹͣ�ġ�
�����ң���ʹ�ɹ�ͷ�����ر��ǡ�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320340a03">
��������Ҳ��ɵ���������ˡ�
����פ���ķ��н�һֱ���������Ͽ�
ת��תȥ������Ҳ����ÿ��ɰɣ�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320350a03">
����ũ�����������������ַ��գ�ǿ����ս�ģ�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320360a00">
��ԭ����ˡ��е���


{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320370a04">
����ô��ֻҪһ�����ӡ�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320380a03">
���š�
��һ�����ӣ��մ�������ȥ�������ǵ�
ʤ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320390a03">
����������αװ��ը������ʵ���ػ����Ҵ�
����ͷ������������ǡ�����ˣ�ֻҪ
���ᷢ���������ҵ��漣��û���⣩


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320400a04">
�����ģ���С�㡣
����Ϊ��ռ�������������˫��������
��������أ�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320410a03">
������𣿣�


{	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320420a04">
���š�����������ȴ����Զ������͵㣩


{	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320430a03">
��Ϊʲô��!?��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320440a00">
�����������ͻ�������ǵ�ѹ�ƣ��ָ�
����Ǻã���ξ���£�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320450a03">
����ʱ���Ҫ���ҸղŰ����������ѽ��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0320460a00">
������Ҫ���𣿣�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320470a03">
����������ã������ᱬը��ֻ����ը��
ʧȥ��ը���ܶ��ѣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc02/0320480a00">
������������


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc02/0320490a04">
������˫�����������𣿣�


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320500a03">
����ʹ�������ѣ����ұ�ը����
���������ˣ���������ν�ɣ�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320510a03">
����Ϊ���ǰ����������ը��
����ҲӦ�û���Ӧ�ؼ�С��
���ټ��������Ǹ߿գ�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0320520a03">
����ţ����Შ�������棩

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������ϡ�
��
��
�����������ڷ��н�������ˣ�ȴ�޴����ӡ�

����������֦�����������̴�Ҳ�ǡ�
�������ǿ��С��ǲ��������������ѣ����������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

..//������ָ��
//�Υե����롡"mc02_033.nss"