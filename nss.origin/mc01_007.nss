//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_007.nss_MAIN
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
	#bg001_��b_01=true;
	#bg056_���L�����Tǰ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_008.nss";

}

scene mc01_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc01_006.nss"

	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg013_�`�}���a_01.jpg");
	SoundPlay("@mbgm25",0,1000,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw����֦_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070010a03">
���٣ţ���!!��

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070020a00">
��������


{	FwC("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070030a03">
��������ոմ���Ҫ�ҵ绰��!?��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070040a00">
��û�С�
����ֻ�Ǵ���һ�߱�ͷ�ߺ���һ�߳��ȥ���ѡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070050a03">
������
���Ǿͺá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������֦С���������µ����������Ҹо����Ѱ���
����ǰ�Ǽ��µ���Ӱ��
��������ˣ�����Ȼ�޷���Ȼ��

�������ļ��䱻���ѣ����Ƶ������ֿ�ʼ��ѿ��
������Ҫ����ݺݵ�ѹ��ס������һ�ַ·�˫�絣
��������ʯ���ƣ���С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm26",0,1000,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/mc01/0070060a00">
������ǰ��ʱ������������ʧ̬��һ�档
���ǳ���Ǹ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070070a03">
�����᲻�ᣬ��ʱ����˵����֪���ء�
����֮��ûʲô�°ɣ���


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070080a00">
�������ĸ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����С�ĵػش�����������������Ե÷�̡�
���������𣬴������Ӷ��˾�û�лص���Ϊ����׼��
�ķ��䣬Ҳû�����Ҽ����档���ܷ�����������������
�е�������һЩ��

������������ͨ���绰��̸����ʹ�ࡣ
��˵ʵ����֮��ļ����ڣ���Ҳ��������������档

������ξ����Ҫ�µĻ�������Ҳ�������İɡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc01/0070090a00">
��Ȼ���أ���ʲô����
���صش�绰����һ������ʲôҪ�°ɡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070100a03">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�������ξ�Դ����к�����
������ԥ�����������������źŻ�֮����Ȼ�����Ŵ�
���˹�����

����Ȼ�绰�Ǹ��ܱ����Ķ�����������δ��һ��������
����
����װ�ɱ��ߣ��绰��Ҳ�ܸߡ�

����Ȼ��Щ���ض��ھ�����û��˿�����ѵĴ����ξ��
˵������ܴ�����⣬����������һ��ͨ���绰������
ϵ��
��һ�����µĻ��������������׿ڸ����ҡ�

�����û��������һ�����������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070110a03">
���������ˡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070120a00">
���š���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070130a03">
���������������ҽ�����Ҫ˵�Ļ�����


{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070140a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����˳�����Ļ�����Ͳ�������ߣ�ϴ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070150a03">
������Ĺؼ��ǡ��������Զ���Ӧ����������
װ�ã��൱�ڵ����������װ��<RUBY text="���ף�">����������</RUBY>������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070160a00">
�������ؼ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070170a03">
�������ĸ��ֵġ�
����һ����Ҫ�����һ��������ġ�������
������������������������ĸ�����ϳ�
һ�����ʡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070180a03">
��������Ŀ�ǡ�С���������װ�׺���������
�ľ����ý��С�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070190a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
//���ӣţ����۩`�����饹��
//������
	OnBG(1100,"bg001_��b_01.jpg");
	FadeBG(1000,true);

	CreateSE("SE01","se�M��_���ߥ���_���饹�Q����");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	WaitKey(1000);

	SoundPlay("@mbgm29",0,1000,true);
	FadeDelete("@OnBG*", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc01/0070200a00">
����ξ����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070210a03">
���ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070220a00">
������ô��һ�ֱ�ѯ���ݺ����ո���ô���
�о�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070230a03">
����˵ʲô����


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070240a00">
����Ǹ���������Щ���ˡ�
���ܷ������һ�·����Ǹ�����ĺ����أ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070250a03">
�����������������ǵġ���Ȼ׽Ū�ҡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070260a00">
����˿��û��׽Ū�����˼����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070270a03">
���ҵ�Ȼ���������ݺ����յĴ��˰�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070280a00">
��������


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070290a03">
������������ǲ��������ҵ绰��!?��


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070300a00">
���ǡ���


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070310a03">
���ù��֣�
����֪��֪���������տ����������ż�����ֵ�
�����ϣ����������˶���ʱ�䰡!?��


{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070320a00">
������һСʱ����


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070330a03">
��ɴ������


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0070340a04">
���ش����
��С�������������һֱ���߲��ݵ���ս��
�����⡣��


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0070350a04">
���Է���ʱ��Ҳ�ǡ�
��ϴ���ʱ��Ҳ�ǡ�
����ȥ������ʱ�򶼻����������С�
��˵ʵ��������Ϊ��ʵ�ڸ��ʿɶ�ֹ�ˡ���


{	FwC("cg/fw/fw����֦_ŭ��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070360a03">
��������û�У��������ˣ���


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070370a00">
����ν�Ľ�פ����ξ����������ʲô���أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������е����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 300, 0, null);
	SoundPlay("@mbgm16",2000,1000,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070380a03">
���Ȳ�˵��Щ��
���������ˣ���������ھ���������һ��Ŷ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070390a00">
�����������£���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070400a03">
���š���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070410a00">
�����Ǹ��ط�����ʲô��ϵ��û�С�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ݱ���", 4000, Center, Middle, "cg/bg/bg056_���L�����Tǰ_01.jpg");
	Fade("�}�ݱ���", 1000, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���޸�ɽ�Ľ����£�λ��������ɽ��ɲȺ����λ����
����Ļ���������Ȩ�߱���ʱ������ɣ���һ����
ʷ�ƾõ����¡�
���������ټ��ڡ�

����Ϊ�Ǵ������ֵ���Ժ֮һ����������ȥ�ΰݹ�Ҳ
��������Ȼ���������������¼�Ĺ���Ҳ�����ڴˡ�
�����벻��������ʲô���������������Ͼ�ȥ���

�����ܽ�������ʲô���Ƕ�Ӧ�����Լ�����ص��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ݱ���", 400, false);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070420a03">
�����ǵģ�������һ�㰡��
�����ѵ���֪�����ɧ���ľ����𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070430a00">
������п���ֽ�����Դ���֪��һЩ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
��Ȼ����������û�г��������ǵĺ�����һ�㣬�Ҳ�
û��ʲô���š�֪ʶ�������˶��ٻ��Ĵ����к󣬱��
ѹ������δʹ�ù���
����ʹ���Ϸ�����Ҳ����Ϊ�档

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070440a03">
������Ӧ��֪��������͹��������������
һ��Ĵ������ȥ���˰ɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070450a00">
���ǰ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����������Щ���صĴ�ξ���ʻ����ҵ��˵�ͷ��
����һ��ʵ�����������ڰ�������ΰ�һ����֮��
���¡�

����������������ˣ�Ҳ�޷������������ϵ��������
�����޹�ϵ��<k>
��
���µ�����Ҳ��뵽��

��Ҳ��������������Ĵ̿ʹ�����������Ǽ��¡�����
�������ڽ��з�ΰݵ�ʱ�򱻴�ɱ����������ʵҲ
�޷�����ǰδ���κ�׼��������¾͹�֮���ڣ���һ��
ʱ��֮���ٷ��������������ϢҲ����ì�ܡ�

����Ȼ��û������ȷ�����ķ����������ŷ�ΰ�֮��
�������㱻���ܵط����ˡ�
�����������Գ䵱����ɵĲ��ϡ�

������Ҳ����һ�ֿ��ܶ��ѡ�ֻ�ǣ��������Ҳ������
���������Ի����������ʵİ�ɱ�ߡ�
�������뵽�����ʱ����ͻȻ�������Լ��ĳ�Ĭ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="����" src="voice/mc01/0070460a00">
����Ǹ���ҵ�Ȼ֪����
�������ţ�Ļ���ƺ��൱��ҡ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070470a03">
����������Ļ�������������ˡ�
���ǣȣ�Ҳ�ǡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070480a03">
���㲻֪���Ǳ߷������¼��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���¼���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mc01/0070490a00">
�������ں���ؾ��۵�פ�����أ�����ʧ��
���������¹ʵķ�����һ���߼��������̴�
ְ�����ҵ�����˵������һ���¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����ǣ�Ӧ�������ûʲô��ϵ�ɡ�
������֮��Ļ������ƺ���û��ʲô�ر���¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070500a03">
�����ţ��Ǹ��������Ǽ��¡���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070510a00">
������ʲô��
����������᲻��ͺ���ص��¹���ʲô��
ϵ�أ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070520a03">
����<RUBY text="����������">��ȷ���¹�</RUBY>�Ļ�����Ȼ��ûʲô��ϵ�İɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070530a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�������¹ʡ�����

�����������Ļ���
��
�������ǻ���ʲô������Ȼץ��ס����֦С�㻰����ص㡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mc01/0070540a00">
����ξ���¡��Ҳ���������˵ʲô��
���Ҳ����ף�������ΪʲôҪȥ���������أ���


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070550a03">
����ѽ������Ҫ֪�������ˣ�
��������Ľ֮�˰�������������һ�������Ķ�
���𣿡�


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070560a00">
���������а�����Ҳ�޷�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070570a03">
��������ô�䵭��
��������������������һ�㶼���˽��ҵ����⡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070580a00">
��������Ϊ�ǲ�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����Ȼ��֪Ϊ�Σ�����ȷʵ������������һ����ŵĶ�
�⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070590a03">
�����ˡ�
����ô�����Ҿͽ�Ҫ�¸�֪���㡣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070600a00">
���á���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070610a03">
���������������ڽ����¡�
�������Ҳ����һͬ����


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070620a00">
�������¡�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��Ϊʲô����<k>���뷴�ʵ�ʱ���ұ������ˡ�
��û�뵽�ҵ��Դ��Ѿ��ٶ۵���˵ز������Լ�������
���е������ˡ�

����������类�����ˣ��������϶������Ƽ���������
����
���Ǹ��ط����ǽ����°ɡ�

������λ��������ɽ��һλ�Ľ����µĻ���Ҳ��������
����߹�Ļ�����ݲ����ĵط���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/mc01/0070630a00">
���������ˡ���л��档
�����գ��ұ��ǰȥ�ݷá���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070640a03">
�������㵽����ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
����˵���ǺǺǵ�Ц��������
���������Ƿ��ֵ绰��һͷ�����Ǹ���ͷ��β��ɵ�ӣ�
�����ĵز����ˡ�

����֪��һ��֮�󡪡�
��֪��������Ϊʲô����ô�Ǳ�֮��
��
������Ц������������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070650a03">
���������Ͼ͹�����
���������������Ŷ���������ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070660a00">
����������Ϊ�Σ���


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070670a03">
���������������½�������Ϯ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitKey(1000);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0321]
//��������
<voice name="����" class="����" src="voice/mc01/0070680a00">
��������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070690a00">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
������Ϯ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SoundPlay("@mbgm34",0,1000,true);
	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070700a03">
��Ŀ�굱Ȼ�ǹ����¡�
����·���ӡ���֪����λ���˻᲻��ɥ���ء���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070710a03">
�����û���˱����Ļ�����
���԰ɣ����������ˡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070720a00">
��Ϊʲô!?
��������ʲô�ˣ���ΪʲôҪı�������¡�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070730a03">
��˭֪���أ���


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070740a00">
����ξ���£���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070750a03">
������Ҫ֪�����۵��Ǿ������˰ɣ�
���ҿ�������еض����渵����ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070760a00">
��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070770a03">
��������û�취��
����ֻ������һ�㡣��


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070780a03">
�������պ�������


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070790a00">
������ʲô����


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070800a03">
������Ҳ��ͬ���ĵ���
�����÷�������Ļ����ͻ᷵�ص��Լ����ϡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070810a00">
����������˵������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070820a03">
���ã�����Ϊֹ��
���������ϲ�ȡ�ж��ɣ��������ˡ���


{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070830a00">
����һ�£���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0070840a03">
��Ҫ��Ŷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���פĤá��ĩ`�ĩ`��
	OnSE("se�ճ�_�Cе_�Ԓ03",1000);
	WaitKey(1500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
���绰���Ҷ��ˡ�
���Һݺݵ��Ų�ͣ������������ź����Ļ�Ͳ��������
��������

��������������ô���¡�
����������Ϯ������Ϊ�ô��˲��ԣ�

���ѵ������������Ȫ�Ĺ��������������������˴�
�£����Ҫ������
�����ߣ����鲢û����ô�򵥡���

������
�����ڲ�������²������ʱ��

�������ξ����ȫ����ʵ�����������Ҹ�Ҳû��
������Ӧ�������ж���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��������
<voice name="����" class="����" src="voice/mc01/0070850a00">
����������!!��


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0070860a00">
�����õ���!?
���������ϻ���!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"mc01_008.nss"