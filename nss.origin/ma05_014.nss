//<continuation number="630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_014.nss_MAIN
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
	#bg054_�����Ҽ���a_01a=true;

	#voice_on_��������=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_015.nss";

}

scene ma05_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_013.nss"


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg050_�������Tǰ_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ҫ�����ã��������������ġ���
��Ȼ������Ϊ�˶�����֮��ȴ��δ������

��������Ϊ������æ��
���ӳ���˾������ݼ������ǲ��ɱ���ġ�
  

������Ϊ��������Ҫ����������ʽ��

���Զ��ҷ��涨���ն��Ҽ�˾��������Ů�ļ̳У�����
��Ϊ���μ̳��˵�Ů�ӵ�һ������ʱ��������ʽ��
��������ǰҲ�����ƺ�

���̳���ʽ����������ʽ������ǰ֮�ʣ���ȴ���Դ�
�����������Ǳ��Ҳ�����������������Ϊʹ��֮�¡�
�ڱ��Ҽ��������ֽ�����ͷ�ȴ���֮ʱ��ȴ������·
����

����������������в�ʿ�����ƣ�����������𽥺�ת��
������֮��һ��Ҳδ����������

��������ʽ֮ʱ���̳���ֻҪ���ռȶ���ʽ�Ĺ涨ȥ����
�á�Ҫ˵���ӵ�Ҳ������ȴҲ���輼�ɺ������жϡ�
�����������ڵĹ⣬ֻ��������ͬ������¡�

���Ա�����˵�����ܷ�����һ���ʱ�����������������
һ�׶Ρ�
����ʿ�Ÿջع�����߱��ѽ���ʽ���ڶ��¡�

������ϣ���ù�����Ϣһ���ӣ��������ָ��������¡�
��������ʽ������죬���������ɲ�С�ĸ�������ˣ�
����Ϊֹ���޷����С�

���������ڣ���ʮ����ǿ��
��Ȼ�������ڳ���Ƹ�벩ʿ֮������Һ���ĸ���޷�ǿ��
���ҡ�

��ֻҪϤ�Ĵ��Ը��������Ҳ�ܼ����ĸ�������
�����һ�룬����ֻ����Э��˳���˱��ҵ�Ҫ��

{	CreateColorEX("�}��ܞ", 5500, "#000000");
	Fade("�}��ܞ", 3000, 1000, null, false);}
�����ǣ����ա���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}��ܞ", null);

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����ĸ�ĵ����������ۺ�ʱ��������ô���
  ƽ����������̺���������������¡�

�������������꣬����ǧ��Σ��ŵ�����ɵ�ӽ����
  �涨����֮ʱ��ϯ������׾���������û�й涨����
Ҳ����Ȼ�ش�ͷ�����ɡ�

����̧�ۿ�������������ߴ�ĩϯ��ʼ�ص���ɨ����
����Ȼ�ܲ���ò����Ҳû�취����Ȼ����С���������
ԭ��û����ϯ�ʸ���˲μӣ��Ͳ������ְ�ء�

�����Ҽ��Զ�����Ҫ�˷����������У���Զ�����
�����������ĸ�����ԡ�

�������ǿ����α��ϣ�ãȻ���������ġ������ֽ׶λ�
δ���쳣��
����������о��е�����֮ǰ�������ʽ��Ӧ����ʹ��
������Щƣ�룬���ƺ���δ��Խ���ޡ�

���ǰѿ��ε�Ȼ������ѭ��֮�������ǵñ��Ҽ�
Ϊ���죬����Ȼ���Ǳز����ٵġ�
��������Ҳ�еĻ����Ͳ�����˴�������ˡ�

������״������Ӧ���������ճ���
�������ɴ��⡣

��������Ϊ�˲���ð�����ң������ϼӷ������Ա�����
һ��������֮ʱѸ��Ӧ�ԡ�
�����ƿ����ߣ���ʶȴ�Լ����ڹ����ϡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ����ȡ�����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg054_�����Ҽ���a_01a.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ĸ�ĵ���˳�����ꡣ
��������ͨ���룬֮���ֻʣ���Ʒ�����ˡ�

��Ȼ�����ղ�ͬ��
������Ҫ����ͨ��Ϊ�����ա�����˵��������ʽ֮�ؼ�
�ļ���

���Զ�����λ���ˡ�<k>
���������ø�����λ��

���������װ����
����̫����

������ȫ��<RUBY text="����">��װ</RUBY>��
����������ʽ��Ҫ���ˡ�

��������ʽ�ݷ���ʼ��
���ٴν����顪����ǰ֮�ſ�����

����Ȼ�����ѱ��򿪹���
���ڵ�������֮ǰ���������׸�����ģ�������֮ǰ��
������ͺ��������ˡ�

��������ʱ��������ͨ�����п������������������
һ�����顣
����Ի�����顣

������������ʽ���ر���Ҫ�ļ���ʱ������
�����������֮�һ��Ҳ���ýӴ�һ������Ŀ�����

�������ص����ż������еĳ��š�
���������ŹŶ���ս�����˿����������ŵö�������
�����һ��ϸ΢�Ľ�������

�����Ƕ�֪�����ǽԶ�һ��֮���ࡣ
�������������������װ֮�⡣�������ư�����֮�⡣

����ĸ�����񷨣������״�������
�����ص�Ӳ��֮����������<RUBY text="����">ĳ��</RUBY>�Ŀ�ʾ��

����ĸ��Կ�׹�λ�����ţ�Ϊ���������ϥ��ǰ����
������涨λ�ú󣬽��ַ��ϡ���ʼ�������顣

����������ʱ������ϯ�ߣ������ң�һ��ǰ�㡣
��ŶŶŶ�������������ϡ�

���������Σ��Էֱ�������������顣
�������鿪����ϡ�

�����ǡ�����������ǰ��
�����ֳ��Զ�����߻��ܡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������Ů��ρ��������������֩�룩

	CreatePlainSP("�}��д",5000);
	Wait(10);
	CreateColorEX("�}�ݱ����\��", 999, "#000000");
	Fade("�}�ݱ����\��", 0, 600, null, true);
	CreateTextureSP("�}������", 1000, Center, Middle, "cg/st/3d����Ů��ρ_����.png");
	CreateTextureSP("�}������", 1000, Center, Middle, "cg/st/3d����֩��_���.png");
	Rotate("�}������", 0, @0, @180, @0, null,true);
	Move("�}������", 0, @300, @50, null, false);
	Move("�}������", 0, @-280, @50, null, false);
	FadeDelete("�}��д", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��һ���ǰ���Ů���ϡ�
��һ�������֩�롣

�����߶�ò�����棬ȴ�����������޷�����ľ޴�
����̬��С�������ࡣ

������Ϊ������
������֮��������ĸ�����

�����ǽ��С�
���Ҳ����ִ�ս����������������

�����Ƕ���ʦ�׳�ȫ������������ܵ�����ɵġ���
������С�

��������������ʱ������Ҳ����ˣ�ӵ�н��н�Ϊ��ʿ
�׼�����Ȩ��
�����Զ����򲻾��������ֽײ��Ǩ��ʼ���ز�������
���в������ഫ��������Ϊ���ء�

���Զ����Ƿ���ʷ�ӡ��а�֮گ���������ڴ˵ص���
�塣
���˽�����һ������<RUBY text="����">Ӧ��</RUBY>֮ʹ����

������������������Ҳ�����˽⡣�������Ǿ����ɽ����
��֮�
��������֮��ͻ����ף�������ɢ����������������̬��
����Ų���֮�С�

��ǧ�����ﲻ������������
������˭�˼���֮�󣬶��ض϶�Ӧ����������ӡ�ڴˡ�

��Ի���������
��Ի�����Դ��
��
�������Զ�һ����߽��ɡ�

����˵Ѫ������һ���ҳ���δմȾ��װ��ﭹ���������
����������η�塭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д",2000);
	Delete("�}��*");
	FadeDelete("�}��д", 300, true);

	SetFwL("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0140010b46">
������������

{	FwL("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0140020a00">
����������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ĸ��¶�ۼ�����ɫ�����������ǹ�����һ�������
ʵ��
����ĸ���Ź���ǿվ�����������������еķ���

���̶̼����ľ��룬�����ڵĹ���˵ȴ��Ϊ�Ͽ�����ʱ
���������Σ�����
����������ʱ������

���������񣬽�ע���������ڹ�ı�Ӱ�ϡ�
����֪�Ƿ�Ϊ�˱��ն����е��ֽŸ����ɹ����֣��ⱻ
��ĸ�뱧�ţ�������Ѻ�ȴ��һ��һ������ǰ���š�

���������������ϰ���Զ����������˵Ĵߴ����ƺ�Ҳ
���ǲ��ܹ���ǿ�����ġ�
����Ů���ż̳���ǰ��ʵ����Щ������ͳ����������
������һ����

�������Ų���ҡҡ�λεغò����ײ��ߵ�����ǰ��
����ʱ������������˰��ĵķ�Χ�����³��������ˣ�
�����˶����˿�����

�����ˣ���������Ҫ�ġ����ա�����������
��������Ϊ�ƹܴն��������Ů����֮�£�
ȷ�Ѹ�֪����Ϊ���������������С�

����Ҷ����˿���Ҳ����Ȼ��
��
��������������ȴ�п���Ū�ɳ�׾��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������󡣽���򴲤���Ȥ���
	CreateSE("SE01","se�ճ�_���������");
	MusicStart("SE01",0,800,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��ͻȻ��������������ڳ������˶���������������
���ⲻ�������������ϡ������ϵı仯���ˡ�ʵ���ϲ�
û�����Ƿȱ���������ˡ�

��ȡ����֮���ǣ�����ȫ��������һ����
���ڳ���һλ�����Ȼ�����߽űߡ�

��������һ����������
����̫�����Ρ���֪Ϊ�Σ�����������

������ŭ���ɶ��ص�������
����λ���߾���ʧ���ʰ���Σ����뻳�С�

���������˶��ѡ�
��
����ʱ�����⣬��ֹ��Щ΢�������С�¡�

�������ۿ�����<RUBY text="����">�Ǹ�</RUBY>��
������ȴ��֪Ϊ�λ���ˡ�

��������Ϊ�������ŵ�����<RUBY text="��������">�������</RUBY>���ء�
  ���Ƿ��Ź����ĸ�ܾ���ͷ��ȥ֮ʱ��
<RUBY text="������������">���±������</RUBY>���ء�

��ԭί������
��Ȼ������ʵȴ�ǡ���

�����ָ�������˰���֮�ϡ�
�����������ڼ���֮ʱҲ�Ͻ������ģ��Ǹ����С�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma05/0140030a00">
��������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��һ��ʼ��������һ������ƺ�ֻ���ҡ�
��������������ҵ����������������˵�ע�⡣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�y_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0140040b46">
��������

{	FwL("cg/fw/fw����_�@��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0140050b52">
������!!��

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ĸ�ͱ���˳���ҵ����ߣ���������һĻ����
��ͬʱ�����·�Ũ��ѹ���š����������������
�������ı�����

����ĸ����������ַŻ�ԭλ��
���������˿���֮ǰ����������һ������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0140060b46">
������������

{	FwL("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0140070b52">
������������

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0140080a00">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����˷�Ӧ��Ȼ��
��Ŀ�⽻����̺��Ÿ��Ե��뷨��

����ӹ���ɣ�������ǿ�ҵĵ������Ұ������ƻ����ķ�
ŭĿ�⡣
��������ʵ��������ĸ��

���͵�ʲô��û������
��
��������������

�����������֮�⣬�������б�İ취��
�������ű��ҵ�ҧ���гݣ��ҿ�Ц�����˿�����

������������˲�佣�پ޴󻯻��ǿ�ʼ����������ۣ�
Ȼ����δ����������̬����ë���Ҳû���á�
�����£���֮������Բ��������

��������ر��ҳ�������˵���Լ���Ҳ���������˰ɡ�
�������Ž��ع���ڵ�һλ���������������룬�Ҹе�ͬ
�顣��Ȼ�Ҿ��ñ���ͬ����Ҳ���Ὺ�ġ�

�����ٱ��뱣֤��֮�����ʽƽ�����С�
���뵽������ҽ�ע����ת�ع����ϡ�

������������һɲ�ǡ�
��<RUBY text="����������">��������</RUBY>�����ˡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣ�
//������Ҫ�Ϲ�����夬�����˻؏ͤ���Τ������ɤ���������������
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se�M��_냇��_���؏�");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, false);

	SetFwL("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0140090a00">
����������ʲô������

{	FwL("cg/fw/fw����_�@��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0140100b52">
��Ŷ!?��

{	FwL("cg/fw/fw�y_�@��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0140110b46">
������
����������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
//��������������
//�������SE��Ҫ�������`��Ȥ��ե��`��Ȥ��ʤ󤫸����Ƕ��ˤĤ��Ӑ��Ф�����
	CreateSE("SE01","se����_냇��_���Q01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateColorEXadd("�}��", 10000, "#FFFFFF");
	Fade("�}��", 200, 1000, Axl3, true);
	WaitKey(2000);
	WaitPlay("@mbgm*", null);
	PrintGO("�ϱ���", 25000);
	CreateColorSPadd("�}��", 10000, "#FFFFFF");
	CreateColorSP("�}�׵�", 100, "#FFFFFF");
	StL(1000, @0, @0,"cg/st/st��������_ͨ��_˽��.png");
	Fade("@StL*", 0, 600, null, true);
	Delete("�ϱ���");
	FadeDelete("�}��", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140120a15">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
�����ǲ���˼�顣
��û�뵽����������֮�У�����<RUBY text="������">������</RUBY>��

�����ˡ�
�����Ǻ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140130a15">
���������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("@StL*", 500, 0, null, true);
//��Ů��ρ��������͸����
	CreateTextureEX("�}����100", 100, -273, -117, "cg/st/3d����Ů��ρ_ɿ��.png");
	Fade("�}����100", 1000, 500, null, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

	#voice_on_��������=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140140a15">
������Ի������
���˽�����Ҳ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��Ŷ����
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140150a15">
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140160a15">
����Ȼ��
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������
���Ǳ����ˡ���ֹ�����������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140170a15">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140180a15">
����Ҳ��
����Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
������������֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140190a15">
��������Ҳ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����ô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140200a15">
�����ֹս֮���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
��Ŷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140210a15">
�������׷���
������ɱ������

//������������
<voice name="��������" class="��������" src="voice/ma05/0140220a15">
����ν�䣬��Ϊ����֮������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��ԭ����ˡ�
�����ǣ�ĸ�׺͸��������˵�ġ�

��ֹ��Ϊ�䡣
��ƽϢ������������ƽ�������������������˵�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140230a15">
������������������
�����𡣡�

//������������
<voice name="��������" class="��������" src="voice/ma05/0140240a15">
��������Ȼ�������ѽ���֮������ȴ��
����������֮α�ƺ����𡣡�

//������������
<voice name="��������" class="��������" src="voice/ma05/0140250a15">
�������Իر�����֮��ս��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140260a15">
���������б�ɡ���
�������м���ɡ�����

//������������
<voice name="��������" class="��������" src="voice/ma05/0140270a15">
��������Ϊ������������ڡ�
����Ϊ�ᴩ�������������ڡ���

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/ma05/0140280a15">
��Ϊ�η���������
��Ϊ���������Σ���

{	FwC("cg/fw/fw��������_߳��.png");}
//������������
<voice name="��������" class="��������" src="voice/ma05/0140290a15">
������֮����
����ƽ֮�������˻����ӣ���

//������������
<voice name="��������" class="��������" src="voice/ma05/0140300a15">
��Ϊ�Σ�����ʵ����α��!?��

//������������
<voice name="��������" class="��������" src="voice/ma05/0140310a15">
���������У�
��Ψһ֮��ʵ�ڴˣ���

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/ma05/0140320a15">
����˷���ֻΪ����
��<RUBY text="����">ɱ��</RUBY>!!��

//������������
<voice name="��������" class="��������" src="voice/ma05/0140330a15">
���������;��
���������ã���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����������

����
���⻰�������ܺö���

�����������ˡ�ɱ��֮�
��û����ӹ���ɡ�

��ʵ������Ҳ��˼������⡣
��Ϊʲô��������<RUBY text="��������">���ֶ���</RUBY>������ȴ������º�ƽ�ء�

���ǻ�����д�С�Ϊ��ȫ��������ĺ�ƽ���Ĵ��죬�ҵ�
����⡭��
�����������������ͷ�ԡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140340a15">
�������������˽���Ť����
����ʵ֮�䣬���������ʡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
���š�
�����ǣ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140350a15">
�����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
����ĸ��˵��������׷���ƽ��
����ô������˵���䣬����Ŀ����ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140360a15">
������������

//������������
<voice name="��������" class="��������" src="voice/ma05/0140370a15">
�������˷�����֮������

//������������
<voice name="��������" class="��������" src="voice/ma05/0140380a15">
����ɱ���������׷���
���Ƽ���Ϊ�ƣ�����Ϊ��Ȼ�����ƶ����
���ǵ�һ�������˽��ż�֮�ƣ�������֮�񡣡�

//������������
<voice name="��������" class="��������" src="voice/ma05/0140390a15">
���ʴˡ�
����֮һɱ��һ��һ����𡣡�

//������������
<voice name="��������" class="��������" src="voice/ma05/0140400a15">
�������
������ơ�
����Ƕ񡣡�

//������������
<voice name="��������" class="��������" src="voice/ma05/0140410a15">
��<RUBY text="��������">��Ϊɱ¾</RUBY>֮ɱ������

//������������
<voice name="��������" class="��������" src="voice/ma05/0140420a15">
������ɱ��֮�ս�����������
��ǿ����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
���価ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140430a15">
��������

//������������
<voice name="��������" class="��������" src="voice/ma05/0140440a15">
�����������
������������
�������ݽߡ���

//������������
<voice name="��������" class="��������" src="voice/ma05/0140450a15">
����Ψһ��ǿ֮�˴���

//������������
<voice name="��������" class="��������" src="voice/ma05/0140460a15">
��������֮Ŀ�ģ������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
��Ŷ����
��Ŷ��

���ǣ���������Ǻ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140470a15">
���޴�֪����
���������񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
��������ô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140480a15">
����Ǿ�֮Ϊ��
��Ȼ�������硢������֮�۷��ߣ�Ψ�г���Ϊ
�񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
������

����������

����������<RUBY text="����������">������һ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140490a15">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
������
������

��������!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140500a15">
������Ϊ�ζ�Ц����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140510a15">
�����ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
��������
����Ϊ��ָ����·��

�����ڣ�ָ���˹�Ӧ��֮·!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140520a15">
���������⣿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
���ұ������˸��ס�
���ӳ���֮ʱ�𣬾ͱ������ˡ�

�������ء�
������ȴ������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140530a15">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
������������ĸ�׵ġ�
��Ů���޷����ߡ�

������Ϊ�����ߵ�һ����
��ȴ�����������ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140540a15">
������ԭ����ˡ�
����˲������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
���ǡ�
�����޷�ʵ�ִ������壬��ֻ�ܳ����ڴˡ�

��������
��
���䣡

����֮������
��ȥα������䣡

�������յ��ǵǼ�Ϊ�񡭡�
����ͻ���·���ߣ�

����Ϊ���ɣ�
���˵��·�������Ч��

�����������ƻ���ɡ�
������֮�籩���ջ������������磬�˵��·��ؽ�����
���ڡ�

���䣡
�������

��̤������·�ɡ�
�������������������ɡ�

��Ϊ�˶�ظ���!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140550a15">
������������

{	FwC("cg/fw/fw��������_����.png");}
//������������
<voice name="��������" class="��������" src="voice/ma05/0140560a15">
����Ϊ���ˡ���

//������������
<voice name="��������" class="��������" src="voice/ma05/0140570a15">
���䲻֪Ե�ɣ�����������
���������������ǡ�
�����в�ϧ��������֮��־��
����޳��֮����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
������
�����������ܵõ����ס�

�����׵����ı������·���������
���������������������壬Ҳ�޷��õ������ġ�

�����������ڹ⡣
�������������塣

���������ԡ�
��Ҫ�ٵ����·���

��Ȼ�󣬹��Ϊ�񡪡�
��<RUBY text="������">�Ϸ���</RUBY>��ظ��ף�

��������
�����һ�������׾ͻ���ͬ�⣡

���ͻ������ص����Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140580a15">
����������
�������ѽ�������֮�ս�Ψ�л��𡣡�

//������������
<voice name="��������" class="��������" src="voice/ma05/0140590a15">
��������䣬����ƾ��֮����ȡ����������
��������ؽ���ɥ���¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
��ʲô����
������ˣ�����Ҳ��Ϊ������ˡ�

����Ϊ��ӵ�����Եȵ����������ˡ�
�����һ�������ǻ�����У�������Զ��һ���ˡ�
  
</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//������������
<voice name="��������" class="��������" src="voice/ma05/0140600a15">
��������

//������������
<voice name="��������" class="��������" src="voice/ma05/0140610a15">
������������

{	FwC("cg/fw/fw��������_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/ma05/0140620a15">
������Ҳ�ա�
���׻�֮�ˡ���

//������������
<voice name="��������" class="��������" src="voice/ma05/0140630a15">
�����оȳ�����������Ϊ���á�
���ٽ���Ϊ��֮������ʾ�䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
��ŵ!!

����������û��������������
������������

��ԭ��Ϊ������û��Կ�ס���

�������ϣ��ǲ���������Ը��ĸ�׵��֡�
�������ϣ��ǲ���������Ը�������֡�

����������Ĵ��ڡ�
������ȫ���綼��˵���������

����Ϊ���޷�������
�������������붼û�����ᷴ����

������������ˡ�
��ֻҪӵ���䣬���ܵ߸�����ѹ�ȡ�

��ֻҪ��ǿ��<RUBY text="��������">��Ⱥ�һ�</RUBY>��
���ܽ����������׷��飬�԰�!?

�������������������ҷ�Ϊ��

���⡪��
�����ܶ�ظ���!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��`�󡣤ʤ󤫱��ѣ�
	CreateSE("SE01","se���L_�Ɖ�_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 600, 600, null, true);
	WaitKey(2000);


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_015.nss"