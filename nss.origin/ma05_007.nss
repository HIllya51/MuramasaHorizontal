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

scene ma05_007.nss_MAIN
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
	#ev133_����������_a=true;
	#ev005_�ؤ���줿��=true;
	#ev006_�����ο���=true;

//��������ݳ��������ζ����Ϥ����Ǥϵ��h���⤷�Ƥ����ޤ���������`�Ȥ����ǵ��h��


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_008.nss";

}

scene ma05_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_006.nss"

//�������ҡ�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg052_�����ҵ���_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����Ұ������ս����Ϊ���߶�����������
����ǰ�ڽԶ���������������Ϊ���ߵ�ʱ������˵���
ս�����뽣��һͬ������ȥ�ġ�

��Ȼ��������������ʿ����ͬʱ���Զ��ҽ��������Ҳ
һ�������ˣ�֮�����ɴն��ҵ����ˡ�����Ů�ķ���
�����޷���Ϊ��Ů���������á����̳еķ��ס�

������֮�������ּ�����Ȼ��ʹ�ý��е��ﺽս������
�����߻����Ŀ���ս����ɡ�

��������ˣ�Ҳ<RUBY text="��������">��������</RUBY>��������

���ڼ�Ұ�����Ļ����׶���Ӿ�������������п��׵���
�����ɱ�
������Щȫ��ѧ��֮�󣬲��ܻ�������ۺ�����Ϊ����
�Ľ��в����ؾ��Ĵ��ڡ�

��˵������ı��أ�����˵���в���������ġ�
���ݹ�����ս������ȫ�֣������ձ����ƣ�����������
������Ϊ��Ұ������Ϊ��Ϊ֪�������ɲ���ˣ��似��
������ʮ����ͳ�ġ�

��֮���Ի��γ���������������Ϊʹ�ý��е�ս��ѵ��
�쳣���ѡ��������������������ڣ����ߵļ���ѵ����
��Ϊ���ӵĳ�ʶ��Ȼ������ǰ��һ��ֻ��һ�����в���Ѱ
���ġ��������ԭ�����ڡ�

�������ְ��ֵؽ̵������������뻯�Ľ�����̬�ڵ�ʱ
ʮ�ֺ�����
����Ҳ����ζ�ţ��о���֮�˶��޾���֮�˵�ֱ��ʵ��
�����Ѿ��޷�ʩ�С�

�����������ļ�������������������������ġ��̻��
ѧ�߼�ʻΨһӵ�е�С����������������Ҵ�С��ֻ��
����һ�˵Ļ���������Ҫ���Ѷ��ٹ����أ�


��Ȼ�����������������ɵĹ�ȥ��¼���ᷢ���������
��δ���ص��Ǹ��ز���

����Ȼ������������û�й�ʧ�ܡ�
����Ȼ��ȫѧ���˻���������װ���Ͻ��У������ط���
���޷����������ջ��ò������ڼ��ա������������ƺ�
Ҳ�Ǵ��ڵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������������ʮ�ֺ�����

��������ջ������ˣ���ʹ��δ��ʹ�ý��е�
������������ʵ��ָ��������Ҳû�������
���������ڿ���ս���Ľ��в��ݼ�����

��Ҳ����˵�������γ̵���ɶ��Ƿǳ��ߵġ�

��������ѵ����ѧϰ���������嶯����
����Ӿ����ѧϰ�ռ����ƽ����˶���
���ڿ��׵�����ѧϰװ��״̬��ս����ʽ��

��Ȼ���ۺ���һ�У���ˮ��װ��ս��ѵ������ȫ���յ�
�ˣ��õ����з���߿�Ҳ����ʲô�޴����ֵ����ˡ�
�����������ٶ��ϵĲ�࣬���ڸо��ϼ���������ͬ�ġ�

����������������
��
���ǵģ�����ͨ���뷨������ôһ���¡�

����Ȼ�Ҳ�û�д��Ͻ��еľ��飬��ݹ�Ϊ��֪������
��ʶ�����ж�ӽ���ʵ�������ж����ף��Ҷ�û������
ȥ���ۡ�
���ҵ�һ�����������ɡ�

��ԭ���ն��ҾͲ������߼��壬���н��С�ʹ�ý��ж�
���ڷ����ϵġ�
����ȻҲ�޷�����ʵս���顣

����Ұ�����ļ̳�����ѧ����������������Ϊ��
ʽ���뽣�е�ʹ�ã�Ȼ��������ܴ��ڣ��ʹ˽�����
���ⱻ��֮Ϊ���ߵ�������������Щ�����˰ɡ�������
�����������������������á�

���Ҵ��ĺ�ս�񷨣���Ϊ����������Ҳ�����˲�ʹ�ý�
�е���������<k>�������ڵ��Ҷ��ԣ�������ľ�����
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤����Ē줱һ�W
	CreateSE("SE01","se���L_����_�����02");
	SL_leftdown(@0, @0,1000);

	MusicStart("SE01",0,1000,0,900,null,false);
	SL_leftdownfade2(0);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����ʮ�����صĳ�ľ�������Ҽ磬���Ҽ������·���һ
��������ն��ȥ��
��˫�Ŷ���ԭ�أ���˿�����أ���ն��

���ջص�������һ�Ρ�
����ղ�һ������б�翳�����ƻӵ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤����Ē줱һ�W
	CreateSE("SE01","se���L_����_�����02");
	SL_leftdown(@0, @0,1000);

	MusicStart("SE01",0,1000,0,900,null,false);
	SL_leftdownfade2(0);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������Ļӿ����ơ�
�����Ǽ�����̫�������У�����λ�����϶Σ��ٵ�������
���¿��������������ġ�

����ʹ���񵶵ľ�������������˵�Դ�Ϊ�������޼׽�
���У�˵���϶ε����ƣ������ָ�ѽ��߸߾ٹ�ͷ����

��Ȼ���������ߵĽ����У��Ҽ�ܵ������϶ε����ơ�

������ʮ�ּ򵥣���Ϊ�ٵ������Ļ���ͷ�����������
����
����ע���ֱۻ᲻�ᱻͷ�������߰ڳ����϶����ƣ���
����ζ��޷�������Ϊ��������װ��֮����

��˫�Ų����ȥ���������������е����������ġ�

������š���Ҳ�����ƶ��������ĵĻ������е�������
������ǿ���Ⲣû�д���

��Ȼ����������ڵ��ϡ�
���ڿ��У��ƶ��������ĵ��������Ǵ��ƽ����Ķ�����
���׵ľ��ܶȣ��������ø߶�������ɵĸ��ٷ����в�
���ġ���û���㼼������֮�ء�

������Ӧ���ڵ�������ģ����ڿ���ս��Ҳ�����õ���
���������Ǳ������ϰ����ĵ����ˡ�

����ˣ��ջӾͱ����������ʽ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤����Ē줱һ�W
	CreateSE("SE01","se���L_����_�����02");
	SL_leftdown(@0, @0,1000);

	MusicStart("SE01",0,1000,0,900,null,false);
	SL_leftdownfade2(0);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��������ͬʱ��������������ͬʱ����ȥ��
���ϰ����ļ�������ͬ�����������𵶵�ʱ�����ز�
��ǰ��ͦ��һ�����ͣ����µ���ʱ�����ز�������
��һ��������

����˵����Ҳ������������е�̫�����������е���ϰ��
��Ȼ�����ڵ���ս�У����Ƿ�Ҳ���������ء���δ����
�ˡ�

���޼׽����ĸ��־���˵�Բ���̫�����ԣ������ǲ���
Ҫ�ģ�����Цʹ�����������ߵ�����
����ʵ�ϣ����������װ��ս�����⻯�Ľ������侫��
�̶������ߵ�̫���������޷�����ġ�

���ڿ��б�����Ϊ������˫�����ߣ��ڵ��ϲ���������
���ϵĽ������ֶԾ�ʱ����ֱ��ľ׮�Ƶ�һ���Ӿͱ���
���ˡ�����һ��������кܶࡣ
��Ȼ������˵����Ҳ�����Ǹ���������¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֤����Ē줱һ�W������äȏ���
	CreateSE("SE01","se���L_����_�����02");
	SL_leftdown(@0, @0,1500);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdownfade2(0);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����Σ��ڿ���Ų���ͬʱ���ӵ���
���������ر��ļ�����������֮�����ƶ�������������

����ľ����ǰ�������Ӵ�ǰ��һ˲�������ֲ��ڲ࣬
ֹͣ�˵������ݷ���֮���ƿ�ľ������
��ƾ��ղŵĴ�����ȣ���ʹ�Է��ֳ���ͬ����������
������������һ����Ҳһ���ܻ����Է����ơ�

����һֽ֮��ʱ��ס������رܿ����������ˡ�����
�ָ��ֵľ������������˶��Ծ���ˮ��֮�¾���֮
��������������˵˵���ܼ������ġ�
�����������һ��Ķ��ֽ���ʱ������������������ɡ�

������֮������˵�����Ƿ���������Ȼ����ν��������
������<RUBY text="����">ǿ��</RUBY>�����⣬�����׶����������á�
���޼׽�������ʽʮ�ָ��ӡ����ܴﵽ�۷�����޵еģ�
Ȼ����ʮ�����ѣ����Ҳ���ʵ�������޷����ӳ����ġ�

����Ϊһ�ֵ���������˵����<RUBY text="������">������</RUBY>���в�����޲��ɡ�

���޷��򵥵رȽϳ����ӡ�

�����ң���ʹ���ߵ���û���޼׽�����ô���Ӿ��ɣ���
��Ҳ��������ʽ��
����Щ��ʽ�ڵ���ս��Ҳ�ܹ�Ӧ�á�

������֮����һ��ʧȥ<RUBY text="���">����</RUBY>���Ϊ���󡪡����������
�ߵ��˾���������ߵ����䣬���Ҳ�����Ϊ������ȷ��
˵����

������Ҳ����ֻ�������Լ���ƫ̻��
����ʵ�ϣ��������ߵ����������ߵ������޶�����壬
Ҳ�������޼׽�����ȽϺ��ʣ���Ҫ�Լ�������һ���
�������в��ʡ�

��ʱ���޷�������������ѡ��Ҳ�޷��ı䣬��Ȼ�ܹ���
�䣬�̳дն��ҵļҴ����������ұ���е������Σ���
����������ζ��޷�������


�����ֻ�м�Ұ�����������ܱ�����������֮���Ļ���
�Ҳ������Լ��������Ǻ�������ġ�
��������Ϊ�������ϵĽ���Ҳ�á�

����������Ȼ����
����ʹ�ų��Ҹ��˵ĸ��飬����ʣ�µ����⡣


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������֮������<RUBY text="��������">�д�һ��</RUBY>�Ļ��ᵽ��δ�ȥ����
�������˽�ġ�

����ȥ��ˮ�����������ĳ�����䡣
����������һ��ռ��ССϯλ�����ס�

�����ص����ף�������ġ�
������<RUBY text="��������������">��������������</RUBY>��

����һ��ǰ��ʼ�������ˡ�
������һ���У�����̫����æ�������ж���ʦ�޸��Ŀ�
�ж�û�С�

������һ��ǰ��
���ǵģ����Ǹ�ʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",500,1000,null,true);

	CreateTextureSP("�}�ţ�", 3100, Center, Middle, "cg/ev/ev133_����������_a.jpg");
	WaitPlay("@mbgm*", null);

	CreateEffect("���ե����ȣ�", 200, 0, 0, 1025, 576, "Sepia");

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");

	FadeDelete("���ե����ȣ�", 500, true);

	SetFwC("cg/fw/fw������ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/ma05/0070010a14">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ʹ�ӱ��󿴣�����վ����Ȼ������
����������������򾲣����μ�߸�ǿ����������ȫ��
����һ��һ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/ma05/0070020a00">
�����к�������ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������У���Ȼ���ϡ����������ڴ�����ͻȻ������
Ҳ����������ؽ��ҷ���ס�ɡ�
���ӹ⿪ʼ���ż�Ұ�����Ŷ̶����ꡭ��Ȼ��������ʵ
��ȴ���������֮�ϡ�

�������������ʼ���������İɡ�
��һ��ʼ������Ҫ���м�Ұ����ʱ�����Ҿ���Υ������
Ϊ�ɲ����������С���Ȼ������ȴ��ʼ<RUBY text="����">����</RUBY>����͵ʦ��


��<RUBY text="������">���պ�</RUBY>��˵Ҫ���ҽ�����Ȼ�������ҡ�
���ҵ�ƽӹҲ��ԭ��֮һ��Ȼ���������Ҳ���ò�����
�����츳������


��Ȼ����һ��ʵ����ն�������ʽǿ�л���˱��ҵ�
�Ͽɣ���ʽ�ؿ�ʼ�����Ź������ꡣ
������ʷ��ǰ�����ٶȣ������˿�Ҫ�õ��ؾ����ڵľ�
�硣

����ʵ�ϣ��Ҽ���û�н̹���ʲô������
��͵ʦ�������죬�������������е����ӱ㳬Խ�Ҽ���
�Ĺ⣬���ĳɳ����ν�Ǿ�һ�������ٶȾ��ˡ�


��Ҳ����Ϊ��������Թ⣬��û����Ϊʦ������ʶ��
��һ�뵽��������������������ҵ�����Ҳʮ�ָ��ӡ�
������ѻ�������ˣ���֮Ϊ���ż��ȥ��ѻ�Ѽ�ʳ��
�Ƚ�ǡ���ɡ�

����ȻΪ���е��Ժ�������ݸ��鲢������Ϊ�Լ��Ƕ�
ͽ�̵ܽ��з���ʦ����������Ϊ�Լ��Ǹ�ӵ���������
�ĸ�硣
��������ŵĵ������Ҳ���Ϊ�Լ�����ʲô����

���������������ֻ����һ�У�����Ϊʦ������̵�
���ӵġ�
���Ⲣ���Ǽ��ɣ����������ķ���

����ı�Ӱģ��������

��˲��粽��
���ӵ���ն����

�������Ǹ��е�ս��̫����
��Ŀ�������Ƶ�ͷ����

��
����������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`�󡣏�����Ƥޤ���
	CreateSE("SE01","se���L_����_���nͻ02");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateColorSP("�}��", 8500, "#FFFFFF");
	Wait(10);
	Delete("�}�ţ�*");
	FadeDelete("�}��", 600, true);

	SetFwC("cg/fw/fw������ǰ_���i.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���⡿
<voice name="��" class="��" src="voice/ma05/0070030a14">
����������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070040a00">
��Ư������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm27",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������ѿڶ�����
�������޿����޵�һ����

��Ȼ�������ò���ȷ�ϣ��Ƿ·������Ӱ������˵����
һ�С�
��
��ʧ���ˡ�ͷ����û�б�������

�����ߵ�������ԣ����˰�̫��������
���������������ִ������������Ρ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0070050a00">
�������һ���Ϊ�ֻᱻ�۶ϵ��ɡ�
����������֮������ȴ�ǰѺõ���˵����
��ʵ�������ĵ������ġ���

{	FwC("cg/fw/fw������ǰ_���i.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070060a14">
�������ǰ������Ǻõġ�
������ģ��ǹ�ļ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����������ĵ׸е��ź���ҧ�������ء�
��������ˣ��յ����ַ���Ȼ�������ң������������
����������ƽʱ������һЩ��Ҳ������Ϊ������Щ����
��ס���ĵķ���֮��ɡ�

�����κ�ˮ���䷢�ң�׹����������أ��ʪһƬ��
�����ŵ���һ�У��þ�������������ɡ�

���ջ�ǧ������Ҫ�����ģ�����ֻҪ�õ�������˭����
������
��Ȼ������һǧ�ε�������һ�����Ĵ������������û
�в��ܵ�������������Ϊ��

������ɫ�԰ף��������ҡ�
�����ٴ�Ϊ�����ܵ���ɲ����̾��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma05/0070070a00">
����������ǳ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
���Ҳ�����������
�������û�����������ӡ�ƣ���е����ƺ����Լ�����
�����ҵ�������һ�㡣

�����߷ߺ޵ض�������õ���������Ŀ����ϡ�

����Ȼ��ͷ���Ķ��������Щ΢���ƻ��������̶ֳ���
�޷���ο��İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ǰ_���i.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���⡿
<voice name="��" class="��" src="voice/ma05/0070080a14">
����������������

//���⡿
<voice name="��" class="��" src="voice/ma05/0070090a14">
����������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070100a00">
��������

{	FwC("cg/fw/fw������ǰ_���i.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070110a14">
��������<RUBY text="����">����</RUBY>��������ô��ʱ�䣬
��Ȼ������˲�����Ŀ����
����������������׶�����Щʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���ⱥ�������ص������
�������ƺ���˵����Ҫ�и��ĳ嶯��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���⡿
<voice name="��" class="��" src="voice/ma05/0070120a14">
�������������ң�̫���Դ��ˡ�
����Ǹ����������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070130a00">
����û��Ҫ��Ǹ��
����Ҳ����һ���������������ͷ��
�������Ե�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070140a00">
���Ǹ�ʱ��ն�ϵĵ�һ���м����ء���
�Ҷ�����ȥ�������ء���

{	FwC("cg/fw/fw������ǰ_���i.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070150a14">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�����뿪����Ц���ɹⲢû������ȥ��
������ͷ��˼�š�����������������Ϊ�ҵ���Ц̫��׾
�Ӱɡ����ڵĹ⣬��û�������Ĵ��ݡ�

���Ҹе��ؿڷ��ۡ�
������������һ�ŵĹ�أ���˵���ǲ��ò���ѭ�ĳ���
��������ʵ����������ƭ����һ���Ķ�����

�����ж���Ǹ�ϣ����ü�Ұ��������֮�ˣ����õ�
����������
�����������ߺ��ĸֵ���Ҫ���������øֵ�����ͷ��
<RUBY text="��������">һ��Ϊ��</RUBY>��

��Ȼ������������ǲ������������¡�
����Ϊͷ������<RUBY text="��������������">�����ܱ�ն�ϵ�</RUBY>��

����ȥ�����������������ս������һ�񼼡�
������֮���м����˳ɹ��ˡ�

��Ȼ������ʹ����Щ�ˣ�Ҳ�����ǽ�ͷ��һ��Ϊ���ġ�
������˵����������������ӣ��Yԭ��������ǰ���
Ҳֻ�ɹ���ͷ�����ֱ���������˺ۡ�

������ԭ��������ˡ�
��ֻҪ�е����̶ֳȾ��㹻�ˣ����Ը�����֮�������
���˺�����ʹ�Խ�ʥ����ļ���Ҳ�޷������������
�˺ۡ�

��һ��Ϊ����û�б�Ҫ�ģ������������ܹ���ɵ���Ϊ��
���������ҡ��Yԭ�������Ƕ���ʱͨ������һ��Ŀ���
�����Ե��ģ�����֮��Եģ���Ұ�������ؼ�����ʹ��
����<RUBY text="��������">��������</RUBY>����

���Ǵ�ǰ�Զ����峤֮���｣�еĲк���
����Ȼ��Ϊ�����Ѿ������ˣ�ʧȥ��ǿ�������������
װ�׵ļ�Ӳ������Ȼ���䡣��ʹ����ս�������������
��һ�����ۡ�

������֮���ǲ������õ�������ն�ϵġ�
�������ܡ�

��<RUBY text="������">������</RUBY>�ġ�
����������������ʵ�ǲ�����һ����������ɵ�����


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma05/0070160a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����̿��⣬�ҽ�����Ʈ�����ȡ�
�����ͣ���ڽ��ٵ�֦���ϡ�ʱ��ʱ����ӳ�򡪡���
����ң����������ô��Ҳ�����ǵ�������Ϊ���ѡ�


�������������������˵һ��Ϊ�����Ǻõġ�
�����շ����������Լ��ļ��ޡ���������������յ㡣


����Ұ���������е������׷��ģ������ǳ��˵�������

���������������Լ����ǳ��ˣ����۽�����տ���εȵ�
����ֻ�����Ǹ����˶��ѡ�

���ϸ�����������ǳɹ������Ƿ�����

�������������������
��
���������������⣬����Ϊ�˸�������Ҹ档

�����������Ҳ���Ϊ���Ǵ���ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ǰ_���i.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���⡿
<voice name="��" class="��" src="voice/ma05/0070170a14">
��������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070180a00">
���⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����Ź��˼�������Ҳ��˵©���졣

����Ȼ�����������ఴ���ɵĹ���ǲ�����˵��ȥ�ġ�


�������ӵ�����˼ά���ˣ������Ϳ����䱾��֪��
��ȷ���ˡ�
��Ȼ���������۵ĹⲢ�����������뷨������Һ������


��������˵����Խ���в��ܵ���Խ�����������������
���ۡ�
����Թ���˵�������ѹذɡ�˵����Ц���������˵
��ʮ��������������������

����˵�Գֽ��ߵ��������Ҹ��ǲ��ɻ�ȱ�ģ���������
����������֮�ԣ��������Ҿ����Լ�ʵ���ǳ���ص���
�ˡ�
����������Ӧ�ÿ�Ҫ�����ˡ�

�����Ѿ������Լ����ڽ�������ʼ�˽��Լ��ļ��ޡ�
��Ҳ����Ϊ����̵��Ը񻹻���ʱ���ѵ�ʱ�䣬������
һ����һ��������������ʦ��׷���ǫѷ֮�顣

���������Լ����õ�������
����һ��Ҳ�����ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/ma05/0070190a00">
����Ҫ��̫���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�������Ź�ļ�򣬴�����ͼ����������˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma05/0070200a00">
������������ƿ��ʱ�������ȷ���������
ת��һ���ӽǿ�����
����Ҫ��ţ�Ǽ���϶�<RUBY text="��������������">�������������</RUBY>����

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070210a14">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
���Ҵ���ί�����ʾ�⣬����ķ�Ӧȴʮ�ֳٶۡ��ҵ�
��ͼһ��û�д�������ɡ�
���������ﵽ�Ļ�����Υ���涨�ˡ����ֽ������ѵľ�
�������˽��겻�ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma05/0070220a00">
�����������Ļ���˵��������ֻ�м�Ӳ����
��ֻ�е���Ӳ�ĵ����°�������������о������
����ɸ��Ტ��<RUBY text="��������">�����۶�</RUBY>�ĺõ�����

//��������
<voice name="����" class="����" src="voice/ma05/0070230a00">
����ǰ���ӳ���������ʱ�����
�������ġ�
��������������˵�����Ǹ����
���ԡ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070240a14">
�������𡭡���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070250a00">
���š�
�������⻹û������������

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070260a14">
���������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������ͬ��������û�в����κ���С�

��������һ�ʻ��޷������뵽�κζ����𡭡�����˵��
֪������ʲô���ء�
���������֣�����������ʹ�ġ�

����ĸ��ס�����ĸ���ɷ򡪡��ҵ������������ڲ���
�ڴն��ҡ�
����Ȱ��������ϵĺ��壬Ҳ���������ϵĺ��塣


���ڹ⵮���󲻾ã�������ּ�����������������
��һ��Ӵն��ҵĻ��������롣

�����ڻָ����գ������־��ι�ְ��

���Ա��Ҷ��ԣ�ֻҪ�ն��ҵ���Ů���˼̳��ˣ����ǰ�
���۵����˷������ߵ�����Ҳ����ʧ�ˡ�

�����Ǹ�����˵���ն��ҵ�����ֻ������������

�����ԣ���û�м������ĸ��ס�
����˵�ճ���ʱ�м�������������Ҳ����������ڼ���
�аɡ�

������������Һ�Ҳ����ǰȥ���ּ�����������ȴû��
�����Ļ��ᡣ
����Ϊ��Ϊ��Ů���������Ҫ�뿪������صĻ�������
�Ǿ��Բ����������ɫ�ġ�

����������Ҳ�����ᵽ��������
����æ��ԭ��֮һ���������и�ԭ�����ǣ��Բ���ӭ
�Լ����˵Ĺ���������Ͼ�˼���ӭ�Լ����ˡ�

��Ȼ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma05/0070270a00">
��������Ȼ�Ǹ��ˣ��Ѿ�����شն����ˡ�
������Ȼû��������Ұ����������������
�����ʱ��Ҳ�������ҵļ��ɡ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070280a14">
����������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070290a00">
�������õ��ؼ������ʸ�Ļ����ʹ���
���������������ǰ������ô˵����
���Ǹ�ʱ�򡭡���Ϊ�Ⲣ���ǻ���д��
���ܽ�����¡���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070300a00">
����������������Ұɡ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070310a14">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����������Ϊ��Ҫ��������˵���ڵġ�����һ��뵽
��һ�㣬�������ж��˻��
�����ּ��������ܻ�ѹ������������ͬ��

��������������ֻ��һ��Ҳ�á�����ֻ�ǲ����������
�뷨��֮�ڿڡ�
��Ȼ�����������������û�д̼���������ġ�


����Į�����ĵ��ƿ����ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw������ǰ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���⡿
<voice name="��" class="��" src="voice/ma05/0070320a14">
��������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070330a00">
���ţ���

{	FwC("cg/fw/fw������ǰ_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070340a14">
���⡭�����õ������𣿡�

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0070350a00">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
������ƽ������������Һ��Ѵ��������⡣
�������ص��˵�ͷ����������˼���š�

������������ɶ��������������ؼ��Ĵ����𡪡�Ҳ
�����ʵ���������˼��
��
������һ�����ʶ����һ�㣬�Ҽ���˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/ma05/0070360a00">
��һ��������ġ���

{	FwC("cg/fw/fw������ǰ_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0070370a14">
�����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}��ܞ", 18001, "#000000");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�����Ļش���ֹˮ��
����������ĺ�ˮ������̫����������ľ����


����ʼ�ջӡ�
�����������泩���Ʒ�֮�����н���ش�����䡣


�����Ѿ��ǣ�ƽʱ�Ĺ��ˡ�<k><?>
{//���֥�å�������
	SetVolume("@mbgm*", 2000, 0, null);
	Fade("�}��ܞ", 2000, 1000, null, false);}
��
��һ��ǰ���������������¡�
����֪Ϊ�Σ�����������ؼ���������¡�

��������ʱӦ�����ܵ�ǿ�����ģ�֮�󡪡����ٴ�
��ս����������£��ҵļ���ȴ��÷ǳ�ģ����
��Ҳ���������������������ġ���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
	Fade("�}��ܞ", 0, 1000, null, true);
	CreateSE("SE01","se���L_����_�����02");
	SL_down2(20000,@0, @0,1000);
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_downfade2(0);
//�����Щ`�󡣤֤ä��ؤä���
//���ؤ���줿�z��
	CreateSE("SE01b","se���L_����_���nͻ01");//���ߩ`ע��
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 1000, "#FFFFFF");
	Delete("�}��ܞ");
	CreateTextureSP("�}�ţ�", 500, Center, Middle, "cg/ev/ev005_�ؤ���줿��.jpg");
	FadeDelete("�}��", 1600, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
��<RUBY text="������">��һ��</RUBY>��
���⽫����ն���ˡ�

��Ȼ���ڵ���������ж���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��͎�
	EfRecoOut1(1000);
	Delete("�}�ţ�");
	EfRecoOut2(1000,true);

	Delete("@Face_Sepia");
	SetFwC("cg/fw/fw����_�^ȥ.png","normal");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma05/0070380a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����ʹ���������<RUBY text="����">����</RUBY>���������
�������Ժη��ء���

���������Բ�֪����

����š�
��ֻ��������������⡣

�����룬Ҳ������������
��Ȼ����

�������Ǳ���<RUBY text="������">������</RUBY>�ġ�
�����������࣬���������е�������������Ŀ���һ��
Ϊ���������顪�����Բ����ܡ�

�������޷������ġ�
����ʹ�Ǹ������������������������ƻ���һ�Σ���
Ӧ�����Ѿ��������Ķ���ʦ֮���������޸��ˡ�


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х��á�
//��ҕ�礬�e���
	CreateSE("SE01","se����_�Υ���01");
	CreatePlainSP("�}��",500);
	Wait(10);
	CreateColorEX("�}��", 1000, "#FFFFFF");
	Fade("�}��", 0, 800, null, true);
	Wait(10);
	SetBlur("�}��", true, 3, 500, 200, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��", 200, 0, null, false);
	FadeFR2("�}��",0,700,300,0,0,20,Dxl3, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
��
�������ڹ�ȥ<k>
��
����������������������������������һ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma05/0070390a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
���ǵġ�
���ҡ���<k>֪������

����ʲô����
��<RUBY text="��������������">�������ݹ���</RUBY>��

�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х��á�
//���^ȥ���k����
//���^ȥ�������ζ���
	CreateSE("SE01","se����_�Υ���01");
	CreateSE("SE01b","se����_�Υ���01");
	CreateTextureEX("�}��", 500, Center, Middle, "cg/ev/ev006_�����ο���.jpg");
	CreateTextureEX("�}��", 500, Center, Middle, "cg/ev/ev133_����������_c.jpg");
	Wait(10);

	CreateColorSP("�}�ף�", 400, "#FFFFFF");
	Fade("�}��", 0, 1000, null, true);
	Wait(10);
	SetBlur("�}��", true, 3, 500, 200, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��", 200, 0, null, false);
	FadeFR2("�}��",0,1000,300,0,0,20,Dxl3, false);
	Wait(150);

	Fade("�}��", 0, 1000, null, true);
	Delete("�}��");
	Wait(10);
	SetBlur("�}��", true, 3, 500, 200, false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}��", 200, 0, null, false);
	FadeFR2("�}��",0,1000,300,0,0,20,Dxl3, false);
	Wait(150);

	Fade("�}��", 0, 1000, null, true);

//����ܞ
	ClearWaitAll(2000, 2000);

..//������ָ��
//�Υե����롡"ma05_008.nss"

}

