//<continuation number="390">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_007.nss_MAIN
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
	#bg007_��m��·a_02=true;
	#bg007_��m��·a_03=true;
	#bg033_���Lլ����˽��_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_008.nss";

}

scene mb03_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_006.nss"

//��Ϧ��ҹ
//�����Lլ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg007_��m��·a_02.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg007_��m��·a_03.jpg");
	FadeBG(3000,true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ؿ������Ǧһ�����أ��ڿ����լۡ����֮ǰ��
��Ŭ��Ĩȥ���ϵ�������
���Ҳ���ʹ�ý�����Ҫ��֮���������ǡ�

�����������������������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ů�ԡ��������

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����塿
<voice name="����" class="����" src="voice/mb03/0070010b51">
���������ˡ�
���������ˡ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070020a00">
����������Ůʿ��
���һ����ˡ���


{	NwC("cg/fw/nw�������.png");}
//�����塿
<voice name="����" class="����" src="voice/mb03/0070030b51">
���������ˡ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070040a00">
����Ҳ�����ˡ�
��һֱ��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������صس���ӭ������ʵ��Щ��֡�
�����ڰ���һ�м����������˵���糿���������һ��
�����æ��ʱ�̡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw�������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����塿
<voice name="����" class="����" src="voice/mb03/0070050b51">
�������������á�
����ȥ����һ��С�㡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070060a00">
������һ����ô�ˣ���


{	NwC("cg/fw/nw�������.png");}
//�����塿
<voice name="����" class="����" src="voice/mb03/0070070b51">
����Ҳû��ȥȷ�Ϲ���
�������޷�ת���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������⼸�仰�����ҳϵ����߱������ˡ�

��������������ô���¡�
�������һ������״��ͻȻ�����쳣�����������·��
����������ң��Լ���Ͳ�ȡ��Ҫ��ʩ�ˡ�

�����������������ˡ���
��һ�����������һ����ʲô���Ծ������Բ��ش��Ҹ���
�ɡ�

������������������һ�����䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������_���ӣ�
//��һ������
	SetVolume("@mbgm*", 1500, 0, null);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg033_���Lլ����˽��_03a.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	CreateSE("SE01","se�ճ�_����_���饤���_��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb03/0070080a00">
��һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��һ�۾Ϳ��Կ���һ�����Ծ���

��������û�л�Ӧ�ҵ��к���
���������˫�ֺ�һ���·������������ơ�������
��ֱ��������Ѱ���������Ѷ�ͷ����˫�֡���λ��Ů��
����ȥ���ڵ������еĹ�����������

�������ǽ�Ҫ��ˮ֮�˽�����סΨһ�ľ���������Ůƴ
���������е���һ֧��������ķ�������
���������ֳ��ڣ����͸�������֧������

{	CreateSE("SE01","se�ճ�_��_�����ä�");
	MusicStart("SE01",0,1000,0,1000,null,false);}
��������ʲô��
��Ϊ�˿������ٺ�һ�����ҿ����һ�������Ͻŵײȵ�
��ʲô����΢ʧȥ��ƽ�⡣

��������ʹ����Ѹ�ٻָ�ƽ�⣬ͬʱת������ȷ����
���ȵ���ʲô��
�������ҿ����˱�ֽ��ͬʱ����ֽ�ϵı���ӳ��������

������������Ϣ���ź��������Թ��ٽ���Ϣ��
������������������Ϣ����һ����ʽ�õ�����

��Ҳ����˵���������ˡ�
��һ�����о���������ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/mb03/0070090a00">
����֪������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm32",3000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��֪�����Լ�����֮�¡���ɱ���ˡ�

��������Ů����������ʶ�ػرܰɡ�
��ֻ��Ϊ�ַ�����ͯ���ǳ�ʤ�����ǹ᳹���塣������
ʶ�ؽ���ɱ�ˡ���һ���˵Ĳ����޳��ˡ�

�����������ʶ���ӱܣ��������Ĳ�����ô���׾ͱ���
�ɡ�
��������û����ô�����޳ܡ����෴������ʲô������
�������������Ϊԭ��

�����ԲŻ��޷�����������һ�е����ű��⡣
����ȷ�����������˼����������ͱ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb03/0070100a00">
��һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
�����ٴκ������������ȸղ��Դ�ͬʱ�����Ų�Ҫ��
�졣
������л�Ӧ�ˡ�ٿȻ��һ���͵�̧��ͷ�����ң�����
��ȷ���Ƶ�գ��գ�۾���

{	CreateSE("SE01","se����_����_�����Ĥ�01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
��Ȼ�󣬷��˶�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070110a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��û�����ʡ�û�����ᡣ
������Ȼ�����ڵֿ�����ɳ嶯��

��һ��������־��˿�������ã���֮ǰ�ĵֿ��ͻ����
�ɡ�
����Ů���Ὺʼ������������ֹ�ؿ޸���ͣ�ɡ�

���Ǿ���ζ�����һ������˵����ɡ�

�������ƣ����Ǳ��ˣ������ֺη���
��ȷ����ˡ���������ΰ��Ĺ�Ч�������Գ�ˢ���գ�
���ܶ���ʹ�඼���Եõ����⡣

������֮�����ǿ��Ի���ٴ������ʵ�Ļ�����
�����ǡ�������ɱ����һ��Ϊ����Ӧ����Ե���ʵ����
���ڡ�һ���ѳɹ�ȥ��

����Ϊɱ�ˣ��ǽ��Է�<RUBY text="����">�ս�</RUBY>�ڴ˵���Ϊ��
��һ�ж������ڴˣ��������պ�������

����ô����Ϊ�޷�����ɱ�˴�����ʹ������µ����ᣬ
ֻ�ܾ����Լ�һ���˶��ѡ�
�����ǽ�ƾ���˵Ĳþ����͸��Լ���������Ķ��⡣

���������ɡ�
����ͷ��β�ı��ɡ�

���������ǲ��ܿ�����

������֮ʱ��
�����Ǿ�������Ϊ����Ĳ�֪�߳�֮ͽ����������
һ�У����������������ߵĶ��⡪��Ҳ����˵���˹�
ȥ����ʼȫ�µ����淽ʽ֮ʱ��

����ʱ��ҵ���޷��Թ�ȥ�����淽ʽ���š�
��Ϊ�Ѿ��������ˡ�
�������������ȥ���ְ���ɱ�����ڵ����淽ʽ����ȥ��
�ǾͲ���������ڵ���ˮ��

��Ϊ�������һ������Ҳ��Ϊ���һ������ȥ����Ů��
�Բ��������
���������ǡ��������ζ�������Ҹ���

��Ҳ��˿��������ᣬ�ӱ�һ�У�����
һ����˵�����Ҹ��İɡ�
����Ҳ������������뷨�����ԣ���ô���Ƕ�Ӧ������
����

���������޷�����Ȱ˵�������뷨��
��һ�������µ�ɱ�������Ҳ���ҵĲ��롣�����޷���
����ȥ����Ϊ����δ��֮�¡���Ϊ��ȥɱ�˵�
�������ҵ�δ����ǰ������������Ӧ�õ�����յ㡣

������ֱ���ַ����Ǻš�
���Ҷ�����������ɱ���ߵĵ�·�ϡ�

����ˣ��Ҹ����޷�˵���κξ���
һ���Ļ��
���������ֻ�ԭ�����˱�ɱ������ͯ��֮��˭Ҳû����
��˵��

�����һ����Ҫ�����Լ�����ֻ�п��Լ�<RUBY text="����">�鹹</RUBY>���ꡣ
�����´˾��ϵ�Ȩ����ֻ����������������Ůȫ������
��Ȩ����

����ʲôҲ�����ˡ�
��ֻ�б�ס���ǲ����е���ϸ�������ϸ΢��С����
Ψһ�����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070120a02">
�������ɶ񡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��ƴ����ס����ĳ嶯������Ů�������ǿ����������
�����ǣ����Լ��ĳ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_�ڤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070130a02">
�������쵰������
��Ϊʲô��������


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070140a02">
��Ϊʲô�������������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070150a00">
��������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070160a02">
���ұ��롭��
�����������塭����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070170a02">
������������޵�Ұ���ǣ�
�����롪�������ǡ�ɱ����ɱ�ˡ�����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070180a02">
���ء����ء�����
������Ϊʲô����Ϊʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070190a00">
��һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��Ϊʲô��
��Ϊʲô����������ˡ�

����ʲô�������㣿

�������ʡ����ʲ����ڡ�
���˿̣���һ�ʿ��ܻ��Ϊ���һ������������ѹ��һ
���ġ����һ����

����û��Ȩ���׳������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070200a02">
���ն���������������ҡ���
�����ǡ�����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070210a02">
��Ϊʲô������ôǿ�󡭡���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070220a00">
��������һ�㶼��ǿ�󡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��������˵��˿�����ǳ��ڰ�ο��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070230a02">
��ƭ�ˡ���
�������һ��ս����һ��ɱ�ˡ�������������
���䡣���㲻����������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070240a02">
���ն�����������ǿ��ġ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070250a00">
���ⲻ��ǿ��
����ֻ�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������ֻ�Ǻľ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mb03/0070260a00">
������������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070270a02">
��������ˡ���
��ֻҪ�ܹ������ڼ���ս����ȥ����


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070280a02">
���Ǿ��ܳ�Ϊǿ��
�����ҡ���û�����ǿ�󡭡�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070290a00">
��һ������


{	FwC("cg/fw/fwһ��_�ڤ���.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070300a02">
������Ҫ�ն�������ǿ�󡣡�


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070310a02">
�������Ƕ�ȡ��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070320a00">
���������ֶ�����ȡ�����ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
��Ҳ����Ҫ��ȡ��
������������һ����˵��Ҳ����������

���������Ҳ����ӵ����
��Ϊ�˼���ս��������ҪЩʲô��

��������������<RUBY text="����">����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070330a02">
����ô����
����������ȡ����


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070340a02">
����ȡ�ҡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0070350a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070360a02">
�����Һʹն���������
���϶�Ϊһ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����Եı���û�������������е����塣
���������˿̴��ĵ׶�<RUBY text="����">�Ǹ�</RUBY>�Ŀ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mb03/0070370a00">
��һ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070380a02">
�������ˡ�
������ֻ��һ�Ρ���


//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/0070390a02">
����һ�Ρ���
��Ը��Ϊ���������Ļ����Ҿ͡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ԥ��
�������������������飬�Ҹ��ܵ����Լ�������ϲ�á�
�����˷ܡ�

�����ǣ����Խ����彻�����ӿ����
������Ŀ��Ծ�����λ��Ů��

����Ū�����ס�
��
�����ǣ��Ҳ����Ѿ�������һ�ж��������Լ��ľ�����
��

����Ȼ��������������µġ�
�����Ҹ����ġ���ֻ���������ľ��ϰɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



}

..//������ָ��
//�Υե����롡"mb03_008.nss"