//<continuation number="1090">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_006.nss_MAIN
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

	$GameName = "md03_007.nss";

}

scene md03_006.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_005.nss"


//���u�h���g

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");

	OnBG(100, "bg027_���ӘS�u�h���g_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm34", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\",1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ͳ��������Ļ�����Ľ����ۼ������¼䡣
��������λĻ��������������ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͯ��
	StL(1000, @100, @0, "cg/st/stͯ��_ͨ��_˽��a.png");
	FadeStL(300, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���źӹ���������ͯ���н���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���׵�

	StR(1000, @-50, @0, "cg/st/st�׵�_ͨ��_�Ʒ�.png");
	FadeStR(300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��С�����������׵��н���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ�

	StCL(1000, @-100, @0, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStCL(300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���S������������ʨ�Ӻ��н���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��
	StCR(1000, @100, @0, "cg/st/st�衩��_ͨ��_�Ʒ�a.png");
	FadeStCR(300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ܥԽ����������������н���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����������յ�Ȩ������
������Ψһ�����⡪����פ���������͵������ϣ�û
���Ĺ������ܹ������ǿ��⡣

������������һ�£����������׻���һ�������С�
��������������������������

��Ȼ������Ҫ����ͳһ����ȥ�μ�
��ģ��������ش���ж���
�ͱ�������������ߵķ��硣
������������ǵ�����Ҫ�����¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwͯ��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060010a09">
�������ȵ����ð��ϵ��¾��δ���֮λ��
����λ�������Ӧ��û����ɣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060020a08">
���š���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060030a06">
��û�����顣
��Ⱥ�����ף�������ʿ���;���ֻ�᲻��
����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060040a07">
����Ϊ�Դӷ���<RUBY text="��ү��">����</RUBY>�����������
����һֱ��̫��и�ˡ�
�������򶼲���˵�����������������ᶯҡ
��Ҳ��������Ȼ�ġ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060050a08">
��ʵ��ʵ˵�ͺ��ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060060a06">
���ѵ��������ǣ������ǰ�ɱ������һ�в�����
��ʬ�嶼û���֣�
����Ż��Ϊ���ҵ�Դͷ�ɡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060070a09">
��������ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0060080a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����커��ʧ�ٱ�����δ���¼����ҵ�Ȼ֪��������
�࣬ȴû��˵���ڡ�
�����������ڣ���������Ļ������Ȼ������ˣ�
ȴû�з���Ȩ��

����˵������Ҳ����˵�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060090a06">
���ȶ����ĵķ�����һ����
��ӵ�����ϵ��¿��������ƣ�
�����������Ƴ�Ϊ��ʷ����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060100a06">
�����ΰ��¼�����
���Ӹ����Ͻ��������ϵ����������ڹ�����

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060110a08">
��������ô����������!?
��������!!��

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060120a06">
�������������𳳡�
����֪����ȥ����ʷ�޷��ı䡣��

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060130a06">
������˵���ǣ�Ҫ�����������뷨Ϊ����
��Խ��ľ���׼������

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060140a08">
������֪��������˵��
��ȫ������û������!?�����
����ƽ�����µ�ҵ������ʲô�ˡ�����

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060150a09">
���׵����ˣ��׵����ˡ�
�������侲����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060160a08">
���ǿ����벻���̣�
������ͯ�Ĵ��˷���������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060170a09">
�����ķ�Ӧ����֮���顣
��ƶɮ��⣬�ǳ���⡣��

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060180a09">
��Ȼ��ʨ�Ӻ���˵������Ȼ��Щ����ȴ��һ
����������񲻸ó��������յ���ҫ�У���
�Ǳ����֪�������յ���ҫ�������ҵȡ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060190a08">
��������ˡ�����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060200a09">
�������Ϲ�<RUBY text="��������">��Ϊ�ɻ�</RUBY>Ҳ����һʱ֮�¡�
��ֻҪ���ϵ�����˳����Ϯ��������֮λ��
�ٶȹ���Ļ����֧�䣬�ͻ�����׷�ӻ��Ϲ���
��֮��������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060210a09">
������ʱҲ�����һ��ʢ������񡣡�

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060220a08">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060230a09">
����֮����Ҫ����Ҫ�ؽ�Ļ�����ơ���
���ϻ����׵����ˣ���Ӧ�����������ġ���

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060240a08">
�������ǡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060250a09">
����������ⲻʤ�м���
����ѽ��ѽ����ͷ����ˡ��ҵ�������������
������������Ļ����ֱ���ǰ����Σ���

{	FwC("cg/fw/fwͯ��_��Ц.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060260a09">
������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�׵�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060270a08">
������������

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060280a07">
������������������

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060290a06">
���ţ�����������

{	FwC("cg/fw/fw�x��_����.png");}
//���x�塿
<voice name="�x��" class="�x��" src="voice/md03/0060300b21">
����ɮ�����͡���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060310a09">
���Ǻǣ����ˡ�
���Ǿͱ�����ʲô��û�������ǰ�
����������������

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060320a09">
����Ҫ���ϵ��³�Ϯ����֮λ����Ȼ��Ҫ
��͢����ɡ�
�����̽�������ھ���Ϊ�˽�����׼��������
Ȼ��������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060330a08">
�������谭���𣿡�

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060340a09">
�������ڵ�̬�ȣ�ʵ���ǡ���
�����ͽ���޹���ֻ���ڰ׷�����������

//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060350a09">
�����������˵������������˵Ҫ�����գ�
һֱ�����Ҷ�������
��������ı��棬���ƺ���Ը�����ͷ�ϵ�
����Ӧ�ʡ���

{	FwC("cg/fw/fw�{�Ӻ�_�h��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060360a06">
���ߡ�
������������Ҳ������֮�аɣ���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060370a07">
�����˵����ϣ������ƽϢ���ҵĻ���<RUBY text="����">����</RUBY>��ϣ
���Ŀ϶��������෴��
�����Ǵ�������������ڵľ��ƣ��ö�ҡ
��һ������ɡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060380a07">
����֪�����Ƕ�δ����<RUBY text="�֣ɣӣɣϣ�">չ��</RUBY>����
�ж�Զ����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060390a09">
�����Ǵ��㼯����صĵ�Ļ�ɷ��𱩶��ء���
�����������ڴ���פ���Ľ����𡣡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060400a06">
������������<RUBY text="����">����</RUBY>��ͻ���������
���������Щ�������εĲ�ʿ
�����ܸɵó���������

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060410a06">
����΢���æ��Σ�
�����С���

{	FwC("cg/fw/fwͯ��_�@��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060420a09">
����ô���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060430a06">
���ҽ�����ȫ���Ͼ�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060440a08">
���ȵȣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060450a07">
��������ǻ��Ͻ��Ͱ�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060460a06">
������Ϊ�������ںS����ʼ׼���ˡ�
��ֻҪ�����������鱨�����ˡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060470a09">
�������������𣿡�

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060480a07">
���������Ļ���ô�죿��

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060490a06">
������ʱ��������Ͼ�ȥ��
����˵�������������Բ����ٵ��ַ����֮��
�ģ�����һ����������ˡ���

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060500a08">
������Ϊ��ô����ƽ�����µ��ճ��𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060510a06">
������ƽ�ȵ��ճ���
�����ܱ������ޱ��������������úá���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060520a09">
���š�����

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060530a06">
�����ص��ġ�
���������Ⱥ��Ů�˵ĵ�ϸ����

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060540a06">
��Ļ��������Ҳ�˵�����Ĺ���ֻ�ں���ǰ
��������
���������ڵ������̽�⿴����Ҳֻ�������
���������������ͼ���ѡ���

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060550a06">
���������˻�����ٸ��������ǵĴ�����
���������в��ͬʱ�׳����˵Ķ�ʳ�����ǿ�
������������������

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060560a08">
����ν���ǹ��ӱ��ӣ�
���洫ͳ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060570a07">
����ͳ�ķ�����Ҳͦ����
����Щ�һ���������뷨��ǧ��ǰ��û�������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060580a09">
������ԭ����ˡ�
��û�����飿��

{	FwC("cg/fw/fw�׵�_�䵨.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060590a08">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060600a09">
����ô������¾ͽ���ʨ�Ӻ�����ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060610a06">
�����ס���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060620a08">
��Ҫ������Ч�ͺ��ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060630a07">
��������Ч�ˣ�������һ�������ء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060640a06">
��������פ���𣿡�

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060650a08">
��<RUBY text="������">��������</RUBY>�ĵ������б����ˡ�
���ǣȣѵ�Ժ���ƺ��н���ˡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060660a09">
����˵��ѹ���ҵķ�ʽʹ���ǵĲ�Ű�Ը�
�ӱ��������
����Ȼ�����������У�ȴҲû����������
��Թ����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060670a07">
�����Ϲ�����Ҳ��Ҫ�����ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060680a06">
���Դ������ս�������ԡ�
����<RUBY text="������">������</RUBY>��ս�����𣿡�

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060690a06">
���������ɡ�����

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060700a09">
��ս����ʱ����ȼ��
����������˵����û���ȴ��ݱ�֮ʱ
���Ϲ����������˾��ò���˼�顣��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060710a07">
������ǿ��ǵ�����ʱ���;��������ɣ�
���������������������۷�֮ʱ�������ǡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060720a08">
�������Ļ���������ں����ء���

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060730a06">
�����Ǳ�С���ˡ���

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060740a09">
�����һ����ս�����������֮ʱ�����ǰ���
���³�Ϊ���죬�����ؽ�Ļ�����Ƶ�Ŀ��֮
ʱ����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060750a08">
��������ͬʱ�����ء�
����Ҫ�ݳ�Ч���Ļ���������ˡ���

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060760a06">
���ǰ���
������Ҳ�б�ҪΪ������׼������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060770a06">
������Է�û�ж��������Ǿ��Ǿ��õĻ��ᡣ
����������������һ��������<RUBY text="���">��פ������</RUBY>����

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060780a09">
�������š�����

{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060790a06">
��������������һ��ϴ������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060800a08">
����Ȼ��ô˵��Ӧ�ú�˳���ɣ�
���Ǹ���׼������

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060810a06">
����Ȼ�ˡ�
���������ò�������ġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060820a07">
��Ŷ������һ�����Ӱɡ�
����������ڿ��������ء���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060830a07">
��ʨ�Ӻ�֮�����غS��ȥ�ɣ�
����Ҳһ��ȥ����

{	FwC("cg/fw/fw�{�Ӻ�_ͨ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060840a06">
���ò��š�
��������Ҳ�ò�������ġ���

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060850a07">
��Ҫ���ĵģ�Ҫ��Ҫ�ġ�
��Ϊ��һ�ƻ���Ǯ�������Ŀ����Ұ�����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060860a07">
���������ϳ�Ǯ���˾����ϴ�
�����ǳ�ʶ����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060870a06">
����������
��������ô�죿��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060880a07">
��ȫȨ�����ܸɵĸ��١���

{	FwC("cg/fw/fw�{�Ӻ�_�@��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060890a06">
���������𣿡�

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0060900a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���䲻��������Ҳ�����ɫ������
�����ϴ�һ�ж��������ϵ������ͬ���������������
�����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�{�Ӻ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0060910a06">
����˵ȷʵ�Ȳ����Ҫ�ɿ��ö࡭����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060920a07">
���ǡ��ɡ��ǡ��ɡ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060930a08">
�����Ƿ�����ء���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060940a09">
������˵����Ҳ�Ǹ�������ε����θ��١�
������費�ڣ�ȫ���Ĺ���������˵����
���Ը����ɡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060950a07">
��û����İɣ���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0060960a00">
���¹ٻ�߾�ȫ���Իر����µ��ڴ�����

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0060970a08">
������������

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0060980a09">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0060990a07">
������Ӧ�й��оذ���
��Ҫ�ø���˵������˵�������ȽϺ�Ŷ����

{	FwC("cg/fw/fw�����AȾ_ͨ��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0061000a00">
�������ˡ���

//��������
<voice name="����" class="����" src="voice/md03/0061010a00">
��ܥԽ�����ڵĻ�����������칫����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0061020a07">
���ۡ���˵����̫ǿ�ˡ�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0061030a07">
����ҪԶ�߸߷ɣ��벻Ҫ���ҡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/md03/0061040a08">
������ȥ�ҵġ���

{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0061050a06">
���ǺǺǡ�����
��������ͺá���

{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/md03/0061060a06">
�����ڴ���ı��֣��ն���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0061070a00">
���ǡ���

{	FwC("cg/fw/fwͯ��_ͨ��.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0061080a09">
��������ô��������ɡ�
���ӵ��˹��ڵ�Ļ�ɶ���ı��档��

{	FwC("cg/fw/fwͯ��_��˼.png");}
//��ͯ�ġ�
<voice name="ͯ��" class="ͯ��" src="voice/md03/0061090a09">
����������ƸԲ��е���һ���ڡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md03_007.nss"