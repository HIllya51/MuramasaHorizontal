//<continuation number="1870">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_006.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		call_scene $MainGameName;
		GameMainSet();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#bg042_�ذ�_01 = true;
	#bg041_Ƭ������_01 = true;
	#bg040_���΍uȫ��_01 = true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_���B=true;

	$PreGameName = $GameName;

	$GameName = "ma04_007.nss";

}

scene ma04_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma04_005.nss"
//ǰ�ե����롡"ma04_005z.nss"

//�񣰣�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg040_���΍uȫ��_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010a]
������һ����Сʱ���е��飬ȴû��ʲô������
�ջ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010b]
�����ڽ�֮���ܱߵ��쳣�������Ǵ�������һ���
�����ַ�Ӧ��һ�ִ���ǵ��ؾ���
������һ�ſڷ�ܽ�������������������Ǻ���Ϊ
�ѡ�����Ҳ�������󡪡�Ļ���Ĵ��ڡ�

����һ����ͨ������;˵��Ϊ�������ѵõ����ﺣ
ˮԡ��ǰ�������ǡ����ǵĿڷ粻�ϡ�
��Ȼ��������ȴ����֪�顣����˵���Լ����Ʋ⣬��
ȴû����ʵ֤�ݡ�

������˵�Ӻ���ӿ������Ȫ������˵�Ƿٷ������һ
�֣�������˵�������޵Ļ�������ƻ������ȵȡ�
���õ���ȫ���ǳƲ����鱨�Ĵ��ԣ�����������
ƿ����

��˵��֪�����飬��ֻ�е��ؾ����˰ɡ�
������Ļ����û�ж����Ƿ�����������Ѿ���
�����Ǳ�������ĵ�һ��Ӧ���Ǻ��²Ŷԡ���Ȼ��
��ʵ��ȴ��Щ��ͬ��

�����ǵķ�Ӧ�����ڼɻ���ʲô��
��Ҳ����˵�������ǲ��뱻�������������
������ı���ǣ�������ɡ�
��������Ҫ�رܽ��������ʾ���µĽ�֮����

�����ʱ���������µĴ�ͣ�Ҳ����֮���顣
��Ļ��Ҳ������Ϊ֪����һ�㣬��û�����⻨��������
��ס���ǵĿڰɡ�

�������������壬˵�����������һʯ����ǧ���˵ķ�
Ч����������������Խ�ǽ��ɾ�Խ�Ǿ�����������
�����������ǰ������˽���㹻ͨ͸��
��ѹ����һ����ԡ�

�����ؾ���������������һ������Ҫ�˿����ǵ���͵�
�����Ʊ磬���������ζ����������Լ���ӵ�����ֲ��ܡ�
��������֪��û�������Ƶ��ı��ؾ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}����", 5100);
	Wait(1);
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,false);
	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(0,true);
	FadeDelete("�}����", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/ma04/0060010a01">
����֮����
���⸽������û�����Ǻŵļ�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060020a00">
���ǵ����أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0060030a01">
����Ҳ�������
�����Ҫ��̽ȫ����<RUBY text="����">��ζ</RUBY>���͵�̤�Ϻ�����
������������ҲҪ�Ƶ�һ�ܲ��С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060040a00">
��Ҳ�ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����֮�����������������Ǹ��µ���ֻ���˳�ʱ�ų���
ͨ�����ݵĵ�·��Ȼ����Լ��ʮ��ǰ������һ�����
�𣬵���Ҳ��֮�ı䣬��Ϊ��½ϵ����
ֻҪ���ģ���Ҫ�ϵ��������¡�

����Ȼ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/ma04/0060050a01">
�����������Կ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060060a00">
����������<RUBY text="�����">Σ��</RUBY>̫��
�����»��Ǿ������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����100", 5100, Center, Middle, "cg/bg/bg040_���΍uȫ��_01.jpg");
	Fade("�}����100", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������ң����ǰ��Сɽһ��ĺ�����
�����￴����ɷ�羰�Ĳt��̨�Լ��ԿնԺ�������֮
������

��Ȼ����������������Ҫ�����˸��������������Ҫ
����������ߵķ�����ʩ��Ȼ������û��ǿ��
����ǰ���Բ���˵���˴����Ƿ��нӽ�Ҳ�ᱻ�䲶׽��
����ս����

��������������Ǻ��йأ���Ȼ������ѡ��ǿ��ͻ�ƣ�
���ǡ�������Ÿտ�ʼ���ڻ�δȷ���Ƿ������Ǻ��й�
֮ǰ��óȻ���£�ʵ��̫��³ç��
�������¾��ϻ�Ϊʱ���硣

���������ҳ�Ǳ�뷽����
��Ϊ�ˣ�������ζ���Ҫһλ���ϵ�����ǰ���Ƶ���
����Э������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma04/0060070a01">
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060080a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(0,true);

	CreateTextureSP("�}����1000", 1000, Center, Middle, "cg/bg/bg042_�ذ�_01.jpg");


	FadeDelete("�}����100", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ܵ����д��������ѻع���������Χ��û��
�˼���
��ɢ����ʱ�������˳�˼�������Ѿ��߳���ɳ̲��
��Χ�ǹ�ʯ��᾵�ɽ�¡�

���������ֵط�Ҳ���ǰ취��
������Ҫת���ء���ȴͣ���˽Ų���

������Ϊ�����˼�����ʵȴ������ˡ�
��ʯ����Ӱ�ﴫ����ֹһ�˵Ķ�����
�������ǿ���Ҫ�������������ֻ���ر�С����
�ڽ�̸���ѡ�

�����������̽ͷ����һ�£���С���ӡ�
���塢���ˡ�����������ͬ����ȫ����ʮ�����¡�
��������ò���ƣ��������ֵܽ��á�
�к����ˣ�Ů�����ˡ�

���ӷ�װ�������Ǳ����ˣ����ǵı���ȴ���޾���ɡ�
��С���������ڳ�����
������ȥ���곤�������������Ͼ���ƴ����Ū��ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma04/0060090a00">
������ģ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����������ģ�СС�Ĵ�����ߡ�
���Ӵ��Ϳ��������ǻ�Ծ���ն�ս���ķ�ˮ�룬���
��ս�е�ս��������˵��Щ��׾�����������ܺõ�
��׽���ˡ��ۼ�Լһ����Ԫ��ģ�͡�

�������������ܻ����һЩ��
����������������ʲô��������������֮ǰ����ʶ��

�������˴������֣����ڼ���ڲ��Ļ�е��
��������е��������ģ�Ͷ��ѡ���ͨ����������ת
����ʵ�ֺ��еĴ��ɡ�

������������Բ���ǰ��һ������ʸԵ�������˳ɹ�
������С��<RUBY text="�������">�綯��</RUBY>֮����֮���ֵġ�
����Ȼ��ʱ�۸�ǳ��߰���������������ģ��Ҳ�г�
�ۣ���ʹһ���ͥ�ĺ���Ҳ�ܹ��õ���

����ǰ��Щ�������ֵģ����ǱȽϱ��˵����֡�
��������ˣ�����������˵��Ҳ��һ��������Ʒ�ɡ�

���ǽ���ģ����Ͷ��·��С����֤��������Ʋ⡣
��Ŀ�⼯������ͷ��ҵ���곤�������ϣ���ֱ��
Ҫ�����ﶢ��һ��������

����ȫ�����Ӷ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�Ф��ӣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060100e096">
���ǲ��ǵ��û���ˡ�����

{	NwC("cg/fw/nwŮ���ӣ�.png");}
//������㣯���ֵ��LŮ��
<voice name="����㣯���ֵ��LŮ" class="������Ů" src="voice/ma04/0060110e099">
�������������İ�����

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060120e095">
���ǲ��Ƿ����������Ⱑ������

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060130e096">
��������������ˣ������޺��𣿡�

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060140e095">
��������

{	NwC("cg/fw/nwŮ���ӣ�.png");}
//������㣯���ֵܴ�Ů��
<voice name="����㣯���ֵܴ�Ů" class="������Ů" src="voice/ma04/0060150e097">
���͸�硭����ô������

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵܴ��С�
<voice name="����㣯���ֵܴ���" class="����������" src="voice/ma04/0060160e098">
�������������ˡ�
�����¾�û�����ˡ���

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵܴ��С�
<voice name="����㣯���ֵܴ���" class="����������" src="voice/ma04/0060170e098">
��������š�����

{	NwC("cg/fw/nwŮ���ӣ�.png");}
//������㣯���ֵܴ�Ů��
<voice name="����㣯���ֵܴ�Ů" class="������Ů" src="voice/ma04/0060180e097">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
������ɫ���ǵĵܵ������ǰ�Χ�ţ�����Ѵ����
��ˮ�ݱ��档
��Ȼ�󣬰��¿��ء�

//�������SE��Ҫ������`���`����
{	CreateSE("SE01","se�ճ�_�Cе_��ߥ�`���`��01_L");
	MusicStart("SE01",300,700,0,500,null,true);}
���ص����˵�����������ˮ�漤���ơ�
������ǰ���ж�ȥ��

{	SetFrequency("SE01", 5000, 0, DxlAuto);}
��Ȼ�����Ƕ���ȴ�ǳ�΢���ͻ���������û�дﵽ���
�߼������ߵ�Ԥ��Ч����
�����ٱ�ø��ӳٻ�����

{	SetFrequency("SE01", 1000, 0, DxlAuto);
	SetVolume("SE*", 300, 0, null);}
����ͣ��������
���������ҽűߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma04/0060190a00">
������������

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵܴ��С�
<voice name="����㣯���ֵܴ���" class="����������" src="voice/ma04/0060200e098">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
���о���������ס���������������ߴ������ҵ�
������
����Ҳ���ϰ�������ָо��������μ���ĺ�
�ӻ����������ַ�Ӧ��

����һ��Ŭ����ȥ���⣬һ�߼����˴���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�Ф��ӣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060210e094">
��������

{	NwC("cg/fw/nwŮ���ӣ�.png");}
//������㣯���ֵ��LŮ��
<voice name="����㣯���ֵ��LŮ" class="������Ů" src="voice/ma04/0060220e099">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����С���к��͵���Ҫ��������һ������������Ů
����ס������������������
��ʵ�ڲ����Ŀ�����Щ�������Ŀ־�ı��顣
�����һ��ǿ�һ��Ϊ�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma04/0060230a00">
�����ٻ���ǰ������
��������������Ӧ��û������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���򿪵�غУ�ȷ���ڲ��������
����������һ��������˵������Ʒ���ǾͲ���
���������ԭ��

����ˮ�������Ҳû�����⡣
��������Ҳ���޲�ȱ����ת������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma04/0060240a00">
�������ǵ綯���𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���³��˴�ţ��������Ŀ϶����Լ����뷨��

��ʸԵ�綯����Ȼ�����Լ��ã�Ҳ���Ǻ���ȱ�ݡ�
������ʹ�ã�Ҷ�֡�̼ˢ�Լ��������������ġ�

���������Ӧ�ø�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/ma04/0060250a00">
��������Ҷ�ֻ���̼ˢ��
������Ǵ�����<RUBY text="��������">����ȥ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���綯���������в������£�һ�����ϵ��¶Ȼ�
���˴��������ܡ�
����������������֣����ܻᵼ�´��������ӻ���
ֱ��������ȫ��ʧ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma04/0060260a00">
����ô������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������֮ǰ�Ǹ�����������һ�����򿪴��ա�
��������ֺͻ��ᣬ������ע��������ģ�ʹ�С
��˵�൱�޴�ĵ綯����

��͸��ԲͲ������ϱ��򿪵������ڣ����ڿ�ȥ��
������ô��Ҳû��Ū��ʲô����

����������ʳָ��ס���ڵı�Ե��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/ma04/0060270a00">
��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0060280a01">
��ʲô����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060290a00">
��������Դ��
����ʹ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma04/0060300a01">
������������
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������äȥ��ե����ȡ��k늡�
//�������SE��Ҫ�����ӥ����������餤�θ��ϵ����������ߤ᡹
	CreateSE("SE01","se����_��x_�k��04");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���������У��������ڼ��ٲ��ֵ����塣
�����������������������ۼ���
����<RUBY text="�������">����</RUBY>ע��綯���ڡ�

��һ��һ����ʱ�䡣
���������û����Ĵ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma04/0060310a00">
��������

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵܴ��С�
<voice name="����㣯���ֵܴ���" class="����������" src="voice/ma04/0060320e098">
���ǡ��ǡ��Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ȡ�µ����װ��ȥ�����·���ɵ�ء�
���Ұѻָ�ԭ״��ģ���ٴη���ˮ�档

���򿪼װ��ϵĿ��ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Щ`��ˮ���Фä��M����
	CreateSE("SE01","se�ճ�_�Cе_��ߥ�`���`��01_L");
	MusicStart("SE01",1000,1000,0,0,null,true);
	SetFrequency("SE01", 3000, 1000, DxlAuto);

	SetNwC("cg/fw/nw�Ф��ӣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060330e094">
�������ۡ�������

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060340e095">
���ޡ�������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
������������
��һ�����婖�����綯ģ�͡�ս������������ڷ���
��ԭ�������ܡ�

{	SetVolume("SE*", 2000, 0, null);}
����ˮǰ�С�
���˿̵���һɨ��ǰ������ģ����ٲȻ����һ��
ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwŮ���ӣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//������㣯���ֵܴ�Ů��
<voice name="����㣯���ֵܴ�Ů" class="������Ů" src="voice/ma04/0060350e097">
����������������

{	NwC("cg/fw/nw�Ф��ӣ�.png");}
//������㣯���ֵ����С�
<voice name="����㣯���ֵ�����" class="����������" src="voice/ma04/0060360e096">
���޺��ˣ���

{	NwC("cg/fw/nwŮ���ӣ�.png");}
//������㣯���ֵ��LŮ��
<voice name="����㣯���ֵ��LŮ" class="������Ů" src="voice/ma04/0060370e099">
���ÿ�ÿ죡��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��׷�����ڽ�ʯ���ˮ�����¸Һ��еĽ������Ѱ�
���ֵܽ�������Զ�ˡ�
���������ǵ���ʶ���Ѿ�û�����ҵĴ��ڡ�������
ǰһ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma04/0060380a00">
����Ը��ˤ�����˲źã�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
������Ŀ����һ������СС��Ӱ�����뿪���Ǹ�
�ط���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg041_Ƭ������_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw���B_ͨ��.png");

	#voice_on_���B=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060390b48">
����˵�����һ�¡���

{	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060400a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��û�߼�������ͻȻ���˽�ס��
��ת����ȥ��

��һ�����ӡ�������������Щ���������곤�Ļ�Ҫ��
�ϼ�������꣬����С�ܹ�����
��������òҲ��֮ǰ�����������й�ͬ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm23",0,1000,true);
	StL(1000, @0, @0,"cg/st/st���B_ͨ��_˽��.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060410b48">
�������޺������Ҵ��ɡ�
��лл�㡣����ȫ������Щ����Ϊ���ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060420a00">
�����ǡ���
�����ǵĸ���𣿡�

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060430b48">
���š��ұ����Ƕ���
���ղţ����ڸ����������ˡ���
���ǵģ����Ǽ�ֱ�����ˡ�
��лҲûлһ���������ˡ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060440a00">
���ǿ���ģ�ͱ��޺�һʱ̫�����˰ɡ�
������Ҳ����û�а׹����£������ʵ��
����ο�����Ѿ��������㡣��

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060450b48">
����ɲ��С�
��Ҫ�ǳ������˶���ȴ��֪����л�ı�����
����������Ҫ��������ġ���

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060460b48">
���һ�ͷ�úú�˵˵���ǡ�
����֮�����ܱ�Ǹ����Ϊ�������ǵļ໤�ˣ�
���ǲ�����ò���������Ρ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060470a00">
�������������ˡ�
�����ǻ��벻Ҫ̫�黳��
˵������������óȻ���£��������ҡ���

//��������
<voice name="����" class="����" src="voice/ma04/0060480a00">
������Ϊ����û�и���˵����������Ȼ����
�����顣
����Ȼ������������Ǽ�ͥ�ڲ������⣬��
����»���������һ�¡���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060490b48">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060500a00">
��������

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060510b48">
����˵�������ر𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060520a00">
���������𡣡�

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060530b48">
���ҿ���С���Ӱ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060540a00">
����������ȷ�����ᡣ��

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060550b48">
�������˵������Ҫ��ô������
���������˿��ǻ�С�����Ŷ����

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060560a00">
���Ҳ�����Ϊ�����˱�ﾴ��͵��ڱ���Լ���
��������˵���������𾴱��˵��˲�����
����Լ�����<RUBY text="����">��ĸ</RUBY>������ô˵������

//��������
<voice name="����" class="����" src="voice/ma04/0060570a00">
�����ҡ�
����Ϊ�����ǵ��ֳ������Ѿ����ұ�ʾ����
�����𾴣�ֵ�����˰��㵱�����������ء���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060580b48">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060590a00">
����ֻ���ڻ�Ӧ��ľ�����ѡ���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060600b48">
������������

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060610b48">
����˵����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060620a00">
���ǡ���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060630b48">
���������Ļ���
�����롭��֪��������֡���

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060640b48">
���ҽз�����ʷ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060650a00">
�����Ǵն�������
�����Ը����ʶ��ʵ��������������

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060660b48">
��������Բ���ĵ�ã���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060670a00">
�����������𣿡�

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060680b48">
��ĵ�á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
��˵�ţ���������������ѱ��ڼ��ϵĶ���
�õ���ǰ��
����Լ��һ�۳���������

�����漷���������ǲ�������Բ�εı��ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060690b48">
���������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060700a00">
����ĵ�ð�����
���һ���֪��ԭ���⸽��Ҳ�ܲ�������

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060710b48">
�����ǱߵĽ�ʯ����ǱˮһСʱ���ܲɵ�
��ô��Ŷ������Ҳ�����£��ǲ���ĸ�ҵ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060720a00">
��������������۵ģ�ˡ�Ҳ������¡���

{	FwC("cg/fw/fw���B_Ц��.png");}
//�룺�������Ǥ�������090930��
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060730b48">
�������������ġ���ôС�ĸ���������ȥ��
���õ��г����۵Ļ����������������ں�
������½��׽�������֡�
������������ߺ����ҵ�����

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060740b48">
�������أ�����Ҳ�ܳ԰���
�����ռ�һЩ����ʡ��һ���ֻ�ʳ�ѡ�
�����Ǹ�ҵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
��˵�ţ�����ȡ��ĵ�ã���С�������м��ȱ���ϡ�
�������ɵ���ת�Ų������С�
�����ۡ���һ���ö������졣����׾ٵذ�����ĵ
��ԭ����Ӳ����ǣ�¶�������ɫ���ڲ���

�����ص�����ζӿ���ǻ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060750b48">
�����á�
�������ĵ�ÿ������ԣ����õ��ġ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060760a00">
���������ҾͲ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
���Ҽ�̵ص�лһ�����ӹ�ĵ����ʳ��������⡣
�����Ǻ�ˮ��ζ������Ȼ���ǵ���������ɿڵĴ̼���
ӯ����ǻ��

���������ζ��
���������ղ��ܵķ��������ڴ���䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma04/0060770a00">
���������
����Ĳ����ء���

{	FwC("cg/fw/fw���B_Ц��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060780b48">
����Ȼ��С������������ֵʱ�ڡ�
��ֻ�����ʱ����ܳԳ���ζ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
��ͬ������һ��ĵ�õ�����΢Ц�ˡ�
���������ϳɵ����н�Ȼ��ͬ����������͵ı��顣

�����������뵽������ź���¶�����ֱ��顣
���������Գ�����ģ�͵���Щ���ӵļ໤�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="����" src="voice/ma04/0060790a00">
����˵�Ǹ�ҵ������

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060800b48">
���ţ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060810a00">
���㻹��ʲô��ְ�𣿡�

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060820b48">
���������������﹤������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060830a00">
���ǡ���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060840b48">
��Ҫ��������Ը���Ӷ�ң��ǵ����ˡ�
�����ء�������˵�Լ�������������
���ǹ�Ӷ��Ҳ�������˻�����ҡ�
���һ��з��ɡ�����

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060850b48">
������������ֺ��Ӷ�������Ӷ��Ҫô
�ǹ�Ǯ���٣�Ҫô����ʲô���õĹ�����
���������Ѱ��������������ǵ���С��
������ӡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060860a00">
����Ҳ�ܲ����װɡ�
��һ��֮�������ش�����ȫ������⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
��������䣬�԰������İ�ο֮�Ǿ�
�ѿڶ�����

�����������ĺ�����Ҫ��Ӧ����ĬĬ�İ���������
�����ûʵĻ��
��Ȼ�����������������껹��Ц�ˡ�Ц����ɬ����ȴ
�Եúܿ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060870b48">
�����Կ�����Ϊ����
��������ҵı�ְ�ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060880a00">
�����洬Ը��������𣿡�

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060890b48">
��û�С������������ù��Ĵ����ڡ�
��Ȼ���ƾɣ����ں�ˮ������ʱ��û����ȥ
�������������ڲŲ����ڰ�������

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060900b48">
���������ڸ���ת�ƣ������ز��㣬Ȼ��
�˵��г�ȥ��Ǯ��
����Ȼ�ᱻѹ�ۡ�����Ҳû�ж�ô������
�����ܻ챥���ӡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060910a00">
����������
��������Ҫ�ݴ���Ҫ����Ļ�����Ҫ���֡�
�㶼��һ��������ô����

{	FwC("cg/fw/fw���B_Ц��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060920b48">
����ô���ܡ�
���ղŵ���Щ�һ�Ҳ�ڰ�æ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060930a00">
�����ǣ���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060940b48">
����Ȼû���������
�������������С�����һ��顣
������������С����˵��һ��ܹؼ�����

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060950b48">
���������Ҽݴ���ʱ����ҹ۲�󺣣�
�����ʱ����Ұں���ߡ�
�������������ǿ����ܰ����æŶ����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060960a00">
���������󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
���Ⲣ�Ǽٻ���
���Һ����׾�����������������������Ϊ���ģ�
��С���ϻ���������ģ����

������Ҫ����͹���ֻ������ȴ��̵�������ϵ
�����һ������ǵ����ӡ�
����ν�ļ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma04/0060970a00">
����������������������

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0060980b48">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0060990a00">
����������

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061000b48">
�������Բ���
��������ô���ң�������һ����
���˻����϶��ǽ���С����
С�Ӱ���Сëͷ����֮��ġ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061010a00">
���������е����죬���һ����з�����

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061020b48">
��û��û�е��¡�
�������Ϳ����ˡ����ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�����꼫����΢�ؿ���һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061030b48">
�����ǡ�������ʲô�£���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061040a00">
�������Ʋ⣬�������������һֱ�����롣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
��������˭��ȷ��˵����
��Ȼ����һ·��������ο�����ɫ��ͭ�������ǣ�
���ϴ��Ÿ��ں���������˽�Ȼ��ͬ�����ر��顪��

���������쳣�Ŀ���������
�����Ǵ������������Ƴ��ı�Ȼ���ۡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="����" src="voice/ma04/0061050a00">
��������������Ҳ��̫�ù��ɡ���

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061060b48">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
������¶�������ı��顣

����������ô˵������Ϊ������ô����
<RUBY text="������������">Ҳ����������</RUBY>��
�����������ô�룬Ҳ�Ͳ���˵�������ɡ���������
�Լ�α�Ƶ�ͬ����֮�⣬���������κ����塣

��������Ȼ���֣���Ҳ���ǲ���������Ƽ��ݡ�
�ղż������ĵܵ�����Ҳ����ˡ�
������ȥ�ܽ�����

��̹��˵����һ�����˾��档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//��������
<voice name="����" class="����" src="voice/ma04/0061070a00">
�������������㣬��Ҳ������������

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061080b48">
�������š�
���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
����֪Ϊ�Σ����근��������Χ��ȷ����������֮��
������˵����
��������¶����ԥ������Ц�ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061090b48">
����˵�Ļ���Ҫ���ұ��ܡ�
��û����ɣ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061100a00">
���˽⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
��ֻҪ����������׻��Ƿ�����Ϊ�����ݡ���
�����������ѿڶ����Ļ������˵�ͷ��
������ѽ�����������������Ϊһ̸��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061110b48">
�����ȷʵ�ܲ�������
���ӽ�֮�������Ĳ���ʱ�˵�ů����
�������Ⱥ������ɢ�ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061120a00">
��ů������

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061130b48">
������������˵����Щ̫�����ˡ�
����֪����������ʲô������������ʲô��������
��Χ�ĺ�����ʱ����<RUBY text="����">����</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061140a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����˵ֻ�и�����һ���������ȶ��Ѿ�Ӱ�쵽������
�����Ȼ��ʲôԭ�������µ�������

��������ɫ�Ĺ��
�����͵������������е���仰��

���᲻����<RUBY text="��">��</RUBY>�������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061150b48">
��û���㣬�������ͷ��Ȼ�ͺܽ���
�������Ҳ�ǿ���������ܶ����Ѿ�����
������ÿ���������µع��
�������˸ɴ����˴��뿪�������

{FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061160b48">
�������⸽�����˻�ͻȻʧ�٣���֪���𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061170a00">
���������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
�����������ذ�ʧ�ٰ���Ƶ����
��
����һ�߻������ڰ�ᦌm���ŵ�����һ�Σ�һ�ߵ�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061180b48">
����Ȼ���Ի�����ɫ���Ҿ���Ӧ��ֻ����ҹ����
�˶��ѡ�
��������ӣ���Ҳ��û�а취���¡�����ֻ��
���ܺ��ڵĵط�ȥ��˵���ס�����

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061190b48">
��������Ҳ�п�׼�ο�������<RUBY text="����">�ļ�</RUBY>����̻���
�����˺�֮�ҵ��ˡ�
��������С�������壬���������ɫ��
��Ҷ�˵������Ȳ���׬�û�Ҫ�ࡣ��

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061200a00">
����Ҳ���ǻۡ���������ͷ�ԡ�
����ô����Ҳ����ˣ���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061210b48">
�����ǡ�
���������Ļ���Ҫ���ұ��ܡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061220a00">
���ǡ���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061230b48">
�����ڲ������ѡ�
�������Ȼ���ǡ���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061240b48">
�����ԡ���
�����ֻ��һ�����ܲ��õ��㣬���ܳû�
׬��һ�ʡ���˵�ǲ��ǣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061250a00">
��������������
���������ܲ��õ��𣿡�

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061260b48">
�������һ����ǰ��
����׷��һСȺ��ֱ�����䣬
��Χ�Ѿ��谵�ѱ档��

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061270b48">
���ȵ��ع����������Ѿ�������֮�������
һ�����嵱�С����ڳ�������
��һ����˵����û�ȵ��ӽ�������Ѿ�
�����߷��ֲ�����������ˡ���

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061280b48">
������������ʱ�ľ���Ҳ���ڻ�ˮ���㡣
�ٲ�Ȼ�����е�˯���˰ɡ�
��ƽʱ�����������������һֻ��
����Ҳ���п�ԭ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061290a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
����������
���Ұ���������������ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061300b48">
�������͵��������׬��һ�ʣ�
������Ҳûʲô�ñ�Թ�ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061310a00">
�������˻���������

{	FwC("cg/fw/fw���B_Ц��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061320b48">
�����������ء�
�����һ�����ƽ���ѵ�һ���Ĵ�һ��

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061330b48">
���Ҹ��˵�����������
��������ʱ�ܵ������Ƕ������ˡ�
�º����Լ�Ҳ������Щ���¡���

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061340b48">
����ѹѹ�ؾ���һ�𣬿���ȥ�ܲ�������
���������������˹�ʬ���ӬȺ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
������Щë���Ȼ��˵����
����Ȼ�Ҵ�δ�ں����������̫����⡣��Ҳ�����Ļ�
�ио��������˵����ķ�Χ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//��������
<voice name="����" class="����" src="voice/ma04/0061350a00">
������Ϊ�λᵽ��˵ز�����

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061360b48">
����֪������Ŵ��ǵ��������ģ���ֹ�������ɡ�
�����ﲻ����Ļ������ҵ�о�����
���ܾ����Ǹ��о��ĳɹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
��������˵��������Լ�һ��ҡ��ͷ��
���ҵ�����Ҳ��ͬ����

����ҵ�о�������ҵ�о��ĳɹ��������һ����һ�ж�
��������Ȼ����
��������ˣ���Ϊ��Ҫ��ͷ¶β��

�����⣬�����쳣���������ǴӺζ�����
�����кܶ�ط������޷���Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061370b48">
��������֮������Ϊ������
�����ҵ���һ�����ܱ��ء���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061380a00">
��ԭ����ˡ�
������鱨�������������ǡ�����

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061390b48">
����ѽ���ն���������ɱ���ᡣ
���ҿɲ�����ôС�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
�������æ��Щ�����ؽ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061400b48">
����˵�ˡ������˿������ܱ������ܵ�һЩ�ˡ�
�������Ƕ���Ը��ȥ����������Ϊ����Ļ����
������˵�˲������£������Ǿ��ǲ��š���

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061410b48">
�����������ֻ������һ��ȥ�Ǳ߲��㡣
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
������ǲ�Ը�ⱻ�������ô������
����ס�˿ڣ�����΢΢����쳱��
��Ȼ���������ĵģ�ȴ������һ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��������
<voice name="����" class="����" src="voice/ma04/0061420a00">
������ʵ��������
���Ҿ������ǲ�Ըǰ���ľ�������ȷ�ġ���

//��������
<voice name="����" class="����" src="voice/ma04/0061430a00">
�������޲���С�ӡ�
������Ϊֹ�������������
���������˲���һֱ��ȥ��
�����þ���ʱ�򡣶��Һ���Ԥ�ס���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061440b48">
��������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061450a00">
��˵����������һ�Ρ�
���浽��ʱ���Ѿ��Ǻ��Ī������

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061460b48">
���������ȻҲ��ô��Ϊ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061470a00">
��������

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061480b48">
��Ҳ�ǰ�����
����ʵ��Ҳ�����Լ��ǲ���̫���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
������ɦ���Դ���
���������ƺ���Щ�����ظ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061490b48">
�����ֻ����һ���Ļ������ǻ�������ϴ̼���
��С����Ҳ����һ��Ļ�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061500a00">
�����ǡ�
���Ҿ�֪����һ���Ѿ��뵽����һ�㡣��

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061510b48">
���Ҳ������������ܵ�Σ�ա�
�����ǻ�ʳǮ�ܵ�ȥ����
������Ҳ����ʶ�ز�ȥ������
��ʱ�������˰ɡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061520a00">
��Ϊ�˺��ڶ�ɥ������ֻ��˵�����С���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061530b48">
���ǰ���
��������˵�öԡ���Ҳ���������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061540a00">
����࣬�𡣡�

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061550b48">
���ٶ�һ�㣬�Ҿ��ܴ浽��������
��������������µ�Ǯ��
��Ȼ���Ҿͻ���ʱͣ�֡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061560a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0750]
����Ӧ��Ȱ��������ͣ�֡��˵��������ޣ�
Ȼ�������޶���������ȴ��û�е��ߵġ�
������һ�ҵ�͵�Ժ�����������������Ե�ǻ���

��Ȼ������
������غ����棬��ͳ������˿���
��������ָ�ֻ��ŵķ�Χ�ˡ�

�������Ҹ������ٱ�����Ҹ棬
����һ�ҵ�����ȴ�𲻵�һ�ǰ������档
����Ȼ��ν��³ç���գ�ȴ����������һ�ҡ�

�����ԡ������
���������ľ�ֻ����Щ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0760]
//��������
<voice name="����" class="����" src="voice/ma04/0061570a00">
������������
��������Ļ����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
���Ҵ�Ǯ���г��һ��ֽ�ҵݸ�����
�����಻�٣�����ʧ��Ľ�

��Ȼ������ȴû����������һ���������¡�
������üͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0780]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061580b48">
����������ʲô��˼����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061590a00">
����ʵ���Ǿ���ֵ��ˣ�
���ڵ��齭֮�����쳣�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
���⻰��ʵ��
��Ȼ�������Ƿ����ž������ۡ����ڵ�����
ȫ���Ѿ��쿴����Ļ�����������ء������һ���
�޹ؽ�Ҫ�����֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0800]
//��������
<voice name="����" class="����" src="voice/ma04/0061600a00">
����Ļ����Һ��а�����
�����Ǹ����л��ͷ�ڷѣ�
Ҳ������������ʵ��ݵ�Ǹ�⡣
���㵱�����߽��С���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061610b48">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
����������Ƭ�̡�
��գ��˫�ۣ�Ŀ��ת���������ҡ�

�����������ڻ�����<RUBY text="����">ʲô</RUBY>��
��������֪�ԡ��ֻ����˸�֮��Ķ�����

������Ȼ�������ڡ�
�����ı��鶨��Ϊ��Ц��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0820]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061620b48">
�������Ǹ����ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061630a00">
��ż����������
���������������ô˵����

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061640b48">
��лл����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0830]
����ϸ��ȴ��������ָ������ֽ�ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0840]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061650b48">
���������ˡ�
���ƺ��������Ǻúó�һ�١���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061660a00">
���Ǿ�����ô���ɡ���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061670b48">
����Ҫ�����𣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061680a00">
���ǡ�
��ͬ�е��˻��ڵ��ҡ���

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061690b48">
�����ǻ�������𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061700a00">
����������л���Ļ�����

{	FwC("cg/fw/fw���B_ͨ��.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061710b48">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_���濫����03",1000);

	DeleteStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
���������űߵ����������µ��ؼ��ϡ�
��Ȼ�󡪡��ٴο����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0860]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061720b48">
���ն���������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061730a00">
���ǡ���

{	FwC("cg/fw/fw���B_���.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061740b48">
����Ҫȥ���ϣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061750a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0870]
�����ó�Ĭ��Ϊ�ش�
��Ȼ��������ȴ�����Һ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0880]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061760b48">
����û��Ǳ�ȥ��
����������ֵ����������Ҹ��ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061770a00">
��������

{	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061780b48">
����ʵ�����ұ���Ҳ���㲻��ȥ�Ǳ��ˡ�
����Ϊ�����������ʲô��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061790a00">
��ʲô����

{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061800b48">
����ɫ�Ķ�����
����¡¡���������ţ���ʲô��������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061810a00">
������������

{	SoundPlay("@mbgm35",0,1000,true);
	FwC("cg/fw/fw���B_����.png");}
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061820b48">
��֮ǰ��һ���ҿ���������Ӱ�ӡ�
�������޸���û����ʲô��ҵ�о���һ��
������Ϊ<RUBY text="����">�Ǹ�</RUBY>��
������Ҳ�ã���ȺҲ�á���

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061830b48">
��<RUBY text="����">����</RUBY>�����Ǹ����Ͻ�����ʲô���
��ȫ������Ϊ��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061840a00">
�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
����ɫ�ġ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���B_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061850b48">
����ȥ���ն�������
���������㡣��

//�����B��
<voice name="���B" class="���B" src="voice/ma04/0061860b48">
����ȥ�Ǹ����ϡ�
����ġ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma04/0061870a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma04_007.nss"