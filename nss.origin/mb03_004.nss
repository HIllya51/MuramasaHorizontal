//<continuation number="610">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_004.nss_MAIN
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
	#bg032_��ᦌm�������b_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_005.nss";

}

scene mb03_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_003.nss"

//��������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg032_��ᦌm�������b_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mb03/0040010a00">
�������㱨��ϡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040020a10">
������������


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040030a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���㱨��Ϻ�
������Ȼû��̧��ͷ��

������ĳЩδ����ϸ����ȷ�ϵ�ԭί�������ֳ�������
����ʧ���ر�С��֮һ���ջ�ȼ����������ʵҲ�ް���
���ﲢû��ʿ���ۼ�����ʧ����Ҫ�ǽ����

������ԭ�ȵĴ��㡪��������ģɧ����һ�ƻ�Ҳ
����ϣ��������������˵����ԭ��ı����Ϯ��������
�ȣ�����ѷɫ֮����
����������˵�ֲ����Ҽƻ���ʧ�ܡ�

����ǰ���ǣ���̬��չ��<RUBY text="����">�˴�</RUBY>
�ͽ����Ļ���
�������еĳɹ���Ϊ����Ψһһ�����߶�����˿��룬
��������ʵ��

������ͯ�ġ�
�����������������������Ĳ�����ա�

������ԭ��ϣ���ƺ�Ļ������ʹ��Լ�������
����˲Ž�<RUBY text="��������">�Ʋ�����</RUBY>��һ���񽻸����Һ�һ����

��Ȼ��������ƹ�ͷ�ˡ�
��ԭ��Ϊ�������õ�Ļ���̴������ʧһλ���ޣ���
������ҡҡ��׹��

����ȫ�Ǵ����ͷ��

��������ȷ���������ȴ�һ���Ļ㱨��������ʱ����
����ͻ�ư�Χ֮��һ��û�а����ҵ��������ѣ�����
ȥ׷������ͯ�ġ�
����ս֮��������˰ɡ�

���ر�С�Ǳ��ջپ������ԭ����ɵİɡ�
������������һ������ɱ���˹źӹ�����һ��ʵ����Ȼ
�Ǵ������˿���˵�����Ǿ���ӹ�����ˡ�

����֪���������÷���������������һ�����Ƕ�ɮ��ɱ
�⡣�����ҲŶ�������ش��������ͷ��
�����˵���Լ�����ɱ�⣬���ǻ��ԡ����ǹ�ɱ���Ҳ�
û�����Ҫ���ո����ж���

����Ȼ���ײ���Ϊ���Ǿ�ֻ�ǽ���ɱ֮�ġ�������ݷ�
ŭ��������С�
��Ȼ���������ǰ���ӵ�����������¼���Ԫ�ס�

����һ������ֹ�������ס�
�������Բ����ԵĻ����ᱡ�����ܡ���û�гɹ���ֹ��
����ͯ�ĶԿ���һ����

������һ���Ż�׷�Ϲźӹ����������Ƶ���·���ߣ���
��Ҫ������������
�������ǵģ���û���ϵ��������п��ܷ�������Ҳ����
û��ȫ����ֹ��ԭ��֮һ��

�����ú�ʵ�����Ƚ�����ͯ�ģ�����λ��������������
��֮�����潻ս�����Ҿ�Ȼ�����������
��������Ҳû���뵽��λ��Ů�������ʵ��������ȫ��
���ˡ�

���վ�������������ҵ�ʧ��
���Ҳ�������ǰ��λ���У�һ������ҲҪ����ң�����
��Ҫ���Ը�����λ��δ�������Ů����Ҫ��ʱ����Կ�
�ƣ�Ȼ���Ҹ���û���������

���Ҿ�����Ϊ�βŸ�ȥ�ж����ء�
��ֻ��Ϊ�Լ��е��������ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040040a10">
����������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040050a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������˼����ӵĳ�Ĭ�����������صؿ��˿ڡ�
������������߳���ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040060a10">
��������Σ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040070a00">
�������ǡ�
�����жϵ�������Ҫ��ȫ�ָ����»���ҪЩʱ
�䣬�������޴󰭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������ɵ���ͷ�ش����
�����ڵ��ϵ����ִ�����Ͽ��Ѿ�û���κ��˺ۡ�������
��ʵ��û��Ȭ������ϵͳ�������֯�Դ��������׶Ρ�
���ڣ��������������������ӡ�

��������ߺ����������̫����
�����������ߵĻָ���������Ҫ������ȫɥʧ�Ĳ�λҲ��
Ҫ�൱һ��ʱ�ա�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040080a10">
��һ�����أ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040090a00">
���������ڻָ������С�
���������ܹ������һ��ʱ�䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���뵽һ��������״�������б㷭�����ӵ�������
�����ҵ����˿�������ʱ��ս������Ԥ����Ů����ʱ��
�ֻż����¡����𽥻ָ�����״�����İ��ġ����Լ���
����״Ĩ����ȥ�����ʡ�

�������˵ĳ̶�Զ�������ܱȵġ�
��������֫��ȱ������ȫ���ڡ�

���ӳ�ʶ���������������ˡ�
����ʹ��<RUBY text="������������">��ʶ�Ե�����</RUBY>��Ҳ��������

������������һ��װ��֮ٮٮ�ߣ���װ�������޿ɱ��⣬
����һ�ж��޷����ɽ��͡�
��ֻ����Ϊһ������ӵ��սʤ������������

�����������һ���Ǻ�����Ҳ��
�����ĵ�ȼ���Ϊ�ˡ����塱��׷�󣬶�а���������
���������Ŀ��Ե�������˲��ɹ����ļ�ǿ�𡪡�

��������ˡ�����λ��Ů��<k>
��
����������������������Ӣ�ۡ�

�������������ڶ��ϵľ�η֮���������
���������˲��ɵ���Ҫ����Ч�ҵ�η�塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040100a10">
��������������������ȴֻ�о�����һ��ǰ
����������Щ���ġ�
��û�뵽����������ء���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040110a00">
���ǡ���������ȷ����ʵ��
�������������ж����أ�ֻҪû�������ˣ���
��������˵��ͬ�ڲ��ˡ�ֻ����ȫ��������Ҫ
��ʱ�䲻ͬ���ѡ���


//��������
<voice name="����" class="����" src="voice/mb03/0040120a00">
�������£���ſ��ġ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040130a10">
�����𡭡�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��û�м�Ԧ�����е��˻�е�����Ҳ�������ģ�����ʵ
������������˹�ʱ�����������׼���һ��Ϊ��������
�з��޷��ָ��������˵�֤��������Ϊս��֮�����ս
����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb03/0040140a00">
���������ܾͿɻ���Ȭ������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040150a10">
��������á�
����Ҫ��ǿ�������Ҫҽ���������ϸ����ҡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040160a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����֮�ø�л��ݹ��ġ�
���Ұ�ͷ��ø��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040170a11">
����ô�����ˡ�����


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040180a10">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st���L_ͨ��_�Ʒ�.png");
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��������������ͬ��֮���������ҡ�
������̸������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040190a11">
����������Ҳ�ܲ��뵽�ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040200a00">
���ǡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040210a11">
��С�������ж������ҵȵ����硣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����������
����Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040220a11">
����Ȼ�ҷ����������˸��ַ�������
������ػָ������Ŀ����Ժ�С����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040230a00">
�����Ѿ����ǵ�Ǹ���ܽ�����ˡ��������Ƿ�
����Ǹ��
�����н�������Ҳ����Ȼ�ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��ֱ����������˵���Һ�һ����<RUBY text="����">����</RUBY>����������ʧ��
����������ͬ���ߵĽ��׵����ܵĸ����ء�
����Ϊ���ǵ���Ϊ�ݻ�����������������֮����

����һ���Ǿ����Լ��������ˣ���Ȼ���ŭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040240a11">
�����������������ܲ��������ɡ�
���������Ǻ����ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040250a00">
�����£���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040260a11">
���ҵ�������ӪЭ��С�����������䳯͢Ȩ����
�ƶ�������Ȩ���ƿء�
���������հ����ҵ���־��������Ϊ�ر�������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040270a11">
����˵���ǽ����ƽ�ȵ�ͬ�˹�ϵ����С����
��һ���������ҵȵġ�
����Ϊ���ǲ�����һ�����ߡ���


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040280a11">
������������ӣ�Ϊ�˸�����������չʾ������
���ڵĴ��ڣ����������ǵ�����Ŀ������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040290a10">
���������¹�ͷ���ҷ�ͻȻ½���ɳ����ߣ���
��һ������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040300a00">
���ǡ���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040310a11">
�����������㼿�����ʵ��䷴��
���ҵ�������Ӫ�ƻ������ֳǣ�ɱ���˹źӹ�����
���ý��н���Ϊ����<RUBY text="������������������">������ս����ս����</RUBY>����


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040320a00">
������!!��


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040330a11">
��Ҳ����˵����
���ҵ������������С���������֡�ֻ����ͼ
���������ѡ���Ϊ���ǵ�Ŀ����<RUBY text="����������">Ļ��������</RUBY>����


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040340a11">
������<RUBY text="��������">���ռƻ�</RUBY>�������׵�����
�ɹ�ɱ������ͯ�ģ����ҡ��Ļ���ĸ�����
��������ֻ�轫���Ƶ��������������ɡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040350a00">
���������ڽ��н����ԣ��˿��ҷ���ս����
�����޵�δ֪����
������ҵ�Ѷ�ҡ��Ļ���������������ַ�����
����������������Ϊ������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040360a10">
��Ҳ��ỳ�����ǰɡ���
����һ����ʳ�Ѱ�����̬����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����Ȼ����ʵ������ˡ�
�������µľ�������ֻ������һ�������������˵
˥�ˣ�����Ҫ����ȫ�����󣬱������������λ����

�����ǽ��׵�����֪����
�����෴�������Ļ����У��������ϼ����Ÿ߾ٵ�Ļ����
���۴���ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/mb03/0040370a00">
�������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
������Է�ֻ�������Ļ���ֻҪ�ҷ��ò������޸��˴�
�Ĺ�ϵ��
������һ����������������ô����Ҳ�޼����°ɡ�

��������̬��������ĸ����ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040380a10">
����������������һ���
����һ��Ҫ����˵�����ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040390a00">
��������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040400a10">
������������һ�������������ֳǵ����Ǳ���
����
���������������ζ��ڱ�������


//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040410a10">
����һ�㣬��ɲ�Ҫ��ᡣ��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040420a00">
�������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��������������������
����������֮�˶��ڽ�ָ���ȫ�����Ρ�

����֪������Ӧ��ˡ�
�����ǡ���������ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb03/0040430a00">
�����������ø��ܵ��Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���һ᲻�������������롣
�����Ʋ����Լ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040440a10">
����������̬Ҳ������ȫ�޷������
���׵��¾��°ɣ����ǻ����а취�ġ�
�����԰ɣ��𳤣���


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040450a11">
����ȷ��ˡ�����Ȼ�Է�����Ӧ���ǵ���ϵ��
�����Ǿ�ֻ�����ҵȴ��Է������ж���
�������ֿ����ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
������ΪԲ��������ƫ���ڻ�����һ�棬���𳤵Ļػ�
���������ʵ���塣
��ü�������������˿�����������Ҷ��е������ȱ���
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���L_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040460a11">
���Է��ó�������Ϊ���ҵ�����������������
������˴˵�ͬ�˹�ϵ�������ߡ�
����Ϊ���ҵȻ���ȥ�����Ծ��Ĺ����ǰ����
�����ҵ���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040470a00">
������������


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040480a10">
��������


{	FwC("cg/fw/fw���L_ͨ��.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040490a11">
�������Ͼ��������ֿ��ܡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040500a00">
������Ϊ���ֿ����Ը��󣿡�


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040510a11">
����֪������С��������˼ά��û���������
���̶ȡ�
�������߶��п��ܡ��б�Ҫ��������������
�öԲߡ���


{	FwC("cg/fw/fw�H��_ͨ��.png");}
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040520a10">
���ǰ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040530a00">
����ô�������ǰ�ߵĻ�������


{	FwC("cg/fw/fw���L_����.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040540a11">
����ܼ��֡�
������н�������֧��Ļ����ͬʱ�����ٽ�
Ļ������


{	FwC("cg/fw/fw���L_�䅗.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040550a11">
�����Ҵ��½�����
����Ե���������ǣȣѻ���ξ��ϡ�������
�����ǲ��ö�֪����С���Ķ�����Ѳ²⡣��
��Ϊ��ˣ�ֻ�üӼ����¡���


//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040560a11">
�������������̬����ͻ����٣�ֻ���ڽ�
��֮������׼����������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040570a00">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/0040580a00">
����ô����
������Ǻ����أ���


{	FwC("cg/fw/fw���L_���a.png");}
//�����L��
<voice name="���L" class="���L" src="voice/mb03/0040590a11">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����С���������׵���
������������������Ϊ�������ĵ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�H��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//�����m��
<voice name="���m" class="���m" src="voice/mb03/0040600a10">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����ʱ�򡪡���������ʲô��
����ƾ��һ��֮�����ɶ�Ա���������������и�����
���������ߡ������������������֮һ������Ҫ��Ե�
���֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������
<voice name="����" class="����" src="voice/mb03/0040610a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����������˿������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_005.nss"